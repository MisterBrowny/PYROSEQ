opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 56723"

opt pagewidth 120

	opt lm

	processor	18F452
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "include\pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_armement_process
	FNCALL	_main,_bouton_init
	FNCALL	_main,_bouton_refresh
	FNCALL	_main,_cf_check_and_display
	FNCALL	_main,_check_bpon
	FNCALL	_main,_check_comutest
	FNCALL	_main,_check_idtest
	FNCALL	_main,_check_program_0
	FNCALL	_main,_ecran_refresh
	FNCALL	_main,_feu_check_bp
	FNCALL	_main,_feu_process
	FNCALL	_main,_hw_config
	FNCALL	_main,_micro_config
	FNCALL	_main,_micro_wait
	FNCALL	_main,_test_process
	FNCALL	_test_process,_check_UAlim
	FNCALL	_test_process,_check_UInfla
	FNCALL	_test_process,_check_comutest
	FNCALL	_test_process,_ecran_blank
	FNCALL	_test_process,_ecran_print_num
	FNCALL	_test_process,_ecran_wait
	FNCALL	_test_process,_itoa
	FNCALL	_test_process,_register_write
	FNCALL	_check_UInfla,___ftmul
	FNCALL	_check_UInfla,___fttol
	FNCALL	_check_UInfla,___lwtoft
	FNCALL	_check_UInfla,_ana_read
	FNCALL	_check_UAlim,___ftmul
	FNCALL	_check_UAlim,___fttol
	FNCALL	_check_UAlim,___lwtoft
	FNCALL	_check_UAlim,_ana_read
	FNCALL	_micro_wait,_check_comutest
	FNCALL	_micro_wait,_ecran_blank
	FNCALL	_micro_wait,_ecran_print_one_char
	FNCALL	_micro_wait,_ecran_wait
	FNCALL	_feu_process,_delay_ms
	FNCALL	_feu_process,_feu_check_end
	FNCALL	_feu_process,_feu_tir
	FNCALL	_feu_tir,_delay_ms
	FNCALL	_feu_tir,_register_write
	FNCALL	_feu_check_bp,_ecran_print_num
	FNCALL	_feu_check_bp,_ecran_print_one_char
	FNCALL	_ecran_print_num,_DecToStr
	FNCALL	_DecToStr,___awmod
	FNCALL	_DecToStr,___lbdiv
	FNCALL	_DecToStr,___wmul
	FNCALL	_check_program_0,_ecran_blank
	FNCALL	_check_program_0,_ecran_refresh
	FNCALL	_check_program_0,_ecran_wait
	FNCALL	_check_idtest,_cf_rcv
	FNCALL	_check_idtest,_ecran_print_one_char
	FNCALL	_check_idtest,_micro_config_rs
	FNCALL	_cf_rcv,_cf_check
	FNCALL	_cf_rcv,_ecran_print_one_char
	FNCALL	_cf_rcv,_eeprom_read_array
	FNCALL	_cf_rcv,_eeprom_write_array
	FNCALL	_eeprom_write_array,_eeprom_write
	FNCALL	_check_bpon,_ecran_print_one_char
	FNCALL	_cf_check_and_display,_HexToAscii
	FNCALL	_cf_check_and_display,_cf_check
	FNCALL	_cf_check_and_display,_ecran_print_one_char
	FNCALL	_cf_check_and_display,_ecran_refresh
	FNCALL	_cf_check_and_display,_eeprom_read_array
	FNCALL	_eeprom_read_array,_eeprom_read
	FNCALL	_cf_check,_cf_checkout
	FNCALL	_cf_check,_cf_checkrange
	FNCALL	_cf_check,_cf_checksum
	FNCALL	_cf_checkout,___wmul
	FNCALL	_armement_process,_arm_UAlim_1A
	FNCALL	_armement_process,_check_comutest
	FNCALL	_armement_process,_ecran_blank
	FNCALL	_armement_process,_ecran_wait
	FNCALL	_armement_process,_itoa
	FNCALL	_itoa,_utoa
	FNCALL	_utoa,___lwdiv
	FNCALL	_utoa,___lwmod
	FNCALL	_ecran_wait,_ecran_dot
	FNCALL	_ecran_wait,_ecran_raz_digit
	FNCALL	_check_comutest,_ecran_blank
	FNCALL	_check_comutest,_ecran_refresh
	FNCALL	_ecran_refresh,_ecran_dot
	FNCALL	_ecran_refresh,_ecran_print_one_char
	FNCALL	_ecran_print_one_char,_ecran_digit
	FNCALL	_ecran_print_one_char,_ecran_raz_digit
	FNCALL	_arm_UAlim_1A,___ftmul
	FNCALL	_arm_UAlim_1A,___fttol
	FNCALL	_arm_UAlim_1A,___lwtoft
	FNCALL	_arm_UAlim_1A,_ana_read
	FNCALL	_arm_UAlim_1A,_delay_ms
	FNCALL	_ana_read,_delay_ms
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_Low_priority
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	_High_priority,___awdiv
	FNCALL	intlevel2,_High_priority
	global	intlevel2
	FNROOT	intlevel2
	global	_PrintTest
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"include\ecran.h"
	line	30

;initializer for _PrintTest
	db	low(033h)
	db	low(034h)
	db	low(035h)
	db	low(036h)
	db	low(0)
	global	_Armed
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"include\ecran.h"
	line	29
	global	_Armed
_Armed:
	db	low(02Dh)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	global __end_of_Armed
__end_of_Armed:
	global	_Blank
psect	smallconst
	file	"include\ecran.h"
	line	27
_Blank:
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	global __end_of_Blank
__end_of_Blank:
	global	_ErreurTir
psect	smallconst
	file	"include\ecran.h"
	line	28
_ErreurTir:
	db	low(045h)
	db	low(05Fh)
	db	low(074h)
	db	low(020h)
	db	low(0)
	global __end_of_ErreurTir
__end_of_ErreurTir:
	global	_Version
psect	smallconst
	file	"include\micro.h"
	line	5
_Version:
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(039h)
	db	low(0)
	global __end_of_Version
__end_of_Version:
	global	_Armed
	global	_Blank
	global	_ErreurTir
	global	_Version
	global	_Test
	global	_Cpt1Sur20s
	global	_Cptms
	global	_Decompte
	global	_Feu
	global	_Bouton
	global	_Arm
	global	_Feedback
	global	_Register
	global	_Ecran
	global	_Cf
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PORTA
_PORTA	set	0xF80
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTE
_PORTE	set	0xF84
	global	_PORTEbits
_PORTEbits	set	0xF84
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_T0CON
_T0CON	set	0xFD5
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_TRISEbits
_TRISEbits	set	0xF96
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_CFGS
_CFGS	set	0x7D36
	global	_EEPGD
_EEPGD	set	0x7D37
	global	_GIE
_GIE	set	0x7F97
	global	_IPEN
_IPEN	set	0x7E87
	global	_PEIE
_PEIE	set	0x7F96
	global	_RCIE
_RCIE	set	0x7CED
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RCIP
_RCIP	set	0x7CFD
	global	_RD
_RD	set	0x7D30
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0IP
_TMR0IP	set	0x7F8A
	global	_WR
_WR	set	0x7D31
	global	_WREN
_WREN	set	0x7D32
	global	_Micro
psect	nvCOMRAM,class=COMRAM,space=1,noexec
global __pnvCOMRAM
__pnvCOMRAM:
	global	_Micro
_Micro:
       ds      6
; #config settings
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_BORV$45
__CFG_BORV$45 equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_WDTPS$1
__CFG_WDTPS$1 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MUX$OFF
__CFG_CCP2MUX$OFF equ 0x0
global __CFG_DEBUG$ON
__CFG_DEBUG$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_STVR$OFF
__CFG_STVR$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"dist/default/production\Pyronum.production.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_Test
_Test:
       ds      31
	global	_Cpt1Sur20s
_Cpt1Sur20s:
       ds      2
	global	_Cptms
_Cptms:
       ds      2
	global	_Decompte
_Decompte:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_Feu
_Feu:
       ds      14
	global	_Bouton
_Bouton:
       ds      12
	global	_Arm
_Arm:
       ds      7
	global	_Feedback
_Feedback:
       ds      5
	global	_Register
	global	_Register
_Register:
       ds      4
	global	_Ecran
_Ecran:
       ds      16
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"include\ecran.h"
	line	30
	global	_PrintTest
