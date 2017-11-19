;	HI-TECH PICC powerup routine
;
; This module may be modified to include custom code to be executed 
; immediately after reset. After performing whatever powerup code
; is required, it should jump to "start"

//#include <aspic.h>
//#include	"aspic.h"
#include "pic18f452.inc"

	global		powerup,start
	psect		powerup
powerup:

;
;	Insert special powerup code here
;
;

	lfsr		0,0
	movlw		0x0F
loop:
	clrf    	POSTINC0
	clrf    	POSTINC0
	clrf    	POSTINC0
	clrf    	POSTINC0
	clrf    	POSTINC0
	clrf    	POSTINC0
	clrf    	POSTINC0
	clrf    	POSTINC0
	btfsc		FSR0L,7
	cpfseq		FSR0H
	bra			loop


; Now lets jump to start 
	goto		start
	end
