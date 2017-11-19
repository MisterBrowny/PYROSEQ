#include "includes.h"

//*********************************************************************************//
// CONFIGURATION BITS
//*********************************************************************************//
// Config 1H
#pragma config OSC		= HSPLL	// HS oscillator with PLL enabled/Clock frequency = (4 x FOSC)
#pragma config OSCS		= OFF	// Oscillator system clock switch option is disabled (main oscillator is source)
// Config 2L
#pragma config BORV		= 45	// VBOR set to 4.5V
#pragma config BOR		= ON	// Brown-out Reset enabled
#pragma config PWRT		= ON	// PWRT enabled
// Config 2H
#pragma config WDT		= OFF	// WDT disabled (control is placed on the SWDTEN bit)
#pragma config WDTPS	= 1		// Watchdog postscaler 1:1
// Config3H
#pragma config CCP2MUX	= OFF	// CCP2 input/output is multiplexed with RB3 (not used)
// Config 4L
#pragma config DEBUG	= ON	// DEBUG on RB6/RB7
#pragma config STVR		= OFF	// Stack Full/Underflow will not cause RESET
#pragma config LVP		= OFF	// Low Voltage ICSP disabled
// Config 5L
#pragma config CP3		= OFF	// Block 3 (006000-007FFFh) not code protected
#pragma config CP2		= OFF	// Block 2 (004000-005FFFh) not code protected
#pragma config CP1		= OFF	// Block 1 (002000-003FFFh) not code protected
#pragma config CP0		= OFF	// Block 0 (000200-001FFFh) not code protected
// Config 5H
#pragma config CPD		= OFF	// Data EEPROM not code protected
#pragma config CPB		= OFF	// Boot Block (000000-0001FFh) not code protected
// Config 6L
#pragma config WRT3		= OFF	// Block 3 (006000-007FFFh) not write protected
#pragma config WRT2		= OFF	// Block 2 (004000-005FFFh) not write protected
#pragma config WRT1		= OFF	// Block 1 (002000-003FFFh) not write protected
#pragma config WRT0		= OFF	// Block 0 (000200-001FFFh) not write protected
// Config 6H
#pragma config WRTD		= OFF	// Data EEPROM not write protected
#pragma config WRTB		= OFF	// Boot Block (000000-0001FFh) not write protected
#pragma config WRTC		= OFF	// Configuration registers (300000-3000FFh) not write protected
// Config 7L
#pragma config EBTR3	= OFF	// Block 3 (006000-007FFFh) not protected from Table Reads executed in other blocks
#pragma config EBTR2	= OFF	// Block 2 (004000-005FFFh) not protected from Table Reads executed in other blocks
#pragma config EBTR1	= OFF	// Block 1 (002000-003FFFh) not protected from Table Reads executed in other blocks
#pragma config EBTR0	= OFF	// Block 0 (000200-001FFFh) not protected from Table Reads executed in other blocks
// Config 7H
#pragma config EBTRB	= OFF	// Boot Block (000000-0001FFh) not protected from Table Reads executed in other blocks

//*********************************************************************************//
// LES INTERRUPTIONS
//*********************************************************************************//

void interrupt low_priority Low_priority (void)
{
	if (RCIE && RCIF)
	{
		Cf.Data[Cf.Index] = RCREG;
		TXREG = Cf.Data[Cf.Index];

		Cf.Index ++;

		Cf.Time1 = Cptms;

		return;
	}
}

void interrupt high_priority High_priority (void)
{
	if (TMR0IE && TMR0IF)
	{
		TMR0IF = 0;

		TMR0H = 0xF0;
		TMR0L = 0x8C;

		Cptms ++;

		if (-- Decompte == 0)
		{
			Decompte = 50;
			Cpt1Sur20s ++;
		}

		if (Micro.State)	// ARMED / GO / STOP / END
		{
			if (Feedback.Period == 0)
			{
				Feedback.State = Micro.State;		// Rafraichit l'état du feedback toute les périodes 
				Feedback.Period = FEEDBACK_PERIOD;
				Feedback.Step = 0;
			}
			else
			{
				Feedback.Period --;
			}
			
			if ((0x01 << (byte) (Feedback.Step / 2)) <= Feedback.State)	// le nb de pulse est fct de l'état ARMED / GO / STOP / END
			{
				if ((Feedback.Step & 0x01) == 0)
				{// PULSE 1, 2, 3, 4
					if ((Feedback.Step == 0) || (-- Feedback.Pulse == 0))
					{
						INFO_OUT = 1;
						Feedback.Pulse = FEEDBACK_PULSE;
						Feedback.Step ++;
					}
				}
				else
				{// INTER-PULSE
					if (-- Feedback.Pulse == 0)
					{
						INFO_OUT = 0;
						Feedback.Pulse = FEEDBACK_INTER_PULSE;
						Feedback.Step ++;
					}
				}
			}
		}
		else
		{
			INFO_OUT = 0;
			Feedback.Period = 0;	
		}
		
		return;
	}
}

//*********************************************************************************//
// MAIN
//*********************************************************************************//

void main(void)
{
	byte i, temp, cpt = 0;

	// Init micro
	hw_config();
	micro_config();

	// Vérifie état COMU_TEST
	check_comutest(0);

	// Vérifie si ID_TEST et BP_ON appuyé pour entrer en mode program_0
	if (check_program_0() == false)
	{
		// Vérifie si ID_TEST est appuyé pour entrer en mode programmation
		check_idtest();

		// Vérifie si BP_ON est appuyé
		check_bpon();

		// Vérifie que la config est bonne
		cf_check_and_display();
	}

	bouton_init();

	while (true)
	{
		bouton_refresh();
		ecran_refresh();
		
		switch (Micro.Phase)
		{
			case MICRO_WAIT:
				micro_wait();
				break;
			case MICRO_TEST:
				test_process();
				break;
			case MICRO_ARM:
				armement_process();
				break;
			case MICRO_FEU:
				feu_process();
				feu_check_bp();
				break;
		}
	}
}