_PrintTest:
       ds      5
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_Cf
_Cf:
       ds      107
	file	"dist/default/production\Pyronum.production.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (107 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	107
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (58 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	58
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (36 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	36
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
	line	#
; Initialize objects allocated to BANK0 (5 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,5
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_hw_config:	; 0 bytes @ 0x0
??_micro_config:	; 0 bytes @ 0x0
??_bouton_init:	; 0 bytes @ 0x0
??_bouton_refresh:	; 0 bytes @ 0x0
??_HexToAscii:	; 0 bytes @ 0x0
??_micro_config_rs:	; 0 bytes @ 0x0
??_register_write:	; 0 bytes @ 0x0
??_ecran_raz_digit:	; 0 bytes @ 0x0
??_ecran_digit:	; 0 bytes @ 0x0
??_ecran_dot:	; 0 bytes @ 0x0
??_ecran_blank:	; 0 bytes @ 0x0
??_eeprom_read:	; 0 bytes @ 0x0
?_eeprom_write:	; 0 bytes @ 0x0
??_cf_checksum:	; 0 bytes @ 0x0
??_cf_checkrange:	; 0 bytes @ 0x0
?_delay_ms:	; 0 bytes @ 0x0
??_feu_check_end:	; 0 bytes @ 0x0
?___lbdiv:	; 1 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	ecran_digit@Char
ecran_digit@Char:	; 1 bytes @ 0x0
	global	ecran_dot@Dot
ecran_dot@Dot:	; 1 bytes @ 0x0
	global	eeprom_read@Address
eeprom_read@Address:	; 1 bytes @ 0x0
	global	eeprom_write@Address
eeprom_write@Address:	; 1 bytes @ 0x0
	global	HexToAscii@character
HexToAscii@character:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	delay_ms@TimeToWait
delay_ms@TimeToWait:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds   1
?_ecran_print_one_char:	; 0 bytes @ 0x1
??_ecran_wait:	; 0 bytes @ 0x1
??_eeprom_write:	; 0 bytes @ 0x1
?_eeprom_read_array:	; 0 bytes @ 0x1
??___lbdiv:	; 0 bytes @ 0x1
	global	ecran_print_one_char@Character
ecran_print_one_char@Character:	; 1 bytes @ 0x1
	global	eeprom_write@Data
eeprom_write@Data:	; 1 bytes @ 0x1
	global	cf_checkrange@valid
cf_checkrange@valid:	; 1 bytes @ 0x1
	global	HexToAscii@Value
HexToAscii@Value:	; 1 bytes @ 0x1
	global	register_write@Output
register_write@Output:	; 1 bytes @ 0x1
	global	eeprom_read_array@pData
eeprom_read_array@pData:	; 2 bytes @ 0x1
	ds   1
??_ecran_print_one_char:	; 0 bytes @ 0x2
?_eeprom_write_array:	; 0 bytes @ 0x2
??_delay_ms:	; 0 bytes @ 0x2
	global	ecran_print_one_char@Digit
ecran_print_one_char@Digit:	; 1 bytes @ 0x2
	global	cf_checkrange@i
cf_checkrange@i:	; 1 bytes @ 0x2
	global	register_write@i
register_write@i:	; 1 bytes @ 0x2
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x2
	global	eeprom_write_array@pData
eeprom_write_array@pData:	; 2 bytes @ 0x2
	global	_bouton_refresh$2134
_bouton_refresh$2134:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds   1
??_check_bpon:	; 0 bytes @ 0x3
??_ecran_refresh:	; 0 bytes @ 0x3
	global	eeprom_read_array@Address
eeprom_read_array@Address:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x3
	ds   1
??___awmod:	; 0 bytes @ 0x4
??___fttol:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
??___lwmod:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	eeprom_read_array@NbData
eeprom_read_array@NbData:	; 1 bytes @ 0x4
	global	eeprom_write_array@Address
eeprom_write_array@Address:	; 1 bytes @ 0x4
	global	bouton_refresh@temp
bouton_refresh@temp:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x4
	global	delay_ms@temp
delay_ms@temp:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds   1
??_check_comutest:	; 0 bytes @ 0x5
??_check_program_0:	; 0 bytes @ 0x5
??___ftpack:	; 0 bytes @ 0x5
??_eeprom_read_array:	; 0 bytes @ 0x5
	global	eeprom_write_array@NbData
eeprom_write_array@NbData:	; 1 bytes @ 0x5
	global	bouton_refresh@i
bouton_refresh@i:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	ds   1
??_eeprom_write_array:	; 0 bytes @ 0x6
??_cf_checkout:	; 0 bytes @ 0x6
??_feu_tir:	; 0 bytes @ 0x6
	global	?_ana_read
?_ana_read:	; 2 bytes @ 0x6
	global	eeprom_read_array@i
eeprom_read_array@i:	; 1 bytes @ 0x6
	global	check_comutest@State
check_comutest@State:	; 1 bytes @ 0x6
	global	check_program_0@ret
check_program_0@ret:	; 1 bytes @ 0x6
	global	feu_tir@Output
feu_tir@Output:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds   1
??_micro_wait:	; 0 bytes @ 0x7
??_feu_process:	; 0 bytes @ 0x7
	global	?_DecToStr
?_DecToStr:	; 2 bytes @ 0x7
	global	eeprom_write_array@i
eeprom_write_array@i:	; 1 bytes @ 0x7
	global	cf_checkout@valid
cf_checkout@valid:	; 1 bytes @ 0x7
	global	DecToStr@result
DecToStr@result:	; 2 bytes @ 0x7
	ds   1
??_ana_read:	; 0 bytes @ 0x8
?_utoa:	; 2 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	cf_checkout@last_out
cf_checkout@last_out:	; 1 bytes @ 0x8
	global	utoa@buf
utoa@buf:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   1
??_DecToStr:	; 0 bytes @ 0x9
	global	cf_checkout@i
cf_checkout@i:	; 1 bytes @ 0x9
	global	ana_read@ANx
ana_read@ANx:	; 1 bytes @ 0x9
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x9
	global	micro_wait@tempTime
micro_wait@tempTime:	; 2 bytes @ 0x9
	ds   1
	global	ana_read@temp
ana_read@temp:	; 2 bytes @ 0xA
	global	utoa@val
utoa@val:	; 2 bytes @ 0xA
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xA
	ds   1
??___lwtoft:	; 0 bytes @ 0xB
	global	_micro_wait$2387
_micro_wait$2387:	; 2 bytes @ 0xB
	ds   1
	global	cf_checksum@valid
cf_checksum@valid:	; 1 bytes @ 0xC
	global	utoa@base
utoa@base:	; 2 bytes @ 0xC
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xD
	global	cf_checksum@i
cf_checksum@i:	; 1 bytes @ 0xD
	global	DecToStr@compareValue
DecToStr@compareValue:	; 2 bytes @ 0xD
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xD
	ds   1
??_utoa:	; 0 bytes @ 0xE
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xE
	global	utoa@v
utoa@v:	; 2 bytes @ 0xE
	global	cf_checksum@calcul
cf_checksum@calcul:	; 4 bytes @ 0xE
	ds   1
	global	DecToStr@value
DecToStr@value:	; 1 bytes @ 0xF
	ds   1
	global	DecToStr@power10
DecToStr@power10:	; 1 bytes @ 0x10
	global	utoa@c
utoa@c:	; 1 bytes @ 0x10
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x10
	ds   1
??_ecran_print_num:	; 0 bytes @ 0x11
?_itoa:	; 2 bytes @ 0x11
	global	itoa@buf
itoa@buf:	; 2 bytes @ 0x11
	ds   1
??_cf_check:	; 0 bytes @ 0x12
	global	ecran_print_num@Num
ecran_print_num@Num:	; 1 bytes @ 0x12
	ds   1
??___ftmul:	; 0 bytes @ 0x13
	global	cf_check@valid
cf_check@valid:	; 1 bytes @ 0x13
	global	ecran_print_num@tempStr
ecran_print_num@tempStr:	; 2 bytes @ 0x13
	global	itoa@val
itoa@val:	; 2 bytes @ 0x13
	ds   1
??_cf_check_and_display:	; 0 bytes @ 0x14
??_cf_rcv:	; 0 bytes @ 0x14
	ds   1
??_feu_check_bp:	; 0 bytes @ 0x15
	global	itoa@base
itoa@base:	; 2 bytes @ 0x15
	ds   1
	global	cf_rcv@temp
cf_rcv@temp:	; 1 bytes @ 0x16
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x16
	global	cf_check_and_display@temp
cf_check_and_display@temp:	; 2 bytes @ 0x16
	ds   1
??_itoa:	; 0 bytes @ 0x17
	global	cf_rcv@i
cf_rcv@i:	; 1 bytes @ 0x17
	global	itoa@cp
itoa@cp:	; 2 bytes @ 0x17
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x17
	ds   1
??_check_idtest:	; 0 bytes @ 0x18
	global	cf_check_and_display@configOk
cf_check_and_display@configOk:	; 1 bytes @ 0x18
	ds   2
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1A
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1B
	ds   1
	global	?_check_UAlim
?_check_UAlim:	; 2 bytes @ 0x1C
	global	?_check_UInfla
?_check_UInfla:	; 2 bytes @ 0x1C
	global	?_arm_UAlim_1A
?_arm_UAlim_1A:	; 2 bytes @ 0x1C
	ds   2
??_check_UAlim:	; 0 bytes @ 0x1E
??_check_UInfla:	; 0 bytes @ 0x1E
??_arm_UAlim_1A:	; 0 bytes @ 0x1E
	ds   4
	global	check_UAlim@temp
check_UAlim@temp:	; 2 bytes @ 0x22
	global	check_UInfla@temp
check_UInfla@temp:	; 2 bytes @ 0x22
	global	arm_UAlim_1A@temp
arm_UAlim_1A@temp:	; 2 bytes @ 0x22
	ds   2
??_test_process:	; 0 bytes @ 0x24
??_armement_process:	; 0 bytes @ 0x24
	ds   2
	global	test_process@ret
test_process@ret:	; 1 bytes @ 0x26
	global	armement_process@temp
armement_process@temp:	; 2 bytes @ 0x26
	ds   1
	global	test_process@temp
test_process@temp:	; 2 bytes @ 0x27
	ds   2
??_main:	; 0 bytes @ 0x29
	ds   1
	global	main@cpt
main@cpt:	; 1 bytes @ 0x2A
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_hw_config:	; 0 bytes @ 0x0
?_micro_config:	; 0 bytes @ 0x0
?_check_comutest:	; 0 bytes @ 0x0
?_check_idtest:	; 0 bytes @ 0x0
?_check_bpon:	; 0 bytes @ 0x0
?_cf_check_and_display:	; 0 bytes @ 0x0
?_bouton_init:	; 0 bytes @ 0x0
?_bouton_refresh:	; 0 bytes @ 0x0
?_ecran_refresh:	; 0 bytes @ 0x0
?_micro_wait:	; 0 bytes @ 0x0
?_armement_process:	; 0 bytes @ 0x0
?_feu_process:	; 0 bytes @ 0x0
?_feu_check_bp:	; 0 bytes @ 0x0
?_micro_config_rs:	; 0 bytes @ 0x0
?_register_write:	; 0 bytes @ 0x0
?_Low_priority:	; 0 bytes @ 0x0
?_High_priority:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ecran_raz_digit:	; 0 bytes @ 0x0
?_ecran_digit:	; 0 bytes @ 0x0
?_ecran_dot:	; 0 bytes @ 0x0
?_ecran_print_num:	; 0 bytes @ 0x0
?_ecran_wait:	; 0 bytes @ 0x0
?_ecran_blank:	; 0 bytes @ 0x0
?_cf_checksum:	; 1 bit 
?_cf_checkout:	; 1 bit 
?_cf_checkrange:	; 1 bit 
?_cf_rcv:	; 0 bytes @ 0x0
?_feu_tir:	; 0 bytes @ 0x0
?_check_program_0:	; 1 bytes @ 0x0
?_test_process:	; 1 bytes @ 0x0
?_HexToAscii:	; 1 bytes @ 0x0
?_eeprom_read:	; 1 bytes @ 0x0
?_cf_check:	; 1 bytes @ 0x0
?_feu_check_end:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	ds   2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	ds   2
??___awdiv:	; 0 bytes @ 0x4
	ds   1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds   2
??_High_priority:	; 0 bytes @ 0x9
	ds   19
??_Low_priority:	; 0 bytes @ 0x1C
	ds   17
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    20
;!    Data        5
;!    BSS         201
;!    Persistent  6
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     45      87
;!    BANK0           128     43     106
;!    BANK1           256      0     107
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    utoa@buf	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran.Digit(BANK0[4]), 
;!		 -> Ecran(BANK0[16]), PrintTest(BANK0[5]), 
;!
;!    sp__utoa	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran.Digit(BANK0[4]), 
;!		 -> Ecran(BANK0[16]), PrintTest(BANK0[5]), 
;!
;!    itoa@buf	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran.Digit(BANK0[4]), 
;!		 -> Ecran(BANK0[16]), PrintTest(BANK0[5]), 
;!
;!    itoa@cp	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran.Digit(BANK0[4]), 
;!		 -> Ecran(BANK0[16]), PrintTest(BANK0[5]), 
;!
;!    DecToStr@result	PTR unsigned char  size(2) Largest target is 5
;!		 -> PrintTest(BANK0[5]), 
;!
;!    sp__itoa	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran.Digit(BANK0[4]), 
;!		 -> Ecran(BANK0[16]), PrintTest(BANK0[5]), 
;!
;!    eeprom_write_array@pData	PTR unsigned char  size(2) Largest target is 107
;!		 -> Cf(BANK1[107]), 
;!
;!    eeprom_read_array@pData	PTR unsigned char  size(2) Largest target is 107
;!		 -> Cf(BANK1[107]), 
;!
;!    sp__DecToStr	PTR unsigned char  size(2) Largest target is 5
;!		 -> PrintTest(BANK0[5]), 
;!
;!    ecran_print_num@tempStr	PTR unsigned char  size(2) Largest target is 5
;!		 -> PrintTest(BANK0[5]), 
;!
;!    S58StructEcran$Digits	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran(BANK0[16]), 
;!		 -> PrintTest(BANK0[5]), 
;!
;!    Ecran.Digits	PTR unsigned char  size(2) Largest target is 17
;!		 -> Version(CODE[5]), ErreurTir(CODE[5]), Blank(CODE[5]), Ecran.Digit(BANK0[4]), 
;!		 -> Ecran(BANK0[16]), PrintTest(BANK0[5]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _Low_priority in COMRAM
;!
;!    None.
;!
;!Critical Paths under _High_priority in COMRAM
;!
;!    _High_priority->___awdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_test_process
;!    _test_process->_check_UAlim
;!    _test_process->_check_UInfla
;!    _check_UInfla->___ftmul
;!    _check_UAlim->___ftmul
;!    _micro_wait->_check_comutest
;!    _feu_process->_feu_tir
;!    _feu_tir->_delay_ms
;!    _feu_check_bp->_ecran_print_num
;!    _ecran_print_num->_DecToStr
;!    _DecToStr->___awmod
;!    _check_program_0->_ecran_refresh
;!    _check_idtest->_cf_rcv
;!    _cf_rcv->_cf_check
;!    _eeprom_write_array->_eeprom_write
;!    _check_bpon->_ecran_print_one_char
;!    _cf_check_and_display->_cf_check
;!    _eeprom_read_array->_eeprom_read
;!    _cf_check->_cf_checksum
;!    _cf_checkout->___wmul
;!    _armement_process->_arm_UAlim_1A
;!    _itoa->_utoa
;!    _utoa->___lwdiv
;!    _ecran_wait->_ecran_dot
;!    _check_comutest->_ecran_refresh
;!    _ecran_refresh->_ecran_print_one_char
;!    _ecran_print_one_char->_ecran_digit
;!    _arm_UAlim_1A->___ftmul
;!    _ana_read->_delay_ms
;!    ___lwtoft->___ftpack
;!    ___ftmul->___lwtoft
;!
;!Critical Paths under _Low_priority in BANK0
;!
;!    None.
;!
;!Critical Paths under _High_priority in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Low_priority in BANK1
;!
;!    None.
;!
;!Critical Paths under _High_priority in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Low_priority in BANK2
;!
;!    None.
;!
;!Critical Paths under _High_priority in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Low_priority in BANK3
;!
;!    None.
;!
;!Critical Paths under _High_priority in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _Low_priority in BANK4
;!
;!    None.
;!
;!Critical Paths under _High_priority in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _Low_priority in BANK5
;!
;!    None.
;!
;!Critical Paths under _High_priority in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0   54399
;!                                             41 BANK0      2     2      0
;!                   _armement_process
;!                        _bouton_init
;!                     _bouton_refresh
;!               _cf_check_and_display
;!                         _check_bpon
;!                     _check_comutest
;!                       _check_idtest
;!                    _check_program_0
;!                      _ecran_refresh
;!                       _feu_check_bp
;!                        _feu_process
;!                          _hw_config
;!                       _micro_config
;!                         _micro_wait
;!                       _test_process
;! ---------------------------------------------------------------------------------
;! (1) _test_process                                         6     6      0   21863
;!                                             36 BANK0      5     5      0
;!                        _check_UAlim
;!                       _check_UInfla
;!                     _check_comutest
;!                        _ecran_blank
;!                    _ecran_print_num
;!                         _ecran_wait
;!                               _itoa
;!                     _register_write
;! ---------------------------------------------------------------------------------
;! (2) _check_UInfla                                         8     6      2    7959
;!                                             28 BANK0      8     6      2
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                           _ana_read
;! ---------------------------------------------------------------------------------
;! (2) _check_UAlim                                          8     6      2    7959
;!                                             28 BANK0      8     6      2
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                           _ana_read
;! ---------------------------------------------------------------------------------
;! (1) _micro_wait                                           6     6      0    2201
;!                                              7 BANK0      6     6      0
;!                     _check_comutest
;!                        _ecran_blank
;!               _ecran_print_one_char
;!                         _ecran_wait
;! ---------------------------------------------------------------------------------
;! (1) _micro_config                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _hw_config                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _feu_process                                          2     2      0     907
;!                                              7 BANK0      2     2      0
;!                           _delay_ms
;!                      _feu_check_end
;!                            _feu_tir
;! ---------------------------------------------------------------------------------
;! (2) _feu_tir                                              1     1      0     534
;!                                              6 BANK0      1     1      0
;!                           _delay_ms
;!                     _register_write
;! ---------------------------------------------------------------------------------
;! (2) _register_write                                       3     3      0     130
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _feu_check_end                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _feu_check_bp                                         2     2      0    3309
;!                                             21 BANK0      2     2      0
;!                    _ecran_print_num
;!               _ecran_print_one_char
;! ---------------------------------------------------------------------------------
;! (2) _ecran_print_num                                      4     4      0    2292
;!                                             17 BANK0      4     4      0
;!                           _DecToStr
;! ---------------------------------------------------------------------------------
;! (3) _DecToStr                                            10     8      2    2100
;!                                              7 BANK0     10     8      2
;!                            ___awmod
;!                            ___lbdiv
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (4) ___lbdiv                                              5     4      1     318
;!                                              0 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              7     3      4     587
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _check_program_0                                      2     2      0    1116
;!                                              5 BANK0      2     2      0
;!                        _ecran_blank
;!                      _ecran_refresh
;!                         _ecran_wait
;! ---------------------------------------------------------------------------------
;! (1) _check_idtest                                         1     1      0    5017
;!                                             24 BANK0      1     1      0
;!                             _cf_rcv
;!               _ecran_print_one_char
;!                    _micro_config_rs
;! ---------------------------------------------------------------------------------
;! (2) _micro_config_rs                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _cf_rcv                                               4     4      0    4000
;!                                             20 BANK0      4     4      0
;!                           _cf_check
;!               _ecran_print_one_char
;!                  _eeprom_read_array
;!                 _eeprom_write_array
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_write_array                                   6     2      4     506
;!                                              2 BANK0      6     2      4
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (4) _eeprom_write                                         2     1      1     139
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _check_bpon                                           2     2      0    1017
;!                                              3 BANK0      2     2      0
;!               _ecran_print_one_char
;! ---------------------------------------------------------------------------------
;! (1) _cf_check_and_display                                 5     5      0    4573
;!                                             20 BANK0      5     5      0
;!                         _HexToAscii
;!                           _cf_check
;!               _ecran_print_one_char
;!                      _ecran_refresh
;!                  _eeprom_read_array
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_read_array                                    6     2      4     629
;!                                              1 BANK0      6     2      4
;!                        _eeprom_read
;! ---------------------------------------------------------------------------------
;! (4) _eeprom_read                                          1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _cf_check                                             2     2      0    1678
;!                                             18 BANK0      2     2      0
;!                        _cf_checkout
;!                      _cf_checkrange
;!                        _cf_checksum
;! ---------------------------------------------------------------------------------
;! (4) _cf_checksum                                         18    18      0     328
;!                                              0 BANK0     18    18      0
;! ---------------------------------------------------------------------------------
;! (4) _cf_checkrange                                        3     3      0     167
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (4) _cf_checkout                                          4     4      0    1146
;!                                              6 BANK0      4     4      0
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     694
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _HexToAscii                                           2     2      0     130
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _bouton_refresh                                       6     6      0     489
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (1) _bouton_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _armement_process                                     4     4      0   11777
;!                                             36 BANK0      4     4      0
;!                       _arm_UAlim_1A
;!                     _check_comutest
;!                        _ecran_blank
;!                         _ecran_wait
;!                               _itoa
;! ---------------------------------------------------------------------------------
;! (2) _itoa                                                 8     2      6    2301
;!                                             17 BANK0      8     2      6
;!                               _utoa
;! ---------------------------------------------------------------------------------
;! (3) _utoa                                                 9     3      6    1606
;!                                              8 BANK0      9     3      6
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     386
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     549
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _ecran_wait                                           1     1      0      31
;!                                              1 BANK0      1     1      0
;!                          _ecran_dot
;!                    _ecran_raz_digit
;! ---------------------------------------------------------------------------------
;! (2) _check_comutest                                       2     2      0    1079
;!                                              5 BANK0      2     2      0
;!                        _ecran_blank
;!                      _ecran_refresh
;! ---------------------------------------------------------------------------------
;! (3) _ecran_refresh                                        2     2      0    1048
;!                                              3 BANK0      2     2      0
;!                          _ecran_dot
;!               _ecran_print_one_char
;! ---------------------------------------------------------------------------------
;! (4) _ecran_print_one_char                                 2     1      1    1017
;!                                              1 BANK0      2     1      1
;!                        _ecran_digit
;!                    _ecran_raz_digit
;! ---------------------------------------------------------------------------------
;! (3) _ecran_raz_digit                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _ecran_digit                                          1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _ecran_dot                                            1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _ecran_blank                                          1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _arm_UAlim_1A                                         8     6      2    8332
;!                                             28 BANK0      8     6      2
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                           _ana_read
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (3) _ana_read                                             6     4      2     444
;!                                              6 BANK0      6     4      2
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (4) _delay_ms                                             6     4      2     373
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (3) ___lwtoft                                             5     2      3    2575
;!                                              8 BANK0      5     2      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             15    11      4     602
;!                                              0 BANK0     15    11      4
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    4301
;!                                             13 BANK0     15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2313
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Low_priority                                        17    17      0       0
;!                                             28 COMRAM    17    17      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _High_priority                                       19    19      0     428
;!                                              9 COMRAM    19    19      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (8) ___awdiv                                              9     5      4     428
;!                                              0 COMRAM     9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _armement_process
;!     _arm_UAlim_1A
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___fttol
;!       ___lwtoft
;!         ___ftpack
;!       _ana_read
;!         _delay_ms
;!       _delay_ms
;!     _check_comutest
;!       _ecran_blank
;!       _ecran_refresh
;!         _ecran_dot
;!         _ecran_print_one_char
;!           _ecran_digit
;!           _ecran_raz_digit
;!     _ecran_blank
;!     _ecran_wait
;!       _ecran_dot
;!       _ecran_raz_digit
;!     _itoa
;!       _utoa
;!         ___lwdiv
;!         ___lwmod
;!   _bouton_init
;!   _bouton_refresh
;!   _cf_check_and_display
;!     _HexToAscii
;!     _cf_check
;!       _cf_checkout
;!         ___wmul
;!       _cf_checkrange
;!       _cf_checksum
;!     _ecran_print_one_char
;!       _ecran_digit
;!       _ecran_raz_digit
;!     _ecran_refresh
;!       _ecran_dot
;!       _ecran_print_one_char
;!         _ecran_digit
;!         _ecran_raz_digit
;!     _eeprom_read_array
;!       _eeprom_read
;!   _check_bpon
;!     _ecran_print_one_char
;!       _ecran_digit
;!       _ecran_raz_digit
;!   _check_comutest
;!     _ecran_blank
;!     _ecran_refresh
;!       _ecran_dot
;!       _ecran_print_one_char
;!         _ecran_digit
;!         _ecran_raz_digit
;!   _check_idtest
;!     _cf_rcv
;!       _cf_check
;!         _cf_checkout
;!           ___wmul
;!         _cf_checkrange
;!         _cf_checksum
;!       _ecran_print_one_char
;!         _ecran_digit
;!         _ecran_raz_digit
;!       _eeprom_read_array
;!         _eeprom_read
;!       _eeprom_write_array
;!         _eeprom_write
;!     _ecran_print_one_char
;!       _ecran_digit
;!       _ecran_raz_digit
;!     _micro_config_rs
;!   _check_program_0
;!     _ecran_blank
;!     _ecran_refresh
;!       _ecran_dot
;!       _ecran_print_one_char
;!         _ecran_digit
;!         _ecran_raz_digit
;!     _ecran_wait
;!       _ecran_dot
;!       _ecran_raz_digit
;!   _ecran_refresh
;!     _ecran_dot
;!     _ecran_print_one_char
;!       _ecran_digit
;!       _ecran_raz_digit
;!   _feu_check_bp
;!     _ecran_print_num
;!       _DecToStr
;!         ___awmod
;!         ___lbdiv
;!         ___wmul
;!     _ecran_print_one_char
;!       _ecran_digit
;!       _ecran_raz_digit
;!   _feu_process
;!     _delay_ms
;!     _feu_check_end
;!     _feu_tir
;!       _delay_ms
;!       _register_write
;!   _hw_config
;!   _micro_config
;!   _micro_wait
;!     _check_comutest
;!       _ecran_blank
;!       _ecran_refresh
;!         _ecran_dot
;!         _ecran_print_one_char
;!           _ecran_digit
;!           _ecran_raz_digit
;!     _ecran_blank
;!     _ecran_print_one_char
;!       _ecran_digit
;!       _ecran_raz_digit
;!     _ecran_wait
;!       _ecran_dot
;!       _ecran_raz_digit
;!   _test_process
;!     _check_UAlim
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___fttol
;!       ___lwtoft
;!         ___ftpack
;!       _ana_read
;!         _delay_ms
;!     _check_UInfla
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___fttol
;!       ___lwtoft
;!         ___ftpack
;!       _ana_read
;!         _delay_ms
;!     _check_comutest
;!       _ecran_blank
;!       _ecran_refresh
;!         _ecran_dot
;!         _ecran_print_one_char
;!           _ecran_digit
;!           _ecran_raz_digit
;!     _ecran_blank
;!     _ecran_print_num
;!       _DecToStr
;!         ___awmod
;!         ___lbdiv
;!         ___wmul
;!     _ecran_wait
;!       _ecran_dot
;!       _ecran_raz_digit
;!     _itoa
;!       _utoa
;!         ___lwdiv
;!         ___lwmod
;!     _register_write
;!
;! _Low_priority (ROOT)
;!
;! _High_priority (ROOT)
;!   ___awdiv
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      17        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      6B       7       41.8%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     2B      6A       5       82.8%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     2D      57       1       68.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     12C      15        0.0%
;!DATA                 0      0     12C       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 132 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cpt             1   42[BANK0 ] unsigned char 
;;  temp            1    0        unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_armement_process
;;		_bouton_init
;;		_bouton_refresh
;;		_cf_check_and_display
;;		_check_bpon
;;		_check_comutest
;;		_check_idtest
;;		_check_program_0
;;		_ecran_refresh
;;		_feu_check_bp
;;		_feu_process
;;		_hw_config
;;		_micro_config
;;		_micro_wait
;;		_test_process
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	132
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	132
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	134
	
l6744:
;main.c: 134: unsigned char i, temp, cpt = 0;
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@cpt))&0ffh
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	line	137
	
l6746:; BSR set to: 0

;main.c: 137: hw_config();
	call	_hw_config	;wreg free
	line	138
	
l6748:
;main.c: 138: micro_config();
	call	_micro_config	;wreg free
	line	141
	
l6750:
;main.c: 141: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	144
	
l6752:
;main.c: 144: if (check_program_0() == 0)
	call	_check_program_0	;wreg free
	iorlw	0
	btfss	status,2
	goto	u6401
	goto	u6400
u6401:
	goto	l6760
u6400:
	line	147
	
l6754:
;main.c: 145: {
;main.c: 147: check_idtest();
	call	_check_idtest	;wreg free
	line	150
	
l6756:
;main.c: 150: check_bpon();
	call	_check_bpon	;wreg free
	line	153
	
l6758:
;main.c: 153: cf_check_and_display();
	call	_cf_check_and_display	;wreg free
	goto	l6760
	line	154
	
l105:
	line	156
	
l6760:
;main.c: 154: }
;main.c: 156: bouton_init();
	call	_bouton_init	;wreg free
	goto	l6762
	line	158
;main.c: 158: while (1)
	
l106:
	line	160
	
l6762:
;main.c: 159: {
;main.c: 160: bouton_refresh();
	call	_bouton_refresh	;wreg free
	line	161
	
l6764:
;main.c: 161: ecran_refresh();
	call	_ecran_refresh	;wreg free
	line	163
;main.c: 163: switch (Micro.Phase)
	goto	l6776
	line	165
;main.c: 164: {
;main.c: 165: case 0x00:
	
l108:
	line	166
	
l6766:
;main.c: 166: micro_wait();
	call	_micro_wait	;wreg free
	line	167
;main.c: 167: break;
	goto	l6762
	line	168
;main.c: 168: case 0x01:
	
l110:
	line	169
	
l6768:
;main.c: 169: test_process();
	call	_test_process	;wreg free
	line	170
;main.c: 170: break;
	goto	l6762
	line	171
;main.c: 171: case 0x02:
	
l111:
	line	172
	
l6770:
;main.c: 172: armement_process();
	call	_armement_process	;wreg free
	line	173
;main.c: 173: break;
	goto	l6762
	line	174
;main.c: 174: case 0x03:
	
l112:
	line	175
	
l6772:
;main.c: 175: feu_process();
	call	_feu_process	;wreg free
	line	176
;main.c: 176: feu_check_bp();
	call	_feu_check_bp	;wreg free
	line	177
;main.c: 177: break;
	goto	l6762
	line	178
	
l6774:
;main.c: 178: }
	goto	l6762
	line	163
	
l107:
	
l6776:
	movf	(0+((c:_Micro)+02h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l6766
	xorlw	1^0	; case 1
	skipnz
	goto	l6768
	xorlw	2^1	; case 2
	skipnz
	goto	l6770
	xorlw	3^2	; case 3
	skipnz
	goto	l6772
	goto	l6762

	line	178
	
l109:
	goto	l6762
	line	179
	
l113:
	line	158
	goto	l6762
	
l114:
	line	180
	
l115:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_test_process

;; *************** function _test_process *****************
;; Defined at:
;;		line 102 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   39[BANK0 ] unsigned short 
;;  ret             1   38[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_check_UAlim
;;		_check_UInfla
;;		_check_comutest
;;		_ecran_blank
;;		_ecran_print_num
;;		_ecran_wait
;;		_itoa
;;		_register_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"test.c"
	line	102
global __ptext1
__ptext1:
psect	text1
	file	"test.c"
	line	102
	global	__size_of_test_process
	__size_of_test_process	equ	__end_of_test_process-_test_process
	
_test_process:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	105
	
l6406:
;test.c: 104: unsigned short temp;
;test.c: 105: unsigned char i, ret = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((test_process@ret))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	107
;test.c: 107: switch(Test.Step)
	goto	l6580
	line	109
;test.c: 108: {
;test.c: 109: case 0x01 :
	
l564:; BSR set to: 0

	line	110
;test.c: 110: if (Bouton[Bp_IdTest].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+05h))&0ffh,1
	goto	u5801
	goto	u5800
u5801:
	goto	l616
u5800:
	line	112
	
l6408:; BSR set to: 0

;test.c: 111: {
;test.c: 112: Test.Step = 0x02;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l616
	line	113
	
l565:; BSR set to: 0

	line	114
;test.c: 113: }
;test.c: 114: break;
	goto	l616
	line	116
;test.c: 116: case 0x02:
	
l567:; BSR set to: 0

	line	117
	
l6410:; BSR set to: 0

;test.c: 117: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	119
	
l6412:
;test.c: 119: Test.Cpt = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Test)+01h)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	121
	
l6414:; BSR set to: 0

;test.c: 121: temp = check_UAlim();
	call	_check_UAlim	;wreg free
	movlb	0	; () banked
	movff	0+?_check_UAlim,(test_process@temp)
	movlb	0	; () banked
	movff	1+?_check_UAlim,(test_process@temp+1)
	line	123
	
l6416:; BSR set to: 0

;test.c: 123: Ecran.Digits = PrintTest;
	movlb	0	; () banked
		movlw	high(_PrintTest)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_PrintTest)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	125
	
l6418:; BSR set to: 0

;test.c: 125: itoa(Ecran.Digits,temp,10);
	movlb	0	; () banked
	movlb	0	; () banked
		movff	1+(_Ecran+04h),(itoa@buf+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	0+(_Ecran+04h),(itoa@buf)

	movff	(test_process@temp),(itoa@val)
	movff	(test_process@temp+1),(itoa@val+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((itoa@base+1))&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movwf	((itoa@base))&0ffh
	call	_itoa	;wreg free
	line	127
	
l6420:
;test.c: 127: Ecran.Dot[0] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+06h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	128
	
l6422:; BSR set to: 0

;test.c: 128: Ecran.Dot[1] = 1;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+07h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	129
	
l6424:; BSR set to: 0

;test.c: 129: Ecran.Dot[2] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+08h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	130
	
l6426:; BSR set to: 0

;test.c: 130: Ecran.Dot[3] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+09h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	132
	
l6428:; BSR set to: 0

;test.c: 132: Test.Step = 0x03;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(03h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	133
;test.c: 133: break;
	goto	l616
	line	134
;test.c: 134: case 0x03 :
	
l568:; BSR set to: 0

	line	135
;test.c: 135: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u5811
	goto	u5810
u5811:
	goto	l616
u5810:
	line	137
	
l6430:; BSR set to: 0

;test.c: 136: {
;test.c: 137: if (Micro.Mod.P_0 == 0) {Test.Step = 0x04;}
	btfsc	(0+((c:_Micro)+05h)),c,0
	goto	u5821
	goto	u5820
u5821:
	goto	l6434
u5820:
	
l6432:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6436
	line	138
	
l570:; BSR set to: 0

	
l6434:; BSR set to: 0

;test.c: 138: else {Test.Step = 0x0A;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ah)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6436
	
l571:; BSR set to: 0

	line	140
	
l6436:; BSR set to: 0

;test.c: 140: ecran_blank();
	call	_ecran_blank	;wreg free
	line	141
	
l6438:
;test.c: 141: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	142
	
l6440:
;test.c: 142: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	143
	
l569:
	line	144
;test.c: 143: }
;test.c: 144: break;
	goto	l616
	line	145
;test.c: 145: case 0x04:
	
l572:
	line	146
	
l6442:
;test.c: 146: if (Cf.Data[Test.Cpt*3] == 0)
	movf	(0+((c:_Test)+01h)),c,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfss	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l6446
u5830:
	line	149
	
l6444:; BSR set to: 1

;test.c: 147: {
;test.c: 149: Test.Step = 0x08;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(08h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	150
;test.c: 150: }
	goto	l616
	line	151
	
l573:; BSR set to: 0

	
l6446:
;test.c: 151: else if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	015h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5841
	goto	u5840
u5841:
	goto	l616
u5840:
	line	153
	
l6448:; BSR set to: 0

;test.c: 152: {
;test.c: 153: register_write(Cf.Data[Test.Cpt*3]);
	movf	(0+((c:_Test)+01h)),c,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_register_write
	line	154
	
l6450:
;test.c: 154: Test.Step = 0x05;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(05h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	155
	
l6452:; BSR set to: 0

;test.c: 155: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	156
	
l575:; BSR set to: 0

	goto	l616
	line	157
	
l574:; BSR set to: 0

;test.c: 156: }
;test.c: 157: break;
	goto	l616
	line	158
;test.c: 158: case 0x05:
	
l576:; BSR set to: 0

	line	159
	
l6454:; BSR set to: 0

;test.c: 159: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	015h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5851
	goto	u5850
u5851:
	goto	l616
u5850:
	line	161
	
l6456:; BSR set to: 0

;test.c: 160: {
;test.c: 161: temp = check_UInfla();
	call	_check_UInfla	;wreg free
	movlb	0	; () banked
	movff	0+?_check_UInfla,(test_process@temp)
	movlb	0	; () banked
	movff	1+?_check_UInfla,(test_process@temp+1)
	line	163
	
l6458:; BSR set to: 0

;test.c: 163: if (temp > 85) {Test.Step = 0x07;}
	movlw	056h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((test_process@temp))&0ffh,w
	movlw	0
	movlb	0	; () banked
	subwfb	((test_process@temp+1))&0ffh,w
	btfss	status,0
	goto	u5861
	goto	u5860
u5861:
	goto	l6462
u5860:
	
l6460:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(07h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6464
	line	164
	
l578:; BSR set to: 0

	
l6462:; BSR set to: 0

;test.c: 164: else {Test.Step = 0x06;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(06h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6464
	
l579:; BSR set to: 0

	line	167
	
l6464:; BSR set to: 0

;test.c: 167: ecran_print_num(Cf.Data[Test.Cpt*3]);
	movf	(0+((c:_Test)+01h)),c,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_ecran_print_num
	line	168
	
l6466:
;test.c: 168: register_write(0);
	movlw	(0)&0ffh
	
	call	_register_write
	line	170
	
l6468:
;test.c: 170: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	171
	
l577:
	line	172
;test.c: 171: }
;test.c: 172: break;
	goto	l616
	line	173
;test.c: 173: case 0x06:
	
l580:
	line	174
	
l6470:
;test.c: 174: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	015h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5871
	goto	u5870
u5871:
	goto	l616
u5870:
	line	176
	
l6472:; BSR set to: 0

;test.c: 175: {
;test.c: 176: if (++Test.Cpt > 31) {Test.Step = 0x08;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(020h-1)
	cpfsgt	indf2
	goto	u5881
	goto	u5880
u5881:
	goto	l6476
u5880:
	
l6474:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(08h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6478
	line	177
	
l582:; BSR set to: 0

	
l6476:; BSR set to: 0

;test.c: 177: else {Test.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6478
	
l583:; BSR set to: 0

	line	178
	
l6478:; BSR set to: 0

;test.c: 178: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	179
	
l6480:
;test.c: 179: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	180
	
l581:
	line	181
;test.c: 180: }
;test.c: 181: break;
	goto	l616
	line	182
;test.c: 182: case 0x07:
	
l584:; BSR set to: 0

	line	184
;test.c: 183: if ( (Bouton[Bp_IdTest].State == 0)
;test.c: 184: && ((((unsigned short) (Cptms - Test.Time) > 500) ? 1 : 0)))
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u5891
	goto	u5890
u5891:
	goto	l616
u5890:
	
l6482:; BSR set to: 0

	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	0F5h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	01h
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5901
	goto	u5900
u5901:
	goto	l616
u5900:
	line	186
	
l6484:; BSR set to: 0

;test.c: 185: {
;test.c: 186: if (++Test.Cpt > 31) {Test.Step = 0x08;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(020h-1)
	cpfsgt	indf2
	goto	u5911
	goto	u5910
u5911:
	goto	l6488
u5910:
	
l6486:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(08h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6490
	line	187
	
l586:; BSR set to: 0

	
l6488:; BSR set to: 0

;test.c: 187: else {Test.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6490
	
l587:; BSR set to: 0

	line	188
	
l6490:; BSR set to: 0

;test.c: 188: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	189
	
l6492:
;test.c: 189: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	190
	
l585:
	line	191
;test.c: 190: }
;test.c: 191: break;
	goto	l616
	line	192
;test.c: 192: case 0x08:
	
l588:
	line	193
	
l6494:
;test.c: 193: if (Test.Cpt != 0)
	movf	(0+((c:_Test)+01h)),c,w
	btfsc	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l6498
u5920:
	line	195
	
l6496:
;test.c: 194: {
;test.c: 195: ecran_print_num(Cf.Data[96]);
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+060h))&0ffh,w	;volatile
	
	call	_ecran_print_num
	line	196
;test.c: 196: }
	goto	l590
	line	197
	
l589:
	line	199
	
l6498:
;test.c: 197: else
;test.c: 198: {
;test.c: 199: Ecran.Digit[2] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	200
;test.c: 200: Ecran.Digit[3] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	201
	
l590:
	line	203
;test.c: 201: }
;test.c: 203: Ecran.Digit[0] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	204
;test.c: 204: Ecran.Digit[1] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	206
	
l6500:; BSR set to: 0

;test.c: 206: Ecran.Digits = Ecran.Digit;
	movlb	0	; () banked
		movlw	high(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	207
	
l6502:; BSR set to: 0

;test.c: 207: Test.Step = 0x09;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(09h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	208
;test.c: 208: break;
	goto	l616
	line	209
;test.c: 209: case 0x09:
	
l591:; BSR set to: 0

	line	210
;test.c: 210: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u5931
	goto	u5930
u5931:
	goto	l616
u5930:
	line	212
	
l6504:; BSR set to: 0

;test.c: 211: {
;test.c: 212: Test.Step = 0x10;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(010h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	214
	
l6506:; BSR set to: 0

;test.c: 214: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	215
	
l592:; BSR set to: 0

	line	216
;test.c: 215: }
;test.c: 216: break;
	goto	l616
	line	217
;test.c: 217: case 0x0A:
	
l593:; BSR set to: 0

	line	218
	
l6508:; BSR set to: 0

;test.c: 218: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	015h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5941
	goto	u5940
u5941:
	goto	l616
u5940:
	line	220
	
l6510:; BSR set to: 0

;test.c: 219: {
;test.c: 220: register_write((unsigned char) (Test.Cpt + 1));
	incf	(0+((c:_Test)+01h)),c,w
	
	call	_register_write
	line	221
	
l6512:
;test.c: 221: Test.Step = 0x0B;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Bh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	222
	
l6514:; BSR set to: 0

;test.c: 222: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	223
	
l594:; BSR set to: 0

	line	224
;test.c: 223: }
;test.c: 224: break;
	goto	l616
	line	225
;test.c: 225: case 0x0B:
	
l595:; BSR set to: 0

	line	226
	
l6516:; BSR set to: 0

;test.c: 226: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	015h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5951
	goto	u5950
u5951:
	goto	l616
u5950:
	line	228
	
l6518:; BSR set to: 0

;test.c: 227: {
;test.c: 228: temp = check_UInfla();
	call	_check_UInfla	;wreg free
	movlb	0	; () banked
	movff	0+?_check_UInfla,(test_process@temp)
	movlb	0	; () banked
	movff	1+?_check_UInfla,(test_process@temp+1)
	line	231
	
l6520:; BSR set to: 0

;test.c: 231: if (temp > 85) {Test.Step = 0x0D;}
	movlw	056h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((test_process@temp))&0ffh,w
	movlw	0
	movlb	0	; () banked
	subwfb	((test_process@temp+1))&0ffh,w
	btfss	status,0
	goto	u5961
	goto	u5960
u5961:
	goto	l6524
u5960:
	
l6522:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Dh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6526
	line	232
	
l597:; BSR set to: 0

	
l6524:; BSR set to: 0

;test.c: 232: else {Test.Step = 0x0C;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ch)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6526
	
l598:; BSR set to: 0

	line	235
	
l6526:; BSR set to: 0

;test.c: 235: ecran_print_num((unsigned char) (Test.Cpt + 1));
	incf	(0+((c:_Test)+01h)),c,w
	
	call	_ecran_print_num
	line	236
	
l6528:
;test.c: 236: register_write(0);
	movlw	(0)&0ffh
	
	call	_register_write
	line	238
	
l6530:
;test.c: 238: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	239
	
l596:
	line	240
;test.c: 239: }
;test.c: 240: break;
	goto	l616
	line	241
;test.c: 241: case 0x0C:
	
l599:
	line	242
	
l6532:
;test.c: 242: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	015h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u5971
	goto	u5970
u5971:
	goto	l616
u5970:
	line	244
	
l6534:; BSR set to: 0

;test.c: 243: {
;test.c: 244: if (++Test.Cpt > 31) {Test.Step = 0x0E;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(020h-1)
	cpfsgt	indf2
	goto	u5981
	goto	u5980
u5981:
	goto	l6538
u5980:
	
l6536:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Eh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6540
	line	245
	
l601:; BSR set to: 0

	
l6538:; BSR set to: 0

;test.c: 245: else {Test.Step = 0x0A;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ah)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6540
	
l602:; BSR set to: 0

	line	246
	
l6540:; BSR set to: 0

;test.c: 246: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	247
	
l6542:
;test.c: 247: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	248
	
l600:
	line	249
;test.c: 248: }
;test.c: 249: break;
	goto	l616
	line	250
;test.c: 250: case 0x0D:
	
l603:; BSR set to: 0

	line	252
;test.c: 251: if ( (Bouton[Bp_IdTest].State == 0)
;test.c: 252: && ((((unsigned short) (Cptms - Test.Time) > 500) ? 1 : 0)))
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u5991
	goto	u5990
u5991:
	goto	l616
u5990:
	
l6544:; BSR set to: 0

	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	0F5h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	01h
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u6001
	goto	u6000
u6001:
	goto	l616
u6000:
	line	254
	
l6546:; BSR set to: 0

;test.c: 253: {
;test.c: 254: if (++Test.Cpt > 31) {Test.Step = 0x0E;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(020h-1)
	cpfsgt	indf2
	goto	u6011
	goto	u6010
u6011:
	goto	l6550
u6010:
	
l6548:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Eh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6552
	line	255
	
l605:; BSR set to: 0

	
l6550:; BSR set to: 0

;test.c: 255: else {Test.Step = 0x0A;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ah)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6552
	
l606:; BSR set to: 0

	line	256
	
l6552:; BSR set to: 0

;test.c: 256: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	257
	
l6554:
;test.c: 257: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	258
	
l604:
	line	259
;test.c: 258: }
;test.c: 259: break;
	goto	l616
	line	260
;test.c: 260: case 0x0E:
	
l607:
	line	261
	
l6556:
;test.c: 261: if (Test.Cpt != 0)
	movf	(0+((c:_Test)+01h)),c,w
	btfsc	status,2
	goto	u6021
	goto	u6020
u6021:
	goto	l6560
u6020:
	line	263
	
l6558:
;test.c: 262: {
;test.c: 263: ecran_print_num(Test.Cpt);
	movf	(0+((c:_Test)+01h)),c,w
	
	call	_ecran_print_num
	line	264
;test.c: 264: }
	goto	l609
	line	265
	
l608:
	line	267
	
l6560:
;test.c: 265: else
;test.c: 266: {
;test.c: 267: Ecran.Digit[2] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	268
;test.c: 268: Ecran.Digit[3] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	269
	
l609:
	line	271
;test.c: 269: }
;test.c: 271: Ecran.Digit[0] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	272
;test.c: 272: Ecran.Digit[1] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	274
	
l6562:; BSR set to: 0

;test.c: 274: Ecran.Digits = Ecran.Digit;
	movlb	0	; () banked
		movlw	high(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	275
	
l6564:; BSR set to: 0

;test.c: 275: Test.Step = 0x0F;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Fh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	276
;test.c: 276: break;
	goto	l616
	line	277
;test.c: 277: case 0x0F:
	
l610:; BSR set to: 0

	line	278
;test.c: 278: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6031
	goto	u6030
u6031:
	goto	l616
u6030:
	line	280
	
l6566:; BSR set to: 0

;test.c: 279: {
;test.c: 280: Test.Step = 0x10;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(010h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	282
	
l6568:; BSR set to: 0

;test.c: 282: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l616
	line	283
	
l611:; BSR set to: 0

	line	284
;test.c: 283: }
;test.c: 284: break;
	goto	l616
	line	285
;test.c: 285: case 0x10:
	
l612:; BSR set to: 0

	line	286
	
l6570:; BSR set to: 0

;test.c: 286: if ((((unsigned short) (Cptms - Test.Time) > 1000) ? 1 : 0))
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_test_process+0+0
	movff	postdec2,??_test_process+0+0+1
	movlb	0	; () banked
	comf	(??_test_process+0+0)&0ffh
	comf	(??_test_process+0+1)&0ffh
	infsnz	(??_test_process+0+0)&0ffh
	incf	(??_test_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_test_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_test_process+0+1)&0ffh
	movlw	0E9h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	03h
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u6041
	goto	u6040
u6041:
	goto	l616
u6040:
	line	288
	
l6572:; BSR set to: 0

;test.c: 287: {
;test.c: 288: Test.Step = 0x11;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(011h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	290
	
l6574:; BSR set to: 0

;test.c: 290: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l616
	line	291
	
l613:
	line	292
;test.c: 291: }
;test.c: 292: break;
	goto	l616
	line	293
;test.c: 293: case 0x11:
	
l614:; BSR set to: 0

	line	294
;test.c: 294: if (Bouton[Bp_IdTest].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+05h))&0ffh,1
	goto	u6051
	goto	u6050
u6051:
	goto	l616
u6050:
	line	296
	
l6576:; BSR set to: 0

;test.c: 295: {
;test.c: 296: Micro.Phase = 0x00;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l616
	line	297
	
l615:; BSR set to: 0

	line	298
;test.c: 297: }
;test.c: 298: break;
	goto	l616
	line	299
	
l6578:; BSR set to: 0

;test.c: 299: }
	goto	l616
	line	107
	
l563:; BSR set to: 0

	
l6580:; BSR set to: 0

	movf	((c:_Test)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 17, Range of values is 1 to 17
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           52    27 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l564
	xorlw	2^1	; case 2
	skipnz
	goto	l6410
	xorlw	3^2	; case 3
	skipnz
	goto	l568
	xorlw	4^3	; case 4
	skipnz
	goto	l6442
	xorlw	5^4	; case 5
	skipnz
	goto	l6454
	xorlw	6^5	; case 6
	skipnz
	goto	l6470
	xorlw	7^6	; case 7
	skipnz
	goto	l584
	xorlw	8^7	; case 8
	skipnz
	goto	l6494
	xorlw	9^8	; case 9
	skipnz
	goto	l591
	xorlw	10^9	; case 10
	skipnz
	goto	l6508
	xorlw	11^10	; case 11
	skipnz
	goto	l6516
	xorlw	12^11	; case 12
	skipnz
	goto	l6532
	xorlw	13^12	; case 13
	skipnz
	goto	l603
	xorlw	14^13	; case 14
	skipnz
	goto	l6556
	xorlw	15^14	; case 15
	skipnz
	goto	l610
	xorlw	16^15	; case 16
	skipnz
	goto	l6570
	xorlw	17^16	; case 17
	skipnz
	goto	l614
	goto	l616

	line	299
	
l566:; BSR set to: 0

	line	302
;test.c: 301: return ret;
;	Return value of _test_process is never used
	
l616:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_test_process
	__end_of_test_process:
	signat	_test_process,89
	global	_check_UInfla

;; *************** function _check_UInfla *****************
;; Defined at:
;;		line 80 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   34[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   28[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_ana_read
;; This function is called by:
;;		_test_process
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	80
global __ptext2
__ptext2:
psect	text2
	file	"test.c"
	line	80
	global	__size_of_check_UInfla
	__size_of_check_UInfla	equ	__end_of_check_UInfla-_check_UInfla
	
_check_UInfla:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	82
	
l6086:
;test.c: 82: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((check_UInfla@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((check_UInfla@temp))&0ffh
	line	84
	
l6088:; BSR set to: 0

;test.c: 84: if (PORTCbits.RC5 == 1)
	btfss	((c:3970)),c,5	;volatile
	goto	u5391
	goto	u5390
u5391:
	goto	l6092
u5390:
	line	86
	
l6090:; BSR set to: 0

;test.c: 85: {
;test.c: 86: PORTBbits.RB1 = 1;
	bsf	((c:3969)),c,1	;volatile
	line	87
;test.c: 87: PORTAbits.RA5 = 1;
	bsf	((c:3968)),c,5	;volatile
	goto	l6092
	line	88
	
l559:; BSR set to: 0

	line	90
	
l6092:; BSR set to: 0

;test.c: 88: }
;test.c: 90: temp = ana_read(1);
	movlw	(01h)&0ffh
	
	call	_ana_read
	movlb	0	; () banked
	movff	0+?_ana_read,(check_UInfla@temp)
	movlb	0	; () banked
	movff	1+?_ana_read,(check_UInfla@temp+1)
	line	92
	
l6094:; BSR set to: 0

;test.c: 92: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	93
	
l6096:; BSR set to: 0

;test.c: 93: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	95
;test.c: 95: Test.U_Infla = (float) temp * 0.0049f;
	movff	(check_UInfla@temp),(___lwtoft@c)
	movff	(check_UInfla@temp+1),(___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(___ftmul@f1)
	movff	1+?___lwtoft,(___ftmul@f1+1)
	movff	2+?___lwtoft,(___ftmul@f1+2)
	movlw	low(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+((c:_Test)+07h)
	movff	1+?___ftmul,1+((c:_Test)+07h)
	movff	2+?___ftmul,2+((c:_Test)+07h)
	line	96
;test.c: 96: Test.U_Infla = Test.U_Infla * 11.62f;
	movff	0+((c:_Test)+07h),(___ftmul@f1)
	movff	1+((c:_Test)+07h),(___ftmul@f1+1)
	movff	2+((c:_Test)+07h),(___ftmul@f1+2)
	movlw	low(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+((c:_Test)+07h)
	movff	1+?___ftmul,1+((c:_Test)+07h)
	movff	2+?___ftmul,2+((c:_Test)+07h)
	line	97
;test.c: 97: Test.U_Infla = Test.U_Infla * 100.0f;
	movff	0+((c:_Test)+07h),(___ftmul@f1)
	movff	1+((c:_Test)+07h),(___ftmul@f1+1)
	movff	2+((c:_Test)+07h),(___ftmul@f1+2)
	movlw	low(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+((c:_Test)+07h)
	movff	1+?___ftmul,1+((c:_Test)+07h)
	movff	2+?___ftmul,2+((c:_Test)+07h)
	line	99
;test.c: 99: return (unsigned short) Test.U_Infla;
	movff	0+((c:_Test)+07h),(___fttol@f1)
	movff	1+((c:_Test)+07h),(___fttol@f1+1)
	movff	2+((c:_Test)+07h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_check_UInfla+0+0
	movff	1+?___fttol,??_check_UInfla+0+0+1
	movff	2+?___fttol,??_check_UInfla+0+0+2
	movff	3+?___fttol,??_check_UInfla+0+0+3
	
	movff	??_check_UInfla+0+0,(?_check_UInfla)
	movff	??_check_UInfla+0+1,(?_check_UInfla+1)
	goto	l560
	
l6098:
	line	100
	
l560:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_check_UInfla
	__end_of_check_UInfla:
	signat	_check_UInfla,90
	global	_check_UAlim

;; *************** function _check_UAlim *****************
;; Defined at:
;;		line 64 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   34[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   28[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_ana_read
;; This function is called by:
;;		_test_process
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	64
global __ptext3
__ptext3:
psect	text3
	file	"test.c"
	line	64
	global	__size_of_check_UAlim
	__size_of_check_UAlim	equ	__end_of_check_UAlim-_check_UAlim
	
_check_UAlim:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	66
	
l6068:
;test.c: 66: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((check_UAlim@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((check_UAlim@temp))&0ffh
	line	68
	
l6070:; BSR set to: 0

;test.c: 68: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	69
	
l6072:; BSR set to: 0

;test.c: 69: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	71
	
l6074:; BSR set to: 0

;test.c: 71: temp = ana_read(0);
	movlw	(0)&0ffh
	
	call	_ana_read
	movlb	0	; () banked
	movff	0+?_ana_read,(check_UAlim@temp)
	movlb	0	; () banked
	movff	1+?_ana_read,(check_UAlim@temp+1)
	line	73
	
l6076:; BSR set to: 0

;test.c: 73: Test.U_Alim = (float) temp * 0.0049f;
	movff	(check_UAlim@temp),(___lwtoft@c)
	movff	(check_UAlim@temp+1),(___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(___ftmul@f1)
	movff	1+?___lwtoft,(___ftmul@f1+1)
	movff	2+?___lwtoft,(___ftmul@f1+2)
	movlw	low(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+((c:_Test)+04h)
	movff	1+?___ftmul,1+((c:_Test)+04h)
	movff	2+?___ftmul,2+((c:_Test)+04h)
	line	74
	
l6078:
;test.c: 74: Test.U_Alim = Test.U_Alim * 11.62f;
	movff	0+((c:_Test)+04h),(___ftmul@f1)
	movff	1+((c:_Test)+04h),(___ftmul@f1+1)
	movff	2+((c:_Test)+04h),(___ftmul@f1+2)
	movlw	low(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+((c:_Test)+04h)
	movff	1+?___ftmul,1+((c:_Test)+04h)
	movff	2+?___ftmul,2+((c:_Test)+04h)
	line	75
	
l6080:
;test.c: 75: Test.U_Alim = Test.U_Alim * 100.0f;
	movff	0+((c:_Test)+04h),(___ftmul@f1)
	movff	1+((c:_Test)+04h),(___ftmul@f1+1)
	movff	2+((c:_Test)+04h),(___ftmul@f1+2)
	movlw	low(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+((c:_Test)+04h)
	movff	1+?___ftmul,1+((c:_Test)+04h)
	movff	2+?___ftmul,2+((c:_Test)+04h)
	line	77
	
l6082:
;test.c: 77: return (unsigned short) Test.U_Alim;
	movff	0+((c:_Test)+04h),(___fttol@f1)
	movff	1+((c:_Test)+04h),(___fttol@f1+1)
	movff	2+((c:_Test)+04h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_check_UAlim+0+0
	movff	1+?___fttol,??_check_UAlim+0+0+1
	movff	2+?___fttol,??_check_UAlim+0+0+2
	movff	3+?___fttol,??_check_UAlim+0+0+3
	
	movff	??_check_UAlim+0+0,(?_check_UAlim)
	movff	??_check_UAlim+0+1,(?_check_UAlim+1)
	goto	l556
	
l6084:
	line	78
	
l556:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_check_UAlim
	__end_of_check_UAlim:
	signat	_check_UAlim,90
	global	_micro_wait

;; *************** function _micro_wait *****************
;; Defined at:
;;		line 91 in file "micro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempTime        2    9[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_check_comutest
;;		_ecran_blank
;;		_ecran_print_one_char
;;		_ecran_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"micro.c"
	line	91
global __ptext4
__ptext4:
psect	text4
	file	"micro.c"
	line	91
	global	__size_of_micro_wait
	__size_of_micro_wait	equ	__end_of_micro_wait-_micro_wait
	
_micro_wait:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	93
	
l6356:
;micro.c: 93: switch (Micro.Step)
	goto	l6404
	line	95
;micro.c: 94: {
;micro.c: 95: case 0x00:
	
l815:
	line	96
;micro.c: 96: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u5721
	goto	u5720
u5721:
	goto	l833
u5720:
	line	98
	
l6358:; BSR set to: 0

;micro.c: 97: {
;micro.c: 98: Micro.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(01h)
	movwf	(0+((c:_Micro)+03h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	99
	
l6360:; BSR set to: 0

;micro.c: 99: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l833
	line	100
	
l816:
	line	101
;micro.c: 100: }
;micro.c: 101: break;
	goto	l833
	line	102
;micro.c: 102: case 0x01:
	
l818:
	line	103
;micro.c: 103: if (Bouton[Bp_IdTest].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+05h))&0ffh,1
	goto	u5731
	goto	u5730
u5731:
	goto	l833
u5730:
	line	105
	
l6362:; BSR set to: 0

;micro.c: 104: {
;micro.c: 105: Micro.Step = 0x03;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(03h)
	movwf	(0+((c:_Micro)+03h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	goto	l833
	line	106
	
l819:; BSR set to: 0

	line	107
;micro.c: 106: }
;micro.c: 107: break;
	goto	l833
	line	108
;micro.c: 108: case 0x03:
	
l820:
	line	109
;micro.c: 109: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u5741
	goto	u5740
u5741:
	goto	l821
u5740:
	line	111
	
l6364:; BSR set to: 0

;micro.c: 110: {
;micro.c: 111: Micro.Phase = 0x01;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(01h)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	112
;micro.c: 112: Test.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(01h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	113
	
l6366:; BSR set to: 0

;micro.c: 113: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	114
	
l6368:
;micro.c: 114: ecran_blank();
	call	_ecran_blank	;wreg free
	line	115
;micro.c: 115: }
	goto	l6376
	line	116
	
l821:; BSR set to: 0

;micro.c: 116: else if (Bouton[Bp_On].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+02h))&0ffh,1
	goto	u5751
	goto	u5750
u5751:
	goto	l6376
u5750:
	line	118
	
l6370:; BSR set to: 0

;micro.c: 117: {
;micro.c: 118: Micro.Phase = 0x02;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(02h)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	119
;micro.c: 119: Arm.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Arm))&0ffh
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	120
	
l6372:; BSR set to: 0

;micro.c: 120: check_comutest(1);
	movlw	(01h)&0ffh
	
	call	_check_comutest
	line	121
	
l6374:
;micro.c: 121: ecran_blank();
	call	_ecran_blank	;wreg free
	goto	l6376
	line	122
	
l823:
	goto	l6376
	line	124
	
l822:
	
l6376:
;micro.c: 122: }
;micro.c: 124: if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u5761
	goto	u5760
u5761:
	goto	l833
u5760:
	line	126
	
l6378:; BSR set to: 0

;micro.c: 125: {
;micro.c: 126: unsigned short tempTime = Cptms;
	movff	(c:_Cptms),(micro_wait@tempTime)	;volatile
	movff	(c:_Cptms+1),(micro_wait@tempTime+1)	;volatile
	line	128
	
l6380:; BSR set to: 0

;micro.c: 128: ecran_blank();
	call	_ecran_blank	;wreg free
	line	130
;micro.c: 130: ecran_print_one_char(0, 'S');
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(053h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	movlw	(0)&0ffh
	
	call	_ecran_print_one_char
	line	132
	
l6382:
;micro.c: 132: Micro.State = 0x08;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(08h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	134
;micro.c: 134: while (PORTBbits.RB0 == 0)
	goto	l6396
	
l826:; BSR set to: 0

	line	136
	
l6384:; BSR set to: 0

;micro.c: 135: {
;micro.c: 136: if ((((unsigned short) (Cptms - tempTime) > 1000) ? 1 : 0))
	movlb	0	; () banked
	movff	(micro_wait@tempTime),??_micro_wait+0+0
	movlb	0	; () banked
	movff	(micro_wait@tempTime+1),??_micro_wait+0+0+1
	movlb	0	; () banked
	comf	(??_micro_wait+0+0)&0ffh
	comf	(??_micro_wait+0+1)&0ffh
	infsnz	(??_micro_wait+0+0)&0ffh
	incf	(??_micro_wait+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_micro_wait+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_micro_wait+0+1)&0ffh
	movlw	0E9h
	movlb	0	; () banked
	subwf	(??_micro_wait+0+0)&0ffh,w
	movlw	03h
	subwfb	(??_micro_wait+0+1)&0ffh,w
	btfss	status,0
	goto	u5771
	goto	u5770
u5771:
	goto	l6396
u5770:
	line	138
	
l6386:; BSR set to: 0

;micro.c: 137: {
;micro.c: 138: tempTime = Cptms;
	movff	(c:_Cptms),(micro_wait@tempTime)	;volatile
	movff	(c:_Cptms+1),(micro_wait@tempTime+1)	;volatile
	line	139
	
l6388:; BSR set to: 0

;micro.c: 139: Micro.State = ((Micro.State == 0x08) ? 0x00 : 0x08);
	movf	(0+((c:_Micro)+04h)),c,w
	xorlw	8

	btfsc	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l6392
u5780:
	
l6390:; BSR set to: 0

	movlw	high(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_micro_wait$2387+1))&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movwf	((_micro_wait$2387))&0ffh
	goto	l6394
	
l829:; BSR set to: 0

	
l6392:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_micro_wait$2387+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_micro_wait$2387))&0ffh
	goto	l6394
	
l831:; BSR set to: 0

	
l6394:; BSR set to: 0

	movff	(_micro_wait$2387),0+((c:_Micro)+04h)
	goto	l6396
	line	140
	
l827:; BSR set to: 0

	goto	l6396
	line	141
	
l825:; BSR set to: 0

	line	134
	
l6396:; BSR set to: 0

	btfss	((c:3969)),c,0	;volatile
	goto	u5791
	goto	u5790
u5791:
	goto	l6384
u5790:
	goto	l6398
	
l832:; BSR set to: 0

	line	143
	
l6398:; BSR set to: 0

;micro.c: 140: }
;micro.c: 141: };
;micro.c: 143: Micro.State = 0x00;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	145
	
l6400:; BSR set to: 0

;micro.c: 145: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l833
	line	146
	
l824:
	line	148
;micro.c: 146: }
;micro.c: 148: break;
	goto	l833
	line	149
	
l6402:
;micro.c: 149: }
	goto	l833
	line	93
	
l814:
	
l6404:
	movf	(0+((c:_Micro)+03h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l815
	xorlw	1^0	; case 1
	skipnz
	goto	l818
	xorlw	3^1	; case 3
	skipnz
	goto	l820
	goto	l833

	line	149
	
l817:
	line	150
	
l833:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_micro_wait
	__end_of_micro_wait:
	signat	_micro_wait,88
	global	_micro_config

;; *************** function _micro_config *****************
;; Defined at:
;;		line 39 in file "micro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	39
global __ptext5
__ptext5:
psect	text5
	file	"micro.c"
	line	39
	global	__size_of_micro_config
	__size_of_micro_config	equ	__end_of_micro_config-_micro_config
	
_micro_config:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	43
	
l6232:
;micro.c: 43: T0CON = 0x88;
	movlw	low(088h)
	movwf	((c:4053)),c	;volatile
	line	64
;micro.c: 64: TMR0H = 0xF0;
	movlw	low(0F0h)
	movwf	((c:4055)),c	;volatile
	line	65
;micro.c: 65: TMR0L = 0x8C;
	movlw	low(08Ch)
	movwf	((c:4054)),c	;volatile
	line	69
;micro.c: 69: ADCON0 = 0x80;
	movlw	low(080h)
	movwf	((c:4034)),c	;volatile
	line	75
;micro.c: 75: ADCON1 = 0xC4;
	movlw	low(0C4h)
	movwf	((c:4033)),c	;volatile
	line	82
	
l6234:
;micro.c: 82: TMR0IP = 1;
	bsf	c:(32650/8),(32650)&7	;volatile
	line	83
	
l6236:
;micro.c: 83: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	84
	
l6238:
;micro.c: 84: IPEN = 1;
	bsf	c:(32391/8),(32391)&7	;volatile
	line	85
	
l6240:
;micro.c: 85: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	87
	
l6242:
;micro.c: 87: Micro.Time = Cptms;
	movff	(c:_Cptms),(c:_Micro)	;volatile
	movff	(c:_Cptms+1),(c:_Micro+1)	;volatile
	line	88
	
l6244:
;micro.c: 88: Ecran.tRate = 255;
	movlb	0	; () banked
	movlb	0	; () banked
	setf	(0+(_Ecran+0Ch))&0ffh
	line	89
	
l811:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_micro_config
	__end_of_micro_config:
	signat	_micro_config,88
	global	_hw_config

;; *************** function _hw_config *****************
;; Defined at:
;;		line 3 in file "hardware.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"hardware.c"
	line	3
global __ptext6
__ptext6:
psect	text6
	file	"hardware.c"
	line	3
	global	__size_of_hw_config
	__size_of_hw_config	equ	__end_of_hw_config-_hw_config
	
_hw_config:; BSR set to: 0

;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	6
	
l6164:
;hardware.c: 6: ADCON1 = 0x07;
	movlw	low(07h)
	movwf	((c:4033)),c	;volatile
	line	10
;hardware.c: 10: PORTA = 0;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	12
	
l6166:
;hardware.c: 12: TRISAbits.TRISA0 = 1;
	bsf	((c:3986)),c,0	;volatile
	line	13
	
l6168:
;hardware.c: 13: TRISAbits.TRISA1 = 1;
	bsf	((c:3986)),c,1	;volatile
	line	14
	
l6170:
;hardware.c: 14: TRISAbits.TRISA2 = 0;
	bcf	((c:3986)),c,2	;volatile
	line	15
	
l6172:
;hardware.c: 15: TRISAbits.TRISA3 = 1;
	bsf	((c:3986)),c,3	;volatile
	line	16
	
l6174:
;hardware.c: 16: TRISAbits.TRISA4 = 1;
	bsf	((c:3986)),c,4	;volatile
	line	17
	
l6176:
;hardware.c: 17: TRISAbits.TRISA5 = 0;
	bcf	((c:3986)),c,5	;volatile
	line	20
;hardware.c: 20: PORTB = 0;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	22
	
l6178:
;hardware.c: 22: TRISBbits.TRISB0 = 1;
	bsf	((c:3987)),c,0	;volatile
	line	23
	
l6180:
;hardware.c: 23: TRISBbits.TRISB1 = 0;
	bcf	((c:3987)),c,1	;volatile
	line	24
	
l6182:
;hardware.c: 24: TRISBbits.TRISB2 = 0;
	bcf	((c:3987)),c,2	;volatile
	line	25
	
l6184:
;hardware.c: 25: TRISBbits.TRISB3 = 0;
	bcf	((c:3987)),c,3	;volatile
	line	26
	
l6186:
;hardware.c: 26: TRISBbits.TRISB4 = 0;
	bcf	((c:3987)),c,4	;volatile
	line	27
	
l6188:
;hardware.c: 27: TRISBbits.TRISB5 = 0;
	bcf	((c:3987)),c,5	;volatile
	line	28
	
l6190:
;hardware.c: 28: TRISBbits.TRISB6 = 1;
	bsf	((c:3987)),c,6	;volatile
	line	29
	
l6192:
;hardware.c: 29: TRISBbits.TRISB7 = 1;
	bsf	((c:3987)),c,7	;volatile
	line	32
;hardware.c: 32: PORTC = 0;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	34
	
l6194:
;hardware.c: 34: TRISCbits.TRISC0 = 0;
	bcf	((c:3988)),c,0	;volatile
	line	35
	
l6196:
;hardware.c: 35: TRISCbits.TRISC1 = 0;
	bcf	((c:3988)),c,1	;volatile
	line	36
	
l6198:
;hardware.c: 36: TRISCbits.TRISC2 = 0;
	bcf	((c:3988)),c,2	;volatile
	line	37
	
l6200:
;hardware.c: 37: TRISCbits.TRISC3 = 0;
	bcf	((c:3988)),c,3	;volatile
	line	38
	
l6202:
;hardware.c: 38: TRISCbits.TRISC4 = 0;
	bcf	((c:3988)),c,4	;volatile
	line	39
	
l6204:
;hardware.c: 39: TRISCbits.TRISC5 = 1;
	bsf	((c:3988)),c,5	;volatile
	line	40
	
l6206:
;hardware.c: 40: TRISCbits.TRISC6 = 0;
	bcf	((c:3988)),c,6	;volatile
	line	41
	
l6208:
;hardware.c: 41: TRISCbits.TRISC7 = 1;
	bsf	((c:3988)),c,7	;volatile
	line	44
;hardware.c: 44: PORTD = 0;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	46
	
l6210:
;hardware.c: 46: TRISDbits.TRISD0 = 0;
	bcf	((c:3989)),c,0	;volatile
	line	47
	
l6212:
;hardware.c: 47: TRISDbits.TRISD1 = 0;
	bcf	((c:3989)),c,1	;volatile
	line	48
	
l6214:
;hardware.c: 48: TRISDbits.TRISD2 = 0;
	bcf	((c:3989)),c,2	;volatile
	line	49
	
l6216:
;hardware.c: 49: TRISDbits.TRISD3 = 0;
	bcf	((c:3989)),c,3	;volatile
	line	50
	
l6218:
;hardware.c: 50: TRISDbits.TRISD4 = 0;
	bcf	((c:3989)),c,4	;volatile
	line	51
	
l6220:
;hardware.c: 51: TRISDbits.TRISD5 = 0;
	bcf	((c:3989)),c,5	;volatile
	line	52
	
l6222:
;hardware.c: 52: TRISDbits.TRISD6 = 0;
	bcf	((c:3989)),c,6	;volatile
	line	53
	
l6224:
;hardware.c: 53: TRISDbits.TRISD7 = 0;
	bcf	((c:3989)),c,7	;volatile
	line	56
;hardware.c: 56: PORTE = 0;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	58
	
l6226:
;hardware.c: 58: TRISEbits.TRISE0 = 1;
	bsf	((c:3990)),c,0	;volatile
	line	59
	
l6228:
;hardware.c: 59: TRISEbits.TRISE1 = 1;
	bsf	((c:3990)),c,1	;volatile
	line	60
	
l6230:
;hardware.c: 60: TRISEbits.TRISE2 = 0;
	bcf	((c:3990)),c,2	;volatile
	line	61
	
l174:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_hw_config
	__end_of_hw_config:
	signat	_hw_config,88
	global	_feu_process

;; *************** function _feu_process *****************
;; Defined at:
;;		line 89 in file "feu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_ms
;;		_feu_check_end
;;		_feu_tir
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"feu.c"
	line	89
global __ptext7
__ptext7:
psect	text7
	file	"feu.c"
	line	89
	global	__size_of_feu_process
	__size_of_feu_process	equ	__end_of_feu_process-_feu_process
	
_feu_process:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	91
	
l6628:
;feu.c: 91: switch (Feu.Step)
	goto	l6690
	line	93
;feu.c: 92: {
;feu.c: 93: case 0x00:
	
l1131:; BSR set to: 0

	line	95
;feu.c: 95: if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6121
	goto	u6120
u6121:
	goto	l1156
u6120:
	line	97
	
l6630:; BSR set to: 0

;feu.c: 96: {
;feu.c: 97: if (Micro.Mods == 0) {Feu.Step = 0x01;}
	tstfsz	(0+((c:_Micro)+05h)),c
	goto	u6131
	goto	u6130
u6131:
	goto	l6634
u6130:
	
l6632:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1134
	line	98
	
l1133:; BSR set to: 0

	
l6634:; BSR set to: 0

;feu.c: 98: else {Feu.Step = 0x03;}
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	
l1134:; BSR set to: 0

	line	100
;feu.c: 100: Micro.State = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(02h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	102
	
l6636:; BSR set to: 0

;feu.c: 102: Decompte = 50;
	movlw	low(032h)
	movwf	((c:_Decompte)),c	;volatile
	line	103
	
l6638:; BSR set to: 0

;feu.c: 103: Cpt1Sur20s = 0;
	movlw	high(0)
	movwf	((c:_Cpt1Sur20s+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_Cpt1Sur20s)),c	;volatile
	line	105
;feu.c: 105: Feu.LastOutput = 0;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feu+0Bh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	107
	
l6640:; BSR set to: 0

;feu.c: 107: Feu.CanStopStart = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,0
	line	108
	
l6642:; BSR set to: 0

;feu.c: 108: Feu.TimeStart = Cptms;
	movff	(c:_Cptms),0+(_Feu+09h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+09h)	;volatile
	goto	l1156
	line	109
	
l1132:; BSR set to: 0

	line	110
;feu.c: 109: }
;feu.c: 110: break;
	goto	l1156
	line	111
;feu.c: 111: case 0x01 :
	
l1136:; BSR set to: 0

	line	113
	
l6644:; BSR set to: 0

;feu.c: 113: Feu.NextOutput = Cf.Data[Feu.Cpt*3];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+01h))&0ffh,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feu+0Ch))&0ffh
	line	115
	
l6646:; BSR set to: 0

;feu.c: 115: if (feu_check_end() == 1) {Feu.Step = 0x08;}
	call	_feu_check_end	;wreg free
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	decf	((??_feu_process+0+0))&0ffh,w
	btfss	status,2
	goto	u6141
	goto	u6140
u6141:
	goto	l6650
u6140:
	
l6648:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1156
	line	116
	
l1137:; BSR set to: 0

	line	119
	
l6650:; BSR set to: 0

;feu.c: 116: else
;feu.c: 117: {
;feu.c: 119: Feu.TimeToFire = Cf.Data[(Feu.Cpt*3) + 1] << 8;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+01h))&0ffh,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Feu+05h))&0ffh
	movlb	0	; () banked
	clrf	(0+(_Feu+05h))&0ffh
	line	120
;feu.c: 120: Feu.TimeToFire |= Cf.Data[(Feu.Cpt*3) + 2];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+01h))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	movf	((??_feu_process+0+0))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	(0+(_Feu+05h))&0ffh
	line	122
	
l6652:; BSR set to: 0

;feu.c: 122: Feu.Step = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1156
	line	123
	
l1138:; BSR set to: 0

	line	124
;feu.c: 123: }
;feu.c: 124: break;
	goto	l1156
	line	125
;feu.c: 125: case 0x02:
	
l1139:; BSR set to: 0

	line	126
	
l6654:; BSR set to: 0

;feu.c: 126: if (Cpt1Sur20s == Feu.TimeToFire)
	movlb	0	; () banked
	lfsr	2,_Feu+05h
	movf	postinc2
	movf	((c:_Cpt1Sur20s+1)),c,w	;volatile
	xorwf	postdec2,w
	movff	(c:_Cpt1Sur20s),wreg	;volatile
	btfsc	status,2
	xorwf	indf2,w

	btfss	status,2
	goto	u6151
	goto	u6150
u6151:
	goto	l1156
u6150:
	line	128
	
l6656:; BSR set to: 0

;feu.c: 127: {
;feu.c: 128: feu_tir(Feu.NextOutput);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Ch))&0ffh,w
	
	call	_feu_tir
	line	130
	
l6658:
;feu.c: 130: Feu.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1156
	line	131
	
l1140:; BSR set to: 0

	line	132
;feu.c: 131: }
;feu.c: 132: break;
	goto	l1156
	line	133
;feu.c: 133: case 0x03:
	
l1141:; BSR set to: 0

	line	134
;feu.c: 134: if (Micro.Mod.P_0 == 1) {Feu.NextOutput = Feu.Cpt+1;}
	btfss	(0+((c:_Micro)+05h)),c,0
	goto	u6161
	goto	u6160
u6161:
	goto	l1142
u6160:
	
l6660:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feu+01h))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feu+0Ch))&0ffh
	goto	l6664
	line	135
	
l1142:; BSR set to: 0

;feu.c: 135: else if (Micro.Mod.P_00 == 1) {Feu.NextOutput = Cf.Data[Feu.Cpt*3];}
	btfss	(0+((c:_Micro)+05h)),c,1
	goto	u6171
	goto	u6170
u6171:
	goto	l6664
u6170:
	
l6662:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+01h))&0ffh,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feu+0Ch))&0ffh
	goto	l6664
	
l1144:; BSR set to: 0

	goto	l6664
	line	137
	
l1143:; BSR set to: 0

	
l6664:; BSR set to: 0

;feu.c: 137: if (feu_check_end() == 1) {Feu.Step = 0x08;}
	call	_feu_check_end	;wreg free
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	decf	((??_feu_process+0+0))&0ffh,w
	btfss	status,2
	goto	u6181
	goto	u6180
u6181:
	goto	l6668
u6180:
	
l6666:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1156
	line	138
	
l1145:; BSR set to: 0

	
l6668:; BSR set to: 0

;feu.c: 138: else {Feu.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1156
	
l1146:; BSR set to: 0

	line	139
;feu.c: 139: break;
	goto	l1156
	line	140
;feu.c: 140: case 0x04:
	
l1147:; BSR set to: 0

	line	141
;feu.c: 141: if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6191
	goto	u6190
u6191:
	goto	l1156
u6190:
	line	143
	
l6670:; BSR set to: 0

;feu.c: 142: {
;feu.c: 143: delay_ms(15);
	movlw	high(0Fh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait+1))&0ffh
	movlw	low(0Fh)
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait))&0ffh
	call	_delay_ms	;wreg free
	line	145
;feu.c: 145: feu_tir(Feu.NextOutput);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Ch))&0ffh,w
	
	call	_feu_tir
	line	147
	
l6672:
;feu.c: 147: Feu.Step = 0x05;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(05h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	148
	
l6674:; BSR set to: 0

;feu.c: 148: Feu.Time = Cptms;
	movff	(c:_Cptms),0+(_Feu+07h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+07h)	;volatile
	goto	l1156
	line	149
	
l1148:; BSR set to: 0

	line	150
;feu.c: 149: }
;feu.c: 150: break;
	goto	l1156
	line	151
;feu.c: 151: case 0x05:
	
l1149:; BSR set to: 0

	line	152
	
l6676:; BSR set to: 0

;feu.c: 152: if ((((unsigned short) (Cptms - Feu.Time) > 200) ? 1 : 0))
	movlb	0	; () banked
	lfsr	2,_Feu+07h
	movff	postinc2,??_feu_process+0+0
	movff	postdec2,??_feu_process+0+0+1
	movlb	0	; () banked
	comf	(??_feu_process+0+0)&0ffh
	comf	(??_feu_process+0+1)&0ffh
	infsnz	(??_feu_process+0+0)&0ffh
	incf	(??_feu_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_feu_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_feu_process+0+1)&0ffh
	movlw	0C9h
	movlb	0	; () banked
	subwf	(??_feu_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_feu_process+0+1)&0ffh,w
	btfss	status,0
	goto	u6201
	goto	u6200
u6201:
	goto	l1156
u6200:
	line	154
	
l6678:; BSR set to: 0

;feu.c: 153: {
;feu.c: 154: if (Bouton[Bp_Start].State == 1) {Feu.Step = 0x03;}
	movlb	0	; () banked
	btfss	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6211
	goto	u6210
u6211:
	goto	l1156
u6210:
	
l6680:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1156
	
l1151:; BSR set to: 0

	goto	l1156
	line	155
	
l1150:; BSR set to: 0

	line	156
;feu.c: 155: }
;feu.c: 156: break;
	goto	l1156
	line	157
;feu.c: 157: case 0x06:
	
l1152:; BSR set to: 0

	line	158
;feu.c: 158: if (Feu.SaveTime == 0)
	movlb	0	; () banked
	btfsc	(0+(_Feu+0Dh))&0ffh,1
	goto	u6221
	goto	u6220
u6221:
	goto	l1156
u6220:
	line	160
	
l6682:; BSR set to: 0

;feu.c: 159: {
;feu.c: 160: Feu.Decompte = Decompte;
	movff	(c:_Decompte),0+(_Feu+02h)	;volatile
	line	161
;feu.c: 161: Feu.SavedTime = Cpt1Sur20s;
	movff	(c:_Cpt1Sur20s),0+(_Feu+03h)	;volatile
	movff	(c:_Cpt1Sur20s+1),1+(_Feu+03h)	;volatile
	line	163
;feu.c: 163: Feu.SaveTime = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Feu+0Dh))&0ffh,1
	goto	l1156
	line	164
	
l1153:; BSR set to: 0

	line	165
;feu.c: 164: }
;feu.c: 165: break;
	goto	l1156
	line	166
;feu.c: 166: case 0x07:
	
l1154:; BSR set to: 0

	line	167
;feu.c: 167: Decompte = Feu.Decompte;
	movff	0+(_Feu+02h),(c:_Decompte)	;volatile
	line	168
;feu.c: 168: Cpt1Sur20s = Feu.SavedTime;
	movff	0+(_Feu+03h),(c:_Cpt1Sur20s)	;volatile
	movff	1+(_Feu+03h),(c:_Cpt1Sur20s+1)	;volatile
	line	170
;feu.c: 170: Feu.SaveTime = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,1
	line	172
	
l6684:; BSR set to: 0

;feu.c: 172: Feu.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	173
;feu.c: 173: break;
	goto	l1156
	line	174
;feu.c: 174: case 0x08:
	
l1155:; BSR set to: 0

	line	175
	
l6686:; BSR set to: 0

;feu.c: 175: Micro.State = 0x08;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	176
;feu.c: 176: break;
	goto	l1156
	line	177
	
l6688:; BSR set to: 0

;feu.c: 177: }
	goto	l1156
	line	91
	
l1130:; BSR set to: 0

	
l6690:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Feu))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 8
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1131
	xorlw	1^0	; case 1
	skipnz
	goto	l6644
	xorlw	2^1	; case 2
	skipnz
	goto	l6654
	xorlw	3^2	; case 3
	skipnz
	goto	l1141
	xorlw	4^3	; case 4
	skipnz
	goto	l1147
	xorlw	5^4	; case 5
	skipnz
	goto	l6676
	xorlw	6^5	; case 6
	skipnz
	goto	l1152
	xorlw	7^6	; case 7
	skipnz
	goto	l1154
	xorlw	8^7	; case 8
	skipnz
	goto	l6686
	goto	l1156

	line	177
	
l1135:; BSR set to: 0

	line	178
	
l1156:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_process
	__end_of_feu_process:
	signat	_feu_process,88
	global	_feu_tir

;; *************** function _feu_tir *****************
;; Defined at:
;;		line 9 in file "feu.c"
;; Parameters:    Size  Location     Type
;;  Output          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Output          1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_register_write
;; This function is called by:
;;		_feu_process
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	9
global __ptext8
__ptext8:
psect	text8
	file	"feu.c"
	line	9
	global	__size_of_feu_tir
	__size_of_feu_tir	equ	__end_of_feu_tir-_feu_tir
	
_feu_tir:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
;feu_tir@Output stored from wreg
	movff	wreg,(feu_tir@Output)
	line	11
	
l6152:
;feu.c: 11: PORTAbits.RA5 = 1;
	bsf	((c:3968)),c,5	;volatile
	line	12
;feu.c: 12: PORTBbits.RB1 = 1;
	bsf	((c:3969)),c,1	;volatile
	line	14
	
l6154:
;feu.c: 14: register_write(Output);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((feu_tir@Output))&0ffh,w
	
	call	_register_write
	line	15
;feu.c: 15: delay_ms(40);
	movlw	high(028h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait+1))&0ffh
	movlw	low(028h)
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait))&0ffh
	call	_delay_ms	;wreg free
	line	16
;feu.c: 16: register_write(0);
	movlw	(0)&0ffh
	
	call	_register_write
	line	18
	
l6156:
;feu.c: 18: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	19
	
l6158:
;feu.c: 19: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	22
	
l6160:
;feu.c: 22: Feu.LastOutput = Feu.NextOutput;
	movff	0+(_Feu+0Ch),0+(_Feu+0Bh)
	line	23
	
l6162:
;feu.c: 23: Feu.Cpt ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feu+01h))&0ffh
	line	24
	
l1102:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_tir
	__end_of_feu_tir:
	signat	_feu_tir,4216
	global	_register_write

;; *************** function _register_write *****************
;; Defined at:
;;		line 3 in file "register.c"
;; Parameters:    Size  Location     Type
;;  Output          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Output          1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_test_process
;;		_feu_tir
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"register.c"
	line	3
global __ptext9
__ptext9:
psect	text9
	file	"register.c"
	line	3
	global	__size_of_register_write
	__size_of_register_write	equ	__end_of_register_write-_register_write
	
_register_write:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
;register_write@Output stored from wreg
	movff	wreg,(register_write@Output)
	line	8
	
l5812:
;register.c: 5: unsigned char i;
;register.c: 8: PORTAbits.RA2 = 0;
	bcf	((c:3968)),c,2	;volatile
	line	11
;register.c: 11: PORTBbits.RB2 = 0;
	bcf	((c:3969)),c,2	;volatile
	line	12
;register.c: 12: PORTBbits.RB2 = 1;
	bsf	((c:3969)),c,2	;volatile
	line	14
;register.c: 14: PORTBbits.RB3 = 0;
	bcf	((c:3969)),c,3	;volatile
	line	16
	
l5814:
;register.c: 16: for (i = 32; i > 0; i --)
	movlb	0	; () banked
	movwf	(??_register_write+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((register_write@i))&0ffh
	movlb	0	; () banked
	movf	(??_register_write+0+0)&0ffh,w
	
l5816:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((register_write@i))&0ffh
	goto	u5041
	goto	u5040
u5041:
	goto	l920
u5040:
	goto	l921
	
l5818:; BSR set to: 0

	goto	l921
	line	17
	
l920:; BSR set to: 0

	line	18
;register.c: 17: {
;register.c: 18: PORTBbits.RB4 = 0;
	bcf	((c:3969)),c,4	;volatile
	line	20
	
l5820:; BSR set to: 0

;register.c: 20: if (Output == i) {PORTBbits.RB5 = 1;}
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((register_write@i))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	cpfseq	((register_write@Output))&0ffh
	goto	u5051
	goto	u5050
u5051:
	goto	l922
u5050:
	
l5822:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	goto	l923
	line	21
	
l922:; BSR set to: 0

;register.c: 21: else {PORTBbits.RB5 = 0;}
	bcf	((c:3969)),c,5	;volatile
	
l923:; BSR set to: 0

	line	23
;register.c: 23: PORTBbits.RB4 = 1;
	bsf	((c:3969)),c,4	;volatile
	line	16
	
l5824:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((register_write@i))&0ffh
	
l5826:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((register_write@i))&0ffh
	goto	u5061
	goto	u5060
u5061:
	goto	l920
u5060:
	
l921:; BSR set to: 0

	line	26
;register.c: 24: }
;register.c: 26: PORTBbits.RB3 = 1;
	bsf	((c:3969)),c,3	;volatile
	line	29
;register.c: 29: PORTAbits.RA2 = 1;
	bsf	((c:3968)),c,2	;volatile
	line	30
	
l924:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_register_write
	__end_of_register_write:
	signat	_register_write,4216
	global	_feu_check_end

;; *************** function _feu_check_end *****************
;; Defined at:
;;		line 3 in file "feu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_feu_process
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"feu.c"
	line	3
global __ptext10
__ptext10:
psect	text10
	file	"feu.c"
	line	3
	global	__size_of_feu_check_end
	__size_of_feu_check_end	equ	__end_of_feu_check_end-_feu_check_end
	
_feu_check_end:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	5
	
l6138:
;feu.c: 5: if ((Feu.Cpt >= 32) || (Feu.NextOutput == 0)) {return 1;}
	movlw	(020h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_Feu+01h))&0ffh,w
	btfsc	status,0
	goto	u5421
	goto	u5420
u5421:
	goto	l6142
u5420:
	
l6140:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	(0+(_Feu+0Ch))&0ffh
	goto	u5431
	goto	u5430
u5431:
	goto	l6148
u5430:
	goto	l6142
	
l1097:; BSR set to: 0

	
l6142:; BSR set to: 0

	movlw	(01h)&0ffh
	goto	l1098
	
l6144:; BSR set to: 0

	goto	l1098
	
l6146:; BSR set to: 0

	goto	l1098
	line	6
	
l1095:; BSR set to: 0

	
l6148:; BSR set to: 0

;feu.c: 6: else {return 0;}
	movlw	(0)&0ffh
	goto	l1098
	
l6150:; BSR set to: 0

	goto	l1098
	
l1099:; BSR set to: 0

	line	7
	
l1098:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_check_end
	__end_of_feu_check_end:
	signat	_feu_check_end,89
	global	_feu_check_bp

;; *************** function _feu_check_bp *****************
;; Defined at:
;;		line 26 in file "feu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ecran_print_num
;;		_ecran_print_one_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	26
global __ptext11
__ptext11:
psect	text11
	file	"feu.c"
	line	26
	global	__size_of_feu_check_bp
	__size_of_feu_check_bp	equ	__end_of_feu_check_bp-_feu_check_bp
	
_feu_check_bp:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	29
	
l6692:
;feu.c: 28: if ( (Micro.Stat.End == 1)
;feu.c: 29: && (Bouton[Bp_On].State == 0))
	btfss	(0+((c:_Micro)+04h)),c,3
	goto	u6231
	goto	u6230
u6231:
	goto	l1105
u6230:
	
l6694:
	movlb	0	; () banked
	btfsc	(0+(_Bouton+02h))&0ffh,1
	goto	u6241
	goto	u6240
u6241:
	goto	l1105
u6240:
	line	31
	
l6696:; BSR set to: 0

;feu.c: 30: {
;feu.c: 31: Ecran.Digits = (char *) Version;
		movlw	high(_Version)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlw	low(_Version)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	32
	
l6698:; BSR set to: 0

;feu.c: 32: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	33
;feu.c: 33: }
	goto	l1127
	line	34
	
l1105:
	line	35
;feu.c: 34: else if ( (Bouton[Bp_Start].State == 1)
;feu.c: 35: && (Feu.CanStopStart == 0))
	movlb	0	; () banked
	btfss	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6251
	goto	u6250
u6251:
	goto	l1107
u6250:
	
l6700:; BSR set to: 0

	movlb	0	; () banked
	btfsc	(0+(_Feu+0Dh))&0ffh,0
	goto	u6261
	goto	u6260
u6261:
	goto	l1107
u6260:
	line	37
	
l6702:; BSR set to: 0

;feu.c: 36: {
;feu.c: 37: if ((((unsigned short) (Cptms - Feu.TimeStart) > 5000) ? 1 : 0))
	movlb	0	; () banked
	lfsr	2,_Feu+09h
	movff	postinc2,??_feu_check_bp+0+0
	movff	postdec2,??_feu_check_bp+0+0+1
	movlb	0	; () banked
	comf	(??_feu_check_bp+0+0)&0ffh
	comf	(??_feu_check_bp+0+1)&0ffh
	infsnz	(??_feu_check_bp+0+0)&0ffh
	incf	(??_feu_check_bp+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_feu_check_bp+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_feu_check_bp+0+1)&0ffh
	movlw	089h
	movlb	0	; () banked
	subwf	(??_feu_check_bp+0+0)&0ffh,w
	movlw	013h
	subwfb	(??_feu_check_bp+0+1)&0ffh,w
	btfss	status,0
	goto	u6271
	goto	u6270
u6271:
	goto	l1127
u6270:
	line	39
	
l6704:; BSR set to: 0

;feu.c: 38: {
;feu.c: 39: Feu.CanStopStart = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Feu+0Dh))&0ffh,0
	goto	l1127
	line	40
	
l1108:; BSR set to: 0

	line	41
;feu.c: 40: }
;feu.c: 41: }
	goto	l1127
	line	42
	
l1107:; BSR set to: 0

	line	44
;feu.c: 42: else if ( (Micro.Mods == 0)
;feu.c: 43: && (Feu.CanStopStart == 1)
;feu.c: 44: && (Bouton[Bp_Start].State == 0))
	tstfsz	(0+((c:_Micro)+05h)),c
	goto	u6281
	goto	u6280
u6281:
	goto	l1110
u6280:
	
l6706:; BSR set to: 0

	movlb	0	; () banked
	btfss	(0+(_Feu+0Dh))&0ffh,0
	goto	u6291
	goto	u6290
u6291:
	goto	l1110
u6290:
	
l6708:; BSR set to: 0

	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6301
	goto	u6300
u6301:
	goto	l1110
u6300:
	line	46
	
l6710:; BSR set to: 0

;feu.c: 45: {
;feu.c: 46: if (Micro.Stat.Go == 1)
	btfss	(0+((c:_Micro)+04h)),c,1
	goto	u6311
	goto	u6310
u6311:
	goto	l1111
u6310:
	line	48
	
l6712:; BSR set to: 0

;feu.c: 47: {
;feu.c: 48: Feu.Step = 0x06;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(06h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	49
;feu.c: 49: Micro.State = 0x04;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(04h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	50
;feu.c: 50: }
	goto	l6718
	line	51
	
l1111:; BSR set to: 0

;feu.c: 51: else if (Micro.Stat.Stop == 1)
	btfss	(0+((c:_Micro)+04h)),c,2
	goto	u6321
	goto	u6320
u6321:
	goto	l6718
u6320:
	line	53
	
l6714:; BSR set to: 0

;feu.c: 52: {
;feu.c: 53: Feu.Step = 0x07;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(07h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	54
;feu.c: 54: Micro.State = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	55
	
l6716:; BSR set to: 0

;feu.c: 55: Feu.TimeStart = Cptms;
	movff	(c:_Cptms),0+(_Feu+09h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+09h)	;volatile
	goto	l6718
	line	56
	
l1113:; BSR set to: 0

	goto	l6718
	line	58
	
l1112:; BSR set to: 0

	
l6718:; BSR set to: 0

;feu.c: 56: }
;feu.c: 58: Feu.CanStopStart = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,0
	line	59
;feu.c: 59: }
	goto	l1127
	line	60
	
l1110:; BSR set to: 0

;feu.c: 60: else if (Bouton[Comu_Test].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+08h))&0ffh,1
	goto	u6331
	goto	u6330
u6331:
	goto	l1115
u6330:
	line	62
	
l6720:; BSR set to: 0

;feu.c: 61: {
;feu.c: 62: Ecran.Digits = (char *) ErreurTir;
		movlw	high(_ErreurTir)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlw	low(_ErreurTir)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	63
	
l6722:; BSR set to: 0

;feu.c: 63: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	64
;feu.c: 64: }
	goto	l1127
	line	65
	
l1115:; BSR set to: 0

;feu.c: 65: else if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6341
	goto	u6340
u6341:
	goto	l1117
u6340:
	line	67
	
l6724:; BSR set to: 0

;feu.c: 66: {
;feu.c: 67: ecran_print_num(Feu.LastOutput);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Bh))&0ffh,w
	
	call	_ecran_print_num
	line	69
	
l6726:
;feu.c: 69: if (Micro.Stat.Stop == 1)
	btfss	(0+((c:_Micro)+04h)),c,2
	goto	u6351
	goto	u6350
u6351:
	goto	l6732
u6350:
	line	71
	
l6728:
;feu.c: 70: {
;feu.c: 71: Ecran.Digit[0] = '-';
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	72
;feu.c: 72: Ecran.Digit[1] = '-';
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	74
	
l6730:; BSR set to: 0

;feu.c: 74: Ecran.Digits = Ecran.Digit;
	movlb	0	; () banked
		movlw	high(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	goto	l6732
	line	75
	
l1118:; BSR set to: 0

	line	76
	
l6732:
;feu.c: 75: }
;feu.c: 76: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	77
;feu.c: 77: }
	goto	l1127
	line	78
	
l1117:; BSR set to: 0

	line	80
;feu.c: 78: else
;feu.c: 79: {
;feu.c: 80: if (Micro.Stat.Armed == 1) {ecran_print_one_char(0,'-');}
	btfss	(0+((c:_Micro)+04h)),c,0
	goto	u6361
	goto	u6360
u6361:
	goto	l1120
u6360:
	
l6734:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	movlw	(0)&0ffh
	
	call	_ecran_print_one_char
	goto	l6742
	line	81
	
l1120:; BSR set to: 0

;feu.c: 81: else if (Micro.Stat.Go == 1) {ecran_print_one_char(1,'-');}
	btfss	(0+((c:_Micro)+04h)),c,1
	goto	u6371
	goto	u6370
u6371:
	goto	l1122
u6370:
	
l6736:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	movlw	(01h)&0ffh
	
	call	_ecran_print_one_char
	goto	l6742
	line	82
	
l1122:; BSR set to: 0

;feu.c: 82: else if (Micro.Stat.Stop == 1) {ecran_print_one_char(2,'-');}
	btfss	(0+((c:_Micro)+04h)),c,2
	goto	u6381
	goto	u6380
u6381:
	goto	l1124
u6380:
	
l6738:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	movlw	(02h)&0ffh
	
	call	_ecran_print_one_char
	goto	l6742
	line	83
	
l1124:; BSR set to: 0

;feu.c: 83: else if (Micro.Stat.End == 1) {ecran_print_one_char(3,'-');}
	btfss	(0+((c:_Micro)+04h)),c,3
	goto	u6391
	goto	u6390
u6391:
	goto	l6742
u6390:
	
l6740:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	goto	l6742
	
l1126:
	goto	l6742
	line	85
	
l1125:
	goto	l6742
	
l1123:
	goto	l6742
	
l1121:
	
l6742:
;feu.c: 85: Ecran.Solid = 1;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	goto	l1127
	line	86
	
l1119:; BSR set to: 0

	goto	l1127
	
l1116:; BSR set to: 0

	goto	l1127
	
l1114:; BSR set to: 0

	goto	l1127
	
l1109:; BSR set to: 0

	goto	l1127
	
l1106:; BSR set to: 0

	line	87
	
l1127:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_check_bp
	__end_of_feu_check_bp:
	signat	_feu_check_bp,88
	global	_ecran_print_num

;; *************** function _ecran_print_num *****************
;; Defined at:
;;		line 66 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;  Num             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Num             1   18[BANK0 ] unsigned char 
;;  tempStr         2   19[BANK0 ] PTR unsigned char 
;;		 -> PrintTest(5), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DecToStr
;; This function is called by:
;;		_test_process
;;		_feu_check_bp
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"ecran.c"
	line	66
global __ptext12
__ptext12:
psect	text12
	file	"ecran.c"
	line	66
	global	__size_of_ecran_print_num
	__size_of_ecran_print_num	equ	__end_of_ecran_print_num-_ecran_print_num
	
_ecran_print_num:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
;ecran_print_num@Num stored from wreg
	movff	wreg,(ecran_print_num@Num)
	line	70
	
l5972:
;ecran.c: 68: char * tempStr;
;ecran.c: 70: tempStr = PrintTest;
	movlb	0	; () banked
		movlw	high(_PrintTest)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_num@tempStr+1))&0ffh
	movlb	0	; () banked
	movlw	low(_PrintTest)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_num@tempStr))&0ffh

	line	72
	
l5974:; BSR set to: 0

;ecran.c: 72: tempStr = DecToStr(Num, tempStr);
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(ecran_print_num@tempStr+1),(DecToStr@result+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(ecran_print_num@tempStr),(DecToStr@result)

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ecran_print_num@Num))&0ffh,w
	
	call	_DecToStr
	movlb	0	; () banked
	movff	0+?_DecToStr,(ecran_print_num@tempStr)
	movlb	0	; () banked
	movff	1+?_DecToStr,(ecran_print_num@tempStr+1)
	line	74
	
l5976:; BSR set to: 0

;ecran.c: 74: Ecran.Digit[0] = ' ';
	movlb	0	; () banked
	movwf	(??_ecran_print_num+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_print_num+0+0)&0ffh,w
	line	75
	
l5978:; BSR set to: 0

;ecran.c: 75: Ecran.Digit[1] = ' ';
	movlb	0	; () banked
	movwf	(??_ecran_print_num+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_print_num+0+0)&0ffh,w
	line	77
	
l5980:; BSR set to: 0

;ecran.c: 77: if (Num < 10)
	movlw	(0Ah)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((ecran_print_num@Num))&0ffh,w
	btfsc	status,0
	goto	u5301
	goto	u5300
u5301:
	goto	l5986
u5300:
	line	79
	
l5982:; BSR set to: 0

;ecran.c: 78: {
;ecran.c: 79: Ecran.Digit[3] = tempStr[0];
	movff	(ecran_print_num@tempStr),fsr2l
	movff	(ecran_print_num@tempStr+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	80
	
l5984:; BSR set to: 0

;ecran.c: 80: Ecran.Digit[2] = '0';
	movlb	0	; () banked
	movwf	(??_ecran_print_num+0+0)&0ffh
	movlw	low(030h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_print_num+0+0)&0ffh,w
	line	81
;ecran.c: 81: }
	goto	l5990
	line	82
	
l267:; BSR set to: 0

	line	84
	
l5986:; BSR set to: 0

;ecran.c: 82: else
;ecran.c: 83: {
;ecran.c: 84: Ecran.Digit[3] = tempStr[1];
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((ecran_print_num@tempStr))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((ecran_print_num@tempStr+1))&0ffh,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	85
	
l5988:; BSR set to: 0

;ecran.c: 85: Ecran.Digit[2] = tempStr[0];
	movff	(ecran_print_num@tempStr),fsr2l
	movff	(ecran_print_num@tempStr+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	goto	l5990
	line	86
	
l268:; BSR set to: 0

	line	88
	
l5990:; BSR set to: 0

;ecran.c: 86: }
;ecran.c: 88: Ecran.Digits = Ecran.Digit;
	movlb	0	; () banked
		movlw	high(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	89
	
l269:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_print_num
	__end_of_ecran_print_num:
	signat	_ecran_print_num,4216
	global	_DecToStr

;; *************** function _DecToStr *****************
;; Defined at:
;;		line 3 in file "utils.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  result          2    7[BANK0 ] PTR unsigned char 
;;		 -> PrintTest(5), 
;; Auto vars:     Size  Location     Type
;;  value           1   15[BANK0 ] unsigned char 
;;  compareValue    2   13[BANK0 ] unsigned short 
;;  power10         1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] PTR unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		___lbdiv
;;		___wmul
;; This function is called by:
;;		_ecran_print_num
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	3
global __ptext13
__ptext13:
psect	text13
	file	"utils.c"
	line	3
	global	__size_of_DecToStr
	__size_of_DecToStr	equ	__end_of_DecToStr-_DecToStr
	
_DecToStr:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
;DecToStr@value stored from wreg
	movff	wreg,(DecToStr@value)
	line	8
	
l5714:
;utils.c: 5: unsigned char power10;
;utils.c: 6: unsigned short compareValue;
;utils.c: 8: compareValue = 1;
	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((DecToStr@compareValue+1))&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((DecToStr@compareValue))&0ffh
	line	10
;utils.c: 10: for (power10 = 0; compareValue <= value; power10 ++)
	movlb	0	; () banked
	movwf	(??_DecToStr+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((DecToStr@power10))&0ffh
	movlb	0	; () banked
	movf	(??_DecToStr+0+0)&0ffh,w
	goto	l5720
	line	11
	
l654:; BSR set to: 0

	line	12
	
l5716:; BSR set to: 0

;utils.c: 11: {
;utils.c: 12: compareValue *= 10;
	movff	(DecToStr@compareValue),(___wmul@multiplier)
	movff	(DecToStr@compareValue+1),(___wmul@multiplier+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movlb	0	; () banked
	movff	0+?___wmul,(DecToStr@compareValue)
	movlb	0	; () banked
	movff	1+?___wmul,(DecToStr@compareValue+1)
	line	10
	
l5718:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((DecToStr@power10))&0ffh
	goto	l5720
	
l653:; BSR set to: 0

	
l5720:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((DecToStr@value))&0ffh,w
	movlb	0	; () banked
	movwf	(??_DecToStr+0+0)&0ffh
	clrf	(??_DecToStr+0+0+1)&0ffh

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((DecToStr@compareValue))&0ffh,w
	movlb	0	; () banked
	subwf	(??_DecToStr+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((DecToStr@compareValue+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??_DecToStr+0+1)&0ffh,w
	btfsc	status,0
	goto	u4941
	goto	u4940
u4941:
	goto	l5716
u4940:
	
l655:; BSR set to: 0

	line	15
;utils.c: 13: }
;utils.c: 15: if (value == 0) {power10 = 1;}
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((DecToStr@value))&0ffh
	goto	u4951
	goto	u4950
u4951:
	goto	l5724
u4950:
	
l5722:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_DecToStr+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((DecToStr@power10))&0ffh
	movlb	0	; () banked
	movf	(??_DecToStr+0+0)&0ffh,w
	goto	l5724
	
l656:; BSR set to: 0

	line	17
	
l5724:; BSR set to: 0

;utils.c: 17: result[power10] = '\0';
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((DecToStr@power10))&0ffh,w
	mullw	01h
	movf	(prodl),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((DecToStr@result))&0ffh,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((DecToStr@result+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	19
	
l5726:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((DecToStr@power10))&0ffh
	goto	u4961
	goto	u4960
u4961:
	goto	l5730
u4960:
	goto	l5738
	
l5728:; BSR set to: 0

	goto	l5738
	line	20
	
l657:; BSR set to: 0

	line	21
	
l5730:; BSR set to: 0

;utils.c: 20: {
;utils.c: 21: result[power10 - 1] = (value % 10) + '0';
	movlw	low(-1)
	movlb	0	; () banked
	movwf	(??_DecToStr+0+0)&0ffh
	movlw	high(-1)
	movwf	(??_DecToStr+0+0+1)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((DecToStr@power10))&0ffh,w
	movlb	0	; () banked
	movwf	(??_DecToStr+2+0)&0ffh
	clrf	(??_DecToStr+2+0+1)&0ffh

	movlb	0	; () banked
	movf	(??_DecToStr+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_DecToStr+2+0)&0ffh
	movlb	0	; () banked
	movf	(??_DecToStr+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_DecToStr+2+1)&0ffh
	movlb	0	; () banked
	movf	(??_DecToStr+2+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((DecToStr@result))&0ffh,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movf	(??_DecToStr+2+1)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((DecToStr@result+1))&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(DecToStr@value),(___awmod@dividend)
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	((___awmod@dividend+1))&0ffh
	movlw	high(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@divisor+1))&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movwf	((___awmod@divisor))&0ffh
	call	___awmod	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___awmod)&0ffh,w
	addlw	low(030h)
	movwf	indf2,c

	line	22
	
l5732:; BSR set to: 0

;utils.c: 22: value /= 10;
	movlb	0	; () banked
	movwf	(??_DecToStr+0+0)&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lbdiv@divisor))&0ffh
	movlb	0	; () banked
	movf	(??_DecToStr+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((DecToStr@value))&0ffh,w
	
	call	___lbdiv
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((DecToStr@value))&0ffh
	line	19
	
l5734:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((DecToStr@power10))&0ffh
	
l5736:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((DecToStr@power10))&0ffh
	goto	u4971
	goto	u4970
u4971:
	goto	l5730
u4970:
	goto	l5738
	
l658:; BSR set to: 0

	line	25
	
l5738:; BSR set to: 0

;utils.c: 23: }
;utils.c: 25: return result;
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(DecToStr@result+1),(?_DecToStr+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(DecToStr@result),(?_DecToStr)

	goto	l659
	
l5740:; BSR set to: 0

	line	26
	
l659:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_DecToStr
	__end_of_DecToStr:
	signat	_DecToStr,8314
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[BANK0 ] unsigned char 
;;  quotient        1    4[BANK0 ] unsigned char 
;;  counter         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       1       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DecToStr
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lbdiv.c"
	line	4
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
;___lbdiv@dividend stored from wreg
	movff	wreg,(___lbdiv@dividend)
	line	9
	
l5640:
	movlb	0	; () banked
	movwf	(??___lbdiv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lbdiv@quotient))&0ffh
	movlb	0	; () banked
	movf	(??___lbdiv+0+0)&0ffh,w
	line	10
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lbdiv@divisor))&0ffh,w
	btfsc	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l5660
u4810:
	line	11
	
l5642:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___lbdiv+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lbdiv@counter))&0ffh
	movlb	0	; () banked
	movf	(??___lbdiv+0+0)&0ffh,w
	line	12
	goto	l5648
	
l1583:; BSR set to: 0

	line	13
	
l5644:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rlcf	((___lbdiv@divisor))&0ffh

	line	14
	
l5646:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___lbdiv@counter))&0ffh
	goto	l5648
	line	15
	
l1582:; BSR set to: 0

	line	12
	
l5648:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lbdiv@divisor))&0ffh,(7)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l5644
u4820:
	goto	l5650
	
l1584:; BSR set to: 0

	goto	l5650
	line	16
	
l1585:; BSR set to: 0

	line	17
	
l5650:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rlcf	((___lbdiv@quotient))&0ffh

	line	18
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lbdiv@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lbdiv@dividend))&0ffh,w
	btfss	status,0
	goto	u4831
	goto	u4830
u4831:
	goto	l5656
u4830:
	line	19
	
l5652:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lbdiv@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lbdiv@dividend))&0ffh
	line	20
	
