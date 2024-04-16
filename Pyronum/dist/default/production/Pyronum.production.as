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
	FNCALL	_feu_process,_feu_check_end_P0
	FNCALL	_feu_process,_feu_check_pause
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
	db	low(031h)
	db	low(030h)
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
       ds      122
	file	"dist/default/production\Pyronum.production.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (122 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	122
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
??_feu_check_pause:	; 0 bytes @ 0x0
??_feu_check_end_P0:	; 0 bytes @ 0x0
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
?_feu_check_pause:	; 1 bytes @ 0x0
?_feu_check_end_P0:	; 1 bytes @ 0x0
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
;!    BSS         216
;!    Persistent  6
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     45      87
;!    BANK0           128     43     106
;!    BANK1           256      0     122
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
;!    eeprom_write_array@pData	PTR unsigned char  size(2) Largest target is 122
;!		 -> Cf(BANK1[122]), 
;!
;!    eeprom_read_array@pData	PTR unsigned char  size(2) Largest target is 122
;!		 -> Cf(BANK1[122]), 
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
;! (0) _main                                                 4     4      0   54461
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
;!                   _feu_check_end_P0
;!                    _feu_check_pause
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
;! (2) _feu_check_pause                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _feu_check_end_P0                                     0     0      0       0
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
;! (1) _check_idtest                                         1     1      0    5048
;!                                             24 BANK0      1     1      0
;!                             _cf_rcv
;!               _ecran_print_one_char
;!                    _micro_config_rs
;! ---------------------------------------------------------------------------------
;! (2) _micro_config_rs                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _cf_rcv                                               4     4      0    4031
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
;! (1) _cf_check_and_display                                 5     5      0    4604
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
;! (3) _cf_check                                             2     2      0    1709
;!                                             18 BANK0      2     2      0
;!                        _cf_checkout
;!                      _cf_checkrange
;!                        _cf_checksum
;! ---------------------------------------------------------------------------------
;! (4) _cf_checksum                                         18    18      0     328
;!                                              0 BANK0     18    18      0
;! ---------------------------------------------------------------------------------
;! (4) _cf_checkrange                                        3     3      0     198
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
;!     _feu_check_end_P0
;!     _feu_check_pause
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
;!BANK1              100      0      7A       7       47.7%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     2B      6A       5       82.8%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     2D      57       1       68.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     13B      15        0.0%
;!DATA                 0      0     13B       3        0.0%
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
	
l7038:
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
	
l7040:; BSR set to: 0

;main.c: 137: hw_config();
	call	_hw_config	;wreg free
	line	138
	
l7042:
;main.c: 138: micro_config();
	call	_micro_config	;wreg free
	line	141
	
l7044:
;main.c: 141: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	144
	
l7046:
;main.c: 144: if (check_program_0() == 0)
	call	_check_program_0	;wreg free
	iorlw	0
	btfss	status,2
	goto	u6761
	goto	u6760
u6761:
	goto	l7054
u6760:
	line	147
	
l7048:
;main.c: 145: {
;main.c: 147: check_idtest();
	call	_check_idtest	;wreg free
	line	150
	
l7050:
;main.c: 150: check_bpon();
	call	_check_bpon	;wreg free
	line	153
	
l7052:
;main.c: 153: cf_check_and_display();
	call	_cf_check_and_display	;wreg free
	goto	l7054
	line	154
	
l105:
	line	156
	
l7054:
;main.c: 154: }
;main.c: 156: bouton_init();
	call	_bouton_init	;wreg free
	goto	l7056
	line	158
;main.c: 158: while (1)
	
l106:
	line	160
	
