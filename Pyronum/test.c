#include "includes.h"

void check_comutest (byte State)
{
	ecran_blank();
	while(COMU_TEST == State)
	{
		Ecran.Digits = (char *) ErreurTir;
		ecran_refresh();

		if ((COMU_TEST == 0) && (Micro.Phase == MICRO_TEST))
		{
			Test.Step = TEST_WAIT;
			ecran_blank();
		}
	}
}

byte check_program_0 (void)
{
	byte ret = false;
	
	if ((ID_TEST == 0) && (BP_ON == 0))	
	{
		ecran_blank();
		while ((ID_TEST == 0) || (BP_ON == 0)) {ecran_refresh();}

		Micro.Mod.P_0 = true;
		
		ret = true;

		Micro.Step = MICRO_STEP_3;

		ecran_wait();
	}

	return ret;
}


void check_idtest (void)
{
	if ((ID_TEST == 0) && (BP_ON == 1))
	{
		micro_config_rs();
		ecran_print_one_char(3, 'P');

		while(true)	{cf_rcv();}
	}
}

void check_bpon (void)
{
	Test.Time = Cptms;

	if (BP_ON == 0)
	{
		ecran_print_one_char(3, 'A');
		
		while((BP_ON == 0) && (TempsInf(Test.Time, TDef1sec)));
	}
}

word check_UAlim (void)
{
	word temp = 0;
	
	TIR = 0;
	VERROU_TIR = 0;

	temp = ana_read(AN0);
	
	Test.U_Alim = (float) temp * CONVERSION_ADC;
	Test.U_Alim = Test.U_Alim * PONT_DIVISEUR;
	Test.U_Alim = Test.U_Alim * 100.0f;

	return (word) Test.U_Alim;
}

word check_UInfla (void)
{
	word temp = 0;

	if (COMU_TEST == 1)
	{
		TIR = 1;
		VERROU_TIR = 1;
	}
	
	temp = ana_read(AN1);

	TIR = 0;
	VERROU_TIR = 0;

	Test.U_Infla = (float) temp * CONVERSION_ADC;
	Test.U_Infla = Test.U_Infla * PONT_DIVISEUR;
	Test.U_Infla = Test.U_Infla * 100.0f;

	return (word) Test.U_Infla;
}

