#include "includes.h"

void micro_config_rs(void)
{
	ACTI_MAX = 0;
	
	// RS232
	// ---------------------------
	SPBRG = 207;
	// SPBRG = FOSC / (64 * BAUDRATE) - 1
	// FOSC = 16 MHZ
	// BAUDRATE = 1200 Bauds

	TXSTA = 0x20;
	//	TX9D = 0		// 8-bits
    //  TRMT = 0		// Read only bit
    //  BRGH = 0		// low speed
    //	SYNC = 0		// asynchronous
    //  TXEN = 1        // TX enabled
    //  TX9  = 0		// 8-bits
    //  CSRC = 0		// don't care for asynchronous
	RCSTA = 0x90;
	//	RX9D  = 0		// 8-bits
    //	OERR  = 0		// Read only
    //	FERR  = 0		// Read only
    //	ADDEN = 0		// no address detection
    //	CREN  = 1		// enabled receiver
    //	SREN  = 0		// don't care for asynchronous
    //	RX9   = 0		// 8-bits
	//	SPEN  = 1		// enabled USART
	
	// Interruption
	// ---------------------------
	RCIP = 0;			// low priority
	RCIE = 1;			// Active Rx interrupt
	PEIE = 1;			// Enable all low priority interruption
}

void micro_config (void)
{
	// TIMER
	// ---------------------------
	T0CON = 0x88;
	//	T0PS   = 100	// Prescaler 1:2 (not used)
    //	PSA    = 0      // Prescaler not assignated
    //	T0SE   = 0		// Increment on high to low (not used)
    //	T0CS   = 0		// Internal instruction clock
    //	T08BIT = 0		// Timer 0 - 16-bits
    //	TMR0ON = 1		// Enable Timer 0

	// 16-bits
	// FOSC / 4 = 4Mhz
	// 1 ms = 1 / 4 000 000 * 4 000
	// 65535 - 4000 = 61 535
	// 61535 + 2 = 61537
	
	// D'après le calcul
	//TMR0H = 0xF0;
	//TMR0L = 0x61;
	// D'après la mesure sur 5 min
	//TMR0H = 0xF0;
	//TMR0L = 0x8E;
	// D'après la mesure sur 20 min
	TMR0H = 0xF0;
	TMR0L = 0x8C;

	// ADC
	// ---------------------------
	ADCON0 = 0x80;
	// ADON		= 0		// ADC disable (no comsumption)
    // GO_nDONE = 0		// convertion go_not_done
	// CHS      = 0		// channel select
    // ADCS		= 10	// Fosc/64

	ADCON1 = 0xC4;
	//	PCFG	= 100	// AN0 et AN1 Analog
    //	ADCS2	= 1		// ADC Clock select
    //	ADFM	= 1		// ADC result format : right justified

	// Interruptions
	// ---------------------------
	TMR0IP = 1;			// High priority
	TMR0IE = 1;			// Active Timer 0 interrupt
	IPEN = 1;			// Enable priority level
	GIE = 1;			// Enable all high priority interruption

	Micro.Time = Cptms;
	Ecran.tRate = 255;
}

void micro_wait (void)
{
	switch (Micro.Step)
	{
		case MICRO_STEP_1:
			if (Bouton[Bp_IdTest].State == 0)
			{
				Micro.Step = MICRO_STEP_2;
				ecran_wait();
			}
			break;
		case MICRO_STEP_2:
			if (Bouton[Bp_IdTest].State == 1)
			{
				Micro.Step = MICRO_STEP_3;
			}
			break;
		case MICRO_STEP_3:
			if (Bouton[Bp_IdTest].State == 0)
			{
				Micro.Phase = MICRO_TEST;
				Test.Step = TEST_WAIT;
				check_comutest(0);
				ecran_blank();
			}
			else if (Bouton[Bp_On].State == 0)
			{
				Micro.Phase = MICRO_ARM;
				Arm.Step = ARM_WAIT;
				check_comutest(1);
				ecran_blank();
			}

			if (Bouton[Bp_Start].State == 0)
			{
				ecran_blank();
				
				ecran_print_one_char(0, 'S');

				while (START == 0);
								
				ecran_wait();
			}

			break;
	}
}