l7056:
;main.c: 159: {
;main.c: 160: bouton_refresh();
	call	_bouton_refresh	;wreg free
	line	161
	
l7058:
;main.c: 161: ecran_refresh();
	call	_ecran_refresh	;wreg free
	line	163
;main.c: 163: switch (Micro.Phase)
	goto	l7070
	line	165
;main.c: 164: {
;main.c: 165: case 0x00:
	
l108:
	line	166
	
l7060:
;main.c: 166: micro_wait();
	call	_micro_wait	;wreg free
	line	167
;main.c: 167: break;
	goto	l7056
	line	168
;main.c: 168: case 0x01:
	
l110:
	line	169
	
l7062:
;main.c: 169: test_process();
	call	_test_process	;wreg free
	line	170
;main.c: 170: break;
	goto	l7056
	line	171
;main.c: 171: case 0x02:
	
l111:
	line	172
	
l7064:
;main.c: 172: armement_process();
	call	_armement_process	;wreg free
	line	173
;main.c: 173: break;
	goto	l7056
	line	174
;main.c: 174: case 0x03:
	
l112:
	line	175
	
l7066:
;main.c: 175: feu_process();
	call	_feu_process	;wreg free
	line	176
;main.c: 176: feu_check_bp();
	call	_feu_check_bp	;wreg free
	line	177
;main.c: 177: break;
	goto	l7056
	line	178
	
l7068:
;main.c: 178: }
	goto	l7056
	line	163
	
l107:
	
l7070:
	movf	(0+((c:_Micro)+02h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l7060
	xorlw	1^0	; case 1
	skipnz
	goto	l7062
	xorlw	2^1	; case 2
	skipnz
	goto	l7064
	xorlw	3^2	; case 3
	skipnz
	goto	l7066
	goto	l7056

	line	178
	
l109:
	goto	l7056
	line	179
	
l113:
	line	158
	goto	l7056
	
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
	
l6640:
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
	goto	l6838
	line	109
;test.c: 108: {
;test.c: 109: case 0x01 :
	
l564:; BSR set to: 0

	line	110
;test.c: 110: if (Bouton[Bp_IdTest].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+05h))&0ffh,1
	goto	u6081
	goto	u6080
u6081:
	goto	l624
u6080:
	line	112
	
l6642:; BSR set to: 0

;test.c: 111: {
;test.c: 112: Test.Step = 0x02;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l624
	line	113
	
l565:; BSR set to: 0

	line	114
;test.c: 113: }
;test.c: 114: break;
	goto	l624
	line	116
;test.c: 116: case 0x02:
	
l567:; BSR set to: 0

	line	117
	
l6644:; BSR set to: 0

;test.c: 117: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	119
	
l6646:
;test.c: 119: Test.Cpt = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Test)+01h)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	121
	
l6648:; BSR set to: 0

;test.c: 121: temp = check_UAlim();
	call	_check_UAlim	;wreg free
	movlb	0	; () banked
	movff	0+?_check_UAlim,(test_process@temp)
	movlb	0	; () banked
	movff	1+?_check_UAlim,(test_process@temp+1)
	line	123
	
l6650:; BSR set to: 0

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
	
l6652:; BSR set to: 0

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
	
l6654:
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
	
l6656:; BSR set to: 0

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
	
l6658:; BSR set to: 0

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
	
l6660:; BSR set to: 0

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
	
l6662:; BSR set to: 0

;test.c: 132: Test.Step = 0x03;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(03h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	133
;test.c: 133: break;
	goto	l624
	line	134
;test.c: 134: case 0x03 :
	
l568:; BSR set to: 0

	line	135
;test.c: 135: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6091
	goto	u6090
u6091:
	goto	l624
u6090:
	line	137
	
l6664:; BSR set to: 0

;test.c: 136: {
;test.c: 137: if (Micro.Mod.P_0 == 0) {Test.Step = 0x04;}
	btfsc	(0+((c:_Micro)+05h)),c,0
	goto	u6101
	goto	u6100
u6101:
	goto	l6668
u6100:
	
l6666:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6670
	line	138
	
l570:; BSR set to: 0

	
l6668:; BSR set to: 0

;test.c: 138: else {Test.Step = 0x0A;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ah)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6670
	
l571:; BSR set to: 0

	line	140
	
l6670:; BSR set to: 0

;test.c: 140: ecran_blank();
	call	_ecran_blank	;wreg free
	line	141
	
l6672:
;test.c: 141: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	142
	
l6674:
;test.c: 142: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	143
	
l569:
	line	144
;test.c: 143: }
;test.c: 144: break;
	goto	l624
	line	145
;test.c: 145: case 0x04:
	
l572:
	line	146
	
l6676:
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
	goto	u6111
	goto	u6110
u6111:
	goto	l6680
u6110:
	line	149
	
l6678:; BSR set to: 1

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
	goto	l624
	line	151
	
l573:; BSR set to: 0

	
l6680:
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
	goto	u6121
	goto	u6120
u6121:
	goto	l624
u6120:
	line	153
	
l6682:; BSR set to: 0

;test.c: 152: {
;test.c: 153: if (Cf.Data[Test.Cpt*3] == 99)
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
	movlw	(063h)&0ffh
	cpfseq	indf2
	goto	u6131
	goto	u6130
u6131:
	goto	l6686
u6130:
	line	155
	
l6684:; BSR set to: 1

;test.c: 154: {
;test.c: 155: Test.Step = 0x15;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(015h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	156
;test.c: 156: }
	goto	l6690
	line	157
	
l576:; BSR set to: 0

	line	159
	
l6686:
;test.c: 157: else
;test.c: 158: {
;test.c: 159: register_write(Cf.Data[Test.Cpt*3]);
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
	line	160
	
l6688:
;test.c: 160: Test.Step = 0x05;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(05h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6690
	line	161
	
l577:; BSR set to: 0

	line	162
	
l6690:; BSR set to: 0

;test.c: 161: }
;test.c: 162: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	163
	
l575:; BSR set to: 0

	goto	l624
	line	164
	
l574:; BSR set to: 0

;test.c: 163: }
;test.c: 164: break;
	goto	l624
	line	165
;test.c: 165: case 0x05:
	
l578:; BSR set to: 0

	line	166
	
l6692:; BSR set to: 0

;test.c: 166: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
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
	goto	u6141
	goto	u6140
u6141:
	goto	l624
u6140:
	line	168
	
l6694:; BSR set to: 0

;test.c: 167: {
;test.c: 168: temp = check_UInfla();
	call	_check_UInfla	;wreg free
	movlb	0	; () banked
	movff	0+?_check_UInfla,(test_process@temp)
	movlb	0	; () banked
	movff	1+?_check_UInfla,(test_process@temp+1)
	line	170
	
l6696:; BSR set to: 0

;test.c: 170: if (temp > 85) {Test.Step = 0x07;}
	movlw	056h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((test_process@temp))&0ffh,w
	movlw	0
	movlb	0	; () banked
	subwfb	((test_process@temp+1))&0ffh,w
	btfss	status,0
	goto	u6151
	goto	u6150
u6151:
	goto	l6700
u6150:
	
l6698:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(07h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6702
	line	171
	
l580:; BSR set to: 0

	
l6700:; BSR set to: 0

;test.c: 171: else {Test.Step = 0x06;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(06h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6702
	
l581:; BSR set to: 0

	line	174
	
l6702:; BSR set to: 0

;test.c: 174: ecran_print_num(Cf.Data[Test.Cpt*3]);
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
	line	175
	
l6704:
;test.c: 175: register_write(0);
	movlw	(0)&0ffh
	
	call	_register_write
	line	177
	
l6706:
;test.c: 177: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	178
	
l579:
	line	179
;test.c: 178: }
;test.c: 179: break;
	goto	l624
	line	181
;test.c: 181: case 0x15:
	
l582:
	line	182
	
l6708:
;test.c: 182: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
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
	goto	u6161
	goto	u6160
u6161:
	goto	l624
u6160:
	line	184
	
l6710:; BSR set to: 0

;test.c: 183: {
;test.c: 184: Test.Step = 0x16;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(016h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	187
	
l6712:; BSR set to: 0

;test.c: 187: ecran_print_num(Cf.Data[Test.Cpt*3]);
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
	line	188
	
l6714:
;test.c: 188: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	189
	
l583:
	line	190
;test.c: 189: }
;test.c: 190: break;
	goto	l624
	line	191
;test.c: 191: case 0x16:
	
l584:
	line	192
	
l6716:
;test.c: 192: if ((((unsigned short) (Cptms - Test.Time) > 100) ? 1 : 0))
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
	movlw	065h
	movlb	0	; () banked
	subwf	(??_test_process+0+0)&0ffh,w
	movlw	0
	subwfb	(??_test_process+0+1)&0ffh,w
	btfss	status,0
	goto	u6171
	goto	u6170
u6171:
	goto	l624
u6170:
	line	194
	
l6718:; BSR set to: 0

;test.c: 193: {
;test.c: 194: if (++Test.Cpt > (32 + 5 - 1)) {Test.Step = 0x08;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(025h-1)
	cpfsgt	indf2
	goto	u6181
	goto	u6180
u6181:
	goto	l6722
u6180:
	
l6720:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(08h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6724
	line	195
	
l586:; BSR set to: 0

	
l6722:; BSR set to: 0

;test.c: 195: else {Test.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6724
	
l587:; BSR set to: 0

	line	196
	
l6724:; BSR set to: 0

;test.c: 196: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	197
	
l6726:
;test.c: 197: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	198
	
l585:
	line	199
;test.c: 198: }
;test.c: 199: break;
	goto	l624
	line	201
;test.c: 201: case 0x06:
	
l588:
	line	202
	
l6728:
;test.c: 202: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
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
	goto	u6191
	goto	u6190
u6191:
	goto	l624
u6190:
	line	204
	
l6730:; BSR set to: 0

;test.c: 203: {
;test.c: 204: if (++Test.Cpt > (32 + 5 - 1)) {Test.Step = 0x08;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(025h-1)
	cpfsgt	indf2
	goto	u6201
	goto	u6200
u6201:
	goto	l6734
u6200:
	
l6732:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(08h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6736
	line	205
	
l590:; BSR set to: 0

	
l6734:; BSR set to: 0

;test.c: 205: else {Test.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6736
	
l591:; BSR set to: 0

	line	206
	
l6736:; BSR set to: 0

;test.c: 206: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	207
	
l6738:
;test.c: 207: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	208
	
l589:
	line	209
;test.c: 208: }
;test.c: 209: break;
	goto	l624
	line	210
;test.c: 210: case 0x07:
	
l592:; BSR set to: 0

	line	212
;test.c: 211: if ( (Bouton[Bp_IdTest].State == 0)
;test.c: 212: && ((((unsigned short) (Cptms - Test.Time) > 500) ? 1 : 0)))
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6211
	goto	u6210
u6211:
	goto	l624
u6210:
	
l6740:; BSR set to: 0

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
	goto	u6221
	goto	u6220
u6221:
	goto	l624
u6220:
	line	214
	
l6742:; BSR set to: 0

;test.c: 213: {
;test.c: 214: if (++Test.Cpt > (32 + 5 - 1)) {Test.Step = 0x08;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(025h-1)
	cpfsgt	indf2
	goto	u6231
	goto	u6230
u6231:
	goto	l6746
u6230:
	
l6744:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(08h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6748
	line	215
	
l594:; BSR set to: 0

	
l6746:; BSR set to: 0

;test.c: 215: else {Test.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(04h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6748
	
l595:; BSR set to: 0

	line	216
	
l6748:; BSR set to: 0

;test.c: 216: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	217
	
l6750:
;test.c: 217: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	218
	
l593:
	line	219
;test.c: 218: }
;test.c: 219: break;
	goto	l624
	line	220
;test.c: 220: case 0x08:
	
l596:
	line	221
	
l6752:
;test.c: 221: if (Test.Cpt != 0)
	movf	(0+((c:_Test)+01h)),c,w
	btfsc	status,2
	goto	u6241
	goto	u6240
u6241:
	goto	l6756
u6240:
	line	223
	
l6754:
;test.c: 222: {
;test.c: 223: ecran_print_num(Cf.Data[(32 * 3 + 5 * 3)]);
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+06Fh))&0ffh,w	;volatile
	
	call	_ecran_print_num
	line	224
;test.c: 224: }
	goto	l598
	line	225
	
l597:
	line	227
	
l6756:
;test.c: 225: else
;test.c: 226: {
;test.c: 227: Ecran.Digit[2] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	228
;test.c: 228: Ecran.Digit[3] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	229
	
l598:
	line	231
;test.c: 229: }
;test.c: 231: Ecran.Digit[0] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	232
;test.c: 232: Ecran.Digit[1] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	234
	
l6758:; BSR set to: 0

;test.c: 234: Ecran.Digits = Ecran.Digit;
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

	line	235
	
l6760:; BSR set to: 0

;test.c: 235: Test.Step = 0x09;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(09h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	236
;test.c: 236: break;
	goto	l624
	line	237
;test.c: 237: case 0x09:
	
l599:; BSR set to: 0

	line	238
;test.c: 238: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6251
	goto	u6250
u6251:
	goto	l624
u6250:
	line	240
	
l6762:; BSR set to: 0

;test.c: 239: {
;test.c: 240: Test.Step = 0x10;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(010h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	242
	
l6764:; BSR set to: 0

;test.c: 242: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	243
	
l600:; BSR set to: 0

	line	244
;test.c: 243: }
;test.c: 244: break;
	goto	l624
	line	245
;test.c: 245: case 0x0A:
	
l601:; BSR set to: 0

	line	246
	
l6766:; BSR set to: 0

;test.c: 246: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
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
	goto	u6261
	goto	u6260
u6261:
	goto	l624
u6260:
	line	248
	
l6768:; BSR set to: 0

;test.c: 247: {
;test.c: 248: register_write((unsigned char) (Test.Cpt + 1));
	incf	(0+((c:_Test)+01h)),c,w
	
	call	_register_write
	line	249
	
l6770:
;test.c: 249: Test.Step = 0x0B;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Bh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	250
	
l6772:; BSR set to: 0

;test.c: 250: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	251
	
l602:; BSR set to: 0

	line	252
;test.c: 251: }
;test.c: 252: break;
	goto	l624
	line	253
;test.c: 253: case 0x0B:
	
l603:; BSR set to: 0

	line	254
	
l6774:; BSR set to: 0

;test.c: 254: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
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
	goto	u6271
	goto	u6270
u6271:
	goto	l624
u6270:
	line	256
	
l6776:; BSR set to: 0

;test.c: 255: {
;test.c: 256: temp = check_UInfla();
	call	_check_UInfla	;wreg free
	movlb	0	; () banked
	movff	0+?_check_UInfla,(test_process@temp)
	movlb	0	; () banked
	movff	1+?_check_UInfla,(test_process@temp+1)
	line	259
	
l6778:; BSR set to: 0

;test.c: 259: if (temp > 85) {Test.Step = 0x0D;}
	movlw	056h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((test_process@temp))&0ffh,w
	movlw	0
	movlb	0	; () banked
	subwfb	((test_process@temp+1))&0ffh,w
	btfss	status,0
	goto	u6281
	goto	u6280
u6281:
	goto	l6782
u6280:
	
l6780:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Dh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6784
	line	260
	
l605:; BSR set to: 0

	
l6782:; BSR set to: 0

;test.c: 260: else {Test.Step = 0x0C;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ch)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6784
	
l606:; BSR set to: 0

	line	263
	
l6784:; BSR set to: 0

;test.c: 263: ecran_print_num((unsigned char) (Test.Cpt + 1));
	incf	(0+((c:_Test)+01h)),c,w
	
	call	_ecran_print_num
	line	264
	
l6786:
;test.c: 264: register_write(0);
	movlw	(0)&0ffh
	
	call	_register_write
	line	266
	
l6788:
;test.c: 266: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	267
	
l604:
	line	268
;test.c: 267: }
;test.c: 268: break;
	goto	l624
	line	269
;test.c: 269: case 0x0C:
	
l607:
	line	270
	
l6790:
;test.c: 270: if ((((unsigned short) (Cptms - Test.Time) > 20) ? 1 : 0))
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
	goto	u6291
	goto	u6290
u6291:
	goto	l624
u6290:
	line	272
	
l6792:; BSR set to: 0

;test.c: 271: {
;test.c: 272: if (++Test.Cpt > (32 - 1)) {Test.Step = 0x0E;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(020h-1)
	cpfsgt	indf2
	goto	u6301
	goto	u6300
u6301:
	goto	l6796
u6300:
	
l6794:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Eh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6798
	line	273
	
l609:; BSR set to: 0

	
l6796:; BSR set to: 0

;test.c: 273: else {Test.Step = 0x0A;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ah)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6798
	
l610:; BSR set to: 0

	line	274
	
l6798:; BSR set to: 0

;test.c: 274: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	275
	
l6800:
;test.c: 275: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	276
	
l608:
	line	277
;test.c: 276: }
;test.c: 277: break;
	goto	l624
	line	278
;test.c: 278: case 0x0D:
	
l611:; BSR set to: 0

	line	280
;test.c: 279: if ( (Bouton[Bp_IdTest].State == 0)
;test.c: 280: && ((((unsigned short) (Cptms - Test.Time) > 500) ? 1 : 0)))
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6311
	goto	u6310
u6311:
	goto	l624
u6310:
	
l6802:; BSR set to: 0

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
	goto	u6321
	goto	u6320
u6321:
	goto	l624
u6320:
	line	282
	
l6804:; BSR set to: 0

;test.c: 281: {
;test.c: 282: if (++Test.Cpt > (32 - 1)) {Test.Step = 0x0E;}
	lfsr	2,(c:_Test)+01h
	incf	indf2

	movlw	(020h-1)
	cpfsgt	indf2
	goto	u6331
	goto	u6330
u6331:
	goto	l6808
u6330:
	
l6806:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Eh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6810
	line	283
	
l613:; BSR set to: 0

	
l6808:; BSR set to: 0

;test.c: 283: else {Test.Step = 0x0A;}
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Ah)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l6810
	
l614:; BSR set to: 0

	line	284
	
l6810:; BSR set to: 0

;test.c: 284: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	285
	
l6812:
;test.c: 285: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	286
	
l612:
	line	287
;test.c: 286: }
;test.c: 287: break;
	goto	l624
	line	288
;test.c: 288: case 0x0E:
	
l615:
	line	289
	
l6814:
;test.c: 289: if (Test.Cpt != 0)
	movf	(0+((c:_Test)+01h)),c,w
	btfsc	status,2
	goto	u6341
	goto	u6340
u6341:
	goto	l6818
u6340:
	line	291
	
l6816:
;test.c: 290: {
;test.c: 291: ecran_print_num(Test.Cpt);
	movf	(0+((c:_Test)+01h)),c,w
	
	call	_ecran_print_num
	line	292
;test.c: 292: }
	goto	l617
	line	293
	
l616:
	line	295
	
l6818:
;test.c: 293: else
;test.c: 294: {
;test.c: 295: Ecran.Digit[2] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	296
;test.c: 296: Ecran.Digit[3] = 0;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	297
	
l617:
	line	299
;test.c: 297: }
;test.c: 299: Ecran.Digit[0] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	300
;test.c: 300: Ecran.Digit[1] = '-';
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	302
	
l6820:; BSR set to: 0

;test.c: 302: Ecran.Digits = Ecran.Digit;
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

	line	303
	
l6822:; BSR set to: 0

;test.c: 303: Test.Step = 0x0F;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0Fh)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	304
;test.c: 304: break;
	goto	l624
	line	305
;test.c: 305: case 0x0F:
	
l618:; BSR set to: 0

	line	306
;test.c: 306: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6351
	goto	u6350
u6351:
	goto	l624
u6350:
	line	308
	
l6824:; BSR set to: 0

;test.c: 307: {
;test.c: 308: Test.Step = 0x10;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(010h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	310
	
l6826:; BSR set to: 0

;test.c: 310: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	goto	l624
	line	311
	
l619:; BSR set to: 0

	line	312
;test.c: 311: }
;test.c: 312: break;
	goto	l624
	line	313
;test.c: 313: case 0x10:
	
l620:; BSR set to: 0

	line	314
	
l6828:; BSR set to: 0

;test.c: 314: if ((((unsigned short) (Cptms - Test.Time) > 1000) ? 1 : 0))
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
	goto	u6361
	goto	u6360
u6361:
	goto	l624
u6360:
	line	316
	
l6830:; BSR set to: 0

;test.c: 315: {
;test.c: 316: Test.Step = 0x11;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(011h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	line	318
	
l6832:; BSR set to: 0

;test.c: 318: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l624
	line	319
	
l621:
	line	320
;test.c: 319: }
;test.c: 320: break;
	goto	l624
	line	321
;test.c: 321: case 0x11:
	
l622:; BSR set to: 0

	line	322
;test.c: 322: if (Bouton[Bp_IdTest].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+05h))&0ffh,1
	goto	u6371
	goto	u6370
u6371:
	goto	l624
u6370:
	line	324
	
l6834:; BSR set to: 0

;test.c: 323: {
;test.c: 324: Micro.Phase = 0x00;
	movlb	0	; () banked
	movwf	(??_test_process+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_test_process+0+0)&0ffh,w
	goto	l624
	line	325
	
l623:; BSR set to: 0

	line	326
;test.c: 325: }
;test.c: 326: break;
	goto	l624
	line	327
	
l6836:; BSR set to: 0

;test.c: 327: }
	goto	l624
	line	107
	
l563:; BSR set to: 0

	
l6838:; BSR set to: 0

	movf	((c:_Test)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 19, Range of values is 1 to 22
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           58    30 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l564
	xorlw	2^1	; case 2
	skipnz
	goto	l6644
	xorlw	3^2	; case 3
	skipnz
	goto	l568
	xorlw	4^3	; case 4
	skipnz
	goto	l6676
	xorlw	5^4	; case 5
	skipnz
	goto	l6692
	xorlw	6^5	; case 6
	skipnz
	goto	l6728
	xorlw	7^6	; case 7
	skipnz
	goto	l592
	xorlw	8^7	; case 8
	skipnz
	goto	l6752
	xorlw	9^8	; case 9
	skipnz
	goto	l599
	xorlw	10^9	; case 10
	skipnz
	goto	l6766
	xorlw	11^10	; case 11
	skipnz
	goto	l6774
	xorlw	12^11	; case 12
	skipnz
	goto	l6790
	xorlw	13^12	; case 13
	skipnz
	goto	l611
	xorlw	14^13	; case 14
	skipnz
	goto	l6814
	xorlw	15^14	; case 15
	skipnz
	goto	l618
	xorlw	16^15	; case 16
	skipnz
	goto	l6828
	xorlw	17^16	; case 17
	skipnz
	goto	l622
	xorlw	21^17	; case 21
	skipnz
	goto	l6708
	xorlw	22^21	; case 22
	skipnz
	goto	l6716
	goto	l624

	line	327
	
l566:; BSR set to: 0

	line	330
;test.c: 329: return ret;
;	Return value of _test_process is never used
	
l624:
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
	
l6294:
;test.c: 82: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((check_UInfla@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((check_UInfla@temp))&0ffh
	line	84
	
l6296:; BSR set to: 0

;test.c: 84: if (PORTCbits.RC5 == 1)
	btfss	((c:3970)),c,5	;volatile
	goto	u5641
	goto	u5640
u5641:
	goto	l6300
u5640:
	line	86
	
l6298:; BSR set to: 0

;test.c: 85: {
;test.c: 86: PORTBbits.RB1 = 1;
	bsf	((c:3969)),c,1	;volatile
	line	87
;test.c: 87: PORTAbits.RA5 = 1;
	bsf	((c:3968)),c,5	;volatile
	goto	l6300
	line	88
	
l559:; BSR set to: 0

	line	90
	
l6300:; BSR set to: 0

;test.c: 88: }
;test.c: 90: temp = ana_read(1);
	movlw	(01h)&0ffh
	
	call	_ana_read
	movlb	0	; () banked
	movff	0+?_ana_read,(check_UInfla@temp)
	movlb	0	; () banked
	movff	1+?_ana_read,(check_UInfla@temp+1)
	line	92
	
l6302:; BSR set to: 0

;test.c: 92: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	93
	
l6304:; BSR set to: 0

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
	
l6306:
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
	
l6276:
;test.c: 66: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((check_UAlim@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((check_UAlim@temp))&0ffh
	line	68
	
l6278:; BSR set to: 0

;test.c: 68: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	69
	
l6280:; BSR set to: 0

;test.c: 69: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	71
	
l6282:; BSR set to: 0

;test.c: 71: temp = ana_read(0);
	movlw	(0)&0ffh
	
	call	_ana_read
	movlb	0	; () banked
	movff	0+?_ana_read,(check_UAlim@temp)
	movlb	0	; () banked
	movff	1+?_ana_read,(check_UAlim@temp+1)
	line	73
	
l6284:; BSR set to: 0

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
	
l6286:
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
	
l6288:
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
	
l6290:
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
	
l6292:
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
	
l6590:
;micro.c: 93: switch (Micro.Step)
	goto	l6638
	line	95
;micro.c: 94: {
;micro.c: 95: case 0x00:
	
l823:
	line	96
;micro.c: 96: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6001
	goto	u6000
u6001:
	goto	l841
u6000:
	line	98
	
l6592:; BSR set to: 0

;micro.c: 97: {
;micro.c: 98: Micro.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(01h)
	movwf	(0+((c:_Micro)+03h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	99
	
l6594:; BSR set to: 0

;micro.c: 99: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l841
	line	100
	
l824:
	line	101
;micro.c: 100: }
;micro.c: 101: break;
	goto	l841
	line	102
;micro.c: 102: case 0x01:
	
l826:
	line	103
;micro.c: 103: if (Bouton[Bp_IdTest].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+05h))&0ffh,1
	goto	u6011
	goto	u6010
u6011:
	goto	l841
u6010:
	line	105
	
l6596:; BSR set to: 0

;micro.c: 104: {
;micro.c: 105: Micro.Step = 0x03;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(03h)
	movwf	(0+((c:_Micro)+03h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	goto	l841
	line	106
	
l827:; BSR set to: 0

	line	107
;micro.c: 106: }
;micro.c: 107: break;
	goto	l841
	line	108
;micro.c: 108: case 0x03:
	
l828:
	line	109
;micro.c: 109: if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6021
	goto	u6020
u6021:
	goto	l829
u6020:
	line	111
	
l6598:; BSR set to: 0

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
	
l6600:; BSR set to: 0

;micro.c: 113: check_comutest(0);
	movlw	(0)&0ffh
	
	call	_check_comutest
	line	114
	
l6602:
;micro.c: 114: ecran_blank();
	call	_ecran_blank	;wreg free
	line	115
;micro.c: 115: }
	goto	l6610
	line	116
	
l829:; BSR set to: 0

;micro.c: 116: else if (Bouton[Bp_On].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+02h))&0ffh,1
	goto	u6031
	goto	u6030
u6031:
	goto	l6610
u6030:
	line	118
	
l6604:; BSR set to: 0

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
	
l6606:; BSR set to: 0

;micro.c: 120: check_comutest(1);
	movlw	(01h)&0ffh
	
	call	_check_comutest
	line	121
	
l6608:
;micro.c: 121: ecran_blank();
	call	_ecran_blank	;wreg free
	goto	l6610
	line	122
	
l831:
	goto	l6610
	line	124
	
l830:
	
l6610:
;micro.c: 122: }
;micro.c: 124: if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6041
	goto	u6040
u6041:
	goto	l841
u6040:
	line	126
	
l6612:; BSR set to: 0

;micro.c: 125: {
;micro.c: 126: unsigned short tempTime = Cptms;
	movff	(c:_Cptms),(micro_wait@tempTime)	;volatile
	movff	(c:_Cptms+1),(micro_wait@tempTime+1)	;volatile
	line	128
	
l6614:; BSR set to: 0

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
	
l6616:
;micro.c: 132: Micro.State = 0x08;
	movlb	0	; () banked
	movwf	(??_micro_wait+0+0)&0ffh
	movlw	low(08h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_micro_wait+0+0)&0ffh,w
	line	134
;micro.c: 134: while (PORTBbits.RB0 == 0)
	goto	l6630
	
l834:; BSR set to: 0

	line	136
	
l6618:; BSR set to: 0

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
	goto	u6051
	goto	u6050
u6051:
	goto	l6630
u6050:
	line	138
	
l6620:; BSR set to: 0

;micro.c: 137: {
;micro.c: 138: tempTime = Cptms;
	movff	(c:_Cptms),(micro_wait@tempTime)	;volatile
	movff	(c:_Cptms+1),(micro_wait@tempTime+1)	;volatile
	line	139
	
l6622:; BSR set to: 0

;micro.c: 139: Micro.State = ((Micro.State == 0x08) ? 0x00 : 0x08);
	movf	(0+((c:_Micro)+04h)),c,w
	xorlw	8

	btfsc	status,2
	goto	u6061
	goto	u6060
u6061:
	goto	l6626
u6060:
	
l6624:; BSR set to: 0

	movlw	high(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_micro_wait$2387+1))&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movwf	((_micro_wait$2387))&0ffh
	goto	l6628
	
l837:; BSR set to: 0

	
l6626:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_micro_wait$2387+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_micro_wait$2387))&0ffh
	goto	l6628
	
l839:; BSR set to: 0

	
l6628:; BSR set to: 0

	movff	(_micro_wait$2387),0+((c:_Micro)+04h)
	goto	l6630
	line	140
	
l835:; BSR set to: 0

	goto	l6630
	line	141
	
l833:; BSR set to: 0

	line	134
	
l6630:; BSR set to: 0

	btfss	((c:3969)),c,0	;volatile
	goto	u6071
	goto	u6070
u6071:
	goto	l6618
u6070:
	goto	l6632
	
l840:; BSR set to: 0

	line	143
	
l6632:; BSR set to: 0

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
	
l6634:; BSR set to: 0

;micro.c: 145: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l841
	line	146
	
l832:
	line	148
;micro.c: 146: }
;micro.c: 148: break;
	goto	l841
	line	149
	
l6636:
;micro.c: 149: }
	goto	l841
	line	93
	
l822:
	
l6638:
	movf	(0+((c:_Micro)+03h)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l823
	xorlw	1^0	; case 1
	skipnz
	goto	l826
	xorlw	3^1	; case 3
	skipnz
	goto	l828
	goto	l841

	line	149
	
l825:
	line	150
	
l841:
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
	
l6466:
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
	
l6468:
;micro.c: 82: TMR0IP = 1;
	bsf	c:(32650/8),(32650)&7	;volatile
	line	83
	
l6470:
;micro.c: 83: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	84
	
l6472:
;micro.c: 84: IPEN = 1;
	bsf	c:(32391/8),(32391)&7	;volatile
	line	85
	
l6474:
;micro.c: 85: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	87
	
l6476:
;micro.c: 87: Micro.Time = Cptms;
	movff	(c:_Cptms),(c:_Micro)	;volatile
	movff	(c:_Cptms+1),(c:_Micro+1)	;volatile
	line	88
	
l6478:
;micro.c: 88: Ecran.tRate = 255;
	movlb	0	; () banked
	movlb	0	; () banked
	setf	(0+(_Ecran+0Ch))&0ffh
	line	89
	
l819:; BSR set to: 0

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
	
l6398:
;hardware.c: 6: ADCON1 = 0x07;
	movlw	low(07h)
	movwf	((c:4033)),c	;volatile
	line	10
;hardware.c: 10: PORTA = 0;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	12
	
l6400:
;hardware.c: 12: TRISAbits.TRISA0 = 1;
	bsf	((c:3986)),c,0	;volatile
	line	13
	
l6402:
;hardware.c: 13: TRISAbits.TRISA1 = 1;
	bsf	((c:3986)),c,1	;volatile
	line	14
	
l6404:
;hardware.c: 14: TRISAbits.TRISA2 = 0;
	bcf	((c:3986)),c,2	;volatile
	line	15
	
l6406:
;hardware.c: 15: TRISAbits.TRISA3 = 1;
	bsf	((c:3986)),c,3	;volatile
	line	16
	
l6408:
;hardware.c: 16: TRISAbits.TRISA4 = 1;
	bsf	((c:3986)),c,4	;volatile
	line	17
	
l6410:
;hardware.c: 17: TRISAbits.TRISA5 = 0;
	bcf	((c:3986)),c,5	;volatile
	line	20
;hardware.c: 20: PORTB = 0;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	22
	
l6412:
;hardware.c: 22: TRISBbits.TRISB0 = 1;
	bsf	((c:3987)),c,0	;volatile
	line	23
	
l6414:
;hardware.c: 23: TRISBbits.TRISB1 = 0;
	bcf	((c:3987)),c,1	;volatile
	line	24
	
l6416:
;hardware.c: 24: TRISBbits.TRISB2 = 0;
	bcf	((c:3987)),c,2	;volatile
	line	25
	
l6418:
;hardware.c: 25: TRISBbits.TRISB3 = 0;
	bcf	((c:3987)),c,3	;volatile
	line	26
	
l6420:
;hardware.c: 26: TRISBbits.TRISB4 = 0;
	bcf	((c:3987)),c,4	;volatile
	line	27
	
l6422:
;hardware.c: 27: TRISBbits.TRISB5 = 0;
	bcf	((c:3987)),c,5	;volatile
	line	28
	
l6424:
;hardware.c: 28: TRISBbits.TRISB6 = 1;
	bsf	((c:3987)),c,6	;volatile
	line	29
	
l6426:
;hardware.c: 29: TRISBbits.TRISB7 = 1;
	bsf	((c:3987)),c,7	;volatile
	line	32
;hardware.c: 32: PORTC = 0;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	34
	
l6428:
;hardware.c: 34: TRISCbits.TRISC0 = 0;
	bcf	((c:3988)),c,0	;volatile
	line	35
	
l6430:
;hardware.c: 35: TRISCbits.TRISC1 = 0;
	bcf	((c:3988)),c,1	;volatile
	line	36
	
l6432:
;hardware.c: 36: TRISCbits.TRISC2 = 0;
	bcf	((c:3988)),c,2	;volatile
	line	37
	
l6434:
;hardware.c: 37: TRISCbits.TRISC3 = 0;
	bcf	((c:3988)),c,3	;volatile
	line	38
	
l6436:
;hardware.c: 38: TRISCbits.TRISC4 = 0;
	bcf	((c:3988)),c,4	;volatile
	line	39
	
l6438:
;hardware.c: 39: TRISCbits.TRISC5 = 1;
	bsf	((c:3988)),c,5	;volatile
	line	40
	
l6440:
;hardware.c: 40: TRISCbits.TRISC6 = 0;
	bcf	((c:3988)),c,6	;volatile
	line	41
	
l6442:
;hardware.c: 41: TRISCbits.TRISC7 = 1;
	bsf	((c:3988)),c,7	;volatile
	line	44
;hardware.c: 44: PORTD = 0;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	46
	
l6444:
;hardware.c: 46: TRISDbits.TRISD0 = 0;
	bcf	((c:3989)),c,0	;volatile
	line	47
	
l6446:
;hardware.c: 47: TRISDbits.TRISD1 = 0;
	bcf	((c:3989)),c,1	;volatile
	line	48
	
l6448:
;hardware.c: 48: TRISDbits.TRISD2 = 0;
	bcf	((c:3989)),c,2	;volatile
	line	49
	
l6450:
;hardware.c: 49: TRISDbits.TRISD3 = 0;
	bcf	((c:3989)),c,3	;volatile
	line	50
	
l6452:
;hardware.c: 50: TRISDbits.TRISD4 = 0;
	bcf	((c:3989)),c,4	;volatile
	line	51
	
l6454:
;hardware.c: 51: TRISDbits.TRISD5 = 0;
	bcf	((c:3989)),c,5	;volatile
	line	52
	
l6456:
;hardware.c: 52: TRISDbits.TRISD6 = 0;
	bcf	((c:3989)),c,6	;volatile
	line	53
	
l6458:
;hardware.c: 53: TRISDbits.TRISD7 = 0;
	bcf	((c:3989)),c,7	;volatile
	line	56
;hardware.c: 56: PORTE = 0;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	58
	
l6460:
;hardware.c: 58: TRISEbits.TRISE0 = 1;
	bsf	((c:3990)),c,0	;volatile
	line	59
	
l6462:
;hardware.c: 59: TRISEbits.TRISE1 = 1;
	bsf	((c:3990)),c,1	;volatile
	line	60
	
l6464:
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
;;		line 110 in file "feu.c"
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
;;		_feu_check_end_P0
;;		_feu_check_pause
;;		_feu_tir
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"feu.c"
	line	110
global __ptext7
__ptext7:
psect	text7
	file	"feu.c"
	line	110
	global	__size_of_feu_process
	__size_of_feu_process	equ	__end_of_feu_process-_feu_process
	
_feu_process:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	112
	
l6886:
;feu.c: 112: switch (Feu.Step)
	goto	l6976
	line	114
;feu.c: 113: {
;feu.c: 114: case 0x00:
	
l1155:; BSR set to: 0

	line	116
;feu.c: 116: if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6441
	goto	u6440
u6441:
	goto	l1186
u6440:
	line	118
	
l6888:; BSR set to: 0

;feu.c: 117: {
;feu.c: 118: if (Micro.Mods == 0) {Feu.Step = 0x01;}
	tstfsz	(0+((c:_Micro)+05h)),c
	goto	u6451
	goto	u6450
u6451:
	goto	l6892
u6450:
	
l6890:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1158
	line	119
	
l1157:; BSR set to: 0

	
l6892:; BSR set to: 0

;feu.c: 119: else {Feu.Step = 0x03;}
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	
l1158:; BSR set to: 0

	line	121
;feu.c: 121: Micro.State = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(02h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	123
	
l6894:; BSR set to: 0

;feu.c: 123: (INTCONbits.GIE = 0);
	bcf	((c:4082)),c,7	;volatile
	line	124
	
l6896:; BSR set to: 0

;feu.c: 124: Decompte = 50;
	movlw	low(032h)
	movwf	((c:_Decompte)),c	;volatile
	line	125
	
l6898:; BSR set to: 0

;feu.c: 125: Cpt1Sur20s = 0;
	movlw	high(0)
	movwf	((c:_Cpt1Sur20s+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_Cpt1Sur20s)),c	;volatile
	line	126
	
l6900:; BSR set to: 0

;feu.c: 126: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	128
;feu.c: 128: Feu.LastOutput = 0;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feu+0Bh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	130
	
l6902:; BSR set to: 0

;feu.c: 130: Feu.CanStopStart = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,0
	line	131
	
l6904:; BSR set to: 0

;feu.c: 131: Feu.TimeStart = Cptms;
	movff	(c:_Cptms),0+(_Feu+09h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+09h)	;volatile
	goto	l1186
	line	132
	
l1156:; BSR set to: 0

	line	133
;feu.c: 132: }
;feu.c: 133: break;
	goto	l1186
	line	134
;feu.c: 134: case 0x01 :
	
l1160:; BSR set to: 0

	line	136
	
l6906:; BSR set to: 0

;feu.c: 136: Feu.NextOutput = Cf.Data[Feu.Cpt*3];
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
	line	138
	
l6908:; BSR set to: 0

;feu.c: 138: if (feu_check_pause() == 1) {Feu.Step = 0x09;}
	call	_feu_check_pause	;wreg free
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	decf	((??_feu_process+0+0))&0ffh,w
	btfss	status,2
	goto	u6461
	goto	u6460
u6461:
	goto	l6912
u6460:
	
l6910:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(09h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	line	139
	
l1161:; BSR set to: 0

	
l6912:; BSR set to: 0

;feu.c: 139: else if (feu_check_end() == 1) {Feu.Step = 0x08;}
	call	_feu_check_end	;wreg free
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	decf	((??_feu_process+0+0))&0ffh,w
	btfss	status,2
	goto	u6471
	goto	u6470
u6471:
	goto	l6916
u6470:
	
l6914:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	line	140
	
l1163:; BSR set to: 0

	line	143
	
l6916:; BSR set to: 0

;feu.c: 140: else
;feu.c: 141: {
;feu.c: 143: Feu.TimeToFire = Cf.Data[(Feu.Cpt*3) + 1] << 8;
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
	line	144
;feu.c: 144: Feu.TimeToFire |= Cf.Data[(Feu.Cpt*3) + 2];
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
	line	146
	
l6918:; BSR set to: 0

;feu.c: 146: Feu.Step = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	line	147
	
l1164:; BSR set to: 0

	goto	l1186
	
l1162:; BSR set to: 0

	line	148
;feu.c: 147: }
;feu.c: 148: break;
	goto	l1186
	line	149
;feu.c: 149: case 0x02:
	
l1165:; BSR set to: 0

	line	150
	
l6920:; BSR set to: 0

;feu.c: 150: if (Cpt1Sur20s == Feu.TimeToFire)
	movlb	0	; () banked
	lfsr	2,_Feu+05h
	movf	postinc2
	movf	((c:_Cpt1Sur20s+1)),c,w	;volatile
	xorwf	postdec2,w
	movff	(c:_Cpt1Sur20s),wreg	;volatile
	btfsc	status,2
	xorwf	indf2,w

	btfss	status,2
	goto	u6481
	goto	u6480
u6481:
	goto	l1186
u6480:
	line	152
	
l6922:; BSR set to: 0

;feu.c: 151: {
;feu.c: 152: feu_tir(Feu.NextOutput);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Ch))&0ffh,w
	
	call	_feu_tir
	line	154
	
l6924:
;feu.c: 154: Feu.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	line	155
	
l1166:; BSR set to: 0

	line	156
;feu.c: 155: }
;feu.c: 156: break;
	goto	l1186
	line	157
;feu.c: 157: case 0x03:
	
l1167:; BSR set to: 0

	line	159
;feu.c: 159: if (Micro.Mod.P_0 == 1)
	btfss	(0+((c:_Micro)+05h)),c,0
	goto	u6491
	goto	u6490
u6491:
	goto	l1168
u6490:
	line	161
	
l6926:; BSR set to: 0

;feu.c: 160: {
;feu.c: 161: Feu.NextOutput = Feu.Cpt+1;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feu+01h))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feu+0Ch))&0ffh
	line	163
	
l6928:; BSR set to: 0

;feu.c: 163: if (feu_check_end_P0() == 1) {Feu.Step = 0x08;}
	call	_feu_check_end_P0	;wreg free
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	decf	((??_feu_process+0+0))&0ffh,w
	btfss	status,2
	goto	u6501
	goto	u6500
u6501:
	goto	l6932
u6500:
	
l6930:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	line	164
	
l1169:; BSR set to: 0

	
l6932:; BSR set to: 0

;feu.c: 164: else {Feu.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	
l1170:; BSR set to: 0

	line	165
;feu.c: 165: }
	goto	l1186
	line	166
	
l1168:; BSR set to: 0

;feu.c: 166: else if (Micro.Mod.P_00 == 1)
	btfss	(0+((c:_Micro)+05h)),c,1
	goto	u6511
	goto	u6510
u6511:
	goto	l1186
u6510:
	line	168
	
l6934:; BSR set to: 0

;feu.c: 167: {
;feu.c: 168: Feu.NextOutput = Cf.Data[Feu.Cpt*3];
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
	line	170
	
l6936:; BSR set to: 0

;feu.c: 170: if (feu_check_end() == 1) {Feu.Step = 0x08;}
	call	_feu_check_end	;wreg free
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlb	0	; () banked
	decf	((??_feu_process+0+0))&0ffh,w
	btfss	status,2
	goto	u6521
	goto	u6520
u6521:
	goto	l6940
u6520:
	
l6938:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	line	171
	
l1173:; BSR set to: 0

	
l6940:; BSR set to: 0

;feu.c: 171: else {Feu.Step = 0x04;}
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	
l1174:; BSR set to: 0

	goto	l1186
	line	172
	
l1172:; BSR set to: 0

	goto	l1186
	line	174
	
l1171:; BSR set to: 0

;feu.c: 172: }
;feu.c: 174: break;
	goto	l1186
	line	175
;feu.c: 175: case 0x04:
	
l1175:; BSR set to: 0

	line	176
;feu.c: 176: if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6531
	goto	u6530
u6531:
	goto	l1186
u6530:
	line	178
	
l6942:; BSR set to: 0

;feu.c: 177: {
;feu.c: 178: delay_ms(15);
	movlw	high(0Fh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait+1))&0ffh
	movlw	low(0Fh)
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait))&0ffh
	call	_delay_ms	;wreg free
	line	180
;feu.c: 180: feu_tir(Feu.NextOutput);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Ch))&0ffh,w
	
	call	_feu_tir
	line	182
	
l6944:
;feu.c: 182: Feu.Step = 0x05;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(05h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	183
	
l6946:; BSR set to: 0

;feu.c: 183: Feu.Time = Cptms;
	movff	(c:_Cptms),0+(_Feu+07h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+07h)	;volatile
	goto	l1186
	line	184
	
l1176:; BSR set to: 0

	line	185
;feu.c: 184: }
;feu.c: 185: break;
	goto	l1186
	line	186
;feu.c: 186: case 0x05:
	
l1177:; BSR set to: 0

	line	187
	
l6948:; BSR set to: 0

;feu.c: 187: if ((((unsigned short) (Cptms - Feu.Time) > 200) ? 1 : 0))
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
	goto	u6541
	goto	u6540
u6541:
	goto	l1186
u6540:
	line	189
	
l6950:; BSR set to: 0

;feu.c: 188: {
;feu.c: 189: if (Bouton[Bp_Start].State == 1) {Feu.Step = 0x03;}
	movlb	0	; () banked
	btfss	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6551
	goto	u6550
u6551:
	goto	l1186
u6550:
	
l6952:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	goto	l1186
	
l1179:; BSR set to: 0

	goto	l1186
	line	190
	
l1178:; BSR set to: 0

	line	191
;feu.c: 190: }
;feu.c: 191: break;
	goto	l1186
	line	192
;feu.c: 192: case 0x06:
	
l1180:; BSR set to: 0

	line	193
;feu.c: 193: if (Feu.SaveTime == 0)
	movlb	0	; () banked
	btfsc	(0+(_Feu+0Dh))&0ffh,1
	goto	u6561
	goto	u6560
u6561:
	goto	l1186
u6560:
	line	195
	
l6954:; BSR set to: 0

;feu.c: 194: {
;feu.c: 195: Feu.Decompte = Decompte;
	movff	(c:_Decompte),0+(_Feu+02h)	;volatile
	line	196
;feu.c: 196: Feu.SavedTime = Cpt1Sur20s;
	movff	(c:_Cpt1Sur20s),0+(_Feu+03h)	;volatile
	movff	(c:_Cpt1Sur20s+1),1+(_Feu+03h)	;volatile
	line	198
;feu.c: 198: Feu.SaveTime = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Feu+0Dh))&0ffh,1
	goto	l1186
	line	199
	
l1181:; BSR set to: 0

	line	200
;feu.c: 199: }
;feu.c: 200: break;
	goto	l1186
	line	201
;feu.c: 201: case 0x07:
	
l1182:; BSR set to: 0

	line	202
;feu.c: 202: Decompte = Feu.Decompte;
	movff	0+(_Feu+02h),(c:_Decompte)	;volatile
	line	203
;feu.c: 203: Cpt1Sur20s = Feu.SavedTime;
	movff	0+(_Feu+03h),(c:_Cpt1Sur20s)	;volatile
	movff	1+(_Feu+03h),(c:_Cpt1Sur20s+1)	;volatile
	line	205
;feu.c: 205: Feu.SaveTime = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,1
	line	207
	
l6956:; BSR set to: 0

;feu.c: 207: Feu.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	208
;feu.c: 208: break;
	goto	l1186
	line	210
;feu.c: 210: case 0x09:
	
l1183:; BSR set to: 0

	line	211
	
l6958:; BSR set to: 0

;feu.c: 211: Micro.State = 0x04;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(04h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	212
;feu.c: 212: break;
	goto	l1186
	line	213
;feu.c: 213: case 0x0A:
	
l1184:; BSR set to: 0

	line	214
;feu.c: 214: (INTCONbits.GIE = 0);
	bcf	((c:4082)),c,7	;volatile
	line	215
	
l6960:; BSR set to: 0

;feu.c: 215: Decompte = 50;
	movlw	low(032h)
	movwf	((c:_Decompte)),c	;volatile
	line	216
;feu.c: 216: Cpt1Sur20s = 0;
	movlw	high(0)
	movwf	((c:_Cpt1Sur20s+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_Cpt1Sur20s)),c	;volatile
	line	217
	
l6962:; BSR set to: 0

;feu.c: 217: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	219
	
l6964:; BSR set to: 0

;feu.c: 219: Micro.State = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(02h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	221
	
l6966:; BSR set to: 0

;feu.c: 221: Feu.LastOutput = Feu.NextOutput;
	movff	0+(_Feu+0Ch),0+(_Feu+0Bh)
	line	222
	
l6968:; BSR set to: 0

;feu.c: 222: Feu.Cpt ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feu+01h))&0ffh
	line	224
	
l6970:; BSR set to: 0

;feu.c: 224: Feu.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	225
;feu.c: 225: break;
	goto	l1186
	line	227
;feu.c: 227: case 0x08:
	
l1185:; BSR set to: 0

	line	228
	
l6972:; BSR set to: 0

;feu.c: 228: Micro.State = 0x08;
	movlb	0	; () banked
	movwf	(??_feu_process+0+0)&0ffh
	movlw	low(08h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_process+0+0)&0ffh,w
	line	229
;feu.c: 229: break;
	goto	l1186
	line	230
	
l6974:; BSR set to: 0

;feu.c: 230: }
	goto	l1186
	line	112
	
l1154:; BSR set to: 0

	
l6976:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Feu))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1155
	xorlw	1^0	; case 1
	skipnz
	goto	l6906
	xorlw	2^1	; case 2
	skipnz
	goto	l6920
	xorlw	3^2	; case 3
	skipnz
	goto	l1167
	xorlw	4^3	; case 4
	skipnz
	goto	l1175
	xorlw	5^4	; case 5
	skipnz
	goto	l6948
	xorlw	6^5	; case 6
	skipnz
	goto	l1180
	xorlw	7^6	; case 7
	skipnz
	goto	l1182
	xorlw	8^7	; case 8
	skipnz
	goto	l6972
	xorlw	9^8	; case 9
	skipnz
	goto	l6958
	xorlw	10^9	; case 10
	skipnz
	goto	l1184
	goto	l1186

	line	230
	
l1159:; BSR set to: 0

	line	231
	
l1186:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_process
	__end_of_feu_process:
	signat	_feu_process,88
	global	_feu_tir

;; *************** function _feu_tir *****************
;; Defined at:
;;		line 23 in file "feu.c"
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
	line	23
global __ptext8
__ptext8:
psect	text8
	file	"feu.c"
	line	23
	global	__size_of_feu_tir
	__size_of_feu_tir	equ	__end_of_feu_tir-_feu_tir
	
_feu_tir:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
;feu_tir@Output stored from wreg
	movff	wreg,(feu_tir@Output)
	line	25
	
l6386:
;feu.c: 25: PORTAbits.RA5 = 1;
	bsf	((c:3968)),c,5	;volatile
	line	26
;feu.c: 26: PORTBbits.RB1 = 1;
	bsf	((c:3969)),c,1	;volatile
	line	28
	
l6388:
;feu.c: 28: register_write(Output);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((feu_tir@Output))&0ffh,w
	
	call	_register_write
	line	29
;feu.c: 29: delay_ms(40);
	movlw	high(028h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait+1))&0ffh
	movlw	low(028h)
	movlb	0	; () banked
	movwf	((delay_ms@TimeToWait))&0ffh
	call	_delay_ms	;wreg free
	line	30
;feu.c: 30: register_write(0);
	movlw	(0)&0ffh
	
	call	_register_write
	line	32
	
l6390:
;feu.c: 32: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	33
	
l6392:
;feu.c: 33: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	36
	
l6394:
;feu.c: 36: Feu.LastOutput = Feu.NextOutput;
	movff	0+(_Feu+0Ch),0+(_Feu+0Bh)
	line	37
	
l6396:
;feu.c: 37: Feu.Cpt ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Feu+01h))&0ffh
	line	38
	
l1124:; BSR set to: 0

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
	
l6020:
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
	
l6022:
;register.c: 16: for (i = 32; i > 0; i --)
	movlb	0	; () banked
	movwf	(??_register_write+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((register_write@i))&0ffh
	movlb	0	; () banked
	movf	(??_register_write+0+0)&0ffh,w
	
l6024:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((register_write@i))&0ffh
	goto	u5291
	goto	u5290
u5291:
	goto	l928
u5290:
	goto	l929
	
l6026:; BSR set to: 0

	goto	l929
	line	17
	
l928:; BSR set to: 0

	line	18
;register.c: 17: {
;register.c: 18: PORTBbits.RB4 = 0;
	bcf	((c:3969)),c,4	;volatile
	line	20
	
l6028:; BSR set to: 0

;register.c: 20: if (Output == i) {PORTBbits.RB5 = 1;}
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((register_write@i))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	cpfseq	((register_write@Output))&0ffh
	goto	u5301
	goto	u5300
u5301:
	goto	l930
u5300:
	
l6030:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	goto	l931
	line	21
	
l930:; BSR set to: 0

;register.c: 21: else {PORTBbits.RB5 = 0;}
	bcf	((c:3969)),c,5	;volatile
	
l931:; BSR set to: 0

	line	23
;register.c: 23: PORTBbits.RB4 = 1;
	bsf	((c:3969)),c,4	;volatile
	line	16
	
l6032:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((register_write@i))&0ffh
	
l6034:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((register_write@i))&0ffh
	goto	u5311
	goto	u5310
u5311:
	goto	l928
u5310:
	
l929:; BSR set to: 0

	line	26
;register.c: 24: }
;register.c: 26: PORTBbits.RB3 = 1;
	bsf	((c:3969)),c,3	;volatile
	line	29
;register.c: 29: PORTAbits.RA2 = 1;
	bsf	((c:3968)),c,2	;volatile
	line	30
	
l932:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_register_write
	__end_of_register_write:
	signat	_register_write,4216
	global	_feu_check_pause

;; *************** function _feu_check_pause *****************
;; Defined at:
;;		line 4 in file "feu.c"
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
	line	4
global __ptext10
__ptext10:
psect	text10
	file	"feu.c"
	line	4
	global	__size_of_feu_check_pause
	__size_of_feu_check_pause	equ	__end_of_feu_check_pause-_feu_check_pause
	
_feu_check_pause:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	6
	
l6346:
;feu.c: 6: if (Feu.NextOutput == 99) {return 1;}
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Ch))&0ffh,w
	xorlw	99

	btfss	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l6354
u5670:
	
l6348:; BSR set to: 0

	movlw	(01h)&0ffh
	goto	l1106
	
l6350:; BSR set to: 0

	goto	l1106
	
l6352:; BSR set to: 0

	goto	l1106
	line	7
	
l1105:; BSR set to: 0

	
l6354:; BSR set to: 0

;feu.c: 7: else {return 0;}
	movlw	(0)&0ffh
	goto	l1106
	
l6356:; BSR set to: 0

	goto	l1106
	
l1107:; BSR set to: 0

	line	8
	
l1106:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_check_pause
	__end_of_feu_check_pause:
	signat	_feu_check_pause,89
	global	_feu_check_end_P0

;; *************** function _feu_check_end_P0 *****************
;; Defined at:
;;		line 10 in file "feu.c"
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
psect	text11,class=CODE,space=0,reloc=2
	line	10
global __ptext11
__ptext11:
psect	text11
	file	"feu.c"
	line	10
	global	__size_of_feu_check_end_P0
	__size_of_feu_check_end_P0	equ	__end_of_feu_check_end_P0-_feu_check_end_P0
	
_feu_check_end_P0:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	12
	
l6358:
;feu.c: 12: if ((Feu.Cpt >= 32) || (Feu.NextOutput == 0)) {return 1;}
	movlw	(020h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_Feu+01h))&0ffh,w
	btfsc	status,0
	goto	u5681
	goto	u5680
u5681:
	goto	l6362
u5680:
	
l6360:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	(0+(_Feu+0Ch))&0ffh
	goto	u5691
	goto	u5690
u5691:
	goto	l6368
u5690:
	goto	l6362
	
l1112:; BSR set to: 0

	
l6362:; BSR set to: 0

	movlw	(01h)&0ffh
	goto	l1113
	
l6364:; BSR set to: 0

	goto	l1113
	
l6366:; BSR set to: 0

	goto	l1113
	line	13
	
l1110:; BSR set to: 0

	
l6368:; BSR set to: 0

;feu.c: 13: else {return 0;}
	movlw	(0)&0ffh
	goto	l1113
	
l6370:; BSR set to: 0

	goto	l1113
	
l1114:; BSR set to: 0

	line	14
	
l1113:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_check_end_P0
	__end_of_feu_check_end_P0:
	signat	_feu_check_end_P0,89
	global	_feu_check_end

;; *************** function _feu_check_end *****************
;; Defined at:
;;		line 17 in file "feu.c"
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
psect	text12,class=CODE,space=0,reloc=2
	line	17
global __ptext12
__ptext12:
psect	text12
	file	"feu.c"
	line	17
	global	__size_of_feu_check_end
	__size_of_feu_check_end	equ	__end_of_feu_check_end-_feu_check_end
	
_feu_check_end:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	19
	
l6372:
;feu.c: 19: if ((Feu.Cpt >= (32 + 5)) || (Feu.NextOutput == 0)) {return 1;}
	movlw	(025h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_Feu+01h))&0ffh,w
	btfsc	status,0
	goto	u5701
	goto	u5700
u5701:
	goto	l6376
u5700:
	
l6374:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	(0+(_Feu+0Ch))&0ffh
	goto	u5711
	goto	u5710
u5711:
	goto	l6382
u5710:
	goto	l6376
	
l1119:; BSR set to: 0

	
l6376:; BSR set to: 0

	movlw	(01h)&0ffh
	goto	l1120
	
l6378:; BSR set to: 0

	goto	l1120
	
l6380:; BSR set to: 0

	goto	l1120
	line	20
	
l1117:; BSR set to: 0

	
l6382:; BSR set to: 0

;feu.c: 20: else {return 0;}
	movlw	(0)&0ffh
	goto	l1120
	
l6384:; BSR set to: 0

	goto	l1120
	
l1121:; BSR set to: 0

	line	21
	
l1120:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_feu_check_end
	__end_of_feu_check_end:
	signat	_feu_check_end,89
	global	_feu_check_bp

;; *************** function _feu_check_bp *****************
;; Defined at:
;;		line 40 in file "feu.c"
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
psect	text13,class=CODE,space=0,reloc=2
	line	40
global __ptext13
__ptext13:
psect	text13
	file	"feu.c"
	line	40
	global	__size_of_feu_check_bp
	__size_of_feu_check_bp	equ	__end_of_feu_check_bp-_feu_check_bp
	
_feu_check_bp:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	43
	
l6978:
;feu.c: 42: if ( (Micro.Stat.End == 1)
;feu.c: 43: && (Bouton[Bp_On].State == 0))
	btfss	(0+((c:_Micro)+04h)),c,3
	goto	u6571
	goto	u6570
u6571:
	goto	l6986
u6570:
	
l6980:
	movlb	0	; () banked
	btfsc	(0+(_Bouton+02h))&0ffh,1
	goto	u6581
	goto	u6580
u6581:
	goto	l6986
u6580:
	line	45
	
l6982:; BSR set to: 0

;feu.c: 44: {
;feu.c: 45: Ecran.Digits = (char *) Version;
		movlw	high(_Version)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlw	low(_Version)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	46
	
l6984:; BSR set to: 0

;feu.c: 46: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	47
;feu.c: 47: }
	goto	l1151
	line	48
	
l1127:; BSR set to: 0

	line	49
	
l6986:
;feu.c: 48: else if ( (Feu.Step == 0x09)
;feu.c: 49: && (Bouton[Bp_Start].State == 0))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Feu))&0ffh,w
	xorlw	9

	btfss	status,2
	goto	u6591
	goto	u6590
u6591:
	goto	l1129
u6590:
	
l6988:; BSR set to: 0

	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6601
	goto	u6600
u6601:
	goto	l1129
u6600:
	line	51
	
l6990:; BSR set to: 0

;feu.c: 50: {
;feu.c: 51: Feu.TimeStart = Cptms;
	movff	(c:_Cptms),0+(_Feu+09h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+09h)	;volatile
	line	52
;feu.c: 52: Feu.CanStopStart = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,0
	line	53
	
l6992:; BSR set to: 0

;feu.c: 53: Feu.Step = 0x0A;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0Ah)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	54
;feu.c: 54: }
	goto	l1151
	line	55
	
l1129:; BSR set to: 0

	line	56
;feu.c: 55: else if ( (Bouton[Bp_Start].State == 1)
;feu.c: 56: && (Feu.CanStopStart == 0))
	movlb	0	; () banked
	btfss	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6611
	goto	u6610
u6611:
	goto	l1131
u6610:
	
l6994:; BSR set to: 0

	movlb	0	; () banked
	btfsc	(0+(_Feu+0Dh))&0ffh,0
	goto	u6621
	goto	u6620
u6621:
	goto	l1131
u6620:
	line	58
	
l6996:; BSR set to: 0

;feu.c: 57: {
;feu.c: 58: if ((((unsigned short) (Cptms - Feu.TimeStart) > 5000) ? 1 : 0))
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
	goto	u6631
	goto	u6630
u6631:
	goto	l1151
u6630:
	line	60
	
l6998:; BSR set to: 0

;feu.c: 59: {
;feu.c: 60: Feu.CanStopStart = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Feu+0Dh))&0ffh,0
	goto	l1151
	line	61
	
l1132:; BSR set to: 0

	line	62
;feu.c: 61: }
;feu.c: 62: }
	goto	l1151
	line	63
	