l5654:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(0/8)+(___lbdiv@quotient))&0ffh,(0)&7
	goto	l5656
	line	21
	
l1586:; BSR set to: 0

	line	22
	
l5656:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rrcf	((___lbdiv@divisor))&0ffh

	line	23
	
l5658:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___lbdiv@counter))&0ffh
	
	goto	l5650
	goto	l5660
	
l1587:; BSR set to: 0

	goto	l5660
	line	24
	
l1581:; BSR set to: 0

	line	25
	
l5660:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lbdiv@quotient))&0ffh,w
	goto	l1588
	
l5662:; BSR set to: 0

	line	26
	
l1588:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[BANK0 ] int 
;;  divisor         2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DecToStr
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awmod.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	13
	
l5604:
	movlb	0	; () banked
	movwf	(??___awmod+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@sign))&0ffh
	movlb	0	; () banked
	movf	(??___awmod+0+0)&0ffh,w
	line	14
	
l5606:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@dividend+1))&0ffh,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((___awmod@dividend))&0ffh,w
	btfsc	status,0
	goto	u4751
	goto	u4750
u4751:
	goto	l5612
u4750:
	line	15
	
l5608:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((___awmod@dividend))&0ffh
	movlb	0	; () banked
	comf	((___awmod@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awmod@dividend+1))&0ffh
	line	16
	
