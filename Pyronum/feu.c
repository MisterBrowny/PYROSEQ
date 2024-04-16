#include "includes.h"

// debut MOD_V0010: detecte si la prochaine sortie est en fait une pause
static byte feu_check_pause (void)
{
	if (Feu.NextOutput == PAUSE_VALUE)	{return true;}
	else                                {return false;}
}

static byte feu_check_end_P0 (void)
{
	if ((Feu.Cpt >= NB_RELAY) || (Feu.NextOutput == 0))	{return true;}  
	else                                                {return false;}
}
// fin MOD_V0010

static byte feu_check_end (void)
{
	if ((Feu.Cpt >= (NB_RELAY + NB_PAUSE_MAX)) || (Feu.NextOutput == 0))	{return true;}  // MOD_V0010
	else                                                                    {return false;}
}

static void feu_tir (byte Output)
{
	VERROU_TIR = 1;
	TIR = 1;

	register_write(Output);
	delay_ms(DefTempsTir);
	register_write(0);

	TIR = 0;
	VERROU_TIR = 0;

	// rafraichit les flags
	Feu.LastOutput = Feu.NextOutput;
	Feu.Cpt ++;
}

void feu_check_bp (void)
{
	if (	(Micro.Stat.End == true)
		&&	(Bouton[Bp_On].State == 0))
	{
		Ecran.Digits = (char *) Version;
		Ecran.Solid = false;
	}
    else if (   (Feu.Step == FEU_PAUSE)
             &&	(Bouton[Bp_Start].State == 0))
    {
        Feu.TimeStart = Cptms;
        Feu.CanStopStart = false;
        Feu.Step = FEU_RESTART_AFTER_PAUSE;
    }
	else if (	(Bouton[Bp_Start].State == 1)
			 &&	(Feu.CanStopStart == false))
	{
		if (TempsSup(Feu.TimeStart, TIME_TO_STOP))
		{
			Feu.CanStopStart = true;
		}
	}
	else if (	(Micro.Mods == false)
			 &&	(Feu.CanStopStart == true)
			 &&	(Bouton[Bp_Start].State == 0))
	{
		if (Micro.Stat.Go == true)			
		{
			Feu.Step = FEU_STOP;
			Micro.State = STOP;
		}
		else if (Micro.Stat.Stop == true)	
		{
			Feu.Step = FEU_RESTART;
			Micro.State = GO;
			Feu.TimeStart = Cptms;
		}

		Feu.CanStopStart = false;
	}
	else if (Bouton[Comu_Test].State == 1)
	{
		Ecran.Digits = (char *) ErreurTir;
		Ecran.Solid = false;
	}
	else if (Bouton[Bp_IdTest].State == 0)
	{
		ecran_print_num(Feu.LastOutput);

		if (Micro.Stat.Stop == true)
		{
			Ecran.Digit[0] = '-';
			Ecran.Digit[1] = '-';

			Ecran.Digits = Ecran.Digit;
		}
		Ecran.Solid = false;
	}
	else
	{
		if (Micro.Stat.Armed == true)		{ecran_print_one_char(0,'-');}
		else if (Micro.Stat.Go == true)		{ecran_print_one_char(1,'-');}
		else if (Micro.Stat.Stop == true)	{ecran_print_one_char(2,'-');}
		else if (Micro.Stat.End == true)	{ecran_print_one_char(3,'-');}
		
		Ecran.Solid = true;
	}
}

void feu_process (void)
{
	switch (Feu.Step)
	{
		case FEU_ARMED:
			// Attend le top départ
			if (Bouton[Bp_Start].State == 0)
			{
				if (Micro.Mods == false)	{Feu.Step = FEU_SELECT;}
				else						{Feu.Step = FEU_SELECT_P0;}

				Micro.State = GO;
				
                di(); // MOD_V0010: ajout pour assurer
				Decompte = 50;	// initialise le chrono de 50ms
				Cpt1Sur20s = 0;	// initialise le compteur de 1/20 de secondes
                ei(); // MOD_V0010: ajout pour assurer
                
				Feu.LastOutput = 0;

				Feu.CanStopStart = false;
				Feu.TimeStart = Cptms;
			}
			break;
		case FEU_SELECT :
			// Init de la prochaine sortie à tirer
			Feu.NextOutput = Cf.Data[Feu.Cpt*CF_SECTOR_SIZE];

			if (feu_check_pause() == true)      {Feu.Step = FEU_PAUSE;} // MOD_V0010
            else if (feu_check_end() == true)	{Feu.Step = FEU_END;}	// Séquence de tir terminée
			else
			{
				// Calcul le temps auquel il faut tirer le prochain coup
				Feu.TimeToFire = Cf.Data[(Feu.Cpt*CF_SECTOR_SIZE) + 1] << 8;
				Feu.TimeToFire |= Cf.Data[(Feu.Cpt*CF_SECTOR_SIZE) + 2];

				Feu.Step = FEU_GO;
			}
			break;
		case FEU_GO:
			if (Cpt1Sur20s == Feu.TimeToFire)
			{
				feu_tir(Feu.NextOutput);

				Feu.Step = FEU_SELECT;
			}
			break;
		case FEU_SELECT_P0:
            // debut MOD_V0010
			if (Micro.Mod.P_0 == true)			
            {
                Feu.NextOutput = Feu.Cpt+1;
                
                if (feu_check_end_P0() == true)	{Feu.Step = FEU_END;}	// Séquence de tir terminée
                else							{Feu.Step = FEU_GO_P0;}
            }
			else if (Micro.Mod.P_00 == true)
            {
                Feu.NextOutput = Cf.Data[Feu.Cpt*CF_SECTOR_SIZE];
                
                if (feu_check_end() == true)	{Feu.Step = FEU_END;}	// Séquence de tir terminée
                else							{Feu.Step = FEU_GO_P0;}
            }
            // fin MOD_V0010
            break;
		case FEU_GO_P0:
			if (Bouton[Bp_Start].State == 0)
			{
				delay_ms(15);

				feu_tir(Feu.NextOutput);
				
				Feu.Step = FEU_WAIT_P0;
				Feu.Time = Cptms;
			}
			break;
		case FEU_WAIT_P0:
			if (TempsSup(Feu.Time, TDef200ms))
			{	
				if (Bouton[Bp_Start].State == 1)	{Feu.Step = FEU_SELECT_P0;}
			}
			break;
		case FEU_STOP:
			if (Feu.SaveTime == false)
			{
				Feu.Decompte = Decompte;
				Feu.SavedTime = Cpt1Sur20s;

				Feu.SaveTime = true;
			}
			break;
		case FEU_RESTART:
			Decompte = Feu.Decompte;
			Cpt1Sur20s = Feu.SavedTime;
			
			Feu.SaveTime = false;

			Feu.Step = FEU_SELECT;
			break;
		// debut MOD_V0010
        case FEU_PAUSE:
			Micro.State = STOP;
			break;
        case FEU_RESTART_AFTER_PAUSE:
            di();
            Decompte = 50;	// initialise le chrono de 50ms
            Cpt1Sur20s = 0;	// initialise le compteur de 1/20 de secondes
            ei();
            
            Micro.State = GO;
            
            Feu.LastOutput = Feu.NextOutput;
            Feu.Cpt ++;
    
            Feu.Step = FEU_SELECT;            
            break;
        // fin MOD_V0010
		case FEU_END:
			Micro.State = END;
			break;
	}
}