l1131:; BSR set to: 0

	line	65
;feu.c: 63: else if ( (Micro.Mods == 0)
;feu.c: 64: && (Feu.CanStopStart == 1)
;feu.c: 65: && (Bouton[Bp_Start].State == 0))
	tstfsz	(0+((c:_Micro)+05h)),c
	goto	u6641
	goto	u6640
u6641:
	goto	l1134
u6640:
	
l7000:; BSR set to: 0

	movlb	0	; () banked
	btfss	(0+(_Feu+0Dh))&0ffh,0
	goto	u6651
	goto	u6650
u6651:
	goto	l1134
u6650:
	
l7002:; BSR set to: 0

	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6661
	goto	u6660
u6661:
	goto	l1134
u6660:
	line	67
	
l7004:; BSR set to: 0

;feu.c: 66: {
;feu.c: 67: if (Micro.Stat.Go == 1)
	btfss	(0+((c:_Micro)+04h)),c,1
	goto	u6671
	goto	u6670
u6671:
	goto	l1135
u6670:
	line	69
	
l7006:; BSR set to: 0

;feu.c: 68: {
;feu.c: 69: Feu.Step = 0x06;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(06h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	70
;feu.c: 70: Micro.State = 0x04;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(04h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	71
;feu.c: 71: }
	goto	l7012
	line	72
	
l1135:; BSR set to: 0

;feu.c: 72: else if (Micro.Stat.Stop == 1)
	btfss	(0+((c:_Micro)+04h)),c,2
	goto	u6681
	goto	u6680
u6681:
	goto	l7012
u6680:
	line	74
	
l7008:; BSR set to: 0

;feu.c: 73: {
;feu.c: 74: Feu.Step = 0x07;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(07h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feu))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	75
;feu.c: 75: Micro.State = 0x02;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02h)
	movwf	(0+((c:_Micro)+04h)),c
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	76
	
l7010:; BSR set to: 0

;feu.c: 76: Feu.TimeStart = Cptms;
	movff	(c:_Cptms),0+(_Feu+09h)	;volatile
	movff	(c:_Cptms+1),1+(_Feu+09h)	;volatile
	goto	l7012
	line	77
	
l1137:; BSR set to: 0

	goto	l7012
	line	79
	
l1136:; BSR set to: 0

	
l7012:; BSR set to: 0

;feu.c: 77: }
;feu.c: 79: Feu.CanStopStart = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Feu+0Dh))&0ffh,0
	line	80