l5610:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___awmod+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@sign))&0ffh
	movlb	0	; () banked
	movf	(??___awmod+0+0)&0ffh,w
	goto	l5612
	line	17
	
l1334:; BSR set to: 0

	line	18
	
l5612:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((___awmod@divisor))&0ffh,w
	btfsc	status,0
	goto	u4761
	goto	u4760
u4761:
	goto	l5616
u4760:
	line	19
	
l5614:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((___awmod@divisor))&0ffh
	movlb	0	; () banked
	comf	((___awmod@divisor+1))&0ffh
	btfsc	status,0
	incf	((___awmod@divisor+1))&0ffh
	goto	l5616
	
l1335:; BSR set to: 0

	line	20
	
l5616:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	iorwf ((___awmod@divisor))&0ffh,w

	btfsc	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l5632
u4770:
	line	21
	
l5618:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___awmod+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@counter))&0ffh
	movlb	0	; () banked
	movf	(??___awmod+0+0)&0ffh,w
	line	22
	goto	l5622
	
l1338:; BSR set to: 0

	line	23
	
l5620:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___awmod@divisor))&0ffh
	rlcf	((___awmod@divisor+1))&0ffh
	line	24
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___awmod@counter))&0ffh
	goto	l5622
	line	25
	
l1337:; BSR set to: 0

	line	22
	
l5622:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___awmod@divisor+1))&0ffh,(15)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l5620
u4780:
	goto	l5624
	
l1339:; BSR set to: 0

	goto	l5624
	line	26
	
l1340:; BSR set to: 0

	line	27
	
l5624:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___awmod@dividend))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((___awmod@dividend+1))&0ffh,w
	btfss	status,0
	goto	u4791
	goto	u4790
u4791:
	goto	l5628
u4790:
	line	28
	
l5626:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___awmod@dividend))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((___awmod@dividend+1))&0ffh

	goto	l5628
	
l1341:; BSR set to: 0

	line	29
	
l5628:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___awmod@divisor+1))&0ffh
	rrcf	((___awmod@divisor))&0ffh
	line	30
	
l5630:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___awmod@counter))&0ffh
	
	goto	l5624
	goto	l5632
	
l1342:; BSR set to: 0

	goto	l5632
	line	31
	
l1336:; BSR set to: 0

	line	32
	
l5632:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@sign))&0ffh,w
	btfsc	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l5636
u4800:
	line	33
	
l5634:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((___awmod@dividend))&0ffh
	movlb	0	; () banked
	comf	((___awmod@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awmod@dividend+1))&0ffh
	goto	l5636
	
l1343:; BSR set to: 0

	line	34
	
l5636:; BSR set to: 0

	movff	(___awmod@dividend),(?___awmod)
	movff	(___awmod@dividend+1),(?___awmod+1)
	goto	l1344
	
l5638:; BSR set to: 0

	line	35
	
l1344:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_check_program_0

;; *************** function _check_program_0 *****************
;; Defined at:
;;		line 19 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ret             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ecran_blank
;;		_ecran_refresh
;;		_ecran_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"test.c"
	line	19
global __ptext16
__ptext16:
psect	text16
	file	"test.c"
	line	19
	global	__size_of_check_program_0
	__size_of_check_program_0	equ	__end_of_check_program_0-_check_program_0
	
_check_program_0:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	21
	
l6246:
;test.c: 21: unsigned char ret = 0;
	movlb	0	; () banked
	movwf	(??_check_program_0+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((check_program_0@ret))&0ffh
	movlb	0	; () banked
	movf	(??_check_program_0+0+0)&0ffh,w
	line	23
	
l6248:; BSR set to: 0

;test.c: 23: if ((PORTEbits.RE1 == 0) && (PORTEbits.RE0 == 0))
	btfsc	((c:3972)),c,1	;volatile
	goto	u5441
	goto	u5440
u5441:
	goto	l6264
u5440:
	
l6250:; BSR set to: 0

	btfsc	((c:3972)),c,0	;volatile
	goto	u5451
	goto	u5450
u5451:
	goto	l6264
u5450:
	line	25
	
l6252:; BSR set to: 0

;test.c: 24: {
;test.c: 25: ecran_blank();
	call	_ecran_blank	;wreg free
	line	26
;test.c: 26: while ((PORTEbits.RE1 == 0) || (PORTEbits.RE0 == 0)) {ecran_refresh();}
	goto	l6256
	
l535:
	
l6254:
	call	_ecran_refresh	;wreg free
	goto	l6256
	
l534:
	
l6256:
	btfss	((c:3972)),c,1	;volatile
	goto	u5461
	goto	u5460
u5461:
	goto	l6254
u5460:
	
l6258:
	btfss	((c:3972)),c,0	;volatile
	goto	u5471
	goto	u5470
u5471:
	goto	l6254
u5470:
	
l536:
	line	28
;test.c: 28: Micro.Mod.P_0 = 1;
	bsf	(0+((c:_Micro)+05h)),c,0
	line	30
	
l6260:
;test.c: 30: ret = 1;
	movlb	0	; () banked
	movwf	(??_check_program_0+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((check_program_0@ret))&0ffh
	movlb	0	; () banked
	movf	(??_check_program_0+0+0)&0ffh,w
	line	32
;test.c: 32: Micro.Step = 0x03;
	movlb	0	; () banked
	movwf	(??_check_program_0+0+0)&0ffh
	movlw	low(03h)
	movwf	(0+((c:_Micro)+03h)),c
	movlb	0	; () banked
	movf	(??_check_program_0+0+0)&0ffh,w
	line	34
	
l6262:; BSR set to: 0

;test.c: 34: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l6264
	line	35
	
l533:
	line	37
	
l6264:
;test.c: 35: }
;test.c: 37: return ret;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((check_program_0@ret))&0ffh,w
	goto	l537
	
l6266:; BSR set to: 0

	line	38
	
l537:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_check_program_0
	__end_of_check_program_0:
	signat	_check_program_0,89
	global	_check_idtest

;; *************** function _check_idtest *****************
;; Defined at:
;;		line 41 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_cf_rcv
;;		_ecran_print_one_char
;;		_micro_config_rs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	line	41
global __ptext17
__ptext17:
psect	text17
	file	"test.c"
	line	41
	global	__size_of_check_idtest
	__size_of_check_idtest	equ	__end_of_check_idtest-_check_idtest
	
_check_idtest:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	43
	
l6268:
;test.c: 43: if ((PORTEbits.RE1 == 0) && (PORTEbits.RE0 == 1))
	btfsc	((c:3972)),c,1	;volatile
	goto	u5481
	goto	u5480
u5481:
	goto	l544
u5480:
	
l6270:
	btfss	((c:3972)),c,0	;volatile
	goto	u5491
	goto	u5490
u5491:
	goto	l544
u5490:
	line	45
	
l6272:
;test.c: 44: {
;test.c: 45: micro_config_rs();
	call	_micro_config_rs	;wreg free
	line	46
	
l6274:
;test.c: 46: ecran_print_one_char(3, 'P');
	movlb	0	; () banked
	movwf	(??_check_idtest+0+0)&0ffh
	movlw	low(050h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_check_idtest+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	goto	l6276
	line	48
;test.c: 48: while(1) {cf_rcv();}
	
l541:
	
l6276:
	call	_cf_rcv	;wreg free
	goto	l6276
	
l542:
	goto	l6276
	
l543:
	goto	l544
	line	49
	
l540:
	line	50
	
l544:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_check_idtest
	__end_of_check_idtest:
	signat	_check_idtest,88
	global	_micro_config_rs

;; *************** function _micro_config_rs *****************
;; Defined at:
;;		line 3 in file "micro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_check_idtest
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"micro.c"
	line	3
global __ptext18
__ptext18:
psect	text18
	file	"micro.c"
	line	3
	global	__size_of_micro_config_rs
	__size_of_micro_config_rs	equ	__end_of_micro_config_rs-_micro_config_rs
	
_micro_config_rs:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	5
	
l6058:
;micro.c: 5: PORTEbits.RE2 = 0;
	bcf	((c:3972)),c,2	;volatile
	line	9
	
l6060:
;micro.c: 9: SPBRG = 207;
	movlw	low(0CFh)
	movwf	((c:4015)),c	;volatile
	line	14
;micro.c: 14: TXSTA = 0x20;
	movlw	low(020h)
	movwf	((c:4012)),c	;volatile
	line	22
;micro.c: 22: RCSTA = 0x90;
	movlw	low(090h)
	movwf	((c:4011)),c	;volatile
	line	34
	
l6062:
;micro.c: 34: RCIP = 0;
	bcf	c:(31997/8),(31997)&7	;volatile
	line	35
	
l6064:
;micro.c: 35: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	36
	
l6066:
;micro.c: 36: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	37
	
l808:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_micro_config_rs
	__end_of_micro_config_rs:
	signat	_micro_config_rs,88
	global	_cf_rcv

;; *************** function _cf_rcv *****************
;; Defined at:
;;		line 132 in file "config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   23[BANK0 ] unsigned char 
;;  temp            1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_cf_check
;;		_ecran_print_one_char
;;		_eeprom_read_array
;;		_eeprom_write_array
;; This function is called by:
;;		_check_idtest
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"config.c"
	line	132
global __ptext19
__ptext19:
psect	text19
	file	"config.c"
	line	132
	global	__size_of_cf_rcv
	__size_of_cf_rcv	equ	__end_of_cf_rcv-_cf_rcv
	
_cf_rcv:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	134
	
l6008:
;config.c: 134: unsigned char i, temp = 0;
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@temp))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	line	136
	
l6010:; BSR set to: 0

;config.c: 136: if ((((unsigned short) (Cptms - Cf.Time2) > 100) ? 1 : 0))
	movlb	1	; () banked
	lfsr	2,_Cf+068h	;volatile
	movff	postinc2,??_cf_rcv+0+0
	movff	postdec2,??_cf_rcv+0+0+1
	movlb	0	; () banked
	comf	(??_cf_rcv+0+0)&0ffh
	comf	(??_cf_rcv+0+1)&0ffh
	infsnz	(??_cf_rcv+0+0)&0ffh
	incf	(??_cf_rcv+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_cf_rcv+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_cf_rcv+0+1)&0ffh
	movlw	065h
	movlb	0	; () banked
	subwf	(??_cf_rcv+0+0)&0ffh,w
	movlw	0
	subwfb	(??_cf_rcv+0+1)&0ffh,w
	btfss	status,0
	goto	u5321
	goto	u5320
u5321:
	goto	l6020
u5320:
	line	138
	
l6012:; BSR set to: 0

;config.c: 137: {
;config.c: 138: Cf.Time2 = Cptms;
	movff	(c:_Cptms),0+(_Cf+068h)	;volatile
	movff	(c:_Cptms+1),1+(_Cf+068h)	;volatile
	line	140
;config.c: 140: (INTCONbits.GIE = 0);
	bcf	((c:4082)),c,7	;volatile
	line	141
	
l6014:; BSR set to: 0

;config.c: 141: if ((((unsigned short) (Cptms - Cf.Time1) > 100) ? 1 : 0)) {Cf.Index = 0;}
	movlb	1	; () banked
	lfsr	2,_Cf+066h	;volatile
	movff	postinc2,??_cf_rcv+0+0
	movff	postdec2,??_cf_rcv+0+0+1
	movlb	0	; () banked
	comf	(??_cf_rcv+0+0)&0ffh
	comf	(??_cf_rcv+0+1)&0ffh
	infsnz	(??_cf_rcv+0+0)&0ffh
	incf	(??_cf_rcv+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_cf_rcv+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_cf_rcv+0+1)&0ffh
	movlw	065h
	movlb	0	; () banked
	subwf	(??_cf_rcv+0+0)&0ffh,w
	movlw	0
	subwfb	(??_cf_rcv+0+1)&0ffh,w
	btfss	status,0
	goto	u5331
	goto	u5330
u5331:
	goto	l6018
u5330:
	
l6016:; BSR set to: 0

	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(0+(_Cf+065h))&0ffh	;volatile
	goto	l6018
	
l452:; BSR set to: 1

	line	142
	
l6018:
;config.c: 142: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	143
;config.c: 143: }
	goto	l461
	line	144
	
l451:
	
l6020:
;config.c: 144: else if (Cf.Index == (32 * 3 + 5))
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+065h))&0ffh,w	;volatile
	xorlw	101

	btfss	status,2
	goto	u5341
	goto	u5340