byte test_process (void)
{
	word temp;
	byte i, ret = false;
	
	switch(Test.Step)
	{
		case TEST_WAIT :
			if (Bouton[Bp_IdTest].State == 1)
			{
				Test.Step = TEST_ALIM;
			}
			break;

		case TEST_ALIM:
			check_comutest(0);

			Test.Cpt = 0;

			temp = check_UAlim();

			Ecran.Digits = PrintTest;

			itoa(Ecran.Digits,temp,10);

			Ecran.Dot[0] = 0;
			Ecran.Dot[1] = 1;
			Ecran.Dot[2] = 0;
			Ecran.Dot[3] = 0;
			
			Test.Step = TEST_WAIT_2;
			break;
		case TEST_WAIT_2 :
			if (Bouton[Bp_IdTest].State == 0)
			{
				if (Micro.Mod.P_0 == false)	{Test.Step = TEST_INFLA;}
				else						{Test.Step = TEST_INFLA_P0;}

				ecran_blank();
				check_comutest(0);
				Test.Time = Cptms;
			}
			break;
		case TEST_INFLA:
			if (Cf.Data[Test.Cpt*3] == 0)
			{
				// Fin du test infla
				Test.Step = TEST_FIN_INFLA;
			}
			else if (TempsSup(Test.Time, TDef20ms))
			{
                if (Cf.Data[Test.Cpt*3] == PAUSE_VALUE) // MOD_V0010
                {
                    Test.Step = TEST_NO_INFLA_PRINT;
                }
                else
                {
                    register_write(Cf.Data[Test.Cpt*3]);
                    Test.Step = TEST_INFLA_2;
                }
                Test.Time = Cptms;
            }
			break;
		case TEST_INFLA_2:	
			if (TempsSup(Test.Time, TDef20ms))
			{
				temp = check_UInfla();
				// Si tension > 0.85V, infla no opé
				if (temp > DefValInflaOK) 	{Test.Step = TEST_INFLA_NOK;}
				else						{Test.Step = TEST_INFLA_OK;}

				// Affiche le num de l'infla testé
				ecran_print_num(Cf.Data[Test.Cpt*3]);
				register_write(0);
				
				Test.Time = Cptms;
			}
			break;
        // debut MOD_V0010
        case TEST_NO_INFLA_PRINT:	
			if (TempsSup(Test.Time, TDef20ms))
			{
				Test.Step = TEST_NO_INFLA_PAUSE;

				// Affiche le num de la pause
				ecran_print_num(Cf.Data[Test.Cpt*3]);
				Test.Time = Cptms;
			}
			break;
        case TEST_NO_INFLA_PAUSE:
			if (TempsSup(Test.Time, TDef100ms))
			{
				if (++Test.Cpt > (NB_RELAY + NB_PAUSE_MAX - 1))	{Test.Step = TEST_FIN_INFLA;} // MOD_V0010
				else                                            {Test.Step = TEST_INFLA;}
				check_comutest(0);
				Test.Time = Cptms;
			}
			break;
        // fin MOD_V0010
		case TEST_INFLA_OK:
			if (TempsSup(Test.Time, TDef20ms))
			{
				if (++Test.Cpt > (NB_RELAY + NB_PAUSE_MAX - 1))	{Test.Step = TEST_FIN_INFLA;} // MOD_V0010
				else                                            {Test.Step = TEST_INFLA;}
				check_comutest(0);
				Test.Time = Cptms;
			}
			break;
		case TEST_INFLA_NOK:
			if (	(Bouton[Bp_IdTest].State == 0)
				&&	(TempsSup(Test.Time, TDef500ms)))
			{
				if (++Test.Cpt > (NB_RELAY + NB_PAUSE_MAX - 1))	{Test.Step = TEST_FIN_INFLA;}   // MOD_V0010
				else                                            {Test.Step = TEST_INFLA;}
				check_comutest(0);
				Test.Time = Cptms;
			}
			break;
		case TEST_FIN_INFLA:
			if (Test.Cpt != 0)
			{
				ecran_print_num(Cf.Data[OFFSET_LAST_OUTPUT]);
			}
			else
			{
				Ecran.Digit[2] = 0;
				Ecran.Digit[3] = 0;
			}

			Ecran.Digit[0] = '-';
			Ecran.Digit[1] = '-';

			Ecran.Digits = Ecran.Digit;
			Test.Step = TEST_FIN_INFLA_2;
			break;
		case TEST_FIN_INFLA_2:
			if (Bouton[Bp_IdTest].State == 0)
			{
				Test.Step = TEST_WAIT_3;

				Test.Time = Cptms;
			}
			break;
		case TEST_INFLA_P0:
			if (TempsSup(Test.Time, TDef20ms))
			{
				register_write((byte) (Test.Cpt + 1));
				Test.Step = TEST_INFLA_2_P0;
				Test.Time = Cptms;
			}
			break;
		case TEST_INFLA_2_P0:	
			if (TempsSup(Test.Time, TDef20ms))
			{
				temp = check_UInfla();

				// Si tension > 0.85V, infla no opé
				if (temp > DefValInflaOK) 	{Test.Step = TEST_INFLA_NOK_P0;}
				else						{Test.Step = TEST_INFLA_OK_P0;}

				// Affiche le num de l'infla testé
				ecran_print_num((byte) (Test.Cpt + 1));
				register_write(0);
					
				Test.Time = Cptms;
			}
			break;
		case TEST_INFLA_OK_P0:
			if (TempsSup(Test.Time, TDef20ms))
			{
				if (++Test.Cpt > (NB_RELAY - 1))	{Test.Step = TEST_FIN_INFLA_P0;}    // MOD_V0010
				else					{Test.Step = TEST_INFLA_P0;}
				check_comutest(0);
				Test.Time = Cptms;
			}
			break;
		case TEST_INFLA_NOK_P0:
			if (	(Bouton[Bp_IdTest].State == 0)
				&&	(TempsSup(Test.Time, TDef500ms)))
			{
				if (++Test.Cpt > (NB_RELAY - 1))	{Test.Step = TEST_FIN_INFLA_P0;}    // MOD_V0010
				else                                {Test.Step = TEST_INFLA_P0;}
				check_comutest(0);
				Test.Time = Cptms;
			}
			break;
		case TEST_FIN_INFLA_P0:
			if (Test.Cpt != 0)
			{
				ecran_print_num(Test.Cpt);
			}
			else
			{
				Ecran.Digit[2] = 0;
				Ecran.Digit[3] = 0;
			}
			
			Ecran.Digit[0] = '-';
			Ecran.Digit[1] = '-';
			
			Ecran.Digits = Ecran.Digit;
			Test.Step = TEST_FIN_INFLA_P0_2;
			break;
		case TEST_FIN_INFLA_P0_2:
			if (Bouton[Bp_IdTest].State == 0)
			{
				Test.Step = TEST_WAIT_3;

				Test.Time = Cptms;
			}
			break;
		case TEST_WAIT_3:
			if (TempsSup(Test.Time, TDef1sec))
			{
				Test.Step = TEST_WAIT_4;

				ecran_wait();
			}
			break;
		case TEST_WAIT_4:
			if (Bouton[Bp_IdTest].State == 1)
			{
				Micro.Phase = MICRO_WAIT;
			}
			break;
	}
	
	return ret;
}