;feu.c: 80: }
	goto	l1151
	line	81
	
l1134:; BSR set to: 0

;feu.c: 81: else if (Bouton[Comu_Test].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+08h))&0ffh,1
	goto	u6691
	goto	u6690
u6691:
	goto	l1139
u6690:
	line	83
	
l7014:; BSR set to: 0

;feu.c: 82: {
;feu.c: 83: Ecran.Digits = (char *) ErreurTir;
		movlw	high(_ErreurTir)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_Ecran+04h))&0ffh
	movlw	low(_ErreurTir)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+04h))&0ffh

	line	84
	
l7016:; BSR set to: 0

;feu.c: 84: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	85
;feu.c: 85: }
	goto	l1151
	line	86
	
l1139:; BSR set to: 0

;feu.c: 86: else if (Bouton[Bp_IdTest].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+05h))&0ffh,1
	goto	u6701
	goto	u6700
u6701:
	goto	l1141
u6700:
	line	88
	
l7018:; BSR set to: 0

;feu.c: 87: {
;feu.c: 88: ecran_print_num(Feu.LastOutput);
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feu+0Bh))&0ffh,w
	
	call	_ecran_print_num
	line	90
	
l7020:
;feu.c: 90: if (Micro.Stat.Stop == 1)
	btfss	(0+((c:_Micro)+04h)),c,2
	goto	u6711
	goto	u6710
u6711:
	goto	l7026
u6710:
	line	92
	
l7022:
;feu.c: 91: {
;feu.c: 92: Ecran.Digit[0] = '-';
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	93
;feu.c: 93: Ecran.Digit[1] = '-';
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(02Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	95
	
l7024:; BSR set to: 0

;feu.c: 95: Ecran.Digits = Ecran.Digit;
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

	goto	l7026
	line	96
	
l1142:; BSR set to: 0

	line	97
	
l7026:
;feu.c: 96: }
;feu.c: 97: Ecran.Solid = 0;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	line	98
;feu.c: 98: }
	goto	l1151
	line	99
	
l1141:; BSR set to: 0

	line	101
;feu.c: 99: else
;feu.c: 100: {
;feu.c: 101: if (Micro.Stat.Armed == 1) {ecran_print_one_char(0,'-');}
	btfss	(0+((c:_Micro)+04h)),c,0
	goto	u6721
	goto	u6720
u6721:
	goto	l1144
u6720:
	
l7028:; BSR set to: 0

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
	goto	l7036
	line	102
	
l1144:; BSR set to: 0

;feu.c: 102: else if (Micro.Stat.Go == 1) {ecran_print_one_char(1,'-');}
	btfss	(0+((c:_Micro)+04h)),c,1
	goto	u6731
	goto	u6730
u6731:
	goto	l1146
u6730:
	
l7030:; BSR set to: 0

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
	goto	l7036
	line	103
	
l1146:; BSR set to: 0

;feu.c: 103: else if (Micro.Stat.Stop == 1) {ecran_print_one_char(2,'-');}
	btfss	(0+((c:_Micro)+04h)),c,2
	goto	u6741
	goto	u6740
u6741:
	goto	l1148
u6740:
	
l7032:; BSR set to: 0

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
	goto	l7036
	line	104
	
l1148:; BSR set to: 0

;feu.c: 104: else if (Micro.Stat.End == 1) {ecran_print_one_char(3,'-');}
	btfss	(0+((c:_Micro)+04h)),c,3
	goto	u6751
	goto	u6750
u6751:
	goto	l7036
u6750:
	
l7034:; BSR set to: 0

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
	goto	l7036
	
l1150:
	goto	l7036
	line	106
	
l1149:
	goto	l7036
	
l1147:
	goto	l7036
	
l1145:
	
l7036:
;feu.c: 106: Ecran.Solid = 1;
	movlb	0	; () banked
	movwf	(??_feu_check_bp+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+0Fh))&0ffh
	movlb	0	; () banked
	movf	(??_feu_check_bp+0+0)&0ffh,w
	goto	l1151
	line	107
	
l1143:; BSR set to: 0

	goto	l1151
	
l1140:; BSR set to: 0

	goto	l1151
	
l1138:; BSR set to: 0

	goto	l1151
	
l1133:; BSR set to: 0

	goto	l1151
	
l1130:; BSR set to: 0

	goto	l1151
	
l1128:; BSR set to: 0

	line	108
	
l1151:; BSR set to: 0

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
psect	text14,class=CODE,space=0,reloc=2
	file	"ecran.c"
	line	66
global __ptext14
__ptext14:
psect	text14
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
	
l6180:
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
	
l6182:; BSR set to: 0

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
	
l6184:; BSR set to: 0

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
	
l6186:; BSR set to: 0

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
	
l6188:; BSR set to: 0

;ecran.c: 77: if (Num < 10)
	movlw	(0Ah)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((ecran_print_num@Num))&0ffh,w
	btfsc	status,0
	goto	u5551
	goto	u5550
u5551:
	goto	l6194
u5550:
	line	79
	
l6190:; BSR set to: 0

;ecran.c: 78: {
;ecran.c: 79: Ecran.Digit[3] = tempStr[0];
	movff	(ecran_print_num@tempStr),fsr2l
	movff	(ecran_print_num@tempStr+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	80
	
l6192:; BSR set to: 0

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
	goto	l6198
	line	82
	
l267:; BSR set to: 0

	line	84
	
l6194:; BSR set to: 0

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
	
l6196:; BSR set to: 0

;ecran.c: 85: Ecran.Digit[2] = tempStr[0];
	movff	(ecran_print_num@tempStr),fsr2l
	movff	(ecran_print_num@tempStr+1),fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	goto	l6198
	line	86
	
l268:; BSR set to: 0

	line	88
	
l6198:; BSR set to: 0

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
psect	text15,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	3
global __ptext15
__ptext15:
psect	text15
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
	
l5922:
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
	goto	l5928
	line	11
	
l662:; BSR set to: 0

	line	12
	
l5924:; BSR set to: 0

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
	
l5926:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((DecToStr@power10))&0ffh
	goto	l5928
	
l661:; BSR set to: 0

	
l5928:; BSR set to: 0

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
	goto	u5191
	goto	u5190
u5191:
	goto	l5924
u5190:
	
l663:; BSR set to: 0

	line	15
;utils.c: 13: }
;utils.c: 15: if (value == 0) {power10 = 1;}
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((DecToStr@value))&0ffh
	goto	u5201
	goto	u5200
u5201:
	goto	l5932
u5200:
	
l5930:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_DecToStr+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((DecToStr@power10))&0ffh
	movlb	0	; () banked
	movf	(??_DecToStr+0+0)&0ffh,w
	goto	l5932
	
l664:; BSR set to: 0

	line	17
	
l5932:; BSR set to: 0

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
	
l5934:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((DecToStr@power10))&0ffh
	goto	u5211
	goto	u5210
u5211:
	goto	l5938
u5210:
	goto	l5946
	
l5936:; BSR set to: 0

	goto	l5946
	line	20
	
l665:; BSR set to: 0

	line	21
	
l5938:; BSR set to: 0

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
	
l5940:; BSR set to: 0

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
	
l5942:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decf	((DecToStr@power10))&0ffh
	
l5944:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((DecToStr@power10))&0ffh
	goto	u5221
	goto	u5220
u5221:
	goto	l5938
u5220:
	goto	l5946
	
l666:; BSR set to: 0

	line	25
	
l5946:; BSR set to: 0

;utils.c: 23: }
;utils.c: 25: return result;
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(DecToStr@result+1),(?_DecToStr+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(DecToStr@result),(?_DecToStr)

	goto	l667
	
l5948:; BSR set to: 0

	line	26
	
l667:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_DecToStr
	__end_of_DecToStr:
	signat	_DecToStr,8314
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lbdiv.c"
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
psect	text16,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lbdiv.c"
	line	4
global __ptext16
__ptext16:
psect	text16
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lbdiv.c"
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
	
l5848:
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
	goto	u5061
	goto	u5060
u5061:
	goto	l5868
u5060:
	line	11
	
l5850:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___lbdiv+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lbdiv@counter))&0ffh
	movlb	0	; () banked
	movf	(??___lbdiv+0+0)&0ffh,w
	line	12
	goto	l5856
	
l1613:; BSR set to: 0

	line	13
	
l5852:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rlcf	((___lbdiv@divisor))&0ffh

	line	14
	
l5854:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___lbdiv@counter))&0ffh
	goto	l5856
	line	15
	
l1612:; BSR set to: 0

	line	12
	
l5856:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lbdiv@divisor))&0ffh,(7)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l5852
u5070:
	goto	l5858
	
l1614:; BSR set to: 0

	goto	l5858
	line	16
	
l1615:; BSR set to: 0

	line	17
	
l5858:; BSR set to: 0

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
	goto	u5081
	goto	u5080
u5081:
	goto	l5864
u5080:
	line	19
	
l5860:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lbdiv@divisor))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___lbdiv@dividend))&0ffh
	line	20
	
l5862:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(0/8)+(___lbdiv@quotient))&0ffh,(0)&7
	goto	l5864
	line	21
	
l1616:; BSR set to: 0

	line	22
	
l5864:; BSR set to: 0

	movlb	0	; () banked
	bcf status,0
	rrcf	((___lbdiv@divisor))&0ffh

	line	23
	
l5866:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___lbdiv@counter))&0ffh
	
	goto	l5858
	goto	l5868
	
l1617:; BSR set to: 0

	goto	l5868
	line	24
	
l1611:; BSR set to: 0

	line	25
	
l5868:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lbdiv@quotient))&0ffh,w
	goto	l1618
	
l5870:; BSR set to: 0

	line	26
	
l1618:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awmod.c"
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
psect	text17,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awmod.c"
	line	8
global __ptext17
__ptext17:
psect	text17
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	13
	
l5812:
	movlb	0	; () banked
	movwf	(??___awmod+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@sign))&0ffh
	movlb	0	; () banked
	movf	(??___awmod+0+0)&0ffh,w
	line	14
	
l5814:; BSR set to: 0

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
	goto	u5001
	goto	u5000
u5001:
	goto	l5820
u5000:
	line	15
	
l5816:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((___awmod@dividend))&0ffh
	movlb	0	; () banked
	comf	((___awmod@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awmod@dividend+1))&0ffh
	line	16
	
l5818:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___awmod+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@sign))&0ffh
	movlb	0	; () banked
	movf	(??___awmod+0+0)&0ffh,w
	goto	l5820
	line	17
	
l1364:; BSR set to: 0

	line	18
	
l5820:; BSR set to: 0

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
	goto	u5011
	goto	u5010
u5011:
	goto	l5824
u5010:
	line	19
	
l5822:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((___awmod@divisor))&0ffh
	movlb	0	; () banked
	comf	((___awmod@divisor+1))&0ffh
	btfsc	status,0
	incf	((___awmod@divisor+1))&0ffh
	goto	l5824
	
l1365:; BSR set to: 0

	line	20
	
l5824:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	iorwf ((___awmod@divisor))&0ffh,w

	btfsc	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l5840
u5020:
	line	21
	
l5826:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___awmod+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___awmod@counter))&0ffh
	movlb	0	; () banked
	movf	(??___awmod+0+0)&0ffh,w
	line	22
	goto	l5830
	
l1368:; BSR set to: 0

	line	23
	
l5828:; BSR set to: 0

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
	goto	l5830
	line	25
	
l1367:; BSR set to: 0

	line	22
	
l5830:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___awmod@divisor+1))&0ffh,(15)&7
	goto	u5031
	goto	u5030
u5031:
	goto	l5828
u5030:
	goto	l5832
	
l1369:; BSR set to: 0

	goto	l5832
	line	26
	
l1370:; BSR set to: 0

	line	27
	
l5832:; BSR set to: 0

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
	goto	u5041
	goto	u5040
u5041:
	goto	l5836
u5040:
	line	28
	
l5834:; BSR set to: 0

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

	goto	l5836
	
l1371:; BSR set to: 0

	line	29
	
l5836:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___awmod@divisor+1))&0ffh
	rrcf	((___awmod@divisor))&0ffh
	line	30
	
l5838:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___awmod@counter))&0ffh
	
	goto	l5832
	goto	l5840
	
l1372:; BSR set to: 0

	goto	l5840
	line	31
	
l1366:; BSR set to: 0

	line	32
	
l5840:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___awmod@sign))&0ffh,w
	btfsc	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l5844
u5050:
	line	33
	
l5842:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((___awmod@dividend))&0ffh
	movlb	0	; () banked
	comf	((___awmod@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awmod@dividend+1))&0ffh
	goto	l5844
	
l1373:; BSR set to: 0

	line	34
	
l5844:; BSR set to: 0

	movff	(___awmod@dividend),(?___awmod)
	movff	(___awmod@dividend+1),(?___awmod+1)
	goto	l1374
	
l5846:; BSR set to: 0

	line	35
	
l1374:; BSR set to: 0

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
psect	text18,class=CODE,space=0,reloc=2
	file	"test.c"
	line	19
global __ptext18
__ptext18:
psect	text18
	file	"test.c"
	line	19
	global	__size_of_check_program_0
	__size_of_check_program_0	equ	__end_of_check_program_0-_check_program_0
	
_check_program_0:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	21
	
l6480:
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
	
l6482:; BSR set to: 0

;test.c: 23: if ((PORTEbits.RE1 == 0) && (PORTEbits.RE0 == 0))
	btfsc	((c:3972)),c,1	;volatile
	goto	u5721
	goto	u5720
u5721:
	goto	l6498
u5720:
	
l6484:; BSR set to: 0

	btfsc	((c:3972)),c,0	;volatile
	goto	u5731
	goto	u5730
u5731:
	goto	l6498
u5730:
	line	25
	
l6486:; BSR set to: 0

;test.c: 24: {
;test.c: 25: ecran_blank();
	call	_ecran_blank	;wreg free
	line	26
;test.c: 26: while ((PORTEbits.RE1 == 0) || (PORTEbits.RE0 == 0)) {ecran_refresh();}
	goto	l6490
	
l535:
	
l6488:
	call	_ecran_refresh	;wreg free
	goto	l6490
	
l534:
	
l6490:
	btfss	((c:3972)),c,1	;volatile
	goto	u5741
	goto	u5740
u5741:
	goto	l6488
u5740:
	
l6492:
	btfss	((c:3972)),c,0	;volatile
	goto	u5751
	goto	u5750
u5751:
	goto	l6488
u5750:
	
l536:
	line	28
;test.c: 28: Micro.Mod.P_0 = 1;
	bsf	(0+((c:_Micro)+05h)),c,0
	line	30
	
l6494:
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
	
l6496:; BSR set to: 0

;test.c: 34: ecran_wait();
	call	_ecran_wait	;wreg free
	goto	l6498
	line	35
	
l533:
	line	37
	
l6498:
;test.c: 35: }
;test.c: 37: return ret;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((check_program_0@ret))&0ffh,w
	goto	l537
	
l6500:; BSR set to: 0

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
psect	text19,class=CODE,space=0,reloc=2
	line	41
global __ptext19
__ptext19:
psect	text19
	file	"test.c"
	line	41
	global	__size_of_check_idtest
	__size_of_check_idtest	equ	__end_of_check_idtest-_check_idtest
	
_check_idtest:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	43
	
l6502:
;test.c: 43: if ((PORTEbits.RE1 == 0) && (PORTEbits.RE0 == 1))
	btfsc	((c:3972)),c,1	;volatile
	goto	u5761
	goto	u5760
u5761:
	goto	l544
u5760:
	
l6504:
	btfss	((c:3972)),c,0	;volatile
	goto	u5771
	goto	u5770
u5771:
	goto	l544
u5770:
	line	45
	
l6506:
;test.c: 44: {
;test.c: 45: micro_config_rs();
	call	_micro_config_rs	;wreg free
	line	46
	
l6508:
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
	goto	l6510
	line	48
;test.c: 48: while(1) {cf_rcv();}
	
l541:
	
l6510:
	call	_cf_rcv	;wreg free
	goto	l6510
	
l542:
	goto	l6510
	
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
psect	text20,class=CODE,space=0,reloc=2
	file	"micro.c"
	line	3
global __ptext20
__ptext20:
psect	text20
	file	"micro.c"
	line	3
	global	__size_of_micro_config_rs
	__size_of_micro_config_rs	equ	__end_of_micro_config_rs-_micro_config_rs
	
_micro_config_rs:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	5
	
l6266:
;micro.c: 5: PORTEbits.RE2 = 0;
	bcf	((c:3972)),c,2	;volatile
	line	9
	
l6268:
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
	
l6270:
;micro.c: 34: RCIP = 0;
	bcf	c:(31997/8),(31997)&7	;volatile
	line	35
	
l6272:
;micro.c: 35: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	36
	
l6274:
;micro.c: 36: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	37
	
l816:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_micro_config_rs
	__end_of_micro_config_rs:
	signat	_micro_config_rs,88
	global	_cf_rcv

;; *************** function _cf_rcv *****************
;; Defined at:
;;		line 137 in file "config.c"
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
psect	text21,class=CODE,space=0,reloc=2
	file	"config.c"
	line	137
global __ptext21
__ptext21:
psect	text21
	file	"config.c"
	line	137
	global	__size_of_cf_rcv
	__size_of_cf_rcv	equ	__end_of_cf_rcv-_cf_rcv
	
_cf_rcv:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	139
	
l6216:
;config.c: 139: unsigned char i, temp = 0;
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@temp))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	line	141
	
l6218:; BSR set to: 0

;config.c: 141: if ((((unsigned short) (Cptms - Cf.Time2) > 100) ? 1 : 0))
	movlb	1	; () banked
	lfsr	2,_Cf+077h	;volatile
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
	goto	u5571
	goto	u5570
u5571:
	goto	l6228
u5570:
	line	143
	
l6220:; BSR set to: 0

;config.c: 142: {
;config.c: 143: Cf.Time2 = Cptms;
	movff	(c:_Cptms),0+(_Cf+077h)	;volatile
	movff	(c:_Cptms+1),1+(_Cf+077h)	;volatile
	line	145
;config.c: 145: (INTCONbits.GIE = 0);
	bcf	((c:4082)),c,7	;volatile
	line	146
	
l6222:; BSR set to: 0

;config.c: 146: if ((((unsigned short) (Cptms - Cf.Time1) > 100) ? 1 : 0)) {Cf.Index = 0;}
	movlb	1	; () banked
	lfsr	2,_Cf+075h	;volatile
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
	goto	u5581
	goto	u5580
u5581:
	goto	l6226
u5580:
	
l6224:; BSR set to: 0

	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(0+(_Cf+074h))&0ffh	;volatile
	goto	l6226
	
l452:; BSR set to: 1

	line	147
	
l6226:
;config.c: 147: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	148
;config.c: 148: }
	goto	l461
	line	149
	