u5341:
	goto	l461
u5340:
	line	146
	
l6022:; BSR set to: 1

;config.c: 145: {
;config.c: 146: RCIE = 0;
	bcf	c:(31981/8),(31981)&7	;volatile
	line	148
	
l6024:; BSR set to: 1

;config.c: 148: temp = cf_check();
	call	_cf_check	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@temp))&0ffh
	line	150
	
l6026:; BSR set to: 0

;config.c: 150: if (temp == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_rcv@temp))&0ffh
	goto	u5351
	goto	u5350
u5351:
	goto	l6030
u5350:
	line	152
	
l6028:; BSR set to: 0

;config.c: 151: {
;config.c: 152: ecran_print_one_char(3, 'E');
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(045h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	line	153
;config.c: 153: }
	goto	l6054
	line	154
	
l455:
	line	157
	
l6030:
;config.c: 154: else
;config.c: 155: {
;config.c: 157: eeprom_write_array(&Cf.Data[0], 0, (32 * 3 + 5));
	movlb	1	; () banked
		movlw	high(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_write_array@pData+1))&0ffh
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_write_array@pData))&0ffh

	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_write_array@Address))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_rcv+1+0)&0ffh
	movlw	low(065h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_write_array@NbData))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+1+0)&0ffh,w
	call	_eeprom_write_array	;wreg free
	line	159
	
l6032:
;config.c: 159: for (i = 0; i < (32 * 3 + 5); i ++)
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	
l6034:; BSR set to: 0

	movlw	(065h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_rcv@i))&0ffh
	goto	u5361
	goto	u5360
u5361:
	goto	l6038
u5360:
	goto	l6044
	
l6036:; BSR set to: 0

	goto	l6044
	line	160
	
l457:; BSR set to: 0

	line	161
	
l6038:; BSR set to: 0

;config.c: 160: {
;config.c: 161: Cf.Data[i] = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_rcv@i))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	159
	
l6040:; BSR set to: 1

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_rcv@i))&0ffh
	
l6042:; BSR set to: 0

	movlw	(065h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_rcv@i))&0ffh
	goto	u5371
	goto	u5370
u5371:
	goto	l6038
u5370:
	goto	l6044
	
l458:; BSR set to: 0

	line	164
	
l6044:; BSR set to: 0

;config.c: 162: }
;config.c: 164: eeprom_read_array(&Cf.Data[0], 0, (32 * 3 + 5));
	movlb	1	; () banked
		movlw	high(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@pData+1))&0ffh
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@pData))&0ffh

	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@Address))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_rcv+1+0)&0ffh
	movlw	low(065h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@NbData))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+1+0)&0ffh,w
	call	_eeprom_read_array	;wreg free
	line	166
	
l6046:
;config.c: 166: temp = cf_check();
	call	_cf_check	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@temp))&0ffh
	line	168
	
l6048:; BSR set to: 0

;config.c: 168: if (temp == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_rcv@temp))&0ffh
	goto	u5381
	goto	u5380
u5381:
	goto	l6052
u5380:
	line	170
	
l6050:; BSR set to: 0

;config.c: 169: {
;config.c: 170: ecran_print_one_char(3, 'E');
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(045h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	line	171
;config.c: 171: }
	goto	l6054
	line	172
	
l459:
	line	174
	
l6052:
;config.c: 172: else
;config.c: 173: {
;config.c: 174: ecran_print_one_char(3, 'P');
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(050h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	goto	l6054
	line	175
	
l460:
	goto	l6054
	line	176
	
l456:
	line	178
	
l6054:
;config.c: 175: }
;config.c: 176: }
;config.c: 178: Cf.Index = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(0+(_Cf+065h))&0ffh	;volatile
	line	180
	
l6056:; BSR set to: 1

;config.c: 180: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	goto	l461
	line	181
	
l454:; BSR set to: 1

	goto	l461
	line	182
	
l453:; BSR set to: 1

	
l461:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cf_rcv
	__end_of_cf_rcv:
	signat	_cf_rcv,88
	global	_eeprom_write_array

;; *************** function _eeprom_write_array *****************
;; Defined at:
;;		line 52 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  pData           2    2[BANK0 ] PTR unsigned char 
;;		 -> Cf(107), 
;;  Address         1    4[BANK0 ] unsigned char 
;;  NbData          1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_eeprom_write
;; This function is called by:
;;		_cf_rcv
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	52
global __ptext20
__ptext20:
psect	text20
	file	"eeprom.c"
	line	52
	global	__size_of_eeprom_write_array
	__size_of_eeprom_write_array	equ	__end_of_eeprom_write_array-_eeprom_write_array
	
_eeprom_write_array:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	56
	
l5766:
;eeprom.c: 54: unsigned char i;
;eeprom.c: 56: for (i = 0; i < NbData; i ++)
	movlb	0	; () banked
	movwf	(??_eeprom_write_array+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_write_array@i))&0ffh
	movlb	0	; () banked
	movf	(??_eeprom_write_array+0+0)&0ffh,w
	goto	l5776
	line	57
	
l353:; BSR set to: 0

	line	58
	
l5768:; BSR set to: 0

;eeprom.c: 57: {
;eeprom.c: 58: eeprom_write(*pData, Address);
	movff	(eeprom_write_array@Address),(eeprom_write@Address)
	movff	(eeprom_write_array@pData),fsr2l
	movff	(eeprom_write_array@pData+1),fsr2h
	movf	indf2,w
	
	call	_eeprom_write
	line	59
	
l5770:
;eeprom.c: 59: pData ++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((eeprom_write_array@pData))&0ffh
	incf	((eeprom_write_array@pData+1))&0ffh
	line	60
	
l5772:; BSR set to: 0

;eeprom.c: 60: Address ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_write_array@Address))&0ffh
	line	56
	
l5774:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_write_array@i))&0ffh
	goto	l5776
	
l352:; BSR set to: 0

	
l5776:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((eeprom_write_array@NbData))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((eeprom_write_array@i))&0ffh,w
	btfss	status,0
	goto	u4991
	goto	u4990
u4991:
	goto	l5768
u4990:
	goto	l355
	
l354:; BSR set to: 0

	line	62
	
l355:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eeprom_write_array
	__end_of_eeprom_write_array:
	signat	_eeprom_write_array,12408
	global	_eeprom_write

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 18 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;;  Address         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       1       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eeprom_write_array
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	18
global __ptext21
__ptext21:
psect	text21
	file	"eeprom.c"
	line	18
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
;eeprom_write@Data stored from wreg
	movff	wreg,(eeprom_write@Data)
	line	20
	
l5448:
;eeprom.c: 20: EEADR = Address;
	movff	(eeprom_write@Address),(c:4009)	;volatile
	line	21
	
l5450:
;eeprom.c: 21: EEDATA = Data;
	movff	(eeprom_write@Data),(c:4008)	;volatile
	line	23
	
l5452:
;eeprom.c: 23: EEPGD = 0;
	bcf	c:(32055/8),(32055)&7	;volatile
	line	24
	
l5454:
;eeprom.c: 24: CFGS = 0;
	bcf	c:(32054/8),(32054)&7	;volatile
	line	25
	
l5456:
;eeprom.c: 25: WREN = 1;
	bsf	c:(32050/8),(32050)&7	;volatile
	line	27
	
l5458:
;eeprom.c: 27: (INTCONbits.GIE = 0);
	bcf	((c:4082)),c,7	;volatile
	line	29
	
l5460:
;eeprom.c: 29: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	30
	
l5462:
;eeprom.c: 30: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	32
	
l5464:
;eeprom.c: 32: WR = 1;
	bsf	c:(32049/8),(32049)&7	;volatile
	line	33
;eeprom.c: 33: while(WR);
	goto	l340
	
l341:
	
l340:
	btfsc	c:(32049/8),(32049)&7	;volatile
	goto	u4401
	goto	u4400
u4401:
	goto	l340
u4400:
	
l342:
	line	35
;eeprom.c: 35: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	37
;eeprom.c: 37: WREN = 0;
	bcf	c:(32050/8),(32050)&7	;volatile
	line	38
	
l343:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
	signat	_eeprom_write,8312
	global	_check_bpon

;; *************** function _check_bpon *****************
;; Defined at:
;;		line 52 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ecran_print_one_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"test.c"
	line	52
global __ptext22
__ptext22:
psect	text22
	file	"test.c"
	line	52
	global	__size_of_check_bpon
	__size_of_check_bpon	equ	__end_of_check_bpon-_check_bpon
	
_check_bpon:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	54
	
l6278:
;test.c: 54: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	line	56
;test.c: 56: if (PORTEbits.RE0 == 0)
	btfsc	((c:3972)),c,0	;volatile
	goto	u5501
	goto	u5500
u5501:
	goto	l553
u5500:
	line	58
	
l6280:
;test.c: 57: {
;test.c: 58: ecran_print_one_char(3, 'A');
	movlb	0	; () banked
	movwf	(??_check_bpon+0+0)&0ffh
	movlw	low(041h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_check_bpon+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	line	60
;test.c: 60: while((PORTEbits.RE0 == 0) && ((((unsigned short) (Cptms - Test.Time) < 1000) ? 1 : 0)));
	goto	l548
	
l549:
	
l548:
	btfsc	((c:3972)),c,0	;volatile
	goto	u5511
	goto	u5510
u5511:
	goto	l553
u5510:
	
l6282:
	lfsr	2,(c:_Test)+02h
	movff	postinc2,??_check_bpon+0+0
	movff	postdec2,??_check_bpon+0+0+1
	movlb	0	; () banked
	comf	(??_check_bpon+0+0)&0ffh
	comf	(??_check_bpon+0+1)&0ffh
	infsnz	(??_check_bpon+0+0)&0ffh
	incf	(??_check_bpon+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_check_bpon+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_check_bpon+0+1)&0ffh
	movlw	0E8h
	movlb	0	; () banked
	subwf	(??_check_bpon+0+0)&0ffh,w
	movlw	03h
	subwfb	(??_check_bpon+0+1)&0ffh,w
	btfss	status,0
	goto	u5521
	goto	u5520
u5521:
	goto	l548
u5520:
	goto	l553
	
l551:; BSR set to: 0

	goto	l553
	
l552:; BSR set to: 0

	goto	l553
	line	61
	
l547:; BSR set to: 0

	line	62
	
l553:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_check_bpon
	__end_of_check_bpon:
	signat	_check_bpon,88
	global	_cf_check_and_display

;; *************** function _cf_check_and_display *****************
;; Defined at:
;;		line 92 in file "config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   22[BANK0 ] unsigned short 
;;  configOk        1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_HexToAscii
;;		_cf_check
;;		_ecran_print_one_char
;;		_ecran_refresh
;;		_eeprom_read_array
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"config.c"
	line	92
global __ptext23
__ptext23:
psect	text23
	file	"config.c"
	line	92
	global	__size_of_cf_check_and_display
	__size_of_cf_check_and_display	equ	__end_of_cf_check_and_display-_cf_check_and_display
	
_cf_check_and_display:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	94
	
l6284:
;config.c: 94: unsigned char configOk = 0;
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check_and_display@configOk))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	line	97
	
l6286:; BSR set to: 0

;config.c: 95: unsigned short temp;
;config.c: 97: eeprom_read_array(&Cf.Data[0], 0, (32 * 3 + 5));
	movlb	1	; () banked
		movlw	high(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@pData+1))&0ffh
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@pData))&0ffh

	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@Address))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+1+0)&0ffh
	movlw	low(065h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@NbData))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+1+0)&0ffh,w
	call	_eeprom_read_array	;wreg free
	line	99
	
l6288:
;config.c: 99: configOk = cf_check();
	call	_cf_check	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check_and_display@configOk))&0ffh
	line	101
	
l6290:; BSR set to: 0

;config.c: 101: if (configOk == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((cf_check_and_display@configOk))&0ffh,w

	btfss	status,2
	goto	u5531
	goto	u5530
u5531:
	goto	l6312
u5530:
	line	104
	
l6292:; BSR set to: 0

;config.c: 102: {
;config.c: 104: if (Cf.IsLong == 1)
	movlb	1	; () banked
	btfss	(0+(_Cf+06Ah))&0ffh,0	;volatile
	goto	u5541
	goto	u5540
u5541:
	goto	l6308
u5540:
	line	106
	
l6294:; BSR set to: 1

;config.c: 105: {
;config.c: 106: Ecran.Digit[0] = ' ';
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	line	107
;config.c: 107: Ecran.Digit[1] = ' ';
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	line	108
	
l6296:; BSR set to: 0

;config.c: 108: Ecran.Digit[2] = HexToAscii(((unsigned char) ((unsigned char) ((Cf.Data[98]) & 0xF0) >> 4)));
	movlb	1	; () banked
	movlb	1	; () banked
	swapf	(0+(_Cf+062h))&0ffh,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	line	109
	
l6298:; BSR set to: 0

;config.c: 109: Ecran.Digit[3] = HexToAscii(((unsigned char) ((Cf.Data[98]) & 0x0F)));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+062h))&0ffh,w	;volatile
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	111
	
l6300:; BSR set to: 0

;config.c: 111: Ecran.Digits = Ecran.Digit;
	movlb	0	; () banked
		movlw	high(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	113
	
l6302:; BSR set to: 0

;config.c: 113: temp = Cptms;
	movff	(c:_Cptms),(cf_check_and_display@temp)	;volatile
	movff	(c:_Cptms+1),(cf_check_and_display@temp+1)	;volatile
	line	115
;config.c: 115: while((((unsigned short) (Cptms - temp) < 1000) ? 1 : 0)) {ecran_refresh();}
	goto	l6306
	
l442:; BSR set to: 0

	
l6304:; BSR set to: 0

	call	_ecran_refresh	;wreg free
	goto	l6306
	
l441:
	
l6306:
	movlb	0	; () banked
	movff	(cf_check_and_display@temp),??_cf_check_and_display+0+0
	movlb	0	; () banked
	movff	(cf_check_and_display@temp+1),??_cf_check_and_display+0+0+1
	movlb	0	; () banked
	comf	(??_cf_check_and_display+0+0)&0ffh
	comf	(??_cf_check_and_display+0+1)&0ffh
	infsnz	(??_cf_check_and_display+0+0)&0ffh
	incf	(??_cf_check_and_display+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_cf_check_and_display+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_cf_check_and_display+0+1)&0ffh
	movlw	0E8h
	movlb	0	; () banked
	subwf	(??_cf_check_and_display+0+0)&0ffh,w
	movlw	03h
	subwfb	(??_cf_check_and_display+0+1)&0ffh,w
	btfss	status,0
	goto	u5551
	goto	u5550
u5551:
	goto	l6304
u5550:
	goto	l6308
	
l443:; BSR set to: 0

	goto	l6308
	line	116
	
l440:; BSR set to: 0

	line	118
	
l6308:
;config.c: 116: }
;config.c: 118: Ecran.Digit[0] = HexToAscii(((unsigned char) ((unsigned char) ((Cf.Data[99]) & 0xF0) >> 4)));
	movlb	1	; () banked
	movlb	1	; () banked
	swapf	(0+(_Cf+063h))&0ffh,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	line	119
;config.c: 119: Ecran.Digit[1] = HexToAscii(((unsigned char) ((Cf.Data[99]) & 0x0F)));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+063h))&0ffh,w	;volatile
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	line	120
;config.c: 120: Ecran.Digit[2] = HexToAscii(((unsigned char) ((unsigned char) ((Cf.Data[100]) & 0xF0) >> 4)));
	movlb	1	; () banked
	movlb	1	; () banked
	swapf	(0+(_Cf+064h))&0ffh,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	line	121
;config.c: 121: Ecran.Digit[3] = HexToAscii(((unsigned char) ((Cf.Data[100]) & 0x0F)));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+064h))&0ffh,w	;volatile
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	123
	
l6310:; BSR set to: 0

;config.c: 123: Ecran.Digits = Ecran.Digit;
	movlb	0	; () banked
		movlw	high(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_Ecran)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	124
;config.c: 124: }
	goto	l448
	line	125
	
l439:; BSR set to: 0

	line	127
	
l6312:; BSR set to: 0

;config.c: 125: else
;config.c: 126: {
;config.c: 127: ecran_print_one_char(3, 'E');
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(045h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	movlw	(03h)&0ffh
	
	call	_ecran_print_one_char
	line	128
;config.c: 128: while (1);
	
l445:
	
l446:
	goto	l445
	
l447:
	goto	l448
	line	129
	
l444:
	line	130
	
l448:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cf_check_and_display
	__end_of_cf_check_and_display:
	signat	_cf_check_and_display,88
	global	_eeprom_read_array

;; *************** function _eeprom_read_array *****************
;; Defined at:
;;		line 40 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  pData           2    1[BANK0 ] PTR unsigned char 
;;		 -> Cf(107), 
;;  Address         1    3[BANK0 ] unsigned char 
;;  NbData          1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_eeprom_read
;; This function is called by:
;;		_cf_check_and_display
;;		_cf_rcv
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	40
global __ptext24
__ptext24:
psect	text24
	file	"eeprom.c"
	line	40
	global	__size_of_eeprom_read_array
	__size_of_eeprom_read_array	equ	__end_of_eeprom_read_array-_eeprom_read_array
	
_eeprom_read_array:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	44
	
l5754:
;eeprom.c: 42: unsigned char i;
;eeprom.c: 44: for (i = 0; i < NbData; i ++)
	movlb	0	; () banked
	movwf	(??_eeprom_read_array+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@i))&0ffh
	movlb	0	; () banked
	movf	(??_eeprom_read_array+0+0)&0ffh,w
	goto	l5764
	line	45
	
l347:; BSR set to: 0

	line	46
	
l5756:; BSR set to: 0

;eeprom.c: 45: {
;eeprom.c: 46: *pData = eeprom_read(Address);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((eeprom_read_array@Address))&0ffh,w
	
	call	_eeprom_read
	movff	(eeprom_read_array@pData),fsr2l
	movff	(eeprom_read_array@pData+1),fsr2h
	movwf	indf2,c

	line	47
	
l5758:
;eeprom.c: 47: pData ++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((eeprom_read_array@pData))&0ffh
	incf	((eeprom_read_array@pData+1))&0ffh
	line	48
	
l5760:; BSR set to: 0

;eeprom.c: 48: Address ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_read_array@Address))&0ffh
	line	44
	
l5762:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_read_array@i))&0ffh
	goto	l5764
	
l346:; BSR set to: 0

	
l5764:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((eeprom_read_array@NbData))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((eeprom_read_array@i))&0ffh,w
	btfss	status,0
	goto	u4981
	goto	u4980
u4981:
	goto	l5756
u4980:
	goto	l349
	
l348:; BSR set to: 0

	line	50
	
l349:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eeprom_read_array
	__end_of_eeprom_read_array:
	signat	_eeprom_read_array,12408
	global	_eeprom_read

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 3 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  Address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Address         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eeprom_read_array
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	3
global __ptext25
__ptext25:
psect	text25
	file	"eeprom.c"
	line	3
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
;eeprom_read@Address stored from wreg
	movff	wreg,(eeprom_read@Address)
	line	5
	
l5432:
;eeprom.c: 5: EEADR = Address;
	movff	(eeprom_read@Address),(c:4009)	;volatile
	line	7
	
l5434:
;eeprom.c: 7: EEPGD = 0;
	bcf	c:(32055/8),(32055)&7	;volatile
	line	8
	
l5436:
;eeprom.c: 8: CFGS = 0;
	bcf	c:(32054/8),(32054)&7	;volatile
	line	9
	
l5438:
;eeprom.c: 9: RD = 1;
	bsf	c:(32048/8),(32048)&7	;volatile
	line	11
	
l5440:
;eeprom.c: 11: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	12
	
l5442:
;eeprom.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	14
	
l5444:
;eeprom.c: 14: return EEDATA;
	movf	((c:4008)),c,w	;volatile
	goto	l337
	
l5446:
	line	15
	
l337:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
	signat	_eeprom_read,4217
	global	_cf_check

;; *************** function _cf_check *****************
;; Defined at:
;;		line 79 in file "config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  valid           1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_cf_checkout
;;		_cf_checkrange
;;		_cf_checksum
;; This function is called by:
;;		_cf_check_and_display
;;		_cf_rcv
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"config.c"
	line	79
global __ptext26
__ptext26:
psect	text26
	file	"config.c"
	line	79
	global	__size_of_cf_check
	__size_of_cf_check	equ	__end_of_cf_check-_cf_check
	
_cf_check:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	81
	
l5778:
;config.c: 81: unsigned char valid = 0;
	movlb	0	; () banked
	movwf	(??_cf_check+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check+0+0)&0ffh,w
	line	83
	
l5780:; BSR set to: 0

;config.c: 83: if (cf_checksum() && cf_checkout() && cf_checkrange())
	call	_cf_checksum	;wreg free
	btfss	status,0
	goto	u5001
	goto	u5000
u5001:
	goto	l5788
u5000:
	
l5782:
	call	_cf_checkout	;wreg free
	btfss	status,0
	goto	u5011
	goto	u5010
u5011:
	goto	l5788
u5010:
	
l5784:
	call	_cf_checkrange	;wreg free
	btfss	status,0
	goto	u5021
	goto	u5020
u5021:
	goto	l5788
u5020:
	line	85
	
l5786:
;config.c: 84: {
;config.c: 85: valid = 1;
	movlb	0	; () banked
	movwf	(??_cf_check+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check+0+0)&0ffh,w
	goto	l5788
	line	86
	
l435:; BSR set to: 0

	line	88
	
l5788:
;config.c: 86: }
;config.c: 88: return valid;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_check@valid))&0ffh,w
	goto	l436
	
l5790:; BSR set to: 0

	line	89
	
l436:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cf_check
	__end_of_cf_check:
	signat	_cf_check,89
	global	_cf_checksum

;; *************** function _cf_checksum *****************
;; Defined at:
;;		line 4 in file "config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  calcul          4   14[BANK0 ] unsigned long 
;;  i               1   13[BANK0 ] unsigned char 
;;  valid           1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0      12       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_cf_check
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	4
global __ptext27
__ptext27:
psect	text27
	file	"config.c"
	line	4
	global	__size_of_cf_checksum
	__size_of_cf_checksum	equ	__end_of_cf_checksum-_cf_checksum
	
_cf_checksum:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	7
	
l5466:
;config.c: 6: unsigned long calcul;
;config.c: 7: unsigned char i, valid = 0;
	movlb	0	; () banked
	movwf	(??_cf_checksum+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checksum@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	line	9
;config.c: 9: for (i = 0, calcul = 0; i < 32; i ++)
	movlb	0	; () banked
	movwf	(??_cf_checksum+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checksum@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	
l5468:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checksum@calcul))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((cf_checksum@calcul+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((cf_checksum@calcul+2))&0ffh
	movlw	high highword(0)
	movlb	0	; () banked
	movwf	((cf_checksum@calcul+3))&0ffh
	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checksum@i))&0ffh
	goto	u4411
	goto	u4410
u4411:
	goto	l5472
u4410:
	goto	l5478
	
l5470:; BSR set to: 0

	goto	l5478
	line	10
	
l406:; BSR set to: 0

	line	11
	
l5472:; BSR set to: 0

;config.c: 10: {
;config.c: 11: calcul += (unsigned long) ((unsigned short) (Cf.Data[i*3+1] << 8) + Cf.Data[i*3+2]);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checksum@i))&0ffh,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+0+0)&0ffh
	movlb	0	; () banked
	movf	((??_cf_checksum+0+0))&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+1+0+1)&0ffh
	clrf	(??_cf_checksum+1+0)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checksum@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+3+0)&0ffh
	movlb	0	; () banked
	movf	((??_cf_checksum+3+0))&0ffh,w
	movlb	0	; () banked
	addwf	(??_cf_checksum+1+0)&0ffh
	movlw	0
	addwfc	(??_cf_checksum+1+1)&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+1+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((cf_checksum@calcul))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+1+1)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((cf_checksum@calcul+1))&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((cf_checksum@calcul+2))&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((cf_checksum@calcul+3))&0ffh

	line	9
	
l5474:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_checksum@i))&0ffh
	
l5476:; BSR set to: 0

	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checksum@i))&0ffh
	goto	u4421
	goto	u4420
u4421:
	goto	l5472
u4420:
	goto	l5478
	
l407:; BSR set to: 0

	line	17
	
l5478:; BSR set to: 0

;config.c: 12: }
;config.c: 14: if ( (((calcul >> 24) & 0x000000FF) == Cf.Data[97])
;config.c: 15: && (((calcul >> 16) & 0x000000FF) == Cf.Data[98])
;config.c: 16: && (((calcul >> 8) & 0x000000FF) == Cf.Data[99])
;config.c: 17: && ((calcul & 0x000000FF) == Cf.Data[100]))
	movlb	1	; () banked
	movff	0+(_Cf+061h),??_cf_checksum+0+0	;volatile
	movlb	0	; () banked
	clrf	(??_cf_checksum+0+0+1)&0ffh
	clrf	(??_cf_checksum+0+0+2)&0ffh
	clrf	(??_cf_checksum+0+0+3)&0ffh
	movlb	0	; () banked
	movff	(cf_checksum@calcul),??_cf_checksum+4+0
	movlb	0	; () banked
	movff	(cf_checksum@calcul+1),??_cf_checksum+4+0+1
	movlb	0	; () banked
	movff	(cf_checksum@calcul+2),??_cf_checksum+4+0+2
	movlb	0	; () banked
	movff	(cf_checksum@calcul+3),??_cf_checksum+4+0+3
	movlw	018h+1
	goto	u4430
u4435:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_cf_checksum+4+3)&0ffh
	rrcf	(??_cf_checksum+4+2)&0ffh
	rrcf	(??_cf_checksum+4+1)&0ffh
	rrcf	(??_cf_checksum+4+0)&0ffh
u4430:
	decfsz	wreg
	goto	u4435
	movlw	0FFh
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+3)&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_cf_checksum+8+0)&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+3)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+3)&0ffh,w
	bnz	u4445
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+2)&0ffh,w
	bnz	u4445
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+1)&0ffh,w
	bnz	u4445
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+0)&0ffh,w
u4445:
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l5488
u4440:
	
l5480:; BSR set to: 0

	movlb	1	; () banked
	movff	0+(_Cf+062h),??_cf_checksum+0+0	;volatile
	movlb	0	; () banked
	clrf	(??_cf_checksum+0+0+1)&0ffh
	clrf	(??_cf_checksum+0+0+2)&0ffh
	clrf	(??_cf_checksum+0+0+3)&0ffh
	movlb	0	; () banked
	movff	(cf_checksum@calcul),??_cf_checksum+4+0
	movlb	0	; () banked
	movff	(cf_checksum@calcul+1),??_cf_checksum+4+0+1
	movlb	0	; () banked
	movff	(cf_checksum@calcul+2),??_cf_checksum+4+0+2
	movlb	0	; () banked
	movff	(cf_checksum@calcul+3),??_cf_checksum+4+0+3
	movlw	010h+1
	goto	u4450
u4455:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_cf_checksum+4+3)&0ffh
	rrcf	(??_cf_checksum+4+2)&0ffh
	rrcf	(??_cf_checksum+4+1)&0ffh
	rrcf	(??_cf_checksum+4+0)&0ffh
u4450:
	decfsz	wreg
	goto	u4455
	movlw	0FFh
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+3)&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_cf_checksum+8+0)&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+3)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+3)&0ffh,w
	bnz	u4465
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+2)&0ffh,w
	bnz	u4465
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+1)&0ffh,w
	bnz	u4465
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+0)&0ffh,w
u4465:
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l5488
u4460:
	
l5482:; BSR set to: 0

	movlb	1	; () banked
	movff	0+(_Cf+063h),??_cf_checksum+0+0	;volatile
	movlb	0	; () banked
	clrf	(??_cf_checksum+0+0+1)&0ffh
	clrf	(??_cf_checksum+0+0+2)&0ffh
	clrf	(??_cf_checksum+0+0+3)&0ffh
	movlw	0FFh
	movlb	0	; () banked
	movff	(cf_checksum@calcul),??_cf_checksum+4+0
	movlb	0	; () banked
	movff	(cf_checksum@calcul+1),??_cf_checksum+4+0+1
	movlb	0	; () banked
	movff	(cf_checksum@calcul+2),??_cf_checksum+4+0+2
	movlb	0	; () banked
	movff	(cf_checksum@calcul+3),??_cf_checksum+4+0+3
	movff	??_cf_checksum+4+1,??_cf_checksum+4+0
	movff	??_cf_checksum+4+2,??_cf_checksum+4+1
	movff	??_cf_checksum+4+3,??_cf_checksum+4+2
	movlb	0	; () banked
	clrf	(??_cf_checksum+4+3)&0ffh
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+(??_cf_checksum+8+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	(??_cf_checksum+4+3)&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_cf_checksum+8+0)&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+3)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+3)&0ffh,w
	bnz	u4475
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+2)&0ffh,w
	bnz	u4475
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+1)&0ffh,w
	bnz	u4475
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+0)&0ffh,w
u4475:
	btfss	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l5488
u4470:
	
l5484:; BSR set to: 0

	movlb	1	; () banked
	movff	0+(_Cf+064h),??_cf_checksum+0+0	;volatile
	movlb	0	; () banked
	clrf	(??_cf_checksum+0+0+1)&0ffh
	clrf	(??_cf_checksum+0+0+2)&0ffh
	clrf	(??_cf_checksum+0+0+3)&0ffh
	movlw	0FFh
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((cf_checksum@calcul))&0ffh,w
	movlb	0	; () banked
	movwf	(??_cf_checksum+4+0)&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((cf_checksum@calcul+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_cf_checksum+4+0)&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((cf_checksum@calcul+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??_cf_checksum+4+0)&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((cf_checksum@calcul+3))&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_cf_checksum+4+0)&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+3)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+3)&0ffh,w
	bnz	u4485
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+2)&0ffh,w
	bnz	u4485
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+1)&0ffh,w
	bnz	u4485
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+0)&0ffh,w
u4485:
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l5488
u4480:
	line	19
	
l5486:; BSR set to: 0

;config.c: 18: {
;config.c: 19: valid = 1;
	movlb	0	; () banked
	movwf	(??_cf_checksum+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checksum@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	goto	l5488
	line	20
	
l408:; BSR set to: 0

	line	22
	
l5488:; BSR set to: 0

;config.c: 20: }
;config.c: 22: if ((Cf.Data[97] == 0) && (Cf.Data[98] == 0) && (Cf.Data[99] == 0) && (Cf.Data[100] == 0))
	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+061h))&0ffh	;volatile
	goto	u4491
	goto	u4490
u4491:
	goto	l5498
u4490:
	
l5490:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+062h))&0ffh	;volatile
	goto	u4501
	goto	u4500
u4501:
	goto	l5498
u4500:
	
l5492:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+063h))&0ffh	;volatile
	goto	u4511
	goto	u4510
u4511:
	goto	l5498
u4510:
	
l5494:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+064h))&0ffh	;volatile
	goto	u4521
	goto	u4520
u4521:
	goto	l5498
u4520:
	line	24
	
l5496:; BSR set to: 1

;config.c: 23: {
;config.c: 24: Micro.Mod.P_00 = 1;
	bsf	(0+((c:_Micro)+05h)),c,1
	goto	l5498
	line	25
	
l409:; BSR set to: 1

	line	27
	
l5498:; BSR set to: 1

;config.c: 25: }
;config.c: 27: if (calcul > 0x0000FFFF) {Cf.IsLong = 1;}
	movlw	low(010000h)
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((cf_checksum@calcul))&0ffh,w
	movlw	high(010000h)
	movlb	0	; () banked
	subwfb	((cf_checksum@calcul+1))&0ffh,w
	movlw	low highword(010000h)
	movlb	0	; () banked
	subwfb	((cf_checksum@calcul+2))&0ffh,w
	movlw	high highword(010000h)
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((cf_checksum@calcul+3))&0ffh,w
	btfss	status,0
	goto	u4531
	goto	u4530
