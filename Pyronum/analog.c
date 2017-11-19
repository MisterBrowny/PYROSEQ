#include "includes.h"


word ana_read (byte ANx)
{
	word temp = 0;
	
	ADCON0bits.CHS = ANx;	// Entrée à lire
	ADCON0bits.ADON = 1;	// Turn on ADC module

	delay_ms(5);

	ADCON0bits.GO_nDONE = 1;		// Conversion go
	while (ADCON0bits.GO_nDONE);	// wait for conversion complete

	temp  = ADRESH << 8;
	temp |= ADRESL;

	ADCON0bits.ADON = 0;			// turn off ADC module

	return temp;
}


