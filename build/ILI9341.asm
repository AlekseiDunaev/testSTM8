;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module ILI9341
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay
	.globl _SPI_GetFlagStatus
	.globl _SPI_SendData
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _ILI9341_setup
	.globl _ILI9341_Write_Command
	.globl _ILI9341_Write_Data
	.globl _ILI9341_Init_Display
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	./Src/ILI9341.c: 5: void ILI9341_setup(void) {
; genLabel
;	-----------------------------------------
;	 function ILI9341_setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ILI9341_setup:
;	./Src/ILI9341.c: 7: GPIO_Init(ILI9341_DS_Port, ILI9341_DS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x10
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/ILI9341.c: 8: GPIO_Init(ILI9341_CS_Port, ILI9341_CS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/ILI9341.c: 9: GPIO_Init(ILI9341_Reset_Port, ILI9341_Reset_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x20
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/ILI9341.c: 10: GPIO_Init(ILI9341_CS_Port, ILI9341_CS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/ILI9341.c: 11: GPIO_Init(ILI9341_LED_Port, ILI9341_LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x10
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
; genLabel
00101$:
;	./Src/ILI9341.c: 13: }
; genEndFunction
	ret
;	./Src/ILI9341.c: 15: void ILI9341_Write_Command(int command) {
; genLabel
;	-----------------------------------------
;	 function ILI9341_Write_Command
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ILI9341_Write_Command:
;	./Src/ILI9341.c: 16: while(SPI_GetFlagStatus(SPI_FLAG_BSY));
; genLabel
00101$:
; genIPush
	push	#0x80
; genCall
	call	_SPI_GetFlagStatus
	addw	sp, #1
; genIfx
	tnz	a
	jreq	00129$
	jp	00101$
00129$:
;	./Src/ILI9341.c: 17: GPIO_WriteLow(ILI9341_CS_Port, ILI9341_CS_PIN);
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
;	./Src/ILI9341.c: 18: GPIO_WriteLow(ILI9341_DS_Port, ILI9341_DS_PIN);
; genIPush
	push	#0x10
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
;	./Src/ILI9341.c: 20: SPI_SendData(command);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genIPush
	push	a
; genCall
	call	_SPI_SendData
	pop	a
;	./Src/ILI9341.c: 21: while(!SPI_GetFlagStatus(SPI_FLAG_TXE));
; genLabel
00104$:
; genIPush
	push	#0x02
; genCall
	call	_SPI_GetFlagStatus
	addw	sp, #1
; genIfx
	tnz	a
	jrne	00130$
	jp	00104$
00130$:
;	./Src/ILI9341.c: 23: GPIO_WriteHigh(ILI9341_CS_Port, ILI9341_CS_PIN);
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./Src/ILI9341.c: 24: GPIO_WriteHigh(ILI9341_DS_Port, ILI9341_DS_PIN);
; genIPush
	push	#0x10
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
; genLabel
00107$:
;	./Src/ILI9341.c: 25: }
; genEndFunction
	ret
;	./Src/ILI9341.c: 27: void ILI9341_Write_Data(int data) {
; genLabel
;	-----------------------------------------
;	 function ILI9341_Write_Data
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ILI9341_Write_Data:
;	./Src/ILI9341.c: 28: while(SPI_GetFlagStatus(SPI_FLAG_BSY));
; genLabel
00101$:
; genIPush
	push	#0x80
; genCall
	call	_SPI_GetFlagStatus
	addw	sp, #1
; genIfx
	tnz	a
	jreq	00129$
	jp	00101$
00129$:
;	./Src/ILI9341.c: 29: GPIO_WriteLow(ILI9341_CS_Port, ILI9341_CS_PIN);
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
;	./Src/ILI9341.c: 30: GPIO_WriteHigh(ILI9341_DS_Port, ILI9341_DS_PIN);
; genIPush
	push	#0x10
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./Src/ILI9341.c: 32: SPI_SendData(data);
; genCast
; genAssign
	ld	a, (0x04, sp)
; genIPush
	push	a
; genCall
	call	_SPI_SendData
	pop	a
;	./Src/ILI9341.c: 33: while(!SPI_GetFlagStatus(SPI_FLAG_TXE));
; genLabel
00104$:
; genIPush
	push	#0x02
; genCall
	call	_SPI_GetFlagStatus
	addw	sp, #1
; genIfx
	tnz	a
	jrne	00130$
	jp	00104$
00130$:
;	./Src/ILI9341.c: 35: GPIO_WriteHigh(ILI9341_CS_Port, ILI9341_CS_PIN);
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
; genLabel
00107$:
;	./Src/ILI9341.c: 36: }
; genEndFunction
	ret
;	./Src/ILI9341.c: 38: void ILI9341_Init_Display() {
; genLabel
;	-----------------------------------------
;	 function ILI9341_Init_Display
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ILI9341_Init_Display:
;	./Src/ILI9341.c: 39: GPIO_WriteHigh(ILI9341_CS_Port, ILI9341_CS_PIN);
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./Src/ILI9341.c: 40: GPIO_WriteLow(ILI9341_Reset_Port, ILI9341_Reset_PIN);
; genIPush
	push	#0x20
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_WriteLow
	addw	sp, #3
;	./Src/ILI9341.c: 41: delay(100000);
; genIPush
	push	#0xa0
	push	#0x86
	push	#0x01
	push	#0x00
; genCall
	call	_delay
	addw	sp, #4
;	./Src/ILI9341.c: 43: GPIO_WriteHigh(ILI9341_Reset_Port, ILI9341_Reset_PIN);
; genIPush
	push	#0x20
; genIPush
	push	#0x05
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./Src/ILI9341.c: 44: GPIO_WriteHigh(ILI9341_LED_Port, ILI9341_LED_PIN);
; genIPush
	push	#0x10
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_WriteHigh
	addw	sp, #3
;	./Src/ILI9341.c: 45: delay(100000);
; genIPush
	push	#0xa0
	push	#0x86
	push	#0x01
	push	#0x00
; genCall
	call	_delay
	addw	sp, #4
;	./Src/ILI9341.c: 47: ILI9341_Write_Command(ILI9341_RESET);
; genIPush
	push	#0x01
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 48: delay(100000);
; genIPush
	push	#0xa0
	push	#0x86
	push	#0x01
	push	#0x00
; genCall
	call	_delay
	addw	sp, #4
;	./Src/ILI9341.c: 51: ILI9341_Write_Command(ILI9341_POWERA);
; genIPush
	push	#0xcb
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 52: ILI9341_Write_Data(0x39);
; genIPush
	push	#0x39
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 53: ILI9341_Write_Data(0x2C);
; genIPush
	push	#0x2c
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 54: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 55: ILI9341_Write_Data(0x34);
; genIPush
	push	#0x34
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 56: ILI9341_Write_Data(0x02);
; genIPush
	push	#0x02
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 57: ILI9341_Write_Command(ILI9341_POWERB);
; genIPush
	push	#0xcf
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 58: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 59: ILI9341_Write_Data(0xC1);
; genIPush
	push	#0xc1
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 60: ILI9341_Write_Data(0x30);
; genIPush
	push	#0x30
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 61: ILI9341_Write_Command(ILI9341_DTCA);
; genIPush
	push	#0xe8
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 62: ILI9341_Write_Data(0x85);
; genIPush
	push	#0x85
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 63: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 64: ILI9341_Write_Data(0x78);
; genIPush
	push	#0x78
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 65: ILI9341_Write_Command(ILI9341_DTCB);
; genIPush
	push	#0xea
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 66: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 67: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 68: ILI9341_Write_Command(ILI9341_POWER_SEQ);
; genIPush
	push	#0xed
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 69: ILI9341_Write_Data(0x64);
; genIPush
	push	#0x64
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 70: ILI9341_Write_Data(0x03);
; genIPush
	push	#0x03
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 71: ILI9341_Write_Data(0x12);
; genIPush
	push	#0x12
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 72: ILI9341_Write_Data(0x81);
; genIPush
	push	#0x81
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 73: ILI9341_Write_Command(ILI9341_PRC);
; genIPush
	push	#0xf7
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 74: ILI9341_Write_Data(0x20);
; genIPush
	push	#0x20
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 75: ILI9341_Write_Command(ILI9341_POWER1);
; genIPush
	push	#0xc0
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 76: ILI9341_Write_Data(0x23);
; genIPush
	push	#0x23
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 77: ILI9341_Write_Command(ILI9341_POWER2);
; genIPush
	push	#0xc1
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 78: ILI9341_Write_Data(0x10);
; genIPush
	push	#0x10
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 79: ILI9341_Write_Command(ILI9341_VCOM1);
; genIPush
	push	#0xc5
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 80: ILI9341_Write_Data(0x3E);
; genIPush
	push	#0x3e
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 81: ILI9341_Write_Data(0x28);
; genIPush
	push	#0x28
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 82: ILI9341_Write_Command(ILI9341_VCOM2);
; genIPush
	push	#0xc7
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 83: ILI9341_Write_Data(0x86);
; genIPush
	push	#0x86
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 84: ILI9341_Write_Command(ILI9341_MAC);
; genIPush
	push	#0x36
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 85: ILI9341_Write_Data(0x48);
; genIPush
	push	#0x48
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 86: ILI9341_Write_Command(ILI9341_PIXEL_FORMAT);
; genIPush
	push	#0x3a
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 87: ILI9341_Write_Data(0x55);
; genIPush
	push	#0x55
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 88: ILI9341_Write_Command(ILI9341_FRC);
; genIPush
	push	#0xb1
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 89: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 90: ILI9341_Write_Data(0x18);
; genIPush
	push	#0x18
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 91: ILI9341_Write_Command(ILI9341_DFC);
; genIPush
	push	#0xb6
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 92: ILI9341_Write_Data(0x08);
; genIPush
	push	#0x08
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 93: ILI9341_Write_Data(0x82);
; genIPush
	push	#0x82
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 94: ILI9341_Write_Data(0x27);
; genIPush
	push	#0x27
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 95: ILI9341_Write_Command(ILI9341_3GAMMA_EN);
; genIPush
	push	#0xf2
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 96: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 97: ILI9341_Write_Command(ILI9341_COLUMN_ADDR);
; genIPush
	push	#0x2a
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 98: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 99: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 100: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 101: ILI9341_Write_Data(0xEF);
; genIPush
	push	#0xef
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 102: ILI9341_Write_Command(ILI9341_PAGE_ADDR);
; genIPush
	push	#0x2b
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 103: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 104: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 105: ILI9341_Write_Data(0x01);
; genIPush
	push	#0x01
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 106: ILI9341_Write_Data(0x3F);
; genIPush
	push	#0x3f
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 107: ILI9341_Write_Command(ILI9341_GAMMA);
; genIPush
	push	#0x26
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 108: ILI9341_Write_Data(0x01);
; genIPush
	push	#0x01
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 109: ILI9341_Write_Command(ILI9341_PGAMMA);
; genIPush
	push	#0xe0
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 110: ILI9341_Write_Data(0x0F);
; genIPush
	push	#0x0f
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 111: ILI9341_Write_Data(0x31);
; genIPush
	push	#0x31
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 112: ILI9341_Write_Data(0x2B);
; genIPush
	push	#0x2b
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 113: ILI9341_Write_Data(0x0C);
; genIPush
	push	#0x0c
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 114: ILI9341_Write_Data(0x0E);
; genIPush
	push	#0x0e
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 115: ILI9341_Write_Data(0x08);
; genIPush
	push	#0x08
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 116: ILI9341_Write_Data(0x4E);
; genIPush
	push	#0x4e
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 117: ILI9341_Write_Data(0xF1);
; genIPush
	push	#0xf1
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 118: ILI9341_Write_Data(0x37);
; genIPush
	push	#0x37
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 119: ILI9341_Write_Data(0x07);
; genIPush
	push	#0x07
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 120: ILI9341_Write_Data(0x10);
; genIPush
	push	#0x10
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 121: ILI9341_Write_Data(0x03);
; genIPush
	push	#0x03
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 122: ILI9341_Write_Data(0x0E);
; genIPush
	push	#0x0e
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 123: ILI9341_Write_Data(0x09);
; genIPush
	push	#0x09
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 124: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 125: ILI9341_Write_Command(ILI9341_NGAMMA);
; genIPush
	push	#0xe1
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 126: ILI9341_Write_Data(0x00);
; genIPush
	clrw	x
	pushw	x
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 127: ILI9341_Write_Data(0x0E);
; genIPush
	push	#0x0e
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 128: ILI9341_Write_Data(0x14);
; genIPush
	push	#0x14
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 129: ILI9341_Write_Data(0x03);
; genIPush
	push	#0x03
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 130: ILI9341_Write_Data(0x11);
; genIPush
	push	#0x11
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 131: ILI9341_Write_Data(0x07);
; genIPush
	push	#0x07
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 132: ILI9341_Write_Data(0x31);
; genIPush
	push	#0x31
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 133: ILI9341_Write_Data(0xC1);
; genIPush
	push	#0xc1
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 134: ILI9341_Write_Data(0x48);
; genIPush
	push	#0x48
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 135: ILI9341_Write_Data(0x08);
; genIPush
	push	#0x08
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 136: ILI9341_Write_Data(0x0F);
; genIPush
	push	#0x0f
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 137: ILI9341_Write_Data(0x0C);
; genIPush
	push	#0x0c
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 138: ILI9341_Write_Data(0x31);
; genIPush
	push	#0x31
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 139: ILI9341_Write_Data(0x36);
; genIPush
	push	#0x36
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 140: ILI9341_Write_Data(0x0F);
; genIPush
	push	#0x0f
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
;	./Src/ILI9341.c: 142: ILI9341_Write_Command(ILI9341_SLEEP_OUT);
; genIPush
	push	#0x11
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 144: delay(100000);
; genIPush
	push	#0xa0
	push	#0x86
	push	#0x01
	push	#0x00
; genCall
	call	_delay
	addw	sp, #4
;	./Src/ILI9341.c: 146: ILI9341_Write_Command(ILI9341_DISPLAY_ON);
; genIPush
	push	#0x29
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/ILI9341.c: 147: ILI9341_Write_Command(ILI9341_GRAM);
; genIPush
	push	#0x2c
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
; genLabel
00101$:
;	./Src/ILI9341.c: 149: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