u4531:
	goto	l5502
u4530:
	
l5500:; BSR set to: 0

	movlb	1	; () banked
	movlb	1	; () banked
	bsf	(0+(_Cf+06Ah))&0ffh,0	;volatile
	goto	l5502
	
l410:; BSR set to: 1

	line	29
	
l5502:
;config.c: 29: return valid;
	movff	(cf_checksum@valid),??_cf_checksum+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checksum+0+0)&0ffh,w
	goto	l411
	
l5504:; BSR set to: 0

	line	30
	
l411:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cf_checksum
	__end_of_cf_checksum:
	signat	_cf_checksum,88
	global	_cf_checkrange

;; *************** function _cf_checkrange *****************
;; Defined at:
;;		line 65 in file "config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[BANK0 ] unsigned char 
;;  valid           1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_cf_check
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	65
global __ptext28
__ptext28:
psect	text28
	file	"config.c"
	line	65
	global	__size_of_cf_checkrange
	__size_of_cf_checkrange	equ	__end_of_cf_checkrange-_cf_checkrange
	
_cf_checkrange:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	67
	
l5544:
;config.c: 67: unsigned char i, valid = 0;
	movlb	0	; () banked
	movwf	(??_cf_checkrange+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkrange@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkrange+0+0)&0ffh,w
	line	69
;config.c: 69: for (i = 0; i < 32; i ++)
	movlb	0	; () banked
	movwf	(??_cf_checkrange+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkrange@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkrange+0+0)&0ffh,w
	
l5546:; BSR set to: 0

	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkrange@i))&0ffh
	goto	u4641
	goto	u4640
u4641:
	goto	l5550
u4640:
	goto	l5560
	
l5548:; BSR set to: 0

	goto	l5560
	line	70
	
l429:; BSR set to: 0

	line	71
	
l5550:; BSR set to: 0

;config.c: 70: {
;config.c: 71: if (Cf.Data[i*3] > 32) {return valid;}
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkrange@i))&0ffh,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(021h-1)
	cpfsgt	indf2
	goto	u4651
	goto	u4650
u4651:
	goto	l5556
u4650:
	
l5552:; BSR set to: 1

	movff	(cf_checkrange@valid),??_cf_checkrange+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkrange+0+0)&0ffh,w
	goto	l432
	
l5554:; BSR set to: 0

	goto	l432
	
l431:; BSR set to: 0

	line	69
	
l5556:
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_checkrange@i))&0ffh
	
l5558:; BSR set to: 0

	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkrange@i))&0ffh
	goto	u4661
	goto	u4660
u4661:
	goto	l5550
u4660:
	goto	l5560
	
l430:; BSR set to: 0

	line	74
	
l5560:; BSR set to: 0

;config.c: 72: }
;config.c: 74: valid = 1;
	movlb	0	; () banked
	movwf	(??_cf_checkrange+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkrange@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkrange+0+0)&0ffh,w
	line	76
	
l5562:; BSR set to: 0

;config.c: 76: return valid;
	movff	(cf_checkrange@valid),??_cf_checkrange+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkrange+0+0)&0ffh,w
	goto	l432
	
l5564:; BSR set to: 0

	line	77
	
l432:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cf_checkrange
	__end_of_cf_checkrange:
	signat	_cf_checkrange,88
	global	_cf_checkout

;; *************** function _cf_checkout *****************
;; Defined at:
;;		line 33 in file "config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    9[BANK0 ] unsigned char 
;;  last_out        1    8[BANK0 ] unsigned char 
;;  valid           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_cf_check
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	33
global __ptext29
__ptext29:
psect	text29
	file	"config.c"
	line	33
	global	__size_of_cf_checkout
	__size_of_cf_checkout	equ	__end_of_cf_checkout-_cf_checkout
	
_cf_checkout:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	35
	
l5506:
;config.c: 35: unsigned char i, valid = 0;
	movlb	0	; () banked
	movwf	(??_cf_checkout+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkout@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkout+0+0)&0ffh,w
	line	36
;config.c: 36: unsigned char last_out = 0;
	movlb	0	; () banked
	movwf	(??_cf_checkout+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkout@last_out))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkout+0+0)&0ffh,w
	line	38
;config.c: 38: for (i = 0; i < 32; i ++)
	movlb	0	; () banked
	movwf	(??_cf_checkout+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkout@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkout+0+0)&0ffh,w
	
l5508:; BSR set to: 0

	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkout@i))&0ffh
	goto	u4541
	goto	u4540
u4541:
	goto	l5512
u4540:
	goto	l5532
	
l5510:; BSR set to: 0

	goto	l5532
	line	39
	
l414:; BSR set to: 0

	line	40
	
l5512:; BSR set to: 0

;config.c: 39: {
;config.c: 40: if (Cf.Data[i*3] == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkout@i))&0ffh,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l5522
u4550:
	line	42
	
l5514:; BSR set to: 1

;config.c: 41: {
;config.c: 42: if (i == 0) {return valid;}
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_checkout@i))&0ffh
	goto	u4561
	goto	u4560
u4561:
	goto	l417
u4560:
	
l5516:; BSR set to: 0

	movff	(cf_checkout@valid),??_cf_checkout+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkout+0+0)&0ffh,w
	goto	l418
	
l5518:; BSR set to: 0

	goto	l418
	
l417:; BSR set to: 0

	line	44
;config.c: 44: if (last_out == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_checkout@last_out))&0ffh
	goto	u4571
	goto	u4570
u4571:
	goto	l5528
u4570:
	line	46
	
l5520:; BSR set to: 0

;config.c: 45: {
;config.c: 46: last_out = Cf.Data[(i - 1) * 3];
	movlw	low(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((cf_checkout@i))&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((___wmul@multiplier))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	1+((___wmul@multiplier))&0ffh
	movlw	high(0FFFFh)
	addwfc	1+((___wmul@multiplier))&0ffh
	movlw	high(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	(0+?___wmul)&0ffh,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	(1+?___wmul)&0ffh,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkout@last_out))&0ffh
	goto	l5528
	line	47
	
l419:; BSR set to: 0

	line	48
;config.c: 47: }
;config.c: 48: }
	goto	l5528
	line	49
	
l416:; BSR set to: 0

	line	51
	
l5522:
;config.c: 49: else
;config.c: 50: {
;config.c: 51: if (last_out != 0) {return valid;}
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkout@last_out))&0ffh,w
	btfsc	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l5528
u4580:
	
l5524:; BSR set to: 0

	movff	(cf_checkout@valid),??_cf_checkout+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkout+0+0)&0ffh,w
	goto	l418
	
l5526:; BSR set to: 0

	goto	l418
	
l421:; BSR set to: 0

	goto	l5528
	line	52
	
l420:; BSR set to: 0

	line	38
	
l5528:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_checkout@i))&0ffh
	
l5530:; BSR set to: 0

	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkout@i))&0ffh
	goto	u4591
	goto	u4590
u4591:
	goto	l5512
u4590:
	goto	l5532
	
l415:; BSR set to: 0

	line	56
	
l5532:; BSR set to: 0

;config.c: 52: }
;config.c: 53: }
;config.c: 55: if ( ((last_out != 0) && (last_out == Cf.Data[96]))
;config.c: 56: || ((last_out == 0) && (Cf.Data[i*3] == Cf.Data[96])))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkout@last_out))&0ffh,w
	btfsc	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l426
u4600:
	
l5534:; BSR set to: 0

	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+060h))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((cf_checkout@last_out))&0ffh,w
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l5538
u4610:
	
l426:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_checkout@last_out))&0ffh
	goto	u4621
	goto	u4620
u4621:
	goto	l5540
u4620:
	
l5536:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkout@i))&0ffh,w
	mullw	03h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+060h))&0ffh,w	;volatile
	cpfseq	indf2
	goto	u4631
	goto	u4630
u4631:
	goto	l5540
u4630:
	goto	l5538
	
l424:; BSR set to: 1

	line	58
	
l5538:
;config.c: 57: {
;config.c: 58: valid = 1;
	movlb	0	; () banked
	movwf	(??_cf_checkout+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkout@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkout+0+0)&0ffh,w
	goto	l5540
	line	59
	
l422:; BSR set to: 0

	line	61
	
l5540:
;config.c: 59: }
;config.c: 61: return valid;
	movff	(cf_checkout@valid),??_cf_checkout+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkout+0+0)&0ffh,w
	goto	l418
	
l5542:; BSR set to: 0

	line	62
	
l418:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cf_checkout
	__end_of_cf_checkout:
	signat	_cf_checkout,88
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_cf_checkout
;;		_DecToStr
;;		_delay_s
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\wmul.c"
	line	3
global __ptext30
__ptext30:
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	25
	
l5416:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___wmul@multiplier))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	mulwf	((___wmul@multiplicand))&0ffh
	movff	prodl,(___wmul@product)
	movff	prodh,(___wmul@product+1)
	line	26
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___wmul@multiplier))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	mulwf	(0+(___wmul@multiplicand+01h))&0ffh
	movff	prodl,prodh
	clrf	(prodl),c
	movf	(prodl),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___wmul@product))&0ffh
	movf	(prodh),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___wmul@product+1))&0ffh

	line	27
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(___wmul@multiplier+01h))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	mulwf	((___wmul@multiplicand))&0ffh
	movff	prodl,prodh
	clrf	(prodl),c
	movf	(prodl),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___wmul@product))&0ffh
	movf	(prodh),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___wmul@product+1))&0ffh

	line	40
	
l5418:; BSR set to: 0

	movff	(___wmul@product),(?___wmul)
	movff	(___wmul@product+1),(?___wmul+1)
	goto	l1712
	
l5420:; BSR set to: 0

	line	41
	
l1712:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_HexToAscii

;; *************** function _HexToAscii *****************
;; Defined at:
;;		line 28 in file "utils.c"
;; Parameters:    Size  Location     Type
;;  Value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Value           1    1[BANK0 ] unsigned char 
;;  character       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_cf_check_and_display
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	28
global __ptext31
__ptext31:
psect	text31
	file	"utils.c"
	line	28
	global	__size_of_HexToAscii
	__size_of_HexToAscii	equ	__end_of_HexToAscii-_HexToAscii
	
_HexToAscii:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
;HexToAscii@Value stored from wreg
	movff	wreg,(HexToAscii@Value)
	line	32
	
l5998:
;utils.c: 30: char character;
;utils.c: 32: if (Value < 10)
	movlw	(0Ah)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((HexToAscii@Value))&0ffh,w
	btfsc	status,0
	goto	u5311
	goto	u5310
u5311:
	goto	l6002
u5310:
	line	34
	
l6000:; BSR set to: 0

;utils.c: 33: {
;utils.c: 34: character = Value + 0x30;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((HexToAscii@Value))&0ffh,w
	addlw	low(030h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((HexToAscii@character))&0ffh
	line	35
;utils.c: 35: }
	goto	l6004
	line	36
	
l662:; BSR set to: 0

	line	38
	
l6002:; BSR set to: 0

;utils.c: 36: else
;utils.c: 37: {
;utils.c: 38: character = Value - 9 + 0x40;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((HexToAscii@Value))&0ffh,w
	addlw	low(037h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((HexToAscii@character))&0ffh
	goto	l6004
	line	39
	
l663:; BSR set to: 0

	line	41
	
l6004:; BSR set to: 0

;utils.c: 39: }
;utils.c: 41: return character;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((HexToAscii@character))&0ffh,w
	goto	l664
	
l6006:; BSR set to: 0

	line	42
	
l664:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_HexToAscii
	__end_of_HexToAscii:
	signat	_HexToAscii,4217
	global	_bouton_refresh

;; *************** function _bouton_refresh *****************
;; Defined at:
;;		line 11 in file "bouton.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    4[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"bouton.c"
	line	11
global __ptext32
__ptext32:
psect	text32
	file	"bouton.c"
	line	11
	global	__size_of_bouton_refresh
	__size_of_bouton_refresh	equ	__end_of_bouton_refresh-_bouton_refresh
	
_bouton_refresh:; BSR set to: 0

;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	15
	
l6316:
;bouton.c: 13: unsigned char i;
;bouton.c: 15: for (i = 0; i < Bp_Max; i++)
	movlb	0	; () banked
	movwf	(??_bouton_refresh+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@i))&0ffh
	movlb	0	; () banked
	movf	(??_bouton_refresh+0+0)&0ffh,w
	
l6318:; BSR set to: 0

	movlw	(04h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((bouton_refresh@i))&0ffh
	goto	u5601
	goto	u5600
u5601:
	goto	l6332
u5600:
	goto	l729
	
l6320:; BSR set to: 0

	goto	l729
	line	16
	
l710:; BSR set to: 0

	line	19
;bouton.c: 16: {
;bouton.c: 17: unsigned char temp;
;bouton.c: 19: switch (i)
	goto	l6332
	line	21
;bouton.c: 20: {
;bouton.c: 21: case Bp_On: temp = PORTEbits.RE0; break;
	
l713:; BSR set to: 0

	
l6322:; BSR set to: 0

	movlw	0
	btfsc	((c:3972)),c,0	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6334
	line	22
;bouton.c: 22: case Bp_IdTest: temp = PORTEbits.RE1; break;
	
l715:; BSR set to: 0

	
l6324:; BSR set to: 0

	movlw	0
	btfsc	((c:3972)),c,1	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6334
	line	23
;bouton.c: 23: case Comu_Test: temp = PORTCbits.RC5; break;
	
l716:; BSR set to: 0

	
l6326:; BSR set to: 0

	movlw	0
	btfsc	((c:3970)),c,5	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6334
	line	24
;bouton.c: 24: case Bp_Start: temp = PORTBbits.RB0; break;
	
l717:; BSR set to: 0

	
l6328:; BSR set to: 0

	movlw	0
	btfsc	((c:3969)),c,0	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6334
	line	25
;bouton.c: 25: default: break;
	
l718:; BSR set to: 0

	goto	l6334
	line	26
	
l6330:; BSR set to: 0

;bouton.c: 26: }
	goto	l6334
	line	19
	
l712:; BSR set to: 0

	
l6332:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l6322
	xorlw	1^0	; case 1
	skipnz
	goto	l6324
	xorlw	2^1	; case 2
	skipnz
	goto	l6326
	xorlw	3^2	; case 3
	skipnz
	goto	l6328
	goto	l6334

	line	26
	
l714:; BSR set to: 0

	line	28
	
l6334:; BSR set to: 0

;bouton.c: 28: if (temp == Bouton[i].Memo)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	btfsc	indf2,0
	goto	u5611
	goto	u5610
u5611:
	movlw	1
	goto	u5616
u5610:
	movlw	0
u5616:
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((bouton_refresh@temp))&0ffh,w
	btfss	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l6350
u5620:
	line	30
	
l6336:; BSR set to: 0

;bouton.c: 29: {
;bouton.c: 30: if (Bouton[i].State != Bouton[i].Memo)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	btfsc	indf2,0
	goto	u5631
	goto	u5630
u5631:
	movlw	1
	goto	u5632
u5630:
	movlw	0
u5632:
	movlb	0	; () banked
	movwf	(??_bouton_refresh+0+0)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	btfsc	indf2,1
	goto	u5641
	goto	u5640
u5641:
	movlw	1
	goto	u5642
u5640:
	movlw	0
u5642:
	movlb	0	; () banked
	xorwf	(??_bouton_refresh+0+0)&0ffh
	btfsc	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l6352
u5650:
	line	32
	
l6338:; BSR set to: 0

;bouton.c: 31: {
;bouton.c: 32: if ((((unsigned short) (Cptms - Bouton[i].Time) > (((i == Bp_Start) && (Micro.Mods == 1)) ? 5 : 100)) ? 1 : 0))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	xorlw	3

	btfss	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l6342
u5660:
	
l6340:; BSR set to: 0

	decf	(0+((c:_Micro)+05h)),c,w

	btfsc	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l6344
u5670:
	goto	l6342
	
l727:; BSR set to: 0

	
l6342:; BSR set to: 0

	movlw	high(064h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134+1))&0ffh
	movlw	low(064h)
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134))&0ffh
	goto	l6346
	
l723:; BSR set to: 0

	
l6344:; BSR set to: 0

	movlw	high(05h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134+1))&0ffh
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134))&0ffh
	goto	l6346
	
l725:; BSR set to: 0

	
l6346:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_bouton_refresh+0+0
	movff	postdec2,??_bouton_refresh+0+0+1
	movlb	0	; () banked
	comf	(??_bouton_refresh+0+0)&0ffh
	comf	(??_bouton_refresh+0+1)&0ffh
	infsnz	(??_bouton_refresh+0+0)&0ffh
	incf	(??_bouton_refresh+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_bouton_refresh+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_bouton_refresh+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_bouton_refresh+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_bouton_refresh$2134))&0ffh,w
	movlb	0	; () banked
	movf	(??_bouton_refresh+0+1)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((_bouton_refresh$2134+1))&0ffh,w
	btfsc	status,0
	goto	u5681
	goto	u5680
u5681:
	goto	l6352
u5680:
	line	34
	
l6348:; BSR set to: 0

;bouton.c: 33: {
;bouton.c: 34: Bouton[i].State = Bouton[i].Memo;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movlb	0	; () banked
	btfss	indf2,0
	bra	u5695
	movlb	0	; () banked
	bsf	indf1,1
	u5695:
	movlb	0	; () banked
	btfsc	indf2,0
	bra	u5696
	movlb	0	; () banked
	bcf	indf1,1
	u5696:
	goto	l6352
	line	35
	
l721:; BSR set to: 0

	goto	l6352
	line	36
	
l720:; BSR set to: 0

	line	37
;bouton.c: 35: }
;bouton.c: 36: }
;bouton.c: 37: }
	goto	l6352
	line	38
	
l719:; BSR set to: 0

	line	40
	
l6350:; BSR set to: 0

;bouton.c: 38: else
;bouton.c: 39: {
;bouton.c: 40: Bouton[i].Memo = temp;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movlb	0	; () banked
	btfsc	(bouton_refresh@temp)&0ffh,0
	bra	u5705
	movlb	0	; () banked
	bcf	indf2,0
	bra	u5706
	u5705:
	movlb	0	; () banked
	bsf	indf2,0
	u5706:

	line	41
;bouton.c: 41: Bouton[i].Time = Cptms;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	mullw	03h
	movlb	0	; () banked
	movlw	low(_Bouton)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Bouton)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:_Cptms),postinc2	;volatile
	movff	(c:_Cptms+1),postdec2	;volatile
	goto	l6352
	line	42
	
l728:; BSR set to: 0

	line	15
	
l6352:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((bouton_refresh@i))&0ffh
	
l6354:; BSR set to: 0

	movlw	(04h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((bouton_refresh@i))&0ffh
	goto	u5711
	goto	u5710
u5711:
	goto	l6332
u5710:
	goto	l729
	
l711:; BSR set to: 0

	line	44
	
l729:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bouton_refresh
	__end_of_bouton_refresh:
	signat	_bouton_refresh,88
	global	_bouton_init

;; *************** function _bouton_init *****************
;; Defined at:
;;		line 3 in file "bouton.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	3
global __ptext33
__ptext33:
psect	text33
	file	"bouton.c"
	line	3
	global	__size_of_bouton_init
	__size_of_bouton_init	equ	__end_of_bouton_init-_bouton_init
	
_bouton_init:; BSR set to: 0

;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	5
	
l6314:
;bouton.c: 5: Bouton[Bp_On].State = PORTEbits.RE0;
	btfss	((c:3972)),c,0	;volatile
	bra	u5565
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+02h))&0ffh,1
	bra	u5567
	u5565:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+02h))&0ffh,1
	u5567:
	line	6
;bouton.c: 6: Bouton[Bp_IdTest].State = PORTEbits.RE1;
	btfss	((c:3972)),c,1	;volatile
	bra	u5575
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+05h))&0ffh,1
	bra	u5577
	u5575:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+05h))&0ffh,1
	u5577:
	line	7
;bouton.c: 7: Bouton[Comu_Test].State = PORTCbits.RC5;
	btfss	((c:3970)),c,5	;volatile
	bra	u5585
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+08h))&0ffh,1
	bra	u5587
	u5585:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+08h))&0ffh,1
	u5587:
	line	8
;bouton.c: 8: Bouton[Bp_Start].State = PORTBbits.RB0;
	btfss	((c:3969)),c,0	;volatile
	bra	u5595
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+0Bh))&0ffh,1
	bra	u5597
	u5595:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+0Bh))&0ffh,1
	u5597:
	line	9
	
l707:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bouton_init
	__end_of_bouton_init:
	signat	_bouton_init,88
	global	_armement_process

;; *************** function _armement_process *****************
;; Defined at:
;;		line 24 in file "armement.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   38[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_arm_UAlim_1A
;;		_check_comutest
;;		_ecran_blank
;;		_ecran_wait
;;		_itoa
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"armement.c"
	line	24
global __ptext34
__ptext34:
psect	text34
	file	"armement.c"
	line	24
	global	__size_of_armement_process
	__size_of_armement_process	equ	__end_of_armement_process-_armement_process
	
_armement_process:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	28
	
l6582:
;armement.c: 26: unsigned short temp;
;armement.c: 28: switch(Arm.Step)
	goto	l6626
	line	30
;armement.c: 29: {
;armement.c: 30: case 0x01:
	
l1032:; BSR set to: 0

	line	31
;armement.c: 31: if (Bouton[Bp_On].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+02h))&0ffh,1
	goto	u6061
	goto	u6060
u6061:
	goto	l1046
u6060:
	line	33
	
l6584:; BSR set to: 0

;armement.c: 32: {
;armement.c: 33: Arm.Step = 0x00;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Arm))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	goto	l1046
	line	34
	
l1033:; BSR set to: 0

	line	35
;armement.c: 34: }
;armement.c: 35: break;
	goto	l1046
	line	36
;armement.c: 36: case 0x00:
	
l1035:; BSR set to: 0

	line	37
	
l6586:; BSR set to: 0

;armement.c: 37: check_comutest(1);
	movlw	(01h)&0ffh
	
	call	_check_comutest
	line	39
	
l6588:
;armement.c: 39: temp = arm_UAlim_1A();
	call	_arm_UAlim_1A	;wreg free
	movlb	0	; () banked
	movff	0+?_arm_UAlim_1A,(armement_process@temp)
	movlb	0	; () banked
	movff	1+?_arm_UAlim_1A,(armement_process@temp+1)
	line	41
	
l6590:; BSR set to: 0

;armement.c: 41: Ecran.Digits = PrintTest;
	movlb	0	; () banked
		movlw	high(_PrintTest)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlb	0	; () banked
	movlw	low(_PrintTest)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	43
	
l6592:; BSR set to: 0

;armement.c: 43: itoa(Ecran.Digits,temp,10);
	movlb	0	; () banked
	movlb	0	; () banked
		movff	1+(_Ecran+04h),(itoa@buf+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	0+(_Ecran+04h),(itoa@buf)

	movff	(armement_process@temp),(itoa@val)
	movff	(armement_process@temp+1),(itoa@val+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((itoa@base+1))&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movwf	((itoa@base))&0ffh
	call	_itoa	;wreg free
	line	45
	
l6594:
;armement.c: 45: Ecran.Dot[0] = 0;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+06h))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	46
	
l6596:; BSR set to: 0

;armement.c: 46: Ecran.Dot[1] = 1;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+07h))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	47
	
l6598:; BSR set to: 0

;armement.c: 47: Ecran.Dot[2] = 0;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+08h))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	48
	
l6600:; BSR set to: 0

;armement.c: 48: Ecran.Dot[3] = 0;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+09h))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	50
	
l6602:; BSR set to: 0

;armement.c: 50: Arm.Step = 0x02;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Arm))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	51
;armement.c: 51: break;
	goto	l1046
	line	52
;armement.c: 52: case 0x02:
	
l1036:; BSR set to: 0

	line	53
;armement.c: 53: if (Bouton[Bp_On].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+02h))&0ffh,1
	goto	u6071
	goto	u6070
u6071:
	goto	l1046
u6070:
	line	55
	
l6604:; BSR set to: 0

;armement.c: 54: {
;armement.c: 55: Arm.Time = Cptms;
	movff	(c:_Cptms),0+(_Arm+02h)	;volatile
	movff	(c:_Cptms+1),1+(_Arm+02h)	;volatile
	line	56
	
l6606:; BSR set to: 0

;armement.c: 56: Arm.Step = 0x03;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Arm))&0ffh
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	58
	
l6608:; BSR set to: 0

;armement.c: 58: ecran_blank();
	call	_ecran_blank	;wreg free
	goto	l1046
	line	59
	
l1037:
	line	60
;armement.c: 59: }
;armement.c: 60: break;
	goto	l1046
	line	61
;armement.c: 61: case 0x03:
	
l1038:; BSR set to: 0

	line	62
;armement.c: 62: if (Bouton[Bp_On].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+02h))&0ffh,1
	goto	u6081
	goto	u6080
u6081:
	goto	l1039
u6080:
	line	64
	
l6610:; BSR set to: 0

;armement.c: 63: {
;armement.c: 64: Micro.Phase = 0x00;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	66
	
l6612:; BSR set to: 0

;armement.c: 66: ecran_wait();
	call	_ecran_wait	;wreg free
	line	67
;armement.c: 67: }
	goto	l1046
	line	68
	
l1039:; BSR set to: 0

;armement.c: 68: else if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6091
	goto	u6090
u6091:
	goto	l6616
u6090:
	goto	l1046
	line	71
	
l6614:; BSR set to: 0

;armement.c: 69: {
;armement.c: 71: }
	goto	l1046
	line	72
	
l1041:; BSR set to: 0

	
l6616:; BSR set to: 0

;armement.c: 72: else if ((((unsigned short) (Cptms - Arm.Time) > 4000) ? 1 : 0))
	movlb	0	; () banked
	lfsr	2,_Arm+02h
	movff	postinc2,??_armement_process+0+0
	movff	postdec2,??_armement_process+0+0+1
	movlb	0	; () banked
	comf	(??_armement_process+0+0)&0ffh
	comf	(??_armement_process+0+1)&0ffh
	infsnz	(??_armement_process+0+0)&0ffh
	incf	(??_armement_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_armement_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_armement_process+0+1)&0ffh
	movlw	0A1h
	movlb	0	; () banked
	subwf	(??_armement_process+0+0)&0ffh,w
	movlw	0Fh
	subwfb	(??_armement_process+0+1)&0ffh,w
	btfss	status,0
	goto	u6101
	goto	u6100
u6101:
	goto	l6620
u6100:
	goto	l1046
	line	75
	
l6618:; BSR set to: 0

;armement.c: 73: {
;armement.c: 75: }
	goto	l1046
	line	76
	
l1043:; BSR set to: 0

	
l6620:; BSR set to: 0

;armement.c: 76: else if ((((unsigned short) (Cptms - Arm.Time) > 3000) ? 1 : 0))
	movlb	0	; () banked
	lfsr	2,_Arm+02h
	movff	postinc2,??_armement_process+0+0
	movff	postdec2,??_armement_process+0+0+1
	movlb	0	; () banked
	comf	(??_armement_process+0+0)&0ffh
	comf	(??_armement_process+0+1)&0ffh
	infsnz	(??_armement_process+0+0)&0ffh
	incf	(??_armement_process+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_armement_process+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_armement_process+0+1)&0ffh
	movlw	0B9h
	movlb	0	; () banked
	subwf	(??_armement_process+0+0)&0ffh,w
	movlw	0Bh
	subwfb	(??_armement_process+0+1)&0ffh,w
	btfss	status,0
	goto	u6111
	goto	u6110
u6111:
	goto	l1046
u6110:
	line	78
	
l6622:; BSR set to: 0

;armement.c: 77: {
;armement.c: 78: Micro.Phase = 0x03;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(03h)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	79
;armement.c: 79: Micro.State = 0x01;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(01h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	goto	l1046
	line	80
	
l1045:; BSR set to: 0

	goto	l1046
	line	81
	
l1044:; BSR set to: 0

	goto	l1046
	
l1042:; BSR set to: 0

	goto	l1046
	
l1040:; BSR set to: 0

;armement.c: 80: }
;armement.c: 81: break;
	goto	l1046
	line	82
	
l6624:; BSR set to: 0

;armement.c: 82: }
	goto	l1046
	line	28
	
l1031:; BSR set to: 0

	
l6626:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Arm))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l6586
	xorlw	1^0	; case 1
	skipnz
	goto	l1032
	xorlw	2^1	; case 2
	skipnz
	goto	l1036
	xorlw	3^2	; case 3
	skipnz
	goto	l1038
	goto	l1046

	line	82
	
l1034:; BSR set to: 0

	line	83
	
l1046:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_armement_process
	__end_of_armement_process:
	signat	_armement_process,88
	global	_itoa

;; *************** function _itoa *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
;; Parameters:    Size  Location     Type
;;  buf             2   17[BANK0 ] PTR unsigned char 
;;		 -> Version(5), ErreurTir(5), Blank(5), Ecran.Digit(4), 
;;		 -> Ecran(16), PrintTest(5), 
;;  val             2   19[BANK0 ] int 
;;  base            2   21[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  cp              2   23[BANK0 ] PTR unsigned char 
;;		 -> Version(5), ErreurTir(5), Blank(5), Ecran.Digit(4), 
;;		 -> Ecran(16), PrintTest(5), 
;; Return value:  Size  Location     Type
;;                  2   17[BANK0 ] PTR unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_utoa
;; This function is called by:
;;		_test_process
;;		_armement_process
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
	line	4
global __ptext35
__ptext35:
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
	line	4
	global	__size_of_itoa
	__size_of_itoa	equ	__end_of_itoa-_itoa
	
_itoa:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	6
	
l6100:
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(itoa@buf+1),(itoa@cp+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(itoa@buf),(itoa@cp)

	line	8
	
l6102:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((itoa@val+1))&0ffh,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((itoa@val))&0ffh,w
	btfsc	status,0
	goto	u5401
	goto	u5400
u5401:
	goto	l6110
u5400:
	line	9
	
l6104:; BSR set to: 0

	movlb	0	; () banked
	movff	(itoa@buf),tblptrl
	movlb	0	; () banked
	movff	(itoa@buf+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u5417
	movlw	02Dh
	movwf	tablat
	tblwt*
	bra	u5410
u5417:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movlw	02Dh
	movwf	indf1
u5410:
	
	
l6106:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((itoa@buf))&0ffh
	incf	((itoa@buf+1))&0ffh
	line	10
	
l6108:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((itoa@val))&0ffh
	movlb	0	; () banked
	comf	((itoa@val+1))&0ffh
	btfsc	status,0
	incf	((itoa@val+1))&0ffh
	goto	l6110
	line	11
	
l1569:; BSR set to: 0

	line	12
	
l6110:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
		movff	(itoa@buf+1),(utoa@buf+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(itoa@buf),(utoa@buf)

	movff	(itoa@val),(utoa@val)
	movff	(itoa@val+1),(utoa@val+1)
	movff	(itoa@base),(utoa@base)
	movff	(itoa@base+1),(utoa@base+1)
	call	_utoa	;wreg free
	goto	l1570
	line	13
	
l6112:
	line	14
;	Return value of _itoa is never used
	
l1570:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_itoa
	__end_of_itoa:
	signat	_itoa,12410
	global	_utoa

;; *************** function _utoa *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
;; Parameters:    Size  Location     Type
;;  buf             2    8[BANK0 ] PTR unsigned char 
;;		 -> Version(5), ErreurTir(5), Blank(5), Ecran.Digit(4), 
;;		 -> Ecran(16), PrintTest(5), 
;;  val             2   10[BANK0 ] unsigned int 
;;  base            2   12[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  v               2   14[BANK0 ] unsigned int 
;;  c               1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] PTR unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_itoa
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	line	17
global __ptext36
__ptext36:
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
	line	17
	global	__size_of_utoa
	__size_of_utoa	equ	__end_of_utoa-_utoa
	
_utoa:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	22
	
l5922:
	movff	(utoa@val),(utoa@v)
	movff	(utoa@val+1),(utoa@v+1)
	goto	l5924
	line	23
	
l1573:
	line	24
	
l5924:
	movff	(utoa@v),(___lwdiv@dividend)
	movff	(utoa@v+1),(___lwdiv@dividend+1)
	movff	(utoa@base),(___lwdiv@divisor)
	movff	(utoa@base+1),(___lwdiv@divisor+1)
	call	___lwdiv	;wreg free
	movlb	0	; () banked
	movff	0+?___lwdiv,(utoa@v)
	movlb	0	; () banked
	movff	1+?___lwdiv,(utoa@v+1)
	line	25
	
l5926:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((utoa@buf))&0ffh
	incf	((utoa@buf+1))&0ffh
	line	26
	
l5928:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((utoa@v+1))&0ffh,w
	iorwf ((utoa@v))&0ffh,w

	btfss	status,2
	goto	u5211
	goto	u5210
u5211:
	goto	l5924
u5210:
	goto	l5930
	
l1574:; BSR set to: 0

	line	27
	
l5930:; BSR set to: 0

	movlb	0	; () banked
	movff	(utoa@buf),tblptrl
	movlb	0	; () banked
	movff	(utoa@buf+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u5227
	movlw	0
	movwf	tablat
	tblwt*
	bra	u5220
u5227:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movlw	0
	movwf	indf1
u5220:
	
	
l5932:
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((utoa@buf))&0ffh
	btfss	status,0
	decf	((utoa@buf+1))&0ffh
	goto	l5934
	line	28
	
l1575:; BSR set to: 0

	line	29
	
l5934:; BSR set to: 0

	movff	(utoa@val),(___lwmod@dividend)
	movff	(utoa@val+1),(___lwmod@dividend+1)
	movff	(utoa@base),(___lwmod@divisor)
	movff	(utoa@base+1),(___lwmod@divisor+1)
	call	___lwmod	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___lwmod)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((utoa@c))&0ffh
	line	30
	
l5936:; BSR set to: 0

	movff	(utoa@val),(___lwdiv@dividend)
	movff	(utoa@val+1),(___lwdiv@dividend+1)
	movff	(utoa@base),(___lwdiv@divisor)
	movff	(utoa@base+1),(___lwdiv@divisor+1)
	call	___lwdiv	;wreg free
	movlb	0	; () banked
	movff	0+?___lwdiv,(utoa@val)
	movlb	0	; () banked
	movff	1+?___lwdiv,(utoa@val+1)
	line	31
	
l5938:; BSR set to: 0

	movlw	(0Ah-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((utoa@c))&0ffh
	goto	u5231
	goto	u5230
u5231:
	goto	l1576
u5230:
	line	32
	
l5940:; BSR set to: 0

	movlw	(07h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((utoa@c))&0ffh
	
l1576:; BSR set to: 0

	line	33
	movlw	(030h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((utoa@c))&0ffh
	line	34
	
l5942:; BSR set to: 0

	movlb	0	; () banked
	movff	(utoa@buf),tblptrl
	movlb	0	; () banked
	movff	(utoa@buf+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u5247
	movlb	0	; () banked
	movff	(utoa@c),tablat
	tblwt*
	bra	u5240
u5247:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movlb	0	; () banked
	movff	(utoa@c),indf1
u5240:
	
	
l5944:
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((utoa@buf))&0ffh
	btfss	status,0
	decf	((utoa@buf+1))&0ffh
	line	35
	
l5946:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((utoa@val+1))&0ffh,w
	iorwf ((utoa@val))&0ffh,w

	btfss	status,2
	goto	u5251
	goto	u5250
u5251:
	goto	l5934
u5250:
	goto	l5948
	
l1577:; BSR set to: 0

	line	36
	
l5948:; BSR set to: 0

;	Return value of _utoa is never used
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((utoa@buf))&0ffh
	incf	((utoa@buf+1))&0ffh
	goto	l1578
	
l5950:; BSR set to: 0

	line	37
	
l1578:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_utoa
	__end_of_utoa:
	signat	_utoa,12410
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[BANK0 ] unsigned int 
;;  divisor         2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_utoa
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwmod.c"
	line	8
global __ptext37
__ptext37:
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	13
	
l5686:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwmod@divisor+1))&0ffh,w
	iorwf ((___lwmod@divisor))&0ffh,w

	btfsc	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l1686
u4870:
	line	14
	
l5688:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___lwmod+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lwmod@counter))&0ffh
	movlb	0	; () banked
	movf	(??___lwmod+0+0)&0ffh,w
	line	15
	goto	l5692
	
l1688:; BSR set to: 0

	line	16
	
l5690:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwmod@divisor))&0ffh
	rlcf	((___lwmod@divisor+1))&0ffh
	line	17
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___lwmod@counter))&0ffh
	goto	l5692
	line	18
	