l451:
	
l6228:
;config.c: 149: else if (Cf.Index == (32 * 3 + 5 * 3 + 5))
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+074h))&0ffh,w	;volatile
	xorlw	116

	btfss	status,2
	goto	u5591
	goto	u5590
u5591:
	goto	l461
u5590:
	line	151
	
l6230:; BSR set to: 1

;config.c: 150: {
;config.c: 151: RCIE = 0;
	bcf	c:(31981/8),(31981)&7	;volatile
	line	153
	
l6232:; BSR set to: 1

;config.c: 153: temp = cf_check();
	call	_cf_check	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@temp))&0ffh
	line	155
	
l6234:; BSR set to: 0

;config.c: 155: if (temp == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_rcv@temp))&0ffh
	goto	u5601
	goto	u5600
u5601:
	goto	l6238
u5600:
	line	157
	
l6236:; BSR set to: 0

;config.c: 156: {
;config.c: 157: ecran_print_one_char(3, 'E');
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
	line	158
;config.c: 158: }
	goto	l6262
	line	159
	
l455:
	line	162
	
l6238:
;config.c: 159: else
;config.c: 160: {
;config.c: 162: eeprom_write_array(&Cf.Data[0], 0, (32 * 3 + 5 * 3 + 5));
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
	movlw	low(074h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_write_array@NbData))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+1+0)&0ffh,w
	call	_eeprom_write_array	;wreg free
	line	164
	
l6240:
;config.c: 164: for (i = 0; i < (32 * 3 + 5 * 3 + 5); i ++)
	movlb	0	; () banked
	movwf	(??_cf_rcv+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+0+0)&0ffh,w
	
l6242:; BSR set to: 0

	movlw	(074h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_rcv@i))&0ffh
	goto	u5611
	goto	u5610
u5611:
	goto	l6246
u5610:
	goto	l6252
	
l6244:; BSR set to: 0

	goto	l6252
	line	165
	
l457:; BSR set to: 0

	line	166
	
l6246:; BSR set to: 0

;config.c: 165: {
;config.c: 166: Cf.Data[i] = 0;
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
	line	164
	
l6248:; BSR set to: 1

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_rcv@i))&0ffh
	
l6250:; BSR set to: 0

	movlw	(074h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_rcv@i))&0ffh
	goto	u5621
	goto	u5620
u5621:
	goto	l6246
u5620:
	goto	l6252
	
l458:; BSR set to: 0

	line	169
	
l6252:; BSR set to: 0

;config.c: 167: }
;config.c: 169: eeprom_read_array(&Cf.Data[0], 0, (32 * 3 + 5 * 3 + 5));
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
	movlw	low(074h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@NbData))&0ffh
	movlb	0	; () banked
	movf	(??_cf_rcv+1+0)&0ffh,w
	call	_eeprom_read_array	;wreg free
	line	171
	
l6254:
;config.c: 171: temp = cf_check();
	call	_cf_check	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_rcv@temp))&0ffh
	line	173
	
l6256:; BSR set to: 0

;config.c: 173: if (temp == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_rcv@temp))&0ffh
	goto	u5631
	goto	u5630
u5631:
	goto	l6260
u5630:
	line	175
	
l6258:; BSR set to: 0

;config.c: 174: {
;config.c: 175: ecran_print_one_char(3, 'E');
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
	line	176
;config.c: 176: }
	goto	l6262
	line	177
	
l459:
	line	179
	
l6260:
;config.c: 177: else
;config.c: 178: {
;config.c: 179: ecran_print_one_char(3, 'P');
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
	goto	l6262
	line	180
	
l460:
	goto	l6262
	line	181
	
l456:
	line	183
	
l6262:
;config.c: 180: }
;config.c: 181: }
;config.c: 183: Cf.Index = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(0+(_Cf+074h))&0ffh	;volatile
	line	185
	
l6264:; BSR set to: 1

;config.c: 185: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	goto	l461
	line	186
	
l454:; BSR set to: 1

	goto	l461
	line	187
	
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
;;		 -> Cf(122), 
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
psect	text22,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	52
global __ptext22
__ptext22:
psect	text22
	file	"eeprom.c"
	line	52
	global	__size_of_eeprom_write_array
	__size_of_eeprom_write_array	equ	__end_of_eeprom_write_array-_eeprom_write_array
	
_eeprom_write_array:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	56
	
l5974:
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
	goto	l5984
	line	57
	
l353:; BSR set to: 0

	line	58
	
l5976:; BSR set to: 0

;eeprom.c: 57: {
;eeprom.c: 58: eeprom_write(*pData, Address);
	movff	(eeprom_write_array@Address),(eeprom_write@Address)
	movff	(eeprom_write_array@pData),fsr2l
	movff	(eeprom_write_array@pData+1),fsr2h
	movf	indf2,w
	
	call	_eeprom_write
	line	59
	
l5978:
;eeprom.c: 59: pData ++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((eeprom_write_array@pData))&0ffh
	incf	((eeprom_write_array@pData+1))&0ffh
	line	60
	
l5980:; BSR set to: 0

;eeprom.c: 60: Address ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_write_array@Address))&0ffh
	line	56
	
l5982:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_write_array@i))&0ffh
	goto	l5984
	
l352:; BSR set to: 0

	
l5984:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((eeprom_write_array@NbData))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((eeprom_write_array@i))&0ffh,w
	btfss	status,0
	goto	u5241
	goto	u5240
u5241:
	goto	l5976
u5240:
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
psect	text23,class=CODE,space=0,reloc=2
	line	18
global __ptext23
__ptext23:
psect	text23
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
	
l5654:
;eeprom.c: 20: EEADR = Address;
	movff	(eeprom_write@Address),(c:4009)	;volatile
	line	21
	
l5656:
;eeprom.c: 21: EEDATA = Data;
	movff	(eeprom_write@Data),(c:4008)	;volatile
	line	23
	
l5658:
;eeprom.c: 23: EEPGD = 0;
	bcf	c:(32055/8),(32055)&7	;volatile
	line	24
	
l5660:
;eeprom.c: 24: CFGS = 0;
	bcf	c:(32054/8),(32054)&7	;volatile
	line	25
	
l5662:
;eeprom.c: 25: WREN = 1;
	bsf	c:(32050/8),(32050)&7	;volatile
	line	27
	
l5664:
;eeprom.c: 27: (INTCONbits.GIE = 0);
	bcf	((c:4082)),c,7	;volatile
	line	29
	
l5666:
;eeprom.c: 29: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	30
	
l5668:
;eeprom.c: 30: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	32
	
l5670:
;eeprom.c: 32: WR = 1;
	bsf	c:(32049/8),(32049)&7	;volatile
	line	33
;eeprom.c: 33: while(WR);
	goto	l340
	
l341:
	
l340:
	btfsc	c:(32049/8),(32049)&7	;volatile
	goto	u4641
	goto	u4640
u4641:
	goto	l340
u4640:
	
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
psect	text24,class=CODE,space=0,reloc=2
	file	"test.c"
	line	52
global __ptext24
__ptext24:
psect	text24
	file	"test.c"
	line	52
	global	__size_of_check_bpon
	__size_of_check_bpon	equ	__end_of_check_bpon-_check_bpon
	
_check_bpon:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	54
	
l6512:
;test.c: 54: Test.Time = Cptms;
	movff	(c:_Cptms),0+((c:_Test)+02h)	;volatile
	movff	(c:_Cptms+1),1+((c:_Test)+02h)	;volatile
	line	56
;test.c: 56: if (PORTEbits.RE0 == 0)
	btfsc	((c:3972)),c,0	;volatile
	goto	u5781
	goto	u5780
u5781:
	goto	l553
u5780:
	line	58
	
l6514:
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
	goto	u5791
	goto	u5790
u5791:
	goto	l553
u5790:
	
l6516:
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
	goto	u5801
	goto	u5800
u5801:
	goto	l548
u5800:
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
;;		line 97 in file "config.c"
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
psect	text25,class=CODE,space=0,reloc=2
	file	"config.c"
	line	97
global __ptext25
__ptext25:
psect	text25
	file	"config.c"
	line	97
	global	__size_of_cf_check_and_display
	__size_of_cf_check_and_display	equ	__end_of_cf_check_and_display-_cf_check_and_display
	
_cf_check_and_display:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	99
	
l6518:
;config.c: 99: unsigned char configOk = 0;
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check_and_display@configOk))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	line	102
	
l6520:; BSR set to: 0

;config.c: 100: unsigned short temp;
;config.c: 102: eeprom_read_array(&Cf.Data[0], 0, (32 * 3 + 5 * 3 + 5));
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
	movlw	low(074h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((eeprom_read_array@NbData))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+1+0)&0ffh,w
	call	_eeprom_read_array	;wreg free
	line	104
	
l6522:
;config.c: 104: configOk = cf_check();
	call	_cf_check	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check_and_display@configOk))&0ffh
	line	106
	
l6524:; BSR set to: 0

;config.c: 106: if (configOk == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((cf_check_and_display@configOk))&0ffh,w

	btfss	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l6546
u5810:
	line	109
	
l6526:; BSR set to: 0

;config.c: 107: {
;config.c: 109: if (Cf.IsLong == 1)
	movlb	1	; () banked
	btfss	(0+(_Cf+079h))&0ffh,0	;volatile
	goto	u5821
	goto	u5820
u5821:
	goto	l6542
u5820:
	line	111
	
l6528:; BSR set to: 1

;config.c: 110: {
;config.c: 111: Ecran.Digit[0] = ' ';
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	line	112
;config.c: 112: Ecran.Digit[1] = ' ';
	movlb	0	; () banked
	movwf	(??_cf_check_and_display+0+0)&0ffh
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check_and_display+0+0)&0ffh,w
	line	113
	
l6530:; BSR set to: 0

;config.c: 113: Ecran.Digit[2] = HexToAscii(((unsigned char) ((unsigned char) ((Cf.Data[((32 * 3 + 5 * 3) + 2)]) & 0xF0) >> 4)));
	movlb	1	; () banked
	movlb	1	; () banked
	swapf	(0+(_Cf+071h))&0ffh,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	line	114
	
l6532:; BSR set to: 0

;config.c: 114: Ecran.Digit[3] = HexToAscii(((unsigned char) ((Cf.Data[((32 * 3 + 5 * 3) + 2)]) & 0x0F)));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+071h))&0ffh,w	;volatile
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	116
	
l6534:; BSR set to: 0

;config.c: 116: Ecran.Digits = Ecran.Digit;
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

	line	118
	
l6536:; BSR set to: 0

;config.c: 118: temp = Cptms;
	movff	(c:_Cptms),(cf_check_and_display@temp)	;volatile
	movff	(c:_Cptms+1),(cf_check_and_display@temp+1)	;volatile
	line	120
;config.c: 120: while((((unsigned short) (Cptms - temp) < 1000) ? 1 : 0)) {ecran_refresh();}
	goto	l6540
	
l442:; BSR set to: 0

	
l6538:; BSR set to: 0

	call	_ecran_refresh	;wreg free
	goto	l6540
	
l441:
	
l6540:
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
	goto	u5831
	goto	u5830
u5831:
	goto	l6538
u5830:
	goto	l6542
	
l443:; BSR set to: 0

	goto	l6542
	line	121
	
l440:; BSR set to: 0

	line	123
	
l6542:
;config.c: 121: }
;config.c: 123: Ecran.Digit[0] = HexToAscii(((unsigned char) ((unsigned char) ((Cf.Data[((32 * 3 + 5 * 3) + 3)]) & 0xF0) >> 4)));
	movlb	1	; () banked
	movlb	1	; () banked
	swapf	(0+(_Cf+072h))&0ffh,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Ecran))&0ffh
	line	124
;config.c: 124: Ecran.Digit[1] = HexToAscii(((unsigned char) ((Cf.Data[((32 * 3 + 5 * 3) + 3)]) & 0x0F)));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+072h))&0ffh,w	;volatile
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+01h))&0ffh
	line	125
;config.c: 125: Ecran.Digit[2] = HexToAscii(((unsigned char) ((unsigned char) ((Cf.Data[((32 * 3 + 5 * 3) + 4)]) & 0xF0) >> 4)));
	movlb	1	; () banked
	movlb	1	; () banked
	swapf	(0+(_Cf+073h))&0ffh,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+02h))&0ffh
	line	126
;config.c: 126: Ecran.Digit[3] = HexToAscii(((unsigned char) ((Cf.Data[((32 * 3 + 5 * 3) + 4)]) & 0x0F)));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+073h))&0ffh,w	;volatile
	andlw	low(0Fh)
	
	call	_HexToAscii
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Ecran+03h))&0ffh
	line	128
	
l6544:; BSR set to: 0

;config.c: 128: Ecran.Digits = Ecran.Digit;
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

	line	129
;config.c: 129: }
	goto	l448
	line	130
	
l439:; BSR set to: 0

	line	132
	
l6546:; BSR set to: 0

;config.c: 130: else
;config.c: 131: {
;config.c: 132: ecran_print_one_char(3, 'E');
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
	line	133
;config.c: 133: while (1);
	
l445:
	
l446:
	goto	l445
	
l447:
	goto	l448
	line	134
	
l444:
	line	135
	
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
;;		 -> Cf(122), 
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
psect	text26,class=CODE,space=0,reloc=2
	file	"eeprom.c"
	line	40
global __ptext26
__ptext26:
psect	text26
	file	"eeprom.c"
	line	40
	global	__size_of_eeprom_read_array
	__size_of_eeprom_read_array	equ	__end_of_eeprom_read_array-_eeprom_read_array
	
_eeprom_read_array:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	44
	
l5962:
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
	goto	l5972
	line	45
	
l347:; BSR set to: 0

	line	46
	
l5964:; BSR set to: 0

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
	
l5966:
;eeprom.c: 47: pData ++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((eeprom_read_array@pData))&0ffh
	incf	((eeprom_read_array@pData+1))&0ffh
	line	48
	
l5968:; BSR set to: 0

;eeprom.c: 48: Address ++;
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_read_array@Address))&0ffh
	line	44
	
l5970:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((eeprom_read_array@i))&0ffh
	goto	l5972
	
l346:; BSR set to: 0

	
l5972:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((eeprom_read_array@NbData))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((eeprom_read_array@i))&0ffh,w
	btfss	status,0
	goto	u5231
	goto	u5230
u5231:
	goto	l5964
u5230:
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
psect	text27,class=CODE,space=0,reloc=2
	line	3
global __ptext27
__ptext27:
psect	text27
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
	
l5638:
;eeprom.c: 5: EEADR = Address;
	movff	(eeprom_read@Address),(c:4009)	;volatile
	line	7
	
l5640:
;eeprom.c: 7: EEPGD = 0;
	bcf	c:(32055/8),(32055)&7	;volatile
	line	8
	
l5642:
;eeprom.c: 8: CFGS = 0;
	bcf	c:(32054/8),(32054)&7	;volatile
	line	9
	
l5644:
;eeprom.c: 9: RD = 1;
	bsf	c:(32048/8),(32048)&7	;volatile
	line	11
	
l5646:
;eeprom.c: 11: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	12
	
l5648:
;eeprom.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	14
	
l5650:
;eeprom.c: 14: return EEDATA;
	movf	((c:4008)),c,w	;volatile
	goto	l337
	
l5652:
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
;;		line 84 in file "config.c"
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
psect	text28,class=CODE,space=0,reloc=2
	file	"config.c"
	line	84
global __ptext28
__ptext28:
psect	text28
	file	"config.c"
	line	84
	global	__size_of_cf_check
	__size_of_cf_check	equ	__end_of_cf_check-_cf_check
	
_cf_check:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	86
	
l5986:
;config.c: 86: unsigned char valid = 0;
	movlb	0	; () banked
	movwf	(??_cf_check+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check+0+0)&0ffh,w
	line	88
	
l5988:; BSR set to: 0

;config.c: 88: if (cf_checksum() && cf_checkout() && cf_checkrange())
	call	_cf_checksum	;wreg free
	btfss	status,0
	goto	u5251
	goto	u5250
u5251:
	goto	l5996
u5250:
	
l5990:
	call	_cf_checkout	;wreg free
	btfss	status,0
	goto	u5261
	goto	u5260
u5261:
	goto	l5996
u5260:
	
l5992:
	call	_cf_checkrange	;wreg free
	btfss	status,0
	goto	u5271
	goto	u5270
u5271:
	goto	l5996
u5270:
	line	90
	
l5994:
;config.c: 89: {
;config.c: 90: valid = 1;
	movlb	0	; () banked
	movwf	(??_cf_check+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_check@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_check+0+0)&0ffh,w
	goto	l5996
	line	91
	
l435:; BSR set to: 0

	line	93
	
l5996:
;config.c: 91: }
;config.c: 93: return valid;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_check@valid))&0ffh,w
	goto	l436
	
l5998:; BSR set to: 0

	line	94
	
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
psect	text29,class=CODE,space=0,reloc=2
	line	4
global __ptext29
__ptext29:
psect	text29
	file	"config.c"
	line	4
	global	__size_of_cf_checksum
	__size_of_cf_checksum	equ	__end_of_cf_checksum-_cf_checksum
	
_cf_checksum:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	7
	
l5672:
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
;config.c: 9: for (i = 0, calcul = 0; i < (32 + 5); i ++)
	movlb	0	; () banked
	movwf	(??_cf_checksum+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checksum@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	
l5674:; BSR set to: 0

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
	movlw	(025h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checksum@i))&0ffh
	goto	u4651
	goto	u4650
u4651:
	goto	l5678
u4650:
	goto	l5684
	
l5676:; BSR set to: 0

	goto	l5684
	line	10
	
l406:; BSR set to: 0

	line	11
	
l5678:; BSR set to: 0

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
	
l5680:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_checksum@i))&0ffh
	
l5682:; BSR set to: 0

	movlw	(025h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checksum@i))&0ffh
	goto	u4661
	goto	u4660
u4661:
	goto	l5678
u4660:
	goto	l5684
	
l407:; BSR set to: 0

	line	17
	
l5684:; BSR set to: 0

;config.c: 12: }
;config.c: 14: if ( (((calcul >> 24) & 0x000000FF) == Cf.Data[((32 * 3 + 5 * 3) + 1)])
;config.c: 15: && (((calcul >> 16) & 0x000000FF) == Cf.Data[((32 * 3 + 5 * 3) + 2)])
;config.c: 16: && (((calcul >> 8) & 0x000000FF) == Cf.Data[((32 * 3 + 5 * 3) + 3)])
;config.c: 17: && ((calcul & 0x000000FF) == Cf.Data[((32 * 3 + 5 * 3) + 4)]))
	movlb	1	; () banked
	movff	0+(_Cf+070h),??_cf_checksum+0+0	;volatile
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
	goto	u4670
u4675:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_cf_checksum+4+3)&0ffh
	rrcf	(??_cf_checksum+4+2)&0ffh
	rrcf	(??_cf_checksum+4+1)&0ffh
	rrcf	(??_cf_checksum+4+0)&0ffh
u4670:
	decfsz	wreg
	goto	u4675
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
	bnz	u4685
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+2)&0ffh,w
	bnz	u4685
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+1)&0ffh,w
	bnz	u4685
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+0)&0ffh,w
u4685:
	btfss	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l5694
u4680:
	
l5686:; BSR set to: 0

	movlb	1	; () banked
	movff	0+(_Cf+071h),??_cf_checksum+0+0	;volatile
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
	goto	u4690
u4695:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_cf_checksum+4+3)&0ffh
	rrcf	(??_cf_checksum+4+2)&0ffh
	rrcf	(??_cf_checksum+4+1)&0ffh
	rrcf	(??_cf_checksum+4+0)&0ffh
u4690:
	decfsz	wreg
	goto	u4695
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
	bnz	u4705
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+2)&0ffh,w
	bnz	u4705
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+1)&0ffh,w
	bnz	u4705
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+0)&0ffh,w
u4705:
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l5694
u4700:
	
l5688:; BSR set to: 0

	movlb	1	; () banked
	movff	0+(_Cf+072h),??_cf_checksum+0+0	;volatile
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
	bnz	u4715
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+2)&0ffh,w
	bnz	u4715
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+1)&0ffh,w
	bnz	u4715
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+8+0)&0ffh,w
u4715:
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l5694
u4710:
	
l5690:; BSR set to: 0

	movlb	1	; () banked
	movff	0+(_Cf+073h),??_cf_checksum+0+0	;volatile
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
	bnz	u4725
	movlb	0	; () banked
	movf	(??_cf_checksum+0+2)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+2)&0ffh,w
	bnz	u4725
	movlb	0	; () banked
	movf	(??_cf_checksum+0+1)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+1)&0ffh,w
	bnz	u4725
	movlb	0	; () banked
	movf	(??_cf_checksum+0+0)&0ffh,w
	movlb	0	; () banked
	xorwf	(??_cf_checksum+4+0)&0ffh,w
u4725:
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l5694
u4720:
	line	19
	
l5692:; BSR set to: 0

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
	goto	l5694
	line	20
	
l408:; BSR set to: 0

	line	22
	
l5694:; BSR set to: 0

;config.c: 20: }
;config.c: 22: if ((Cf.Data[((32 * 3 + 5 * 3) + 1)] == 0) && (Cf.Data[((32 * 3 + 5 * 3) + 2)] == 0) && (Cf.Data[((32 * 3 + 5 * 3) + 3)] == 0) && (Cf.Data[((32 * 3 + 5 * 3) + 4)] == 0))
	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+070h))&0ffh	;volatile
	goto	u4731
	goto	u4730
u4731:
	goto	l5704
u4730:
	
l5696:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+071h))&0ffh	;volatile
	goto	u4741
	goto	u4740
u4741:
	goto	l5704
