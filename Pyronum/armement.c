#include "includes.h"

static word arm_UAlim_1A (void)
{
	word temp = 0;

	VERROU_TIR = 0;
	TIR = 1;

	delay_ms(10);

	temp = ana_read(AN0);

	VERROU_TIR = 0;
	TIR = 0;

	Arm.U_Alim_1A = (float) temp * CONVERSION_ADC;
	Arm.U_Alim_1A = Arm.U_Alim_1A * PONT_DIVISEUR;
	Arm.U_Alim_1A = Arm.U_Alim_1A * 100.0f;

	return (word) Arm.U_Alim_1A;
}

void armement_process (void)
{
	word temp;

	switch(Arm.Step)
	{
		case ARM_WAIT:
			if (Bouton[Bp_On].State == 1)
			{
				Arm.Step = ARM_ALIM_1A;
			}
			break;
		case ARM_ALIM_1A:
			check_comutest(1);

			temp = arm_UAlim_1A();

			Ecran.Digits = PrintTest;

			itoa(Ecran.Digits,temp,10);

			Ecran.Dot[0] = 0;
			Ecran.Dot[1] = 1;
			Ecran.Dot[2] = 0;
			Ecran.Dot[3] = 0;

			Arm.Step = ARM_WAIT_1;
			break;
		case ARM_WAIT_1:
			if (Bouton[Bp_On].State == 0)
			{
				Arm.Time = Cptms;
				Arm.Step = ARM_WAIT_2;

				ecran_blank();
			}
			break;
		case ARM_WAIT_2:
			if (Bouton[Bp_On].State == 1)
			{
				Micro.Phase = MICRO_WAIT;

				ecran_wait();
			}
			else if (Bouton[Bp_Start].State == 0)
			{
				// la ligne de commande est commandée impossible d'armer le module
			}
			else if (TempsSup(Arm.Time, TDef4sec))
			{
				// la ligne de commande a été commandée entre 3 et 4 secondes d'appuie sur Bp_On le module ne sera pas armé
			}
			else if (TempsSup(Arm.Time, TDef3sec))
			{
				Micro.Phase = MICRO_FEU;
				Micro.State = ARMED;
			}
			break;
	}
}