l1687:; BSR set to: 0

	line	15
	
l5692:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lwmod@divisor+1))&0ffh,(15)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l5690
u4880:
	goto	l5694
	
l1689:; BSR set to: 0

	goto	l5694
	line	19
	
l1690:; BSR set to: 0

	line	20
	
l5694:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwmod@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lwmod@dividend))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((___lwmod@dividend+1))&0ffh,w
	btfss	status,0
	goto	u4891
	goto	u4890
u4891:
	goto	l5698
u4890:
	line	21
	
l5696:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwmod@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lwmod@dividend))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((___lwmod@dividend+1))&0ffh

	goto	l5698
	
l1691:; BSR set to: 0

	line	22
	
l5698:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lwmod@divisor+1))&0ffh
	rrcf	((___lwmod@divisor))&0ffh
	line	23
	
l5700:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___lwmod@counter))&0ffh
	
	goto	l5694
	goto	l1686
	
l1692:; BSR set to: 0

	line	24
	
l1686:; BSR set to: 0

	line	25
	movff	(___lwmod@dividend),(?___lwmod)
	movff	(___lwmod@dividend+1),(?___lwmod+1)
	line	26
	
l1693:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[BANK0 ] unsigned int 
;;  divisor         2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_utoa
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwdiv.c"
	line	8
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	14
	
l5664:
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lwdiv@quotient+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___lwdiv@quotient))&0ffh
	line	15
	
l5666:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwdiv@divisor+1))&0ffh,w
	iorwf ((___lwdiv@divisor))&0ffh,w

	btfsc	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l1676
u4840:
	line	16
	
l5668:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___lwdiv+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lwdiv@counter))&0ffh
	movlb	0	; () banked
	movf	(??___lwdiv+0+0)&0ffh,w
	line	17
	goto	l5672
	
l1678:; BSR set to: 0

	line	18
	
l5670:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwdiv@divisor))&0ffh
	rlcf	((___lwdiv@divisor+1))&0ffh
	line	19
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___lwdiv@counter))&0ffh
	goto	l5672
	line	20
	
l1677:; BSR set to: 0

	line	17
	
l5672:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lwdiv@divisor+1))&0ffh,(15)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l5670
u4850:
	goto	l5674
	
l1679:; BSR set to: 0

	goto	l5674
	line	21
	
l1680:; BSR set to: 0

	line	22
	
l5674:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwdiv@quotient))&0ffh
	rlcf	((___lwdiv@quotient+1))&0ffh
	line	23
	
l5676:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwdiv@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lwdiv@dividend))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwdiv@divisor+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((___lwdiv@dividend+1))&0ffh,w
	btfss	status,0
	goto	u4861
	goto	u4860
u4861:
	goto	l5682
u4860:
	line	24
	
l5678:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwdiv@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lwdiv@dividend))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwdiv@divisor+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((___lwdiv@dividend+1))&0ffh

	line	25
	
l5680:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(0/8)+(___lwdiv@quotient))&0ffh,(0)&7
	goto	l5682
	line	26
	
l1681:; BSR set to: 0

	line	27
	
l5682:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lwdiv@divisor+1))&0ffh
	rrcf	((___lwdiv@divisor))&0ffh
	line	28
	
l5684:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___lwdiv@counter))&0ffh
	
	goto	l5674
	goto	l1676
	
l1682:; BSR set to: 0

	line	29
	
l1676:; BSR set to: 0

	line	30
	movff	(___lwdiv@quotient),(?___lwdiv)
	movff	(___lwdiv@quotient+1),(?___lwdiv+1)
	line	31
	
l1683:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ecran_wait

;; *************** function _ecran_wait *****************
;; Defined at:
;;		line 91 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ecran_dot
;;		_ecran_raz_digit
;; This function is called by:
;;		_check_program_0
;;		_test_process
;;		_micro_wait
;;		_armement_process
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"ecran.c"
	line	91
global __ptext39
__ptext39:
psect	text39
	file	"ecran.c"
	line	91
	global	__size_of_ecran_wait
	__size_of_ecran_wait	equ	__end_of_ecran_wait-_ecran_wait
	
_ecran_wait:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	94
	
l5992:
;ecran.c: 94: ecran_raz_digit();
	call	_ecran_raz_digit	;wreg free
	line	96
;ecran.c: 96: ecran_dot(1);
	movlw	(01h)&0ffh
	
	call	_ecran_dot
	line	98
	
l5994:
;ecran.c: 98: PORTCbits.RC2 = 1;
	bsf	((c:3970)),c,2	;volatile
	line	100
	
l5996:
;ecran.c: 100: Ecran.Solid = 1;
	movlb	0	; () banked
	movwf	(??_ecran_wait+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_wait+0+0)&0ffh,w
	line	101
	
l272:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_wait
	__end_of_ecran_wait:
	signat	_ecran_wait,88
	global	_check_comutest

;; *************** function _check_comutest *****************
;; Defined at:
;;		line 3 in file "test.c"
;; Parameters:    Size  Location     Type
;;  State           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  State           1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ecran_blank
;;		_ecran_refresh
;; This function is called by:
;;		_main
;;		_test_process
;;		_micro_wait
;;		_armement_process
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"test.c"
	line	3
global __ptext40
__ptext40:
psect	text40
	file	"test.c"
	line	3
	global	__size_of_check_comutest
	__size_of_check_comutest	equ	__end_of_check_comutest-_check_comutest
	
_check_comutest:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
;check_comutest@State stored from wreg
	movff	wreg,(check_comutest@State)
	line	5
	
l5956:
;test.c: 5: ecran_blank();
	call	_ecran_blank	;wreg free
	line	6
;test.c: 6: while(PORTCbits.RC5 == State)
	goto	l5970
	
l527:
	line	8
	
l5958:
;test.c: 7: {
;test.c: 8: Ecran.Digits = (char *) ErreurTir;
		movlw	high(_ErreurTir)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlw	low(_ErreurTir)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	9
	
l5960:; BSR set to: 0

;test.c: 9: ecran_refresh();
	call	_ecran_refresh	;wreg free
	line	11
	
l5962:
;test.c: 11: if ((PORTCbits.RC5 == 0) && (Micro.Phase == 0x01))
	btfsc	((c:3970)),c,5	;volatile
	goto	u5261
	goto	u5260
u5261:
	goto	l5970
u5260:
	
l5964:
	decf	(0+((c:_Micro)+02h)),c,w

	btfss	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l5970
u5270:
	line	13
	
l5966:
;test.c: 12: {
;test.c: 13: Test.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_check_comutest+0+0)&0ffh
	movlw	low(01h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_check_comutest+0+0)&0ffh,w
	line	14
	
l5968:; BSR set to: 0

;test.c: 14: ecran_blank();
	call	_ecran_blank	;wreg free
	goto	l5970
	line	15
	
l528:
	goto	l5970
	line	16
	
l526:
	line	6
	
l5970:
	btfsc	((c:3970)),c,5	;volatile
	goto	u5281
	goto	u5280
u5281:
	movlw	1
	goto	u5286
u5280:
	movlw	0
u5286:
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((check_comutest@State))&0ffh,w
	btfsc	status,2
	goto	u5291
	goto	u5290
u5291:
	goto	l5958
u5290:
	goto	l530
	
l529:; BSR set to: 0

	line	17
	
l530:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_check_comutest
	__end_of_check_comutest:
	signat	_check_comutest,4216
	global	_ecran_refresh

;; *************** function _ecran_refresh *****************
;; Defined at:
;;		line 116 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ecran_dot
;;		_ecran_print_one_char
;; This function is called by:
;;		_main
;;		_cf_check_and_display
;;		_check_comutest
;;		_check_program_0
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"ecran.c"
	line	116
global __ptext41
__ptext41:
psect	text41
	file	"ecran.c"
	line	116
	global	__size_of_ecran_refresh
	__size_of_ecran_refresh	equ	__end_of_ecran_refresh-_ecran_refresh
	
_ecran_refresh:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	119
	
l5702:
;ecran.c: 118: if ( (Ecran.Solid == 0)
;ecran.c: 119: && ((++ Ecran.Cpt) <= Ecran.tRate))
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	(0+(_Ecran+0Fh))&0ffh
	goto	u4901
	goto	u4900
u4901:
	goto	l280
u4900:
	
l5704:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Ecran+0Bh))&0ffh
	movlb	0	; () banked
	movf	(0+(_Ecran+0Bh))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_Ecran+0Ch))&0ffh,w
	btfss	status,0
	goto	u4911
	goto	u4910
u4911:
	goto	l280
u4910:
	line	121
	
l5706:; BSR set to: 0

;ecran.c: 120: {
;ecran.c: 121: ecran_print_one_char(Ecran.Index, Ecran.Digits[Ecran.Index]);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Ecran+0Ah))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	lfsr	2,_Ecran+04h
	movff	postinc2,??_ecran_refresh+0+0
	movff	postdec2,??_ecran_refresh+0+0+1
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	(??_ecran_refresh+0+0)&0ffh
	movf	(prodh),c,w
	movlb	0	; () banked
	addwfc	(??_ecran_refresh+0+1)&0ffh
	movff	??_ecran_refresh+0+0,tblptrl
	movff	??_ecran_refresh+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u4927
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w
	bra	u4920
u4927:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u4920:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Ecran+0Ah))&0ffh,w
	
	call	_ecran_print_one_char
	line	123
	
l5708:
;ecran.c: 123: ecran_dot(Ecran.Dot[Ecran.Index]);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Ecran+0Ah))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_Ecran+06h)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Ecran+06h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_ecran_dot
	line	125
	
l5710:
;ecran.c: 125: if (++ Ecran.Index > 3) {Ecran.Index = 0;}
	movlb	0	; () banked
	lfsr	2,_Ecran+0Ah
	incf	indf2

	movlw	(04h-1)
	cpfsgt	indf2
	goto	u4931
	goto	u4930
u4931:
	goto	l280
u4930:
	
l5712:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_ecran_refresh+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Ah))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_refresh+0+0)&0ffh,w
	goto	l280
	
l279:; BSR set to: 0

	goto	l280
	line	126
	
l278:; BSR set to: 0

	line	127
	
l280:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_refresh
	__end_of_ecran_refresh:
	signat	_ecran_refresh,88
	global	_ecran_print_one_char

;; *************** function _ecran_print_one_char *****************
;; Defined at:
;;		line 50 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;  Digit           1    wreg     unsigned char 
;;  Character       1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Digit           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       1       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ecran_digit
;;		_ecran_raz_digit
;; This function is called by:
;;		_ecran_refresh
;;		_cf_check_and_display
;;		_cf_rcv
;;		_check_idtest
;;		_check_bpon
;;		_micro_wait
;;		_feu_check_bp
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	line	50
global __ptext42
__ptext42:
psect	text42
	file	"ecran.c"
	line	50
	global	__size_of_ecran_print_one_char
	__size_of_ecran_print_one_char	equ	__end_of_ecran_print_one_char-_ecran_print_one_char
	
_ecran_print_one_char:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
;ecran_print_one_char@Digit stored from wreg
	movff	wreg,(ecran_print_one_char@Digit)
	line	52
	
l5426:
;ecran.c: 52: ecran_raz_digit();
	call	_ecran_raz_digit	;wreg free
	line	54
;ecran.c: 54: ecran_digit(Character);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ecran_print_one_char@Character))&0ffh,w
	
	call	_ecran_digit
	line	56
;ecran.c: 56: switch (Digit)
	goto	l5430
	line	58
;ecran.c: 57: {
;ecran.c: 58: case 0: PORTCbits.RC1 = 1; break;
	
l258:; BSR set to: 0

	bsf	((c:3970)),c,1	;volatile
	goto	l264
	line	59
;ecran.c: 59: case 1: PORTCbits.RC2 = 1; break;
	
l260:; BSR set to: 0

	bsf	((c:3970)),c,2	;volatile
	goto	l264
	line	60
;ecran.c: 60: case 2: PORTCbits.RC3 = 1; break;
	
l261:; BSR set to: 0

	bsf	((c:3970)),c,3	;volatile
	goto	l264
	line	61
;ecran.c: 61: case 3: PORTCbits.RC0 = 1; break;
	
l262:; BSR set to: 0

	bsf	((c:3970)),c,0	;volatile
	goto	l264
	line	62
;ecran.c: 62: default: break;
	
l263:; BSR set to: 0

	goto	l264
	line	63
	
l5428:; BSR set to: 0

;ecran.c: 63: }
	goto	l264
	line	56
	
l257:; BSR set to: 0

	
l5430:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ecran_print_one_char@Digit))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l258
	xorlw	1^0	; case 1
	skipnz
	goto	l260
	xorlw	2^1	; case 2
	skipnz
	goto	l261
	xorlw	3^2	; case 3
	skipnz
	goto	l262
	goto	l264

	line	63
	
l259:; BSR set to: 0

	line	64
	
l264:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_print_one_char
	__end_of_ecran_print_one_char:
	signat	_ecran_print_one_char,8312
	global	_ecran_raz_digit

;; *************** function _ecran_raz_digit *****************
;; Defined at:
;;		line 3 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ecran_print_one_char
;;		_ecran_wait
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	line	3
global __ptext43
__ptext43:
psect	text43
	file	"ecran.c"
	line	3
	global	__size_of_ecran_raz_digit
	__size_of_ecran_raz_digit	equ	__end_of_ecran_raz_digit-_ecran_raz_digit
	
_ecran_raz_digit:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	5
	
l5356:
;ecran.c: 5: PORTD = 0;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	6
	
l5358:
;ecran.c: 6: PORTC &= 0xF0;
	movlw	(0F0h)&0ffh
	andwf	((c:3970)),c	;volatile
	line	7
	
l219:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_raz_digit
	__end_of_ecran_raz_digit:
	signat	_ecran_raz_digit,88
	global	_ecran_digit

;; *************** function _ecran_digit *****************
;; Defined at:
;;		line 9 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;  Char            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Char            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ecran_print_one_char
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	line	9
global __ptext44
__ptext44:
psect	text44
	file	"ecran.c"
	line	9
	global	__size_of_ecran_digit
	__size_of_ecran_digit	equ	__end_of_ecran_digit-_ecran_digit
	
_ecran_digit:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
;ecran_digit@Char stored from wreg
	movff	wreg,(ecran_digit@Char)
	line	11
	
l5360:
;ecran.c: 11: switch (Char)
	goto	l5414
	line	13
;ecran.c: 12: {
;ecran.c: 13: case ' ': PORTD = 0x00; break;
	
l223:
	
l5362:
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	14
;ecran.c: 14: case 'A': PORTD = 0xB7; break;
	
l225:
	
l5364:
	movlw	low(0B7h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	15
;ecran.c: 15: case 'B': PORTD = 0xF2; break;
	
l226:
	
l5366:
	movlw	low(0F2h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	16
;ecran.c: 16: case 'C': PORTD = 0xD0; break;
	
l227:
	
l5368:
	movlw	low(0D0h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	17
;ecran.c: 17: case 'D': PORTD = 0xF1; break;
	
l228:
	
l5370:
	movlw	low(0F1h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	18
;ecran.c: 18: case 'E': PORTD = 0xD6; break;
	
l229:
	
l5372:
	movlw	low(0D6h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	19
;ecran.c: 19: case 'F': PORTD = 0x96; break;
	
l230:
	
l5374:
	movlw	low(096h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	20
;ecran.c: 20: case 'P': PORTD = 0x97; break;
	
l231:
	
l5376:
	movlw	low(097h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	21
;ecran.c: 21: case 'b': PORTD = 0xF2; break;
	
l232:
	
l5378:
	movlw	low(0F2h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	22
;ecran.c: 22: case 'c': PORTD = 0xD0; break;
	
l233:
	
l5380:
	movlw	low(0D0h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	23
;ecran.c: 23: case 'd': PORTD = 0xF1; break;
	
l234:
	
l5382:
	movlw	low(0F1h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	24
;ecran.c: 24: case 'S': PORTD = 0x76; break;
	
l235:
	
l5384:
	movlw	low(076h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	25
;ecran.c: 25: case 't': PORTD = 0xD2; break;
	
l236:
	
l5386:
	movlw	low(0D2h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	26
;ecran.c: 26: case '_': PORTD = 0x40; break;
	
l237:
	
l5388:
	movlw	low(040h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	27
;ecran.c: 27: case '-': PORTD = 0x10; break;
	
l238:
	
l5390:
	movlw	low(010h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	28
;ecran.c: 28: case '0': PORTD = 0xE7; break;
	
l239:
	
l5392:
	movlw	low(0E7h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	29
;ecran.c: 29: case '1': PORTD = 0x21; break;
	
l240:
	
l5394:
	movlw	low(021h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	30
;ecran.c: 30: case '2': PORTD = 0xD5; break;
	
l241:
	
l5396:
	movlw	low(0D5h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	31
;ecran.c: 31: case '3': PORTD = 0x75; break;
	
l242:
	
l5398:
	movlw	low(075h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	32
;ecran.c: 32: case '4': PORTD = 0x33; break;
	
l243:
	
l5400:
	movlw	low(033h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	33
;ecran.c: 33: case '5': PORTD = 0x76; break;
	
l244:
	
l5402:
	movlw	low(076h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	34
;ecran.c: 34: case '6': PORTD = 0xF6; break;
	
l245:
	
l5404:
	movlw	low(0F6h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	35
;ecran.c: 35: case '7': PORTD = 0x25; break;
	
l246:
	
l5406:
	movlw	low(025h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	36
;ecran.c: 36: case '8': PORTD = 0xF7; break;
	
l247:
	
l5408:
	movlw	low(0F7h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	37
;ecran.c: 37: case '9': PORTD = 0x77; break;
	
l248:
	
l5410:
	movlw	low(077h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	38
;ecran.c: 38: default: break;
	
l249:
	goto	l250
	line	39
	
l5412:
;ecran.c: 39: }
	goto	l250
	line	11
	
l222:
	
l5414:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((ecran_digit@Char))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 25, Range of values is 32 to 116
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           76    39 (average)
;	Chosen strategy is simple_byte

	xorlw	32^0	; case 32
	skipnz
	goto	l5362
	xorlw	45^32	; case 45
	skipnz
	goto	l5390
	xorlw	48^45	; case 48
	skipnz
	goto	l5392
	xorlw	49^48	; case 49
	skipnz
	goto	l5394
	xorlw	50^49	; case 50
	skipnz
	goto	l5396
	xorlw	51^50	; case 51
	skipnz
	goto	l5398
	xorlw	52^51	; case 52
	skipnz
	goto	l5400
	xorlw	53^52	; case 53
	skipnz
	goto	l5402
	xorlw	54^53	; case 54
	skipnz
	goto	l5404
	xorlw	55^54	; case 55
	skipnz
	goto	l5406
	xorlw	56^55	; case 56
	skipnz
	goto	l5408
	xorlw	57^56	; case 57
	skipnz
	goto	l5410
	xorlw	65^57	; case 65
	skipnz
	goto	l5364
	xorlw	66^65	; case 66
	skipnz
	goto	l5366
	xorlw	67^66	; case 67
	skipnz
	goto	l5368
	xorlw	68^67	; case 68
	skipnz
	goto	l5370
	xorlw	69^68	; case 69
	skipnz
	goto	l5372
	xorlw	70^69	; case 70
	skipnz
	goto	l5374
	xorlw	80^70	; case 80
	skipnz
	goto	l5376
	xorlw	83^80	; case 83
	skipnz
	goto	l5384
	xorlw	95^83	; case 95
	skipnz
	goto	l5388
	xorlw	98^95	; case 98
	skipnz
	goto	l5378
	xorlw	99^98	; case 99
	skipnz
	goto	l5380
	xorlw	100^99	; case 100
	skipnz
	goto	l5382
	xorlw	116^100	; case 116
	skipnz
	goto	l5386
	goto	l250

	line	39
	
l224:; BSR set to: 0

	line	40
	
l250:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_digit
	__end_of_ecran_digit:
	signat	_ecran_digit,4216
	global	_ecran_dot

;; *************** function _ecran_dot *****************
;; Defined at:
;;		line 42 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;  Dot             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Dot             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ecran_wait
;;		_ecran_refresh
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	line	42
global __ptext45
__ptext45:
psect	text45
	file	"ecran.c"
	line	42
	global	__size_of_ecran_dot
	__size_of_ecran_dot	equ	__end_of_ecran_dot-_ecran_dot
	
_ecran_dot:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;ecran_dot@Dot stored from wreg
	movff	wreg,(ecran_dot@Dot)
	line	44
	
l5422:
;ecran.c: 44: if (Dot == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((ecran_dot@Dot))&0ffh,w

	btfss	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l254
u4390:
	line	46
	
l5424:; BSR set to: 0

;ecran.c: 45: {
;ecran.c: 46: PORTD |= 0x08;
	bsf	(0+(3/8)+(c:3971)),c,(3)&7	;volatile
	goto	l254
	line	47
	
l253:; BSR set to: 0

	line	48
	
l254:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_dot
	__end_of_ecran_dot:
	signat	_ecran_dot,4216
	global	_ecran_blank

;; *************** function _ecran_blank *****************
;; Defined at:
;;		line 103 in file "ecran.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_check_comutest
;;		_check_program_0
;;		_test_process
;;		_micro_wait
;;		_armement_process
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	line	103
global __ptext46
__ptext46:
psect	text46
	file	"ecran.c"
	line	103
	global	__size_of_ecran_blank
	__size_of_ecran_blank	equ	__end_of_ecran_blank-_ecran_blank
	
_ecran_blank:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	106
	
l5742:
;ecran.c: 106: Ecran.Digits = (char *) Blank;
		movlw	high(_Blank)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlw	low(_Blank)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	108
	
l5744:; BSR set to: 0

;ecran.c: 108: Ecran.Dot[0] = 0;
	movlb	0	; () banked
	movwf	(??_ecran_blank+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+06h))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_blank+0+0)&0ffh,w
	line	109
	
l5746:; BSR set to: 0

;ecran.c: 109: Ecran.Dot[1] = 0;
	movlb	0	; () banked
	movwf	(??_ecran_blank+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+07h))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_blank+0+0)&0ffh,w
	line	110
	
l5748:; BSR set to: 0

;ecran.c: 110: Ecran.Dot[2] = 0;
	movlb	0	; () banked
	movwf	(??_ecran_blank+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+08h))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_blank+0+0)&0ffh,w
	line	111
	
l5750:; BSR set to: 0

;ecran.c: 111: Ecran.Dot[3] = 0;
	movlb	0	; () banked
	movwf	(??_ecran_blank+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+09h))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_blank+0+0)&0ffh,w
	line	113
	
l5752:; BSR set to: 0

;ecran.c: 113: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_ecran_blank+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_ecran_blank+0+0)&0ffh,w
	line	114
	
l275:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ecran_blank
	__end_of_ecran_blank:
	signat	_ecran_blank,88
	global	_arm_UAlim_1A

;; *************** function _arm_UAlim_1A *****************
;; Defined at:
;;		line 3 in file "armement.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   34[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   28[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_ana_read
;;		_delay_ms
;; This function is called by:
;;		_armement_process
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	file	"armement.c"
	line	3
global __ptext47
__ptext47:
psect	text47
	file	"armement.c"
	line	3
	global	__size_of_arm_UAlim_1A
	__size_of_arm_UAlim_1A	equ	__end_of_arm_UAlim_1A-_arm_UAlim_1A
	
_arm_UAlim_1A:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	5
	
l6114:
;armement.c: 5: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((arm_UAlim_1A@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((arm_UAlim_1A@temp))&0ffh
	line	7
	
l6116:; BSR set to: 0

;armement.c: 7: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	8
	
l6118:; BSR set to: 0

;armement.c: 8: PORTBbits.RB1 = 1;
	bsf	((c:3969)),c,1	;volatile
	line	10
	
l6120:; BSR set to: 0

;armement.c: 10: delay_ms(10);
	movlw	high(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait+1))&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait))&0ffh
	call	_delay_ms	;wreg free
	line	12
	
l6122:
;armement.c: 12: temp = ana_read(0);
	movlw	(0)&0ffh
	
	call	_ana_read
	movlb	0	; () banked
	movff	0+?_ana_read,(arm_UAlim_1A@temp)
	movlb	0	; () banked
	movff	1+?_ana_read,(arm_UAlim_1A@temp+1)
	line	14
	
l6124:; BSR set to: 0

;armement.c: 14: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	15
	
l6126:; BSR set to: 0

;armement.c: 15: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	17
	
l6128:; BSR set to: 0

;armement.c: 17: Arm.U_Alim_1A = (float) temp * 0.0049f;
	movff	(arm_UAlim_1A@temp),(___lwtoft@c)
	movff	(arm_UAlim_1A@temp+1),(___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(___ftmul@f1)
	movff	1+?___lwtoft,(___ftmul@f1+1)
	movff	2+?___lwtoft,(___ftmul@f1+2)
	movlw	low(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(0.0048999999999999998))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_Arm+04h)
	movff	1+?___ftmul,1+(_Arm+04h)
	movff	2+?___ftmul,2+(_Arm+04h)
	line	18
	
l6130:
;armement.c: 18: Arm.U_Alim_1A = Arm.U_Alim_1A * 11.62f;
	movff	0+(_Arm+04h),(___ftmul@f1)
	movff	1+(_Arm+04h),(___ftmul@f1+1)
	movff	2+(_Arm+04h),(___ftmul@f1+2)
	movlw	low(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(11.619999999999999))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_Arm+04h)
	movff	1+?___ftmul,1+(_Arm+04h)
	movff	2+?___ftmul,2+(_Arm+04h)
	line	19
	
l6132:
;armement.c: 19: Arm.U_Alim_1A = Arm.U_Alim_1A * 100.0f;
	movff	0+(_Arm+04h),(___ftmul@f1)
	movff	1+(_Arm+04h),(___ftmul@f1+1)
	movff	2+(_Arm+04h),(___ftmul@f1+2)
	movlw	low(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(100.00000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,0+(_Arm+04h)
	movff	1+?___ftmul,1+(_Arm+04h)
	movff	2+?___ftmul,2+(_Arm+04h)
	line	21
	
l6134:
;armement.c: 21: return (unsigned short) Arm.U_Alim_1A;
	movff	0+(_Arm+04h),(___fttol@f1)
	movff	1+(_Arm+04h),(___fttol@f1+1)
	movff	2+(_Arm+04h),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_arm_UAlim_1A+0+0
	movff	1+?___fttol,??_arm_UAlim_1A+0+0+1
	movff	2+?___fttol,??_arm_UAlim_1A+0+0+2
	movff	3+?___fttol,??_arm_UAlim_1A+0+0+3
	
	movff	??_arm_UAlim_1A+0+0,(?_arm_UAlim_1A)
	movff	??_arm_UAlim_1A+0+1,(?_arm_UAlim_1A+1)
	goto	l1028
	
l6136:
	line	22
	
l1028:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_arm_UAlim_1A
	__end_of_arm_UAlim_1A:
	signat	_arm_UAlim_1A,90
	global	_ana_read

;; *************** function _ana_read *****************
;; Defined at:
;;		line 4 in file "analog.c"
;; Parameters:    Size  Location     Type
;;  ANx             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ANx             1    9[BANK0 ] unsigned char 
;;  temp            2   10[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_check_UAlim
;;		_check_UInfla
;;		_arm_UAlim_1A
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	file	"analog.c"
	line	4
global __ptext48
__ptext48:
psect	text48
	file	"analog.c"
	line	4
	global	__size_of_ana_read
	__size_of_ana_read	equ	__end_of_ana_read-_ana_read
	
_ana_read:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;ana_read@ANx stored from wreg
	movff	wreg,(ana_read@ANx)
	line	6
	
l5792:
;analog.c: 6: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ana_read@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((ana_read@temp))&0ffh
	line	8
	
l5794:; BSR set to: 0

;analog.c: 8: ADCON0bits.CHS = ANx;
	movff	(ana_read@ANx),??_ana_read+0+0
	movlb	0	; () banked
	rlncf	(??_ana_read+0+0)&0ffh
	rlncf	(??_ana_read+0+0)&0ffh
	rlncf	(??_ana_read+0+0)&0ffh
	movf	((c:4034)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_ana_read+0+0)&0ffh,w
	andlw	not (((1<<3)-1)<<3)
	xorwf	(??_ana_read+0+0)&0ffh,w
	movwf	((c:4034)),c	;volatile
	line	9
	
l5796:; BSR set to: 0

;analog.c: 9: ADCON0bits.ADON = 1;
	bsf	((c:4034)),c,0	;volatile
	line	11
	
l5798:; BSR set to: 0

;analog.c: 11: delay_ms(5);
	movlw	high(05h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait+1))&0ffh
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait))&0ffh
	call	_delay_ms	;wreg free
	line	13
	
l5800:
;analog.c: 13: ADCON0bits.GO_nDONE = 1;
	bsf	((c:4034)),c,2	;volatile
	line	14
;analog.c: 14: while (ADCON0bits.GO_nDONE);
	goto	l972
	
l973:
	
l972:
	btfsc	((c:4034)),c,2	;volatile
	goto	u5031
	goto	u5030
u5031:
	goto	l972
u5030:
	goto	l5802
	
l974:
	line	16
	
l5802:
;analog.c: 16: temp = ADRESH << 8;
	movf	((c:4036)),c,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ana_read@temp+1))&0ffh
	movlb	0	; () banked
	clrf	((ana_read@temp))&0ffh
	line	17
	
l5804:; BSR set to: 0

;analog.c: 17: temp |= ADRESL;
	movf	((c:4035)),c,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	((ana_read@temp))&0ffh
	line	19
	
l5806:; BSR set to: 0

;analog.c: 19: ADCON0bits.ADON = 0;
	bcf	((c:4034)),c,0	;volatile
	line	21
	
l5808:; BSR set to: 0

;analog.c: 21: return temp;
	movff	(ana_read@temp),(?_ana_read)
	movff	(ana_read@temp+1),(?_ana_read+1)
	goto	l975
	
l5810:; BSR set to: 0

	line	22
	
l975:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ana_read
	__end_of_ana_read:
	signat	_ana_read,4218
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 4 in file "time.c"
;; Parameters:    Size  Location     Type
;;  TimeToWait      2    0[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  temp            2    4[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ana_read
;;		_arm_UAlim_1A
;;		_feu_tir
;;		_feu_process
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2
	file	"time.c"
	line	4
global __ptext49
__ptext49:
psect	text49
	file	"time.c"
	line	4
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	6
	
l5566:
;time.c: 6: unsigned short temp = Cptms;
	movff	(c:_Cptms),(delay_ms@temp)	;volatile
	movff	(c:_Cptms+1),(delay_ms@temp+1)	;volatile
	line	8
;time.c: 8: while((((unsigned short) (Cptms - temp) < TimeToWait) ? 1 : 0));
	goto	l5568
	
l871:
	goto	l5568
	
l870:
	
l5568:
	movlb	0	; () banked
	movff	(delay_ms@temp),??_delay_ms+0+0
	movlb	0	; () banked
	movff	(delay_ms@temp+1),??_delay_ms+0+0+1
	movlb	0	; () banked
	comf	(??_delay_ms+0+0)&0ffh
	comf	(??_delay_ms+0+1)&0ffh
	infsnz	(??_delay_ms+0+0)&0ffh
	incf	(??_delay_ms+0+1)&0ffh
	movf	((c:_Cptms)),c,w	;volatile
	movlb	0	; () banked
	addwf	(??_delay_ms+0+0)&0ffh
	movf	((c:_Cptms+1)),c,w	;volatile
	movlb	0	; () banked
	addwfc	(??_delay_ms+0+1)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((delay_ms@TimeToWait))&0ffh,w
	movlb	0	; () banked
	subwf	(??_delay_ms+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((delay_ms@TimeToWait+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??_delay_ms+0+1)&0ffh,w
	btfss	status,0
	goto	u4671
	goto	u4670
u4671:
	goto	l5568
u4670:
	goto	l873
	
l872:; BSR set to: 0

	line	9
	
l873:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_check_UAlim
;;		_check_UInfla
;;		_arm_UAlim_1A
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwtoft.c"
	line	28
global __ptext50
__ptext50:
psect	text50
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	30
	
l5952:
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(___lwtoft@c),(___ftpack@arg)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(___lwtoft@c+1),(___ftpack@arg+1)
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	((___ftpack@arg+2))&0ffh
	movlb	0	; () banked
	movwf	(??___lwtoft+0+0)&0ffh
	movlw	low(08Eh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftpack@exp))&0ffh
	movlb	0	; () banked
	movf	(??___lwtoft+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??___lwtoft+1+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftpack@sign))&0ffh
	movlb	0	; () banked
	movf	(??___lwtoft+1+0)&0ffh,w
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___lwtoft)
	movff	1+?___ftpack,(?___lwtoft+1)
	movff	2+?___ftpack,(?___lwtoft+2)
	goto	l1703
	
l5954:
	line	31
	
l1703:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   10[BANK0 ] unsigned long 
;;  exp1            1   14[BANK0 ] unsigned char 
;;  sign1           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_check_UAlim
;;		_check_UInfla
;;		_arm_UAlim_1A
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\fttol.c"
	line	44
global __ptext51
__ptext51:
psect	text51
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	49
	
l5876:
	movlb	0	; () banked
	movff	(___fttol@f1+2),??___fttol+0+0
	movlb	0	; () banked
	clrf	(??___fttol+0+0+1)&0ffh
	clrf	(??___fttol+0+0+2)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	rlcf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___fttol+0+0)&0ffh
	bnc	u5131
	bsf	(??___fttol+0+0+1)&0ffh,0
u5131:
	movlb	0	; () banked
	movf	(??___fttol+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	tstfsz	((___fttol@exp1))&0ffh
	goto	u5141
	goto	u5140
u5141:
	goto	l5882
u5140:
	line	50
	
l5878:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movlb	0	; () banked
	movwf	((?___fttol+3))&0ffh
	goto	l1554
	
l5880:; BSR set to: 0

	goto	l1554
	
l1553:; BSR set to: 0

	line	51
	
l5882:; BSR set to: 0

	movlw	(017h)&0ffh
	movlb	0	; () banked
	movwf	(??___fttol+0+0)&0ffh
	movlb	0	; () banked
	movff	(___fttol@f1),??___fttol+1+0
	movlb	0	; () banked
	movff	(___fttol@f1+1),??___fttol+1+0+1
	movlb	0	; () banked
	movff	(___fttol@f1+2),??___fttol+1+0+2
	movlb	0	; () banked
	incf	((??___fttol+0+0))&0ffh,w
	movlb	0	; () banked
	movwf	(??___fttol+4+0)&0ffh
	goto	u5150
u5155:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??___fttol+1+2)&0ffh
	rrcf	(??___fttol+1+1)&0ffh
	rrcf	(??___fttol+1+0)&0ffh
u5150:
	movlb	0	; () banked
	decfsz	(??___fttol+4+0)&0ffh
	goto	u5155
	movlb	0	; () banked
	movf	(??___fttol+1+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l5884:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(15/8)+(___fttol@f1))&0ffh,(15)&7
	line	53
	
l5886:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___fttol@f1))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___fttol@f1+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___fttol@f1+2))&0ffh

	line	54
	
l5888:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@f1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@lval))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	movf	((___fttol@f1+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	clrf	3+((___fttol@lval))&0ffh
	line	55
	
l5890:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l5892:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	btfss	((___fttol@exp1))&0ffh,7
	goto	u5161
	goto	u5160
u5161:
	goto	l5904
u5160:
	line	57
	
l5894:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??___fttol+0+0)&0ffh
	movlw	(-15)&0ffh
	xorlw	80h
	movlb	0	; () banked
	subwf	(??___fttol+0+0)&0ffh,w
	btfsc	status,0
	goto	u5171
	goto	u5170
u5171:
	goto	l5900
u5170:
	line	58
	
l5896:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movlb	0	; () banked
	movwf	((?___fttol+3))&0ffh
	goto	l1554
	
l5898:; BSR set to: 0

	goto	l1554
	
l1556:; BSR set to: 0

	goto	l5900
	line	59
	
l1557:; BSR set to: 0

	line	60
	
l5900:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___fttol@lval+3))&0ffh
	movlb	0	; () banked
	rrcf	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	rrcf	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l5902:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l5900
	goto	l5914
	
l1558:; BSR set to: 0

	line	62
	goto	l5914
	
l1555:; BSR set to: 0

	line	63
	
l5904:; BSR set to: 0

	movlw	(018h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u5181
	goto	u5180
u5181:
	goto	l5912
u5180:
	line	64
	
l5906:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movlb	0	; () banked
	movwf	((?___fttol+3))&0ffh
	goto	l1554
	
l5908:; BSR set to: 0

	goto	l1554
	
l1560:; BSR set to: 0

	line	65
	goto	l5912
	
l1562:; BSR set to: 0

	line	66
	
l5910:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rlcf	((___fttol@lval))&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l5912
	line	68
	
l1561:; BSR set to: 0

	line	65
	
l5912:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((___fttol@exp1))&0ffh
	goto	u5191
	goto	u5190
u5191:
	goto	l5910
u5190:
	goto	l5914
	
l1563:; BSR set to: 0

	goto	l5914
	line	69
	
l1559:; BSR set to: 0

	line	70
	
l5914:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	btfsc	status,2
	goto	u5201
	goto	u5200
u5201:
	goto	l5918
u5200:
	line	71
	
l5916:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	movlb	0	; () banked
	comf	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	comf	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	negf	((___fttol@lval))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	addwfc	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	addwfc	((___fttol@lval+3))&0ffh
	goto	l5918
	
l1564:; BSR set to: 0

	line	72
	
l5918:; BSR set to: 0

	movff	(___fttol@lval),(?___fttol)
	movff	(___fttol@lval+1),(?___fttol+1)
	movff	(___fttol@lval+2),(?___fttol+2)
	movff	(___fttol@lval+3),(?___fttol+3)
	goto	l1554
	
l5920:; BSR set to: 0

	line	73
	
l1554:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 51 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   13[BANK0 ] float 
;;  f2              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   23[BANK0 ] unsigned um
;;  sign            1   27[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;;  exp             1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_check_UAlim
;;		_check_UInfla
;;		_arm_UAlim_1A
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\ftmul.c"
	line	51
global __ptext52
__ptext52:
psect	text52
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\ftmul.c"
	line	51
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	56
	
l5828:
	movlb	0	; () banked
	movff	(___ftmul@f1+2),??___ftmul+0+0
	movlb	0	; () banked
	clrf	(??___ftmul+0+0+1)&0ffh
	clrf	(??___ftmul+0+0+2)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	rlcf	((___ftmul@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftmul+0+0)&0ffh
	bnc	u5071
	bsf	(??___ftmul+0+0+1)&0ffh,0
u5071:
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@exp))&0ffh
	movlb	0	; () banked
	tstfsz	((___ftmul@exp))&0ffh
	goto	u5081
	goto	u5080
u5081:
	goto	l5834
u5080:
	line	57
	
l5830:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftmul))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftmul+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftmul+2))&0ffh

	goto	l1534
	
l5832:; BSR set to: 0

	goto	l1534
	
l1533:; BSR set to: 0

	line	58
	
l5834:; BSR set to: 0

	movlb	0	; () banked
	movff	(___ftmul@f2+2),??___ftmul+0+0
	movlb	0	; () banked
	clrf	(??___ftmul+0+0+1)&0ffh
	clrf	(??___ftmul+0+0+2)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	rlcf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftmul+0+0)&0ffh
	bnc	u5091
	bsf	(??___ftmul+0+0+1)&0ffh,0
u5091:
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@sign))&0ffh
	movlb	0	; () banked
	tstfsz	((___ftmul@sign))&0ffh
	goto	u5101
	goto	u5100