u4740:
	
l5698:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+072h))&0ffh	;volatile
	goto	u4751
	goto	u4750
u4751:
	goto	l5704
u4750:
	
l5700:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	(0+(_Cf+073h))&0ffh	;volatile
	goto	u4761
	goto	u4760
u4761:
	goto	l5704
u4760:
	line	24
	
l5702:; BSR set to: 1

;config.c: 23: {
;config.c: 24: Micro.Mod.P_00 = 1;
	bsf	(0+((c:_Micro)+05h)),c,1
	goto	l5704
	line	25
	
l409:; BSR set to: 1

	line	27
	
l5704:; BSR set to: 1

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
	goto	u4771
	goto	u4770
u4771:
	goto	l5708
u4770:
	
l5706:; BSR set to: 0

	movlb	1	; () banked
	movlb	1	; () banked
	bsf	(0+(_Cf+079h))&0ffh,0	;volatile
	goto	l5708
	
l410:; BSR set to: 1

	line	29
	
l5708:
;config.c: 29: return valid;
	movff	(cf_checksum@valid),??_cf_checksum+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checksum+0+0)&0ffh,w
	goto	l411
	
l5710:; BSR set to: 0

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
;;		line 66 in file "config.c"
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
psect	text30,class=CODE,space=0,reloc=2
	line	66
global __ptext30
__ptext30:
psect	text30
	file	"config.c"
	line	66
	global	__size_of_cf_checkrange
	__size_of_cf_checkrange	equ	__end_of_cf_checkrange-_cf_checkrange
	
_cf_checkrange:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	68
	
l5750:
;config.c: 68: unsigned char i, valid = 0;
	movlb	0	; () banked
	movwf	(??_cf_checkrange+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkrange@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkrange+0+0)&0ffh,w
	line	70
;config.c: 70: for (i = 0; i < (32 + 5); i ++)
	movlb	0	; () banked
	movwf	(??_cf_checkrange+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkrange@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkrange+0+0)&0ffh,w
	
l5752:; BSR set to: 0

	movlw	(025h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkrange@i))&0ffh
	goto	u4881
	goto	u4880
u4881:
	goto	l5756
u4880:
	goto	l5768
	
l5754:; BSR set to: 0

	goto	l5768
	line	71
	
l429:; BSR set to: 0

	line	73
	
l5756:; BSR set to: 0

;config.c: 71: {
;config.c: 72: if ( (Cf.Data[i*3] > 32)
;config.c: 73: && (Cf.Data[i*3] != 99))
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
	goto	u4891
	goto	u4890
u4891:
	goto	l5764
u4890:
	
l5758:; BSR set to: 1

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
	movf	indf2,w
	xorlw	063h

	btfsc	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l5764
u4900:
	line	75
	
l5760:; BSR set to: 1

;config.c: 74: {
;config.c: 75: return valid;
	movff	(cf_checkrange@valid),??_cf_checkrange+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkrange+0+0)&0ffh,w
	goto	l432
	
l5762:; BSR set to: 0

	goto	l432
	line	76
	
l431:; BSR set to: 0

	line	70
	
l5764:
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_checkrange@i))&0ffh
	
l5766:; BSR set to: 0

	movlw	(025h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkrange@i))&0ffh
	goto	u4911
	goto	u4910
u4911:
	goto	l5756
u4910:
	goto	l5768
	
l430:; BSR set to: 0

	line	79
	
l5768:; BSR set to: 0

;config.c: 76: }
;config.c: 77: }
;config.c: 79: valid = 1;
	movlb	0	; () banked
	movwf	(??_cf_checkrange+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkrange@valid))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkrange+0+0)&0ffh,w
	line	81
	
l5770:; BSR set to: 0

;config.c: 81: return valid;
	movff	(cf_checkrange@valid),??_cf_checkrange+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkrange+0+0)&0ffh,w
	goto	l432
	
l5772:; BSR set to: 0

	line	82
	
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
psect	text31,class=CODE,space=0,reloc=2
	line	33
global __ptext31
__ptext31:
psect	text31
	file	"config.c"
	line	33
	global	__size_of_cf_checkout
	__size_of_cf_checkout	equ	__end_of_cf_checkout-_cf_checkout
	
_cf_checkout:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	35
	
l5712:
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
;config.c: 38: for (i = 0; i < (32 + 5); i ++)
	movlb	0	; () banked
	movwf	(??_cf_checkout+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((cf_checkout@i))&0ffh
	movlb	0	; () banked
	movf	(??_cf_checkout+0+0)&0ffh,w
	
l5714:; BSR set to: 0

	movlw	(025h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkout@i))&0ffh
	goto	u4781
	goto	u4780
u4781:
	goto	l5718
u4780:
	goto	l5738
	
l5716:; BSR set to: 0

	goto	l5738
	line	39
	
l414:; BSR set to: 0

	line	40
	
l5718:; BSR set to: 0

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
	goto	u4791
	goto	u4790
u4791:
	goto	l5728
u4790:
	line	42
	
l5720:; BSR set to: 1

;config.c: 41: {
;config.c: 42: if (i == 0) {return valid;}
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_checkout@i))&0ffh
	goto	u4801
	goto	u4800
u4801:
	goto	l417
u4800:
	
l5722:; BSR set to: 0

	movff	(cf_checkout@valid),??_cf_checkout+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkout+0+0)&0ffh,w
	goto	l418
	
l5724:; BSR set to: 0

	goto	l418
	
l417:; BSR set to: 0

	line	44
;config.c: 44: if (last_out == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_checkout@last_out))&0ffh
	goto	u4811
	goto	u4810
u4811:
	goto	l5734
u4810:
	line	46
	
l5726:; BSR set to: 0

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
	goto	l5734
	line	47
	
l419:; BSR set to: 0

	line	48
;config.c: 47: }
;config.c: 48: }
	goto	l5734
	line	49
	
l416:; BSR set to: 0

	line	51
	
l5728:
;config.c: 49: else
;config.c: 50: {
;config.c: 51: if (last_out != 0) {return valid;}
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkout@last_out))&0ffh,w
	btfsc	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l5734
u4820:
	
l5730:; BSR set to: 0

	movff	(cf_checkout@valid),??_cf_checkout+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkout+0+0)&0ffh,w
	goto	l418
	
l5732:; BSR set to: 0

	goto	l418
	
l421:; BSR set to: 0

	goto	l5734
	line	52
	
l420:; BSR set to: 0

	line	38
	
l5734:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((cf_checkout@i))&0ffh
	
l5736:; BSR set to: 0

	movlw	(025h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((cf_checkout@i))&0ffh
	goto	u4831
	goto	u4830
u4831:
	goto	l5718
u4830:
	goto	l5738
	
l415:; BSR set to: 0

	line	56
	
l5738:; BSR set to: 0

;config.c: 52: }
;config.c: 53: }
;config.c: 55: if ( ((last_out != 0) && (last_out == Cf.Data[(32 * 3 + 5 * 3)]))
;config.c: 56: || ((last_out == 0) && (Cf.Data[i*3] == Cf.Data[(32 * 3 + 5 * 3)])))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((cf_checkout@last_out))&0ffh,w
	btfsc	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l426
u4840:
	
l5740:; BSR set to: 0

	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+06Fh))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((cf_checkout@last_out))&0ffh,w
	btfsc	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l5744
u4850:
	
l426:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((cf_checkout@last_out))&0ffh
	goto	u4861
	goto	u4860
u4861:
	goto	l5746
u4860:
	
l5742:; BSR set to: 0

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
	movf	(0+(_Cf+06Fh))&0ffh,w	;volatile
	cpfseq	indf2
	goto	u4871
	goto	u4870
u4871:
	goto	l5746
u4870:
	goto	l5744
	
l424:; BSR set to: 1

	line	58
	
l5744:
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
	goto	l5746
	line	59
	
l422:; BSR set to: 0

	line	61
	
l5746:
;config.c: 59: }
;config.c: 61: return valid;
	movff	(cf_checkout@valid),??_cf_checkout+0+0
	movlb	0	; () banked
	rrcf	(??_cf_checkout+0+0)&0ffh,w
	goto	l418
	
l5748:; BSR set to: 0

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
;;		line 3 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\wmul.c"
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
psect	text32,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\wmul.c"
	line	3
global __ptext32
__ptext32:
psect	text32
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	25
	
l5622:
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
	
l5624:; BSR set to: 0

	movff	(___wmul@product),(?___wmul)
	movff	(___wmul@product+1),(?___wmul+1)
	goto	l1742
	
l5626:; BSR set to: 0

	line	41
	
l1742:; BSR set to: 0

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
psect	text33,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	28
global __ptext33
__ptext33:
psect	text33
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
	
l6206:
;utils.c: 30: char character;
;utils.c: 32: if (Value < 10)
	movlw	(0Ah)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((HexToAscii@Value))&0ffh,w
	btfsc	status,0
	goto	u5561
	goto	u5560
u5561:
	goto	l6210
u5560:
	line	34
	
l6208:; BSR set to: 0

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
	goto	l6212
	line	36
	
l670:; BSR set to: 0

	line	38
	
l6210:; BSR set to: 0

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
	goto	l6212
	line	39
	
l671:; BSR set to: 0

	line	41
	
l6212:; BSR set to: 0

;utils.c: 39: }
;utils.c: 41: return character;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((HexToAscii@character))&0ffh,w
	goto	l672
	
l6214:; BSR set to: 0

	line	42
	
l672:; BSR set to: 0

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
psect	text34,class=CODE,space=0,reloc=2
	file	"bouton.c"
	line	11
global __ptext34
__ptext34:
psect	text34
	file	"bouton.c"
	line	11
	global	__size_of_bouton_refresh
	__size_of_bouton_refresh	equ	__end_of_bouton_refresh-_bouton_refresh
	
_bouton_refresh:; BSR set to: 0

;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	15
	
l6550:
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
	
l6552:; BSR set to: 0

	movlw	(04h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((bouton_refresh@i))&0ffh
	goto	u5881
	goto	u5880
u5881:
	goto	l6566
u5880:
	goto	l737
	
l6554:; BSR set to: 0

	goto	l737
	line	16
	
l718:; BSR set to: 0

	line	19
;bouton.c: 16: {
;bouton.c: 17: unsigned char temp;
;bouton.c: 19: switch (i)
	goto	l6566
	line	21
;bouton.c: 20: {
;bouton.c: 21: case Bp_On: temp = PORTEbits.RE0; break;
	
l721:; BSR set to: 0

	
l6556:; BSR set to: 0

	movlw	0
	btfsc	((c:3972)),c,0	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6568
	line	22
;bouton.c: 22: case Bp_IdTest: temp = PORTEbits.RE1; break;
	
l723:; BSR set to: 0

	
l6558:; BSR set to: 0

	movlw	0
	btfsc	((c:3972)),c,1	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6568
	line	23
;bouton.c: 23: case Comu_Test: temp = PORTCbits.RC5; break;
	
l724:; BSR set to: 0

	
l6560:; BSR set to: 0

	movlw	0
	btfsc	((c:3970)),c,5	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6568
	line	24
;bouton.c: 24: case Bp_Start: temp = PORTBbits.RB0; break;
	
l725:; BSR set to: 0

	
l6562:; BSR set to: 0

	movlw	0
	btfsc	((c:3969)),c,0	;volatile
	movlw	1
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((bouton_refresh@temp))&0ffh
	goto	l6568
	line	25
;bouton.c: 25: default: break;
	
l726:; BSR set to: 0

	goto	l6568
	line	26
	
l6564:; BSR set to: 0

;bouton.c: 26: }
	goto	l6568
	line	19
	
l720:; BSR set to: 0

	
l6566:; BSR set to: 0

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
	goto	l6556
	xorlw	1^0	; case 1
	skipnz
	goto	l6558
	xorlw	2^1	; case 2
	skipnz
	goto	l6560
	xorlw	3^2	; case 3
	skipnz
	goto	l6562
	goto	l6568

	line	26
	
l722:; BSR set to: 0

	line	28
	
l6568:; BSR set to: 0

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
	goto	u5891
	goto	u5890
u5891:
	movlw	1
	goto	u5896
u5890:
	movlw	0
u5896:
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((bouton_refresh@temp))&0ffh,w
	btfss	status,2
	goto	u5901
	goto	u5900
u5901:
	goto	l6584
u5900:
	line	30
	
l6570:; BSR set to: 0

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
	goto	u5911
	goto	u5910
u5911:
	movlw	1
	goto	u5912
u5910:
	movlw	0
u5912:
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
	goto	u5921
	goto	u5920
u5921:
	movlw	1
	goto	u5922
u5920:
	movlw	0
u5922:
	movlb	0	; () banked
	xorwf	(??_bouton_refresh+0+0)&0ffh
	btfsc	status,2
	goto	u5931
	goto	u5930
u5931:
	goto	l6586
u5930:
	line	32
	
l6572:; BSR set to: 0

;bouton.c: 31: {
;bouton.c: 32: if ((((unsigned short) (Cptms - Bouton[i].Time) > (((i == Bp_Start) && (Micro.Mods == 1)) ? 5 : 100)) ? 1 : 0))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((bouton_refresh@i))&0ffh,w
	xorlw	3

	btfss	status,2
	goto	u5941
	goto	u5940
u5941:
	goto	l6576
u5940:
	
l6574:; BSR set to: 0

	decf	(0+((c:_Micro)+05h)),c,w

	btfsc	status,2
	goto	u5951
	goto	u5950
u5951:
	goto	l6578
u5950:
	goto	l6576
	
l735:; BSR set to: 0

	
l6576:; BSR set to: 0

	movlw	high(064h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134+1))&0ffh
	movlw	low(064h)
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134))&0ffh
	goto	l6580
	
l731:; BSR set to: 0

	
l6578:; BSR set to: 0

	movlw	high(05h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134+1))&0ffh
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((_bouton_refresh$2134))&0ffh
	goto	l6580
	
l733:; BSR set to: 0

	
l6580:; BSR set to: 0

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
	goto	u5961
	goto	u5960
u5961:
	goto	l6586
u5960:
	line	34
	
l6582:; BSR set to: 0

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
	bra	u5975
	movlb	0	; () banked
	bsf	indf1,1
	u5975:
	movlb	0	; () banked
	btfsc	indf2,0
	bra	u5976
	movlb	0	; () banked
	bcf	indf1,1
	u5976:
	goto	l6586
	line	35
	
l729:; BSR set to: 0

	goto	l6586
	line	36
	
l728:; BSR set to: 0

	line	37
;bouton.c: 35: }
;bouton.c: 36: }
;bouton.c: 37: }
	goto	l6586
	line	38
	
l727:; BSR set to: 0

	line	40
	
l6584:; BSR set to: 0

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
	bra	u5985
	movlb	0	; () banked
	bcf	indf2,0
	bra	u5986
	u5985:
	movlb	0	; () banked
	bsf	indf2,0
	u5986:

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
	goto	l6586
	line	42
	
l736:; BSR set to: 0

	line	15
	
l6586:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((bouton_refresh@i))&0ffh
	
l6588:; BSR set to: 0

	movlw	(04h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((bouton_refresh@i))&0ffh
	goto	u5991
	goto	u5990
u5991:
	goto	l6566
u5990:
	goto	l737
	
l719:; BSR set to: 0

	line	44
	
l737:; BSR set to: 0

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
psect	text35,class=CODE,space=0,reloc=2
	line	3
global __ptext35
__ptext35:
psect	text35
	file	"bouton.c"
	line	3
	global	__size_of_bouton_init
	__size_of_bouton_init	equ	__end_of_bouton_init-_bouton_init
	
_bouton_init:; BSR set to: 0

;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	5
	
l6548:
;bouton.c: 5: Bouton[Bp_On].State = PORTEbits.RE0;
	btfss	((c:3972)),c,0	;volatile
	bra	u5845
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+02h))&0ffh,1
	bra	u5847
	u5845:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+02h))&0ffh,1
	u5847:
	line	6
;bouton.c: 6: Bouton[Bp_IdTest].State = PORTEbits.RE1;
	btfss	((c:3972)),c,1	;volatile
	bra	u5855
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+05h))&0ffh,1
	bra	u5857
	u5855:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+05h))&0ffh,1
	u5857:
	line	7
;bouton.c: 7: Bouton[Comu_Test].State = PORTCbits.RC5;
	btfss	((c:3970)),c,5	;volatile
	bra	u5865
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+08h))&0ffh,1
	bra	u5867
	u5865:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+08h))&0ffh,1
	u5867:
	line	8
;bouton.c: 8: Bouton[Bp_Start].State = PORTBbits.RB0;
	btfss	((c:3969)),c,0	;volatile
	bra	u5875
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_Bouton+0Bh))&0ffh,1
	bra	u5877
	u5875:	
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_Bouton+0Bh))&0ffh,1
	u5877:
	line	9
	
l715:; BSR set to: 0

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
psect	text36,class=CODE,space=0,reloc=2
	file	"armement.c"
	line	24
global __ptext36
__ptext36:
psect	text36
	file	"armement.c"
	line	24
	global	__size_of_armement_process
	__size_of_armement_process	equ	__end_of_armement_process-_armement_process
	
_armement_process:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	28
	
l6840:
;armement.c: 26: unsigned short temp;
;armement.c: 28: switch(Arm.Step)
	goto	l6884
	line	30
;armement.c: 29: {
;armement.c: 30: case 0x01:
	
l1040:; BSR set to: 0

	line	31
;armement.c: 31: if (Bouton[Bp_On].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+02h))&0ffh,1
	goto	u6381
	goto	u6380
u6381:
	goto	l1054
u6380:
	line	33
	
l6842:; BSR set to: 0

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
	goto	l1054
	line	34
	
l1041:; BSR set to: 0

	line	35
;armement.c: 34: }
;armement.c: 35: break;
	goto	l1054
	line	36
;armement.c: 36: case 0x00:
	
l1043:; BSR set to: 0

	line	37
	
l6844:; BSR set to: 0

;armement.c: 37: check_comutest(1);
	movlw	(01h)&0ffh
	
	call	_check_comutest
	line	39
	
l6846:
;armement.c: 39: temp = arm_UAlim_1A();
	call	_arm_UAlim_1A	;wreg free
	movlb	0	; () banked
	movff	0+?_arm_UAlim_1A,(armement_process@temp)
	movlb	0	; () banked
	movff	1+?_arm_UAlim_1A,(armement_process@temp+1)
	line	41
	
l6848:; BSR set to: 0

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
	
l6850:; BSR set to: 0

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
	
l6852:
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
	
l6854:; BSR set to: 0

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
	
l6856:; BSR set to: 0

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
	
l6858:; BSR set to: 0

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
	
l6860:; BSR set to: 0

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
	goto	l1054
	line	52
;armement.c: 52: case 0x02:
	
l1044:; BSR set to: 0

	line	53
;armement.c: 53: if (Bouton[Bp_On].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+02h))&0ffh,1
	goto	u6391
	goto	u6390
u6391:
	goto	l1054
u6390:
	line	55
	
l6862:; BSR set to: 0

;armement.c: 54: {
;armement.c: 55: Arm.Time = Cptms;
	movff	(c:_Cptms),0+(_Arm+02h)	;volatile
	movff	(c:_Cptms+1),1+(_Arm+02h)	;volatile
	line	56
	
l6864:; BSR set to: 0

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
	
l6866:; BSR set to: 0

;armement.c: 58: ecran_blank();
	call	_ecran_blank	;wreg free
	goto	l1054
	line	59
	
l1045:
	line	60
;armement.c: 59: }
;armement.c: 60: break;
	goto	l1054
	line	61
;armement.c: 61: case 0x03:
	
l1046:; BSR set to: 0

	line	62
;armement.c: 62: if (Bouton[Bp_On].State == 1)
	movlb	0	; () banked
	btfss	(0+(_Bouton+02h))&0ffh,1
	goto	u6401
	goto	u6400
u6401:
	goto	l1047
u6400:
	line	64
	
l6868:; BSR set to: 0

;armement.c: 63: {
;armement.c: 64: Micro.Phase = 0x00;
	movlb	0	; () banked
	movwf	(??_armement_process+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:_Micro)+02h)),c
	movlb	0	; () banked
	movf	(??_armement_process+0+0)&0ffh,w
	line	66
	
l6870:; BSR set to: 0

;armement.c: 66: ecran_wait();
	call	_ecran_wait	;wreg free
	line	67
;armement.c: 67: }
	goto	l1054
	line	68
	
l1047:; BSR set to: 0

;armement.c: 68: else if (Bouton[Bp_Start].State == 0)
	movlb	0	; () banked
	btfsc	(0+(_Bouton+0Bh))&0ffh,1
	goto	u6411
	goto	u6410
u6411:
	goto	l6874
u6410:
	goto	l1054
	line	71
	
l6872:; BSR set to: 0

;armement.c: 69: {
;armement.c: 71: }
	goto	l1054
	line	72
	
l1049:; BSR set to: 0

	
l6874:; BSR set to: 0

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
	goto	u6421
	goto	u6420
u6421:
	goto	l6878
u6420:
	goto	l1054
	line	75
	
l6876:; BSR set to: 0

;armement.c: 73: {
;armement.c: 75: }
	goto	l1054
	line	76
	
l1051:; BSR set to: 0

	
l6878:; BSR set to: 0

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
	goto	u6431
	goto	u6430
u6431:
	goto	l1054
u6430:
	line	78
	
l6880:; BSR set to: 0

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
	goto	l1054
	line	80
	
l1053:; BSR set to: 0

	goto	l1054
	line	81
	
l1052:; BSR set to: 0

	goto	l1054
	
l1050:; BSR set to: 0

	goto	l1054
	
l1048:; BSR set to: 0

;armement.c: 80: }
;armement.c: 81: break;
	goto	l1054
	line	82
	
