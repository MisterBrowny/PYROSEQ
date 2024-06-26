
	; Microchip MPLAB XC8 C Compiler V1.31
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=18F452 -G -mdist/default/production/Pyronum.production.map \
	; -DXPRJ_default=default --double=32 --float=24 --emi=wordwrite \
	; --opt=+asm,-asmfile,+speed,-space,-debug --addrqual=ignore -P -N255 \
	; -Iinclude --warn=0 --asmlist \
	; --summary=default,-psect,-class,+mem,-hex,-file \
	; --output=default,-inhx032 \
	; --runtime=default,+clear,+init,+keep,-no_startup,-download,+config,+clib,+plib \
	; --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto \
	; --errformat=%f:%l: error: (%n) %s \
	; --warnformat=%f:%l: warning: (%n) %s \
	; --msgformat=%f:%l: advisory: (%n) %s \
	; -odist/default/production/Pyronum.production.elf \
	; build/default/production/main.p1 build/default/production/hardware.p1 \
	; build/default/production/ecran.p1 build/default/production/eeprom.p1 \
	; build/default/production/config.p1 build/default/production/test.p1 \
	; build/default/production/utils.p1 build/default/production/bouton.p1 \
	; build/default/production/micro.p1 \
	; build/default/production/powerup.obj build/default/production/time.p1 \
	; build/default/production/register.p1 \
	; build/default/production/analog.p1 \
	; build/default/production/armement.p1 build/default/production/feu.p1
	;


	processor	18F452

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CODE,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	eeprom_data,class=EEDATA,delta=1,noexec
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	nop	; NOP for reset vector (precedes GOTO instruction)
	global powerup

; Power-up routine detected. Jumping to powerup - assumes powerup will jump back to start
	goto	powerup
	GLOBAL __accesstop
__accesstop EQU 128


	psect	init
start:

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	017Ah
	stackhi	equ	05FFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:
___inthi_sp:
___intlo_sp:

	psect	end_init
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Config register IDLOC0 @ 0x200000
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x0
		db 0xFF

; Config register IDLOC1 @ 0x200001
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x1
		db 0xFF

; Config register IDLOC2 @ 0x200002
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x2
		db 0xFF

; Config register IDLOC3 @ 0x200003
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x3
		db 0xFF

; Config register IDLOC4 @ 0x200004
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x4
		db 0xFF

; Config register IDLOC5 @ 0x200005
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x5
		db 0xFF

; Config register IDLOC6 @ 0x200006
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x6
		db 0xFF

; Config register IDLOC7 @ 0x200007
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x7
		db 0xFF

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x0
		db 0xFF

; Config register CONFIG1H @ 0x300001
;	Oscillator System Clock Switch Enable bit
;	OSCS = OFF, Oscillator system clock switch option is disabled (main oscillator is source)
;	Oscillator Selection bits
;	OSC = HSPLL, HS oscillator with PLL enabled/Clock frequency = (4 x FOSC)

	psect	config,class=CONFIG,delta=1,noexec
		org 0x1
		db 0x26

; Config register CONFIG2L @ 0x300002
;	Brown-out Reset Enable bit
;	BOR = ON, Brown-out Reset enabled
;	Brown-out Reset Voltage bits
;	BORV = 45, VBOR set to 4.5V
;	Power-up Timer Enable bit
;	PWRT = ON, PWRT enabled

	psect	config,class=CONFIG,delta=1,noexec
		org 0x2
		db 0x2

; Config register CONFIG2H @ 0x300003
;	Watchdog Timer Postscale Select bits
;	WDTPS = 1, 1:1
;	Watchdog Timer Enable bit
;	WDT = OFF, WDT disabled (control is placed on the SWDTEN bit)

	psect	config,class=CONFIG,delta=1,noexec
		org 0x3
		db 0x0

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x4
		db 0xFF

; Config register CONFIG3H @ 0x300005
;	CCP2 Mux bit
;	CCP2MUX = OFF, CCP2 input/output is multiplexed with RB3

	psect	config,class=CONFIG,delta=1,noexec
		org 0x5
		db 0x0

; Config register CONFIG4L @ 0x300006
;	Background Debugger Enable bit
;	DEBUG = ON, Background Debugger enabled. RB6 and RB7 are dedicated to In-Circuit Debug.
;	Low Voltage ICSP Enable bit
;	LVP = OFF, Low Voltage ICSP disabled
;	Stack Full/Underflow Reset Enable bit
;	STVR = OFF, Stack Full/Underflow will not cause RESET

	psect	config,class=CONFIG,delta=1,noexec
		org 0x6
		db 0x0

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x7
		db 0xFF

; Config register CONFIG5L @ 0x300008
;	Code Protection bit
;	CP0 = OFF, Block 0 (000200-001FFFh) not code protected
;	Code Protection bit
;	CP1 = OFF, Block 1 (002000-003FFFh) not code protected
;	Code Protection bit
;	CP2 = OFF, Block 2 (004000-005FFFh) not code protected
;	Code Protection bit
;	CP3 = OFF, Block 3 (006000-007FFFh) not code protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x8
		db 0xF

; Config register CONFIG5H @ 0x300009
;	Data EEPROM Code Protection bit
;	CPD = OFF, Data EEPROM not code protected
;	Boot Block Code Protection bit
;	CPB = OFF, Boot Block (000000-0001FFh) not code protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x9
		db 0xC0

; Config register CONFIG6L @ 0x30000A
;	Write Protection bit
;	WRT0 = OFF, Block 0 (000200-001FFFh) not write protected
;	Write Protection bit
;	WRT1 = OFF, Block 1 (002000-003FFFh) not write protected
;	Write Protection bit
;	WRT2 = OFF, Block 2 (004000-005FFFh) not write protected
;	Write Protection bit
;	WRT3 = OFF, Block 3 (006000-007FFFh) not write protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0xA
		db 0xF

; Config register CONFIG6H @ 0x30000B
;	Boot Block Write Protection bit
;	WRTB = OFF, Boot Block (000000-0001FFh) not write protected
;	Configuration Register Write Protection bit
;	WRTC = OFF, Configuration registers (300000-3000FFh) not write protected
;	Data EEPROM Write Protection bit
;	WRTD = OFF, Data EEPROM not write protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0xB
		db 0xE0

; Config register CONFIG7L @ 0x30000C
;	Table Read Protection bit
;	EBTR0 = OFF, Block 0 (000200-001FFFh) not protected from Table Reads executed in other blocks
;	Table Read Protection bit
;	EBTR1 = OFF, Block 1 (002000-003FFFh) not protected from Table Reads executed in other blocks
;	Table Read Protection bit
;	EBTR2 = OFF, Block 2 (004000-005FFFh) not protected from Table Reads executed in other blocks
;	Table Read Protection bit
;	EBTR3 = OFF, Block 3 (006000-007FFFh) not protected from Table Reads executed in other blocks

	psect	config,class=CONFIG,delta=1,noexec
		org 0xC
		db 0xF

; Config register CONFIG7H @ 0x30000D
;	Boot Block Table Read Protection bit
;	EBTRB = OFF, Boot Block (000000-0001FFh) not protected from Table Reads executed in other blocks

	psect	config,class=CONFIG,delta=1,noexec
		org 0xD
		db 0x40


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect sfr,class=SFR,space=1


	end	start