u5101:
	goto	l5840
u5100:
	line	59
	
l5836:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftmul))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftmul+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftmul+2))&0ffh

	goto	l1534
	
l5838:; BSR set to: 0

	goto	l1534
	
l1535:; BSR set to: 0

	line	60
	
l5840:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@sign))&0ffh,w
	addlw	low(07Bh)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___ftmul@exp))&0ffh
	line	61
	
l5842:; BSR set to: 0

	movff	0+2+(___ftmul@f1),(___ftmul@sign)
	line	62
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+2+(___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((___ftmul@sign))&0ffh
	line	63
	movlw	(080h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftmul@sign))&0ffh
	line	64
	
l5844:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f1))&0ffh,(15)&7
	line	66
	
l5846:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f2))&0ffh,(15)&7
	line	67
	
l5848:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftmul@f2))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftmul@f2+2))&0ffh

	line	68
	
l5850:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product+2))&0ffh

	line	69
	
l5852:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___ftmul+0+0)&0ffh
	movlw	low(07h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	goto	l5854
	line	70
	
l1536:; BSR set to: 0

	line	71
	
l5854:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u5111
	goto	u5110
u5111:
	goto	l5858
u5110:
	line	72
	
l5856:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___ftmul@f3_as_product))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@f2+2))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+2))&0ffh

	goto	l5858
	
l1537:; BSR set to: 0

	line	73
	
l5858:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___ftmul@f1+2))&0ffh
	movlb	0	; () banked
	rrcf	((___ftmul@f1+1))&0ffh
	movlb	0	; () banked
	rrcf	((___ftmul@f1))&0ffh
	line	74
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rlcf	((___ftmul@f2))&0ffh
	movlb	0	; () banked
	rlcf	((___ftmul@f2+1))&0ffh
	movlb	0	; () banked
	rlcf	((___ftmul@f2+2))&0ffh
	line	75
	
l5860:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l5854
	goto	l5862
	
l1538:; BSR set to: 0

	line	76
	
l5862:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___ftmul+0+0)&0ffh
	movlw	low(09h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	goto	l5864
	line	77
	
l1539:; BSR set to: 0

	line	78
	
l5864:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u5121
	goto	u5120
u5121:
	goto	l5868
u5120:
	line	79
	
l5866:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___ftmul@f3_as_product))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@f2+2))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+2))&0ffh

	goto	l5868
	
l1540:; BSR set to: 0

	line	80
	
l5868:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___ftmul@f1+2))&0ffh
	movlb	0	; () banked
	rrcf	((___ftmul@f1+1))&0ffh
	movlb	0	; () banked
	rrcf	((___ftmul@f1))&0ffh
	line	81
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___ftmul@f3_as_product+2))&0ffh
	movlb	0	; () banked
	rrcf	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	rrcf	((___ftmul@f3_as_product))&0ffh
	line	82
	
l5870:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l5864
	goto	l5872
	
l1541:; BSR set to: 0

	line	83
	
l5872:; BSR set to: 0

	movff	(___ftmul@f3_as_product),(___ftpack@arg)
	movff	(___ftmul@f3_as_product+1),(___ftpack@arg+1)
	movff	(___ftmul@f3_as_product+2),(___ftpack@arg+2)
	movff	(___ftmul@exp),(___ftpack@exp)
	movff	(___ftmul@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftmul)
	movff	1+?___ftpack,(?___ftmul+1)
	movff	2+?___ftpack,(?___ftmul+2)
	goto	l1534
	
l5874:
	line	84
	
l1534:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text53,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\float.c"
	line	62
global __ptext53
__ptext53:
psect	text53
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	64
	
l5570:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@exp))&0ffh,w
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l5574
u4680:
	
l5572:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
	iorwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((___ftpack@arg+2))&0ffh,w
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l5580
u4690:
	goto	l5574
	
l1449:; BSR set to: 0

	line	65
	
l5574:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftpack))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftpack+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?___ftpack+2))&0ffh

	goto	l1450
	
l5576:; BSR set to: 0

	goto	l1450
	
l1447:; BSR set to: 0

	line	66
	goto	l5580
	
l1452:; BSR set to: 0

	line	67
	
l5578:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___ftpack@exp))&0ffh
	line	68
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___ftpack@arg+2))&0ffh
	movlb	0	; () banked
	rrcf	((___ftpack@arg+1))&0ffh
	movlb	0	; () banked
	rrcf	((___ftpack@arg))&0ffh
	goto	l5580
	line	69
	
l1451:; BSR set to: 0

	line	66
	
l5580:; BSR set to: 0

	movlw	low(0FE0000h)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftpack+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??___ftpack+0+0)&0ffh
	movlw	0FEh
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftpack@arg+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??___ftpack+0+0)&0ffh

	movlb	0	; () banked
	movf	(??___ftpack+0+0)&0ffh,w
	iorwf	(??___ftpack+0+1)&0ffh,w
	iorwf	(??___ftpack+0+2)&0ffh,w
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l5578
u4700:
	goto	l5586
	
l1453:; BSR set to: 0

	line	70
	goto	l5586
	
l1455:; BSR set to: 0

	line	71
	
l5582:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___ftpack@exp))&0ffh
	line	72
	
l5584:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___ftpack@arg))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___ftpack@arg+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((___ftpack@arg+2))&0ffh

	line	73
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___ftpack@arg+2))&0ffh
	movlb	0	; () banked
	rrcf	((___ftpack@arg+1))&0ffh
	movlb	0	; () banked
	rrcf	((___ftpack@arg))&0ffh
	goto	l5586
	line	74
	
l1454:; BSR set to: 0

	line	70
	
l5586:; BSR set to: 0

	movlw	low(0FF0000h)
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftpack+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??___ftpack+0+0)&0ffh
	movlw	0FFh
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((___ftpack@arg+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+(??___ftpack+0+0)&0ffh

	movlb	0	; () banked
	movf	(??___ftpack+0+0)&0ffh,w
	iorwf	(??___ftpack+0+1)&0ffh,w
	iorwf	(??___ftpack+0+2)&0ffh,w
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l5582
u4710:
	goto	l5590
	
l1456:; BSR set to: 0

	line	75
	goto	l5590
	
l1458:; BSR set to: 0

	line	76
	
l5588:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((___ftpack@exp))&0ffh
	line	77
	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rlcf	((___ftpack@arg))&0ffh
	movlb	0	; () banked
	rlcf	((___ftpack@arg+1))&0ffh
	movlb	0	; () banked
	rlcf	((___ftpack@arg+2))&0ffh
	goto	l5590
	line	78
	
l1457:; BSR set to: 0

	line	75
	
l5590:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftpack@arg+1))&0ffh,(15)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l5588
u4720:
	
l1459:; BSR set to: 0

	line	79
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((___ftpack@exp))&0ffh,(0)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l5594
u4730:
	line	80
	
l5592:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(15/8)+(___ftpack@arg))&0ffh,(15)&7
	goto	l5594
	
l1460:; BSR set to: 0

	line	81
	
l5594:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rrcf	((___ftpack@exp))&0ffh

	line	82
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@exp))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	((___ftpack@arg+2))&0ffh

	line	83
	
l5596:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@sign))&0ffh,w
	btfsc	status,2
	goto	u4741
	goto	u4740
u4741:
	goto	l5600
u4740:
	line	84
	
l5598:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(23/8)+(___ftpack@arg))&0ffh,(23)&7
	goto	l5600
	
l1461:; BSR set to: 0

	line	85
	
l5600:; BSR set to: 0

	movff	(___ftpack@arg),(?___ftpack)
	movff	(___ftpack@arg+1),(?___ftpack+1)
	movff	(___ftpack@arg+2),(?___ftpack+2)
	goto	l1450
	
l5602:; BSR set to: 0

	line	86
	
l1450:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_Low_priority

;; *************** function _Low_priority *****************
;; Defined at:
;;		line 51 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         17       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo,class=CODE,space=0,reloc=2
global __pintcodelo
__pintcodelo:
psect	intcodelo
	file	"main.c"
	line	51
	global	__size_of_Low_priority
	__size_of_Low_priority	equ	__end_of_Low_priority-_Low_priority
	
_Low_priority:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh; errata NOP
	movff	status+0,??_Low_priority+0
	movff	wreg+0,??_Low_priority+1
	movff	bsr+0,??_Low_priority+2
	movff	pclat+0,??_Low_priority+3
	movff	pclat+1,??_Low_priority+4
	movff	fsr0l+0,??_Low_priority+5
	movff	fsr0h+0,??_Low_priority+6
	movff	fsr1l+0,??_Low_priority+7
	movff	fsr1h+0,??_Low_priority+8
	movff	fsr2l+0,??_Low_priority+9
	movff	fsr2h+0,??_Low_priority+10
	movff	prodl+0,??_Low_priority+11
	movff	prodh+0,??_Low_priority+12
	movff	tblptrl+0,??_Low_priority+13
	movff	tblptrh+0,??_Low_priority+14
	movff	tblptru+0,??_Low_priority+15
	movff	tablat+0,??_Low_priority+16
	line	53
	
i1l5208:
;main.c: 53: if (RCIE && RCIF)
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i1u427_21
	goto	i1u427_20
i1u427_21:
	goto	i1l86
i1u427_20:
	
i1l5210:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i1u428_21
	goto	i1u428_20
i1u428_21:
	goto	i1l86
i1u428_20:
	line	55
	
i1l5212:
;main.c: 54: {
;main.c: 55: Cf.Data[Cf.Index] = RCREG;
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+065h))&0ffh,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	line	56
;main.c: 56: TXREG = Cf.Data[Cf.Index];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+065h))&0ffh,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_Cf)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_Cf)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4013)),c	;volatile
	line	58
	
i1l5214:; BSR set to: 1

;main.c: 58: Cf.Index ++;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	(0+(_Cf+065h))&0ffh	;volatile
	line	60
	
i1l5216:; BSR set to: 1

;main.c: 60: Cf.Time1 = Cptms;
	movff	(c:_Cptms),0+(_Cf+066h)	;volatile
	movff	(c:_Cptms+1),1+(_Cf+066h)	;volatile
	goto	i1l86
	line	62
	
i1l5218:; BSR set to: 1

;main.c: 62: return;
	goto	i1l86
	line	63
	
i1l85:; BSR set to: 1

	line	64
	
i1l86:
	movff	??_Low_priority+16,tablat+0
	movff	??_Low_priority+15,tblptru+0
	movff	??_Low_priority+14,tblptrh+0
	movff	??_Low_priority+13,tblptrl+0
	movff	??_Low_priority+12,prodh+0
	movff	??_Low_priority+11,prodl+0
	movff	??_Low_priority+10,fsr2h+0
	movff	??_Low_priority+9,fsr2l+0
	movff	??_Low_priority+8,fsr1h+0
	movff	??_Low_priority+7,fsr1l+0
	movff	??_Low_priority+6,fsr0h+0
	movff	??_Low_priority+5,fsr0l+0
	movff	??_Low_priority+4,pclat+1
	movff	??_Low_priority+3,pclat+0
	movff	??_Low_priority+2,bsr+0
	movff	??_Low_priority+1,wreg+0
	movff	??_Low_priority+0,status+0
	retfie
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Low_priority
	__end_of_Low_priority:
	signat	_Low_priority,1112
	global	_High_priority

;; *************** function _High_priority *****************
;; Defined at:
;;		line 66 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         19       0       0       0       0       0       0
;;      Totals:        19       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"main.c"
	line	66
	global	__size_of_High_priority
	__size_of_High_priority	equ	__end_of_High_priority-_High_priority
	
_High_priority:
;incstack = 0
	opt	stack 23
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_High_priority+5
	movff	pclat+1,??_High_priority+6
	global	int_func
	goto	int_func
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:
	dw	0FFFFh; errata NOP
	movff	fsr0l+0,??_High_priority+7
	movff	fsr0h+0,??_High_priority+8
	movff	fsr1l+0,??_High_priority+9
	movff	fsr1h+0,??_High_priority+10
	movff	fsr2l+0,??_High_priority+11
	movff	fsr2h+0,??_High_priority+12
	movff	prodl+0,??_High_priority+13
	movff	prodh+0,??_High_priority+14
	movff	tblptrl+0,??_High_priority+15
	movff	tblptrh+0,??_High_priority+16
	movff	tblptru+0,??_High_priority+17
	movff	tablat+0,??_High_priority+18
	line	68
	
i2l5220:
;main.c: 68: if (TMR0IE && TMR0IF)
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u429_41
	goto	i2u429_40
i2u429_41:
	goto	i2l102
i2u429_40:
	
i2l5222:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u430_41
	goto	i2u430_40
i2u430_41:
	goto	i2l102
i2u430_40:
	line	70
	
i2l5224:
;main.c: 69: {
;main.c: 70: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	72
	
i2l5226:
;main.c: 72: TMR0H = 0xF0;
	movlw	low(0F0h)
	movwf	((c:4055)),c	;volatile
	line	73
;main.c: 73: TMR0L = 0x8C;
	movlw	low(08Ch)
	movwf	((c:4054)),c	;volatile
	line	75
	
i2l5228:
;main.c: 75: Cptms ++;
	infsnz	((c:_Cptms)),c	;volatile
	incf	((c:_Cptms+1)),c	;volatile
	line	77
	
i2l5230:
;main.c: 77: if (-- Decompte == 0)
	decfsz	((c:_Decompte)),c	;volatile
	
	goto	i2l5236
	line	79
	
i2l5232:
;main.c: 78: {
;main.c: 79: Decompte = 50;
	movlw	low(032h)
	movwf	((c:_Decompte)),c	;volatile
	line	80
	
i2l5234:
;main.c: 80: Cpt1Sur20s ++;
	infsnz	((c:_Cpt1Sur20s)),c	;volatile
	incf	((c:_Cpt1Sur20s+1)),c	;volatile
	goto	i2l5236
	line	81
	
i2l90:
	line	83
	
i2l5236:
;main.c: 81: }
;main.c: 83: if (Micro.State)
	movf	(0+((c:_Micro)+04h)),c,w
	btfsc	status,2
	goto	i2u431_41
	goto	i2u431_40
i2u431_41:
	goto	i2l91
i2u431_40:
	line	85
	
i2l5238:
;main.c: 84: {
;main.c: 85: if (Feedback.Period == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Feedback+1))&0ffh,w
	iorwf ((_Feedback))&0ffh,w

	btfss	status,2
	goto	i2u432_41
	goto	i2u432_40
i2u432_41:
	goto	i2l5246
i2u432_40:
	line	87
	
i2l5240:; BSR set to: 0

;main.c: 86: {
;main.c: 87: Feedback.State = Micro.State;
	movff	0+((c:_Micro)+04h),0+(_Feedback+03h)
	line	88
	
i2l5242:; BSR set to: 0

;main.c: 88: Feedback.Period = 500;
	movlw	high(01F4h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feedback+1))&0ffh
	movlw	low(01F4h)
	movlb	0	; () banked
	movwf	((_Feedback))&0ffh
	line	89
	
i2l5244:; BSR set to: 0

;main.c: 89: Feedback.Step = 0;
	movwf	(??_High_priority+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feedback+04h))&0ffh
	movf	(??_High_priority+0+0)&0ffh,c,w
	line	90
;main.c: 90: }
	goto	i2l5248
	line	91
	
i2l92:; BSR set to: 0

	line	93
	
i2l5246:; BSR set to: 0

;main.c: 91: else
;main.c: 92: {
;main.c: 93: Feedback.Period --;
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_Feedback))&0ffh
	btfss	status,0
	decf	((_Feedback+1))&0ffh
	goto	i2l5248
	line	94
	
i2l93:; BSR set to: 0

	line	96
	
i2l5248:; BSR set to: 0

;main.c: 94: }
;main.c: 96: if ((0x01 << (unsigned char) (Feedback.Step / 2)) <= Feedback.State)
	movlb	0	; () banked
	movff	0+(_Feedback+04h),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movlw	01h
	movwf	(??_High_priority+0+0)&0ffh,c
	clrf	(??_High_priority+0+0+1)&0ffh,c
	incf	(0+?___awdiv),c
	goto	i2u433_44
i2u433_45:
	bcf	status,0
	rlcf	(??_High_priority+0+0),c
	rlcf	(??_High_priority+0+1),c
i2u433_44:
	decfsz	(0+?___awdiv),c
	goto	i2u433_45
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feedback+03h))&0ffh,w
	movwf	(??_High_priority+2+0)&0ffh,c
	clrf	(??_High_priority+2+0+1)&0ffh,c

	movf	(??_High_priority+2+1),c,w
	xorlw	80h
	movwf	(??_High_priority+4+0)&0ffh,c
	movf	(??_High_priority+0+0),c,w
	subwf	(??_High_priority+2+0),c,w
	movf	(??_High_priority+0+1),c,w
	xorlw	80h
	subwfb	(??_High_priority+4+0)&0ffh,c,w
	btfss	status,0
	goto	i2u434_41
	goto	i2u434_40
i2u434_41:
	goto	i2l102
i2u434_40:
	line	98
	
i2l5250:; BSR set to: 0

;main.c: 97: {
;main.c: 98: if ((Feedback.Step & 0x01) == 0)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	(0+(_Feedback+04h))&0ffh,(0)&7
	goto	i2u435_41
	goto	i2u435_40
i2u435_41:
	goto	i2l95
i2u435_40:
	line	100
	
i2l5252:; BSR set to: 0

;main.c: 99: {
;main.c: 100: if ((Feedback.Step == 0) || (-- Feedback.Pulse == 0))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feedback+04h))&0ffh,w
	btfsc	status,2
	goto	i2u436_41
	goto	i2u436_40
i2u436_41:
	goto	i2l98
i2u436_40:
	
i2l5254:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	(0+(_Feedback+02h))&0ffh
	
	goto	i2l102
	
i2l98:; BSR set to: 0

	line	102
;main.c: 101: {
;main.c: 102: PORTCbits.RC4 = 1;
	bsf	((c:3970)),c,4	;volatile
	line	103
	
i2l5256:; BSR set to: 0

;main.c: 103: Feedback.Pulse = 50;
	movwf	(??_High_priority+0+0)&0ffh,c
	movlw	low(032h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feedback+02h))&0ffh
	movf	(??_High_priority+0+0)&0ffh,c,w
	line	104
	
i2l5258:; BSR set to: 0

;main.c: 104: Feedback.Step ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feedback+04h))&0ffh
	goto	i2l102
	line	105
	
i2l96:; BSR set to: 0

	line	106
;main.c: 105: }
;main.c: 106: }
	goto	i2l102
	line	107
	
i2l95:; BSR set to: 0

	line	109
;main.c: 107: else
;main.c: 108: {
;main.c: 109: if (-- Feedback.Pulse == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	(0+(_Feedback+02h))&0ffh
	
	goto	i2l102
	line	111
	
i2l5260:; BSR set to: 0

;main.c: 110: {
;main.c: 111: PORTCbits.RC4 = 0;
	bcf	((c:3970)),c,4	;volatile
	line	112
	
i2l5262:; BSR set to: 0

;main.c: 112: Feedback.Pulse = 50;
	movwf	(??_High_priority+0+0)&0ffh,c
	movlw	low(032h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feedback+02h))&0ffh
	movf	(??_High_priority+0+0)&0ffh,c,w
	line	113
	
i2l5264:; BSR set to: 0

;main.c: 113: Feedback.Step ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feedback+04h))&0ffh
	goto	i2l102
	line	114
	
i2l100:; BSR set to: 0

	goto	i2l102
	line	115
	
i2l99:; BSR set to: 0

	goto	i2l102
	line	116
	
i2l94:; BSR set to: 0

	line	117
;main.c: 114: }
;main.c: 115: }
;main.c: 116: }
;main.c: 117: }
	goto	i2l102
	line	118
	
i2l91:
	line	120
;main.c: 118: else
;main.c: 119: {
;main.c: 120: PORTCbits.RC4 = 0;
	bcf	((c:3970)),c,4	;volatile
	line	121
	
i2l5266:
;main.c: 121: Feedback.Period = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feedback+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Feedback))&0ffh
	goto	i2l102
	line	122
	
i2l101:; BSR set to: 0

	goto	i2l102
	line	124
	
i2l5268:; BSR set to: 0

;main.c: 122: }
;main.c: 124: return;
	goto	i2l102
	line	125
	
i2l89:; BSR set to: 0

	line	126
	
i2l102:
	movff	??_High_priority+18,tablat+0
	movff	??_High_priority+17,tblptru+0
	movff	??_High_priority+16,tblptrh+0
	movff	??_High_priority+15,tblptrl+0
	movff	??_High_priority+14,prodh+0
	movff	??_High_priority+13,prodl+0
	movff	??_High_priority+12,fsr2h+0
	movff	??_High_priority+11,fsr2l+0
	movff	??_High_priority+10,fsr1h+0
	movff	??_High_priority+9,fsr1l+0
	movff	??_High_priority+8,fsr0h+0
	movff	??_High_priority+7,fsr0l+0
	movff	??_High_priority+6,pclat+1
	movff	??_High_priority+5,pclat+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_High_priority
	__end_of_High_priority:
	signat	_High_priority,1112
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMRAM] int 
;;  sign            1    6[COMRAM] unsigned char 
;;  counter         1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_High_priority
;; This function uses a non-reentrant model
;;
psect	text56,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awdiv.c"
	line	8
global __ptext56
__ptext56:
psect	text56
	file	"C:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	14
	
i2l5164:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	15
	
i2l5166:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	i2u421_41
	goto	i2u421_40
i2u421_41:
	goto	i2l5172
i2u421_40:
	line	16
	
i2l5168:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
i2l5170:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	goto	i2l5172
	line	18
	
i2l1321:
	line	19
	
i2l5172:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	i2u422_41
	goto	i2u422_40
i2u422_41:
	goto	i2l5178
i2u422_40:
	line	20
	
i2l5174:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
i2l5176:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	i2l5178
	line	22
	
i2l1322:
	line	23
	
i2l5178:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
i2l5180:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	i2u423_41
	goto	i2u423_40
i2u423_41:
	goto	i2l5200
i2u423_40:
	line	25
	
i2l5182:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	26
	goto	i2l5186
	
i2l1325:
	line	27
	
i2l5184:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	i2l5186
	line	29
	
i2l1324:
	line	26
	
i2l5186:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	i2u424_41
	goto	i2u424_40
i2u424_41:
	goto	i2l5184
i2u424_40:
	goto	i2l5188
	
i2l1326:
	goto	i2l5188
	line	30
	
i2l1327:
	line	31
	
i2l5188:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
i2l5190:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	i2u425_41
	goto	i2u425_40
i2u425_41:
	goto	i2l5196
i2u425_40:
	line	33
	
i2l5192:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
i2l5194:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	i2l5196
	line	35
	
i2l1328:
	line	36
	
i2l5196:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
i2l5198:
	decfsz	((c:___awdiv@counter)),c
	
	goto	i2l5188
	goto	i2l5200
	
i2l1329:
	goto	i2l5200
	line	38
	
i2l1323:
	line	39
	
i2l5200:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	i2u426_41
	goto	i2u426_40
i2u426_41:
	goto	i2l5204
i2u426_40:
	line	40
	
i2l5202:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	i2l5204
	
i2l1330:
	line	41
	
i2l5204:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	i2l1331
	
i2l5206:
	line	42
	
i2l1331:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