l6882:; BSR set to: 0

;armement.c: 82: }
	goto	l1054
	line	28
	
l1039:; BSR set to: 0

	
l6884:
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
	goto	l6844
	xorlw	1^0	; case 1
	skipnz
	goto	l1040
	xorlw	2^1	; case 2
	skipnz
	goto	l1044
	xorlw	3^2	; case 3
	skipnz
	goto	l1046
	goto	l1054

	line	82
	
l1042:; BSR set to: 0

	line	83
	
l1054:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_armement_process
	__end_of_armement_process:
	signat	_armement_process,88
	global	_itoa

;; *************** function _itoa *****************
;; Defined at:
;;		line 4 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
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
psect	text37,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
	line	4
global __ptext37
__ptext37:
psect	text37
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
	line	4
	global	__size_of_itoa
	__size_of_itoa	equ	__end_of_itoa-_itoa
	
_itoa:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	6
	
l6308:
	movlb	0	; () banked
	movlb	0	; () banked
		movff	(itoa@buf+1),(itoa@cp+1)
	movlb	0	; () banked
	movlb	0	; () banked
	movff	(itoa@buf),(itoa@cp)

	line	8
	
l6310:; BSR set to: 0

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
	goto	u5651
	goto	u5650
u5651:
	goto	l6318
u5650:
	line	9
	
l6312:; BSR set to: 0

	movlb	0	; () banked
	movff	(itoa@buf),tblptrl
	movlb	0	; () banked
	movff	(itoa@buf+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u5667
	movlw	02Dh
	movwf	tablat
	tblwt*
	bra	u5660
u5667:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movlw	02Dh
	movwf	indf1
u5660:
	
	
l6314:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((itoa@buf))&0ffh
	incf	((itoa@buf+1))&0ffh
	line	10
	
l6316:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	negf	((itoa@val))&0ffh
	movlb	0	; () banked
	comf	((itoa@val+1))&0ffh
	btfsc	status,0
	incf	((itoa@val+1))&0ffh
	goto	l6318
	line	11
	
l1599:; BSR set to: 0

	line	12
	
l6318:; BSR set to: 0

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
	goto	l1600
	line	13
	
l6320:
	line	14
;	Return value of _itoa is never used
	
l1600:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_itoa
	__end_of_itoa:
	signat	_itoa,12410
	global	_utoa

;; *************** function _utoa *****************
;; Defined at:
;;		line 17 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
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
psect	text38,class=CODE,space=0,reloc=2
	line	17
global __ptext38
__ptext38:
psect	text38
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\itoa.c"
	line	17
	global	__size_of_utoa
	__size_of_utoa	equ	__end_of_utoa-_utoa
	
_utoa:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	22
	
l6130:
	movff	(utoa@val),(utoa@v)
	movff	(utoa@val+1),(utoa@v+1)
	goto	l6132
	line	23
	
l1603:
	line	24
	
l6132:
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
	
l6134:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((utoa@buf))&0ffh
	incf	((utoa@buf+1))&0ffh
	line	26
	
l6136:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((utoa@v+1))&0ffh,w
	iorwf ((utoa@v))&0ffh,w

	btfss	status,2
	goto	u5461
	goto	u5460
u5461:
	goto	l6132
u5460:
	goto	l6138
	
l1604:; BSR set to: 0

	line	27
	
l6138:; BSR set to: 0

	movlb	0	; () banked
	movff	(utoa@buf),tblptrl
	movlb	0	; () banked
	movff	(utoa@buf+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u5477
	movlw	0
	movwf	tablat
	tblwt*
	bra	u5470
u5477:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movlw	0
	movwf	indf1
u5470:
	
	
l6140:
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((utoa@buf))&0ffh
	btfss	status,0
	decf	((utoa@buf+1))&0ffh
	goto	l6142
	line	28
	
l1605:; BSR set to: 0

	line	29
	
l6142:; BSR set to: 0

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
	
l6144:; BSR set to: 0

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
	
l6146:; BSR set to: 0

	movlw	(0Ah-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((utoa@c))&0ffh
	goto	u5481
	goto	u5480
u5481:
	goto	l1606
u5480:
	line	32
	
l6148:; BSR set to: 0

	movlw	(07h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((utoa@c))&0ffh
	
l1606:; BSR set to: 0

	line	33
	movlw	(030h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((utoa@c))&0ffh
	line	34
	
l6150:; BSR set to: 0

	movlb	0	; () banked
	movff	(utoa@buf),tblptrl
	movlb	0	; () banked
	movff	(utoa@buf+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u5497
	movlb	0	; () banked
	movff	(utoa@c),tablat
	tblwt*
	bra	u5490
u5497:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movlb	0	; () banked
	movff	(utoa@c),indf1
u5490:
	
	
l6152:
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((utoa@buf))&0ffh
	btfss	status,0
	decf	((utoa@buf+1))&0ffh
	line	35
	
l6154:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((utoa@val+1))&0ffh,w
	iorwf ((utoa@val))&0ffh,w

	btfss	status,2
	goto	u5501
	goto	u5500
u5501:
	goto	l6142
u5500:
	goto	l6156
	
l1607:; BSR set to: 0

	line	36
	
l6156:; BSR set to: 0

;	Return value of _utoa is never used
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((utoa@buf))&0ffh
	incf	((utoa@buf+1))&0ffh
	goto	l1608
	
l6158:; BSR set to: 0

	line	37
	
l1608:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_utoa
	__end_of_utoa:
	signat	_utoa,12410
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwmod.c"
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
psect	text39,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwmod.c"
	line	8
global __ptext39
__ptext39:
psect	text39
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	13
	
l5894:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwmod@divisor+1))&0ffh,w
	iorwf ((___lwmod@divisor))&0ffh,w

	btfsc	status,2
	goto	u5121
	goto	u5120
u5121:
	goto	l1716
u5120:
	line	14
	
l5896:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___lwmod+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lwmod@counter))&0ffh
	movlb	0	; () banked
	movf	(??___lwmod+0+0)&0ffh,w
	line	15
	goto	l5900
	
l1718:; BSR set to: 0

	line	16
	
l5898:; BSR set to: 0

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
	goto	l5900
	line	18
	
l1717:; BSR set to: 0

	line	15
	
l5900:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lwmod@divisor+1))&0ffh,(15)&7
	goto	u5131
	goto	u5130
u5131:
	goto	l5898
u5130:
	goto	l5902
	
l1719:; BSR set to: 0

	goto	l5902
	line	19
	
l1720:; BSR set to: 0

	line	20
	
l5902:; BSR set to: 0

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
	goto	u5141
	goto	u5140
u5141:
	goto	l5906
u5140:
	line	21
	
l5904:; BSR set to: 0

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

	goto	l5906
	
l1721:; BSR set to: 0

	line	22
	
l5906:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lwmod@divisor+1))&0ffh
	rrcf	((___lwmod@divisor))&0ffh
	line	23
	
l5908:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___lwmod@counter))&0ffh
	
	goto	l5902
	goto	l1716
	
l1722:; BSR set to: 0

	line	24
	
l1716:; BSR set to: 0

	line	25
	movff	(___lwmod@dividend),(?___lwmod)
	movff	(___lwmod@dividend+1),(?___lwmod+1)
	line	26
	
l1723:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwdiv.c"
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
psect	text40,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwdiv.c"
	line	8
global __ptext40
__ptext40:
psect	text40
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	14
	
l5872:
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lwdiv@quotient+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___lwdiv@quotient))&0ffh
	line	15
	
l5874:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___lwdiv@divisor+1))&0ffh,w
	iorwf ((___lwdiv@divisor))&0ffh,w

	btfsc	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l1706
u5090:
	line	16
	
l5876:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___lwdiv+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___lwdiv@counter))&0ffh
	movlb	0	; () banked
	movf	(??___lwdiv+0+0)&0ffh,w
	line	17
	goto	l5880
	
l1708:; BSR set to: 0

	line	18
	
l5878:; BSR set to: 0

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
	goto	l5880
	line	20
	
l1707:; BSR set to: 0

	line	17
	
l5880:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lwdiv@divisor+1))&0ffh,(15)&7
	goto	u5101
	goto	u5100
u5101:
	goto	l5878
u5100:
	goto	l5882
	
l1709:; BSR set to: 0

	goto	l5882
	line	21
	
l1710:; BSR set to: 0

	line	22
	
l5882:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwdiv@quotient))&0ffh
	rlcf	((___lwdiv@quotient+1))&0ffh
	line	23
	
l5884:; BSR set to: 0

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
	goto	u5111
	goto	u5110
u5111:
	goto	l5890
u5110:
	line	24
	
l5886:; BSR set to: 0

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
	
l5888:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(0/8)+(___lwdiv@quotient))&0ffh,(0)&7
	goto	l5890
	line	26
	
l1711:; BSR set to: 0

	line	27
	
l5890:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lwdiv@divisor+1))&0ffh
	rrcf	((___lwdiv@divisor))&0ffh
	line	28
	
l5892:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___lwdiv@counter))&0ffh
	
	goto	l5882
	goto	l1706
	
l1712:; BSR set to: 0

	line	29
	
l1706:; BSR set to: 0

	line	30
	movff	(___lwdiv@quotient),(?___lwdiv)
	movff	(___lwdiv@quotient+1),(?___lwdiv+1)
	line	31
	
l1713:; BSR set to: 0

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
psect	text41,class=CODE,space=0,reloc=2
	file	"ecran.c"
	line	91
global __ptext41
__ptext41:
psect	text41
	file	"ecran.c"
	line	91
	global	__size_of_ecran_wait
	__size_of_ecran_wait	equ	__end_of_ecran_wait-_ecran_wait
	
_ecran_wait:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	94
	
l6200:
;ecran.c: 94: ecran_raz_digit();
	call	_ecran_raz_digit	;wreg free
	line	96
;ecran.c: 96: ecran_dot(1);
	movlw	(01h)&0ffh
	
	call	_ecran_dot
	line	98
	
l6202:
;ecran.c: 98: PORTCbits.RC2 = 1;
	bsf	((c:3970)),c,2	;volatile
	line	100
	
l6204:
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
psect	text42,class=CODE,space=0,reloc=2
	file	"test.c"
	line	3
global __ptext42
__ptext42:
psect	text42
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
	
l6164:
;test.c: 5: ecran_blank();
	call	_ecran_blank	;wreg free
	line	6
;test.c: 6: while(PORTCbits.RC5 == State)
	goto	l6178
	
l527:
	line	8
	
l6166:
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
	
l6168:; BSR set to: 0

;test.c: 9: ecran_refresh();
	call	_ecran_refresh	;wreg free
	line	11
	
l6170:
;test.c: 11: if ((PORTCbits.RC5 == 0) && (Micro.Phase == 0x01))
	btfsc	((c:3970)),c,5	;volatile
	goto	u5511
	goto	u5510
u5511:
	goto	l6178
u5510:
	
l6172:
	decf	(0+((c:_Micro)+02h)),c,w

	btfss	status,2
	goto	u5521
	goto	u5520
u5521:
	goto	l6178
u5520:
	line	13
	
l6174:
;test.c: 12: {
;test.c: 13: Test.Step = 0x01;
	movlb	0	; () banked
	movwf	(??_check_comutest+0+0)&0ffh
	movlw	low(01h)
	movwf	((c:_Test)),c
	movlb	0	; () banked
	movf	(??_check_comutest+0+0)&0ffh,w
	line	14
	
l6176:; BSR set to: 0

;test.c: 14: ecran_blank();
	call	_ecran_blank	;wreg free
	goto	l6178
	line	15
	
l528:
	goto	l6178
	line	16
	
l526:
	line	6
	
l6178:
	btfsc	((c:3970)),c,5	;volatile
	goto	u5531
	goto	u5530
u5531:
	movlw	1
	goto	u5536
u5530:
	movlw	0
u5536:
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((check_comutest@State))&0ffh,w
	btfsc	status,2
	goto	u5541
	goto	u5540
u5541:
	goto	l6166
u5540:
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
psect	text43,class=CODE,space=0,reloc=2
	file	"ecran.c"
	line	116
global __ptext43
__ptext43:
psect	text43
	file	"ecran.c"
	line	116
	global	__size_of_ecran_refresh
	__size_of_ecran_refresh	equ	__end_of_ecran_refresh-_ecran_refresh
	
_ecran_refresh:; BSR set to: 0

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	119
	
l5910:
;ecran.c: 118: if ( (Ecran.Solid == 0)
;ecran.c: 119: && ((++ Ecran.Cpt) <= Ecran.tRate))
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	(0+(_Ecran+0Fh))&0ffh
	goto	u5151
	goto	u5150
u5151:
	goto	l280
u5150:
	
l5912:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_Ecran+0Bh))&0ffh
	movlb	0	; () banked
	movf	(0+(_Ecran+0Bh))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_Ecran+0Ch))&0ffh,w
	btfss	status,0
	goto	u5161
	goto	u5160
u5161:
	goto	l280
u5160:
	line	121
	
l5914:; BSR set to: 0

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
	bra	u5177
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w
	bra	u5170
u5177:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u5170:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ecran_print_one_char@Character))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Ecran+0Ah))&0ffh,w
	
	call	_ecran_print_one_char
	line	123
	
l5916:
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
	
l5918:
;ecran.c: 125: if (++ Ecran.Index > 3) {Ecran.Index = 0;}
	movlb	0	; () banked
	lfsr	2,_Ecran+0Ah
	incf	indf2

	movlw	(04h-1)
	cpfsgt	indf2
	goto	u5181
	goto	u5180
u5181:
	goto	l280
u5180:
	
l5920:; BSR set to: 0

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
psect	text44,class=CODE,space=0,reloc=2
	line	50
global __ptext44
__ptext44:
psect	text44
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
	
l5632:
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
	goto	l5636
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
	
l5634:; BSR set to: 0

;ecran.c: 63: }
	goto	l264
	line	56
	
l257:; BSR set to: 0

	
l5636:
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
psect	text45,class=CODE,space=0,reloc=2
	line	3
global __ptext45
__ptext45:
psect	text45
	file	"ecran.c"
	line	3
	global	__size_of_ecran_raz_digit
	__size_of_ecran_raz_digit	equ	__end_of_ecran_raz_digit-_ecran_raz_digit
	
_ecran_raz_digit:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	5
	
l5562:
;ecran.c: 5: PORTD = 0;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	6
	
l5564:
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
psect	text46,class=CODE,space=0,reloc=2
	line	9
global __ptext46
__ptext46:
psect	text46
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
	
l5566:
;ecran.c: 11: switch (Char)
	goto	l5620
	line	13
