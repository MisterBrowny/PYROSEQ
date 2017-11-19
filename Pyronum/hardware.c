#include "includes.h"

void hw_config (void)
{
	// All port digital
	ADCON1 = 0x07;
	
	// Ports direction //
	// PORTA //
	PORTA = 0;

	TRISAbits.TRISA0 = 1;	// U_ALIM
	TRISAbits.TRISA1 = 1;	// U_INFLA
	TRISAbits.TRISA2 = 0;	// REGIST_G
	TRISAbits.TRISA3 = 1;	// GND
	TRISAbits.TRISA4 = 1;	// RA4 (?)
	TRISAbits.TRISA5 = 0;	// VERROU_TIR

	// PORTB //
	PORTB = 0;

	TRISBbits.TRISB0 = 1;	// START
	TRISBbits.TRISB1 = 0;	// TIR
	TRISBbits.TRISB2 = 0;	// SR_CLR
	TRISBbits.TRISB3 = 0;	// R_CLK
	TRISBbits.TRISB4 = 0;	// SR_CLK
	TRISBbits.TRISB5 = 0;	// SER
	TRISBbits.TRISB6 = 1;	// PGC
	TRISBbits.TRISB7 = 1;	// PGD

	// PORTC //
	PORTC = 0;
	
	TRISCbits.TRISC0 = 0;	// DIGIT_4
	TRISCbits.TRISC1 = 0;	// DIGIT_1
	TRISCbits.TRISC2 = 0;	// DIGIT_2
	TRISCbits.TRISC3 = 0;	// DIGIT_3
	TRISCbits.TRISC4 = 0;	// INFO_OUT
	TRISCbits.TRISC5 = 1;	// COMU_TEST
	TRISCbits.TRISC6 = 0;	// TTL_TX
	TRISCbits.TRISC7 = 1;	// TTL_RX

	// PORTD //
	PORTD = 0;
	
	TRISDbits.TRISD0 = 0;	// SEG_B
	TRISDbits.TRISD1 = 0;	// SEG_F
	TRISDbits.TRISD2 = 0;	// SEG_A
	TRISDbits.TRISD3 = 0;	// SEG_DOT
	TRISDbits.TRISD4 = 0;	// SEG_G
	TRISDbits.TRISD5 = 0;	// SEG_C
	TRISDbits.TRISD6 = 0;	// SEG_D
	TRISDbits.TRISD7 = 0;	// SEG_E

	// PORTE //
	PORTE = 0;
	
	TRISEbits.TRISE0 = 1;	// BP_ON
	TRISEbits.TRISE1 = 1;	// ID_TEST
	TRISEbits.TRISE2 = 0;	// ACTI_MAX
}