;ecran.c: 12: {
;ecran.c: 13: case ' ': PORTD = 0x00; break;
	
l223:
	
l5568:
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	14
;ecran.c: 14: case 'A': PORTD = 0xB7; break;
	
l225:
	
l5570:
	movlw	low(0B7h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	15
;ecran.c: 15: case 'B': PORTD = 0xF2; break;
	
l226:
	
l5572:
	movlw	low(0F2h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	16
;ecran.c: 16: case 'C': PORTD = 0xD0; break;
	
l227:
	
l5574:
	movlw	low(0D0h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	17
;ecran.c: 17: case 'D': PORTD = 0xF1; break;
	
l228:
	
l5576:
	movlw	low(0F1h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	18
;ecran.c: 18: case 'E': PORTD = 0xD6; break;
	
l229:
	
l5578:
	movlw	low(0D6h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	19
;ecran.c: 19: case 'F': PORTD = 0x96; break;
	
l230:
	
l5580:
	movlw	low(096h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	20
;ecran.c: 20: case 'P': PORTD = 0x97; break;
	
l231:
	
l5582:
	movlw	low(097h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	21
;ecran.c: 21: case 'b': PORTD = 0xF2; break;
	
l232:
	
l5584:
	movlw	low(0F2h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	22
;ecran.c: 22: case 'c': PORTD = 0xD0; break;
	
l233:
	
l5586:
	movlw	low(0D0h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	23
;ecran.c: 23: case 'd': PORTD = 0xF1; break;
	
l234:
	
l5588:
	movlw	low(0F1h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	24
;ecran.c: 24: case 'S': PORTD = 0x76; break;
	
l235:
	
l5590:
	movlw	low(076h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	25
;ecran.c: 25: case 't': PORTD = 0xD2; break;
	
l236:
	
l5592:
	movlw	low(0D2h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	26
;ecran.c: 26: case '_': PORTD = 0x40; break;
	
l237:
	
l5594:
	movlw	low(040h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	27
;ecran.c: 27: case '-': PORTD = 0x10; break;
	
l238:
	
l5596:
	movlw	low(010h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	28
;ecran.c: 28: case '0': PORTD = 0xE7; break;
	
l239:
	
l5598:
	movlw	low(0E7h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	29
;ecran.c: 29: case '1': PORTD = 0x21; break;
	
l240:
	
l5600:
	movlw	low(021h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	30
;ecran.c: 30: case '2': PORTD = 0xD5; break;
	
l241:
	
l5602:
	movlw	low(0D5h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	31
;ecran.c: 31: case '3': PORTD = 0x75; break;
	
l242:
	
l5604:
	movlw	low(075h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	32
;ecran.c: 32: case '4': PORTD = 0x33; break;
	
l243:
	
l5606:
	movlw	low(033h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	33
;ecran.c: 33: case '5': PORTD = 0x76; break;
	
l244:
	
l5608:
	movlw	low(076h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	34
;ecran.c: 34: case '6': PORTD = 0xF6; break;
	
l245:
	
l5610:
	movlw	low(0F6h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	35
;ecran.c: 35: case '7': PORTD = 0x25; break;
	
l246:
	
l5612:
	movlw	low(025h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	36
;ecran.c: 36: case '8': PORTD = 0xF7; break;
	
l247:
	
l5614:
	movlw	low(0F7h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	37
;ecran.c: 37: case '9': PORTD = 0x77; break;
	
l248:
	
l5616:
	movlw	low(077h)
	movwf	((c:3971)),c	;volatile
	goto	l250
	line	38
;ecran.c: 38: default: break;
	
l249:
	goto	l250
	line	39
	
l5618:
;ecran.c: 39: }
	goto	l250
	line	11
	
l222:
	
l5620:
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
	goto	l5568
	xorlw	45^32	; case 45
	skipnz
	goto	l5596
	xorlw	48^45	; case 48
	skipnz
	goto	l5598
	xorlw	49^48	; case 49
	skipnz
	goto	l5600
	xorlw	50^49	; case 50
	skipnz
	goto	l5602
	xorlw	51^50	; case 51
	skipnz
	goto	l5604
	xorlw	52^51	; case 52
	skipnz
	goto	l5606
	xorlw	53^52	; case 53
	skipnz
	goto	l5608
	xorlw	54^53	; case 54
	skipnz
	goto	l5610
	xorlw	55^54	; case 55
	skipnz
	goto	l5612
	xorlw	56^55	; case 56
	skipnz
	goto	l5614
	xorlw	57^56	; case 57
	skipnz
	goto	l5616
	xorlw	65^57	; case 65
	skipnz
	goto	l5570
	xorlw	66^65	; case 66
	skipnz
	goto	l5572
	xorlw	67^66	; case 67
	skipnz
	goto	l5574
	xorlw	68^67	; case 68
	skipnz
	goto	l5576
	xorlw	69^68	; case 69
	skipnz
	goto	l5578
	xorlw	70^69	; case 70
	skipnz
	goto	l5580
	xorlw	80^70	; case 80
	skipnz
	goto	l5582
	xorlw	83^80	; case 83
	skipnz
	goto	l5590
	xorlw	95^83	; case 95
	skipnz
	goto	l5594
	xorlw	98^95	; case 98
	skipnz
	goto	l5584
	xorlw	99^98	; case 99
	skipnz
	goto	l5586
	xorlw	100^99	; case 100
	skipnz
	goto	l5588
	xorlw	116^100	; case 116
	skipnz
	goto	l5592
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
psect	text47,class=CODE,space=0,reloc=2
	line	42
global __ptext47
__ptext47:
psect	text47
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
	
l5628:
;ecran.c: 44: if (Dot == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((ecran_dot@Dot))&0ffh,w

	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l254
u4630:
	line	46
	
l5630:; BSR set to: 0

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
psect	text48,class=CODE,space=0,reloc=2
	line	103
global __ptext48
__ptext48:
psect	text48
	file	"ecran.c"
	line	103
	global	__size_of_ecran_blank
	__size_of_ecran_blank	equ	__end_of_ecran_blank-_ecran_blank
	
_ecran_blank:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	106
	
l5950:
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
	
l5952:; BSR set to: 0

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
	
l5954:; BSR set to: 0

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
	
l5956:; BSR set to: 0

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
	
l5958:; BSR set to: 0

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
	
l5960:; BSR set to: 0

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
psect	text49,class=CODE,space=0,reloc=2
	file	"armement.c"
	line	3
global __ptext49
__ptext49:
psect	text49
	file	"armement.c"
	line	3
	global	__size_of_arm_UAlim_1A
	__size_of_arm_UAlim_1A	equ	__end_of_arm_UAlim_1A-_arm_UAlim_1A
	
_arm_UAlim_1A:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	5
	
l6322:
;armement.c: 5: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((arm_UAlim_1A@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((arm_UAlim_1A@temp))&0ffh
	line	7
	
l6324:; BSR set to: 0

;armement.c: 7: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	8
	
l6326:; BSR set to: 0

;armement.c: 8: PORTBbits.RB1 = 1;
	bsf	((c:3969)),c,1	;volatile
	line	10
	
l6328:; BSR set to: 0

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
	
l6330:
;armement.c: 12: temp = ana_read(0);
	movlw	(0)&0ffh
	
	call	_ana_read
	movlb	0	; () banked
	movff	0+?_ana_read,(arm_UAlim_1A@temp)
	movlb	0	; () banked
	movff	1+?_ana_read,(arm_UAlim_1A@temp+1)
	line	14
	
l6332:; BSR set to: 0

;armement.c: 14: PORTAbits.RA5 = 0;
	bcf	((c:3968)),c,5	;volatile
	line	15
	
l6334:; BSR set to: 0

;armement.c: 15: PORTBbits.RB1 = 0;
	bcf	((c:3969)),c,1	;volatile
	line	17
	
l6336:; BSR set to: 0

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
	
l6338:
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
	
l6340:
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
	
l6342:
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
	goto	l1036
	
l6344:
	line	22
	
l1036:
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
psect	text50,class=CODE,space=0,reloc=2
	file	"analog.c"
	line	4
global __ptext50
__ptext50:
psect	text50
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
	
l6000:
;analog.c: 6: unsigned short temp = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ana_read@temp+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((ana_read@temp))&0ffh
	line	8
	
l6002:; BSR set to: 0

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
	
l6004:; BSR set to: 0

;analog.c: 9: ADCON0bits.ADON = 1;
	bsf	((c:4034)),c,0	;volatile
	line	11
	
l6006:; BSR set to: 0

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
	
l6008:
;analog.c: 13: ADCON0bits.GO_nDONE = 1;
	bsf	((c:4034)),c,2	;volatile
	line	14
;analog.c: 14: while (ADCON0bits.GO_nDONE);
	goto	l980
	
l981:
	
l980:
	btfsc	((c:4034)),c,2	;volatile
	goto	u5281
	goto	u5280
u5281:
	goto	l980
u5280:
	goto	l6010
	
l982:
	line	16
	
l6010:
;analog.c: 16: temp = ADRESH << 8;
	movf	((c:4036)),c,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((ana_read@temp+1))&0ffh
	movlb	0	; () banked
	clrf	((ana_read@temp))&0ffh
	line	17
	
l6012:; BSR set to: 0

;analog.c: 17: temp |= ADRESL;
	movf	((c:4035)),c,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	((ana_read@temp))&0ffh
	line	19
	
l6014:; BSR set to: 0

;analog.c: 19: ADCON0bits.ADON = 0;
	bcf	((c:4034)),c,0	;volatile
	line	21
	
l6016:; BSR set to: 0

;analog.c: 21: return temp;
	movff	(ana_read@temp),(?_ana_read)
	movff	(ana_read@temp+1),(?_ana_read+1)
	goto	l983
	
l6018:; BSR set to: 0

	line	22
	
l983:; BSR set to: 0

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
psect	text51,class=CODE,space=0,reloc=2
	file	"time.c"
	line	4
global __ptext51
__ptext51:
psect	text51
	file	"time.c"
	line	4
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	6
	
l5774:
;time.c: 6: unsigned short temp = Cptms;
	movff	(c:_Cptms),(delay_ms@temp)	;volatile
	movff	(c:_Cptms+1),(delay_ms@temp+1)	;volatile
	line	8
;time.c: 8: while((((unsigned short) (Cptms - temp) < TimeToWait) ? 1 : 0));
	goto	l5776
	
l879:
	goto	l5776
	
l878:
	
l5776:
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
	goto	u4921
	goto	u4920
u4921:
	goto	l5776
u4920:
	goto	l881
	
l880:; BSR set to: 0

	line	9
	
l881:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwtoft.c"
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
psect	text52,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwtoft.c"
	line	28
global __ptext52
__ptext52:
psect	text52
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	30
	
l6160:
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
	goto	l1733
	
l6162:
	line	31
	
l1733:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\fttol.c"
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
psect	text53,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\fttol.c"
	line	44
global __ptext53
__ptext53:
psect	text53
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	49
	
l6084:
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
	bnc	u5381
	bsf	(??___fttol+0+0+1)&0ffh,0
u5381:
	movlb	0	; () banked
	movf	(??___fttol+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	tstfsz	((___fttol@exp1))&0ffh
	goto	u5391
	goto	u5390
u5391:
	goto	l6090
u5390:
	line	50
	
l6086:; BSR set to: 0

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
	goto	l1584
	
l6088:; BSR set to: 0

	goto	l1584
	
l1583:; BSR set to: 0

	line	51
	
l6090:; BSR set to: 0

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
	goto	u5400
u5405:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??___fttol+1+2)&0ffh
	rrcf	(??___fttol+1+1)&0ffh
	rrcf	(??___fttol+1+0)&0ffh
u5400:
	movlb	0	; () banked
	decfsz	(??___fttol+4+0)&0ffh
	goto	u5405
	movlb	0	; () banked
	movf	(??___fttol+1+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l6092:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(15/8)+(___fttol@f1))&0ffh,(15)&7
	line	53
	
l6094:; BSR set to: 0

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
	
l6096:; BSR set to: 0

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
	
l6098:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l6100:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	btfss	((___fttol@exp1))&0ffh,7
	goto	u5411
	goto	u5410
u5411:
	goto	l6112
u5410:
	line	57
	
l6102:; BSR set to: 0

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
	goto	u5421
	goto	u5420
u5421:
	goto	l6108
u5420:
	line	58
	
l6104:; BSR set to: 0

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
	goto	l1584
	
l6106:; BSR set to: 0

	goto	l1584
	
l1586:; BSR set to: 0

	goto	l6108
	line	59
	
l1587:; BSR set to: 0

	line	60
	
l6108:; BSR set to: 0

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
	
l6110:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l6108
	goto	l6122
	
l1588:; BSR set to: 0

	line	62
	goto	l6122
	
l1585:; BSR set to: 0

	line	63
	
l6112:; BSR set to: 0

	movlw	(018h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u5431
	goto	u5430
u5431:
	goto	l6120
u5430:
	line	64
	
l6114:; BSR set to: 0

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
	goto	l1584
	
l6116:; BSR set to: 0

	goto	l1584
	
l1590:; BSR set to: 0

	line	65
	goto	l6120
	
l1592:; BSR set to: 0

	line	66
	
l6118:; BSR set to: 0

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
	goto	l6120
	line	68
	
l1591:; BSR set to: 0

	line	65
	
l6120:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((___fttol@exp1))&0ffh
	goto	u5441
	goto	u5440
u5441:
	goto	l6118
u5440:
	goto	l6122
	
l1593:; BSR set to: 0

	goto	l6122
	line	69
	
l1589:; BSR set to: 0

	line	70
	
l6122:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	btfsc	status,2
	goto	u5451
	goto	u5450
u5451:
	goto	l6126
u5450:
	line	71
	
l6124:; BSR set to: 0

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
	goto	l6126
	
l1594:; BSR set to: 0

	line	72
	
l6126:; BSR set to: 0

	movff	(___fttol@lval),(?___fttol)
	movff	(___fttol@lval+1),(?___fttol+1)
	movff	(___fttol@lval+2),(?___fttol+2)
	movff	(___fttol@lval+3),(?___fttol+3)
	goto	l1584
	
l6128:; BSR set to: 0

	line	73
	
l1584:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 51 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\ftmul.c"
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
psect	text54,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\ftmul.c"
	line	51
global __ptext54
__ptext54:
psect	text54
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\ftmul.c"
	line	51
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	56
	
l6036:
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
	bnc	u5321
	bsf	(??___ftmul+0+0+1)&0ffh,0
u5321:
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@exp))&0ffh
	movlb	0	; () banked
	tstfsz	((___ftmul@exp))&0ffh
	goto	u5331
	goto	u5330
u5331:
	goto	l6042
u5330:
	line	57
	
l6038:; BSR set to: 0

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

	goto	l1564
	
l6040:; BSR set to: 0

	goto	l1564
	
l1563:; BSR set to: 0

	line	58
	
l6042:; BSR set to: 0

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
	bnc	u5341
	bsf	(??___ftmul+0+0+1)&0ffh,0
u5341:
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@sign))&0ffh
	movlb	0	; () banked
	tstfsz	((___ftmul@sign))&0ffh
	goto	u5351
	goto	u5350
u5351:
	goto	l6048
u5350:
	line	59
	
l6044:; BSR set to: 0

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

	goto	l1564
	
l6046:; BSR set to: 0

	goto	l1564
	
l1565:; BSR set to: 0

	line	60
	
l6048:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftmul@sign))&0ffh,w
	addlw	low(07Bh)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((___ftmul@exp))&0ffh
	line	61
	
l6050:; BSR set to: 0

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
	
l6052:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f1))&0ffh,(15)&7
	line	66
	
l6054:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f2))&0ffh,(15)&7
	line	67
	
l6056:; BSR set to: 0

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
	
l6058:; BSR set to: 0

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
	
l6060:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___ftmul+0+0)&0ffh
	movlw	low(07h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	goto	l6062
	line	70
	
l1566:; BSR set to: 0

	line	71
	
l6062:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u5361
	goto	u5360
u5361:
	goto	l6066
u5360:
	line	72
	
l6064:; BSR set to: 0

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

	goto	l6066
	
l1567:; BSR set to: 0

	line	73
	
l6066:; BSR set to: 0

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
	
l6068:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l6062
	goto	l6070
	
l1568:; BSR set to: 0

	line	76
	
l6070:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??___ftmul+0+0)&0ffh
	movlw	low(09h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	movlb	0	; () banked
	movf	(??___ftmul+0+0)&0ffh,w
	goto	l6072
	line	77
	
l1569:; BSR set to: 0

	line	78
	
l6072:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u5371
	goto	u5370
u5371:
	goto	l6076
u5370:
	line	79
	
l6074:; BSR set to: 0

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

	goto	l6076
	
l1570:; BSR set to: 0

	line	80
	
l6076:; BSR set to: 0

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
	
l6078:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l6072
	goto	l6080
	
l1571:; BSR set to: 0

	line	83
	
l6080:; BSR set to: 0

	movff	(___ftmul@f3_as_product),(___ftpack@arg)
	movff	(___ftmul@f3_as_product+1),(___ftpack@arg+1)
	movff	(___ftmul@f3_as_product+2),(___ftpack@arg+2)
	movff	(___ftmul@exp),(___ftpack@exp)
	movff	(___ftmul@sign),(___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftmul)
	movff	1+?___ftpack,(?___ftmul+1)
	movff	2+?___ftpack,(?___ftmul+2)
	goto	l1564
	
l6082:
	line	84
	
l1564:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\float.c"
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
psect	text55,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\float.c"
	line	62
global __ptext55
__ptext55:
psect	text55
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	64
	
l5778:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@exp))&0ffh,w
	btfsc	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l5782
u4930:
	
l5780:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@arg))&0ffh,w
	movlb	0	; () banked
	iorwf	((___ftpack@arg+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((___ftpack@arg+2))&0ffh,w
	btfss	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l5788
u4940:
	goto	l5782
	
l1479:; BSR set to: 0

	line	65
	
l5782:; BSR set to: 0

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

	goto	l1480
	
l5784:; BSR set to: 0

	goto	l1480
	
l1477:; BSR set to: 0

	line	66
	goto	l5788
	
l1482:; BSR set to: 0

	line	67
	
l5786:; BSR set to: 0

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
	goto	l5788
	line	69
	
l1481:; BSR set to: 0

	line	66
	
l5788:; BSR set to: 0

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
	goto	u4951
	goto	u4950
u4951:
	goto	l5786
u4950:
	goto	l5794
	
l1483:; BSR set to: 0

	line	70
	goto	l5794
	
l1485:; BSR set to: 0

	line	71
	
l5790:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((___ftpack@exp))&0ffh
	line	72
	
l5792:; BSR set to: 0

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
	goto	l5794
	line	74
	
l1484:; BSR set to: 0

	line	70
	
l5794:; BSR set to: 0

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
	goto	u4961
	goto	u4960
u4961:
	goto	l5790
u4960:
	goto	l5798
	
l1486:; BSR set to: 0

	line	75
	goto	l5798
	
l1488:; BSR set to: 0

	line	76
	
l5796:; BSR set to: 0

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
	goto	l5798
	line	78
	
l1487:; BSR set to: 0

	line	75
	
l5798:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftpack@arg+1))&0ffh,(15)&7
	goto	u4971
	goto	u4970
u4971:
	goto	l5796
u4970:
	
l1489:; BSR set to: 0

	line	79
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((___ftpack@exp))&0ffh,(0)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l5802
u4980:
	line	80
	
l5800:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(15/8)+(___ftpack@arg))&0ffh,(15)&7
	goto	l5802
	
l1490:; BSR set to: 0

	line	81
	
l5802:; BSR set to: 0

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
	
l5804:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___ftpack@sign))&0ffh,w
	btfsc	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l5808
u4990:
	line	84
	
l5806:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(23/8)+(___ftpack@arg))&0ffh,(23)&7
	goto	l5808
	
l1491:; BSR set to: 0

	line	85
	
l5808:; BSR set to: 0

	movff	(___ftpack@arg),(?___ftpack)
	movff	(___ftpack@arg+1),(?___ftpack+1)
	movff	(___ftpack@arg+2),(?___ftpack+2)
	goto	l1480
	
l5810:; BSR set to: 0

	line	86
	
l1480:; BSR set to: 0

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
	
i1l5414:
;main.c: 53: if (RCIE && RCIF)
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i1u451_21
	goto	i1u451_20
i1u451_21:
	goto	i1l86
i1u451_20:
	
i1l5416:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i1u452_21
	goto	i1u452_20
i1u452_21:
	goto	i1l86
i1u452_20:
	line	55
	
i1l5418:
;main.c: 54: {
;main.c: 55: Cf.Data[Cf.Index] = RCREG;
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(_Cf+074h))&0ffh,w	;volatile
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
	movf	(0+(_Cf+074h))&0ffh,w	;volatile
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
	
i1l5420:; BSR set to: 1

;main.c: 58: Cf.Index ++;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	(0+(_Cf+074h))&0ffh	;volatile
	line	60
	
i1l5422:; BSR set to: 1

;main.c: 60: Cf.Time1 = Cptms;
	movff	(c:_Cptms),0+(_Cf+075h)	;volatile
	movff	(c:_Cptms+1),1+(_Cf+075h)	;volatile
	goto	i1l86
	line	62
	
i1l5424:; BSR set to: 1

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
	
i2l5426:
;main.c: 68: if (TMR0IE && TMR0IF)
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u453_41
	goto	i2u453_40
i2u453_41:
	goto	i2l102
i2u453_40:
	
i2l5428:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u454_41
	goto	i2u454_40
i2u454_41:
	goto	i2l102
i2u454_40:
	line	70
	
i2l5430:
;main.c: 69: {
;main.c: 70: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	72
	
i2l5432:
;main.c: 72: TMR0H = 0xF0;
	movlw	low(0F0h)
	movwf	((c:4055)),c	;volatile
	line	73
;main.c: 73: TMR0L = 0x8C;
	movlw	low(08Ch)
	movwf	((c:4054)),c	;volatile
	line	75
	
i2l5434:
;main.c: 75: Cptms ++;
	infsnz	((c:_Cptms)),c	;volatile
	incf	((c:_Cptms+1)),c	;volatile
	line	77
	
i2l5436:
;main.c: 77: if (-- Decompte == 0)
	decfsz	((c:_Decompte)),c	;volatile
	
	goto	i2l5442
	line	79
	
i2l5438:
;main.c: 78: {
;main.c: 79: Decompte = 50;
	movlw	low(032h)
	movwf	((c:_Decompte)),c	;volatile
	line	80
	
i2l5440:
;main.c: 80: Cpt1Sur20s ++;
	infsnz	((c:_Cpt1Sur20s)),c	;volatile
	incf	((c:_Cpt1Sur20s+1)),c	;volatile
	goto	i2l5442
	line	81
	
i2l90:
	line	83
	
i2l5442:
;main.c: 81: }
;main.c: 83: if (Micro.State)
	movf	(0+((c:_Micro)+04h)),c,w
	btfsc	status,2
	goto	i2u455_41
	goto	i2u455_40
i2u455_41:
	goto	i2l91
i2u455_40:
	line	85
	
i2l5444:
;main.c: 84: {
;main.c: 85: if (Feedback.Period == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Feedback+1))&0ffh,w
	iorwf ((_Feedback))&0ffh,w

	btfss	status,2
	goto	i2u456_41
	goto	i2u456_40
i2u456_41:
	goto	i2l5452
i2u456_40:
	line	87
	
i2l5446:; BSR set to: 0

;main.c: 86: {
;main.c: 87: Feedback.State = Micro.State;
	movff	0+((c:_Micro)+04h),0+(_Feedback+03h)
	line	88
	
i2l5448:; BSR set to: 0

;main.c: 88: Feedback.Period = 500;
	movlw	high(01F4h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Feedback+1))&0ffh
	movlw	low(01F4h)
	movlb	0	; () banked
	movwf	((_Feedback))&0ffh
	line	89
	
i2l5450:; BSR set to: 0

;main.c: 89: Feedback.Step = 0;
	movwf	(??_High_priority+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feedback+04h))&0ffh
	movf	(??_High_priority+0+0)&0ffh,c,w
	line	90
;main.c: 90: }
	goto	i2l5454
	line	91
	
i2l92:; BSR set to: 0

	line	93
	
i2l5452:; BSR set to: 0

;main.c: 91: else
;main.c: 92: {
;main.c: 93: Feedback.Period --;
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_Feedback))&0ffh
	btfss	status,0
	decf	((_Feedback+1))&0ffh
	goto	i2l5454
	line	94
	
i2l93:; BSR set to: 0

	line	96
	
i2l5454:; BSR set to: 0

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
	goto	i2u457_44
i2u457_45:
	bcf	status,0
	rlcf	(??_High_priority+0+0),c
	rlcf	(??_High_priority+0+1),c
i2u457_44:
	decfsz	(0+?___awdiv),c
	goto	i2u457_45
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
	goto	i2u458_41
	goto	i2u458_40
i2u458_41:
	goto	i2l102
i2u458_40:
	line	98
	
i2l5456:; BSR set to: 0

;main.c: 97: {
;main.c: 98: if ((Feedback.Step & 0x01) == 0)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	(0+(_Feedback+04h))&0ffh,(0)&7
	goto	i2u459_41
	goto	i2u459_40
i2u459_41:
	goto	i2l95
i2u459_40:
	line	100
	
i2l5458:; BSR set to: 0

;main.c: 99: {
;main.c: 100: if ((Feedback.Step == 0) || (-- Feedback.Pulse == 0))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_Feedback+04h))&0ffh,w
	btfsc	status,2
	goto	i2u460_41
	goto	i2u460_40
i2u460_41:
	goto	i2l98
i2u460_40:
	
i2l5460:; BSR set to: 0

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
	
i2l5462:; BSR set to: 0

;main.c: 103: Feedback.Pulse = 50;
	movwf	(??_High_priority+0+0)&0ffh,c
	movlw	low(032h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feedback+02h))&0ffh
	movf	(??_High_priority+0+0)&0ffh,c,w
	line	104
	
i2l5464:; BSR set to: 0

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
	
i2l5466:; BSR set to: 0

;main.c: 110: {
;main.c: 111: PORTCbits.RC4 = 0;
	bcf	((c:3970)),c,4	;volatile
	line	112
	
i2l5468:; BSR set to: 0

;main.c: 112: Feedback.Pulse = 50;
	movwf	(??_High_priority+0+0)&0ffh,c
	movlw	low(032h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_Feedback+02h))&0ffh
	movf	(??_High_priority+0+0)&0ffh,c,w
	line	113
	
i2l5470:; BSR set to: 0

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
	
i2l5472:
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
	
i2l5474:; BSR set to: 0

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
;;		line 8 in file "E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awdiv.c"
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
psect	text58,class=CODE,space=0,reloc=2
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awdiv.c"
	line	8
global __ptext58
__ptext58:
psect	text58
	file	"E:\Program Files (x86)\Microchip\xc8\v1.31\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	14
	
i2l5370:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	15
	
i2l5372:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	i2u445_41
	goto	i2u445_40
i2u445_41:
	goto	i2l5378
i2u445_40:
	line	16
	
i2l5374:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
i2l5376:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	goto	i2l5378
	line	18
	
i2l1351:
	line	19
	
i2l5378:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	i2u446_41
	goto	i2u446_40
i2u446_41:
	goto	i2l5384
i2u446_40:
	line	20
	
i2l5380:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
i2l5382:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	i2l5384
	line	22
	
i2l1352:
	line	23
	
i2l5384:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
i2l5386:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	i2u447_41
	goto	i2u447_40
i2u447_41:
	goto	i2l5406
i2u447_40:
	line	25
	
i2l5388:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	26
	goto	i2l5392
	
i2l1355:
	line	27
	
i2l5390:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	i2l5392
	line	29
	
i2l1354:
	line	26
	
i2l5392:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	i2u448_41
	goto	i2u448_40
i2u448_41:
	goto	i2l5390
i2u448_40:
	goto	i2l5394
	
i2l1356:
	goto	i2l5394
	line	30
	
i2l1357:
	line	31
	
i2l5394:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
i2l5396:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	i2u449_41
	goto	i2u449_40
i2u449_41:
	goto	i2l5402
i2u449_40:
	line	33
	
i2l5398:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
i2l5400:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	i2l5402
	line	35
	
i2l1358:
	line	36
	
i2l5402:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
i2l5404:
	decfsz	((c:___awdiv@counter)),c
	
	goto	i2l5394
	goto	i2l5406
	
i2l1359:
	goto	i2l5406
	line	38
	
i2l1353:
	line	39
	
i2l5406:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	i2u450_41
	goto	i2u450_40
i2u450_41:
	goto	i2l5410
i2u450_40:
	line	40
	
i2l5408:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	i2l5410
	
i2l1360:
	line	41
	
i2l5410:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	i2l1361
	
i2l5412:
	line	42
	
i2l1361:
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
