;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_OVERLOAD
	.globl _main
	.globl _ILI9341_Write_Data
	.globl _ILI9341_Write_Command
	.globl _ILI9341_Init_Display
	.globl _ILI9341_setup
	.globl _TIM4_ClearITPendingBit
	.globl _TIM4_ITConfig
	.globl _TIM4_Cmd
	.globl _TIM4_TimeBaseInit
	.globl _TIM4_DeInit
	.globl _SPI_Cmd
	.globl _SPI_Init
	.globl _SPI_DeInit
	.globl _GPIO_ReadInputPin
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _CLK_GetFlagStatus
	.globl _CLK_SYSCLKConfig
	.globl _CLK_HSIPrescalerConfig
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_ClockSwitchCmd
	.globl _CLK_LSICmd
	.globl _CLK_HSICmd
	.globl _CLK_HSECmd
	.globl _CLK_DeInit
	.globl _count
	.globl _status
	.globl _delay
	.globl _clock_setup
	.globl _GPIO_setup
	.globl _SPI_setup
	.globl _TIM4_setup
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_status::
	.ds 1
_count::
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int 0x000000 ; int3
	int 0x000000 ; int4
	int 0x000000 ; int5
	int 0x000000 ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int 0x000000 ; int11
	int 0x000000 ; int12
	int 0x000000 ; int13
	int 0x000000 ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int 0x000000 ; int17
	int 0x000000 ; int18
	int 0x000000 ; int19
	int 0x000000 ; int20
	int 0x000000 ; int21
	int 0x000000 ; int22
	int _TIM4_OVERLOAD ; int23
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	./Src/main.c: 28: int main() {
; genLabel
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_main:
;	./Src/main.c: 30: clock_setup();
; genCall
	call	_clock_setup
;	./Src/main.c: 31: GPIO_setup();
; genCall
	call	_GPIO_setup
;	./Src/main.c: 32: SPI_setup();
; genCall
	call	_SPI_setup
;	./Src/main.c: 33: ILI9341_setup();
; genCall
	call	_ILI9341_setup
;	./Src/main.c: 34: ILI9341_Init_Display();
; genCall
	call	_ILI9341_Init_Display
;	./Src/main.c: 35: TIM4_setup();
; genCall
	call	_TIM4_setup
;	./Src/main.c: 39: __endasm;
;	genInline
	RIM;
;	./Src/main.c: 41: while(1)
; genLabel
00114$:
;	./Src/main.c: 43: if (GPIO_ReadInputPin(FUNCS_PORT, FUNC1_PIN)) {
; genIPush
	push	#0x02
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
; genIfx
	tnz	a
	jrne	00143$
	jp	00102$
00143$:
;	./Src/main.c: 44: status.func1 = 1;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
; genGoto
	jp	00103$
; genLabel
00102$:
;	./Src/main.c: 46: status.func1 = 0;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, #0xfb
	and	a, (x)
	ld	(x), a
; genLabel
00103$:
;	./Src/main.c: 49: if (GPIO_ReadInputPin(FUNCS_PORT, FUNC2_PIN)) {
; genIPush
	push	#0x04
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
; genIfx
	tnz	a
	jrne	00144$
	jp	00105$
00144$:
;	./Src/main.c: 50: status.func2 = 1;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
; genGoto
	jp	00106$
; genLabel
00105$:
;	./Src/main.c: 52: status.func2 = 0;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, #0xf7
	and	a, (x)
	ld	(x), a
; genLabel
00106$:
;	./Src/main.c: 55: if (GPIO_ReadInputPin(SELS_PORT, SEL1_PIN)) {
; genIPush
	push	#0x20
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
; genIfx
	tnz	a
	jrne	00145$
	jp	00108$
00145$:
;	./Src/main.c: 56: status.sel1 = 1;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
; genGoto
	jp	00109$
; genLabel
00108$:
;	./Src/main.c: 58: status.sel1 = 0;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, #0xfe
	and	a, (x)
	ld	(x), a
; genLabel
00109$:
;	./Src/main.c: 61: if (GPIO_ReadInputPin(SELS_PORT, SEL2_PIN)) {
; genIPush
	push	#0x40
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_ReadInputPin
	addw	sp, #3
; genIfx
	tnz	a
	jrne	00146$
	jp	00111$
00146$:
;	./Src/main.c: 62: status.sel2 = 1;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
; genGoto
	jp	00112$
; genLabel
00111$:
;	./Src/main.c: 64: status.sel2 = 0;
; skipping iCode since result will be rematerialized
; skipping iCode since result will be rematerialized
; genPointerSet
	ldw	x, #_status
	ld	a, #0xfd
	and	a, (x)
	ld	(x), a
; genLabel
00112$:
;	./Src/main.c: 70: ILI9341_Write_Command(0xFF);
; genIPush
	push	#0xff
	push	#0x00
; genCall
	call	_ILI9341_Write_Command
	popw	x
;	./Src/main.c: 71: ILI9341_Write_Data(0xFF);
; genIPush
	push	#0xff
	push	#0x00
; genCall
	call	_ILI9341_Write_Data
	popw	x
; genGoto
	jp	00114$
; genLabel
00116$:
;	./Src/main.c: 74: }
; genEndFunction
	ret
;	./Src/main.c: 76: void delay(long n) {
; genLabel
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_delay:
	sub	sp, #4
;	./Src/main.c: 77: while (n--> 0);
; genAssign
	ldw	y, (0x09, sp)
	ldw	x, (0x07, sp)
; genLabel
00101$:
; genAssign
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
; genMinus
	subw	y, #0x0001
	ld	a, xl
	sbc	a, #0x00
	ld	xl, a
	ld	a, xh
	sbc	a, #0x00
	ld	xh, a
; genCmp
; genCmpTop
	clr	a
	cp	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	clr	a
	sbc	a, (0x02, sp)
	clr	a
	sbc	a, (0x01, sp)
	jrsge	00112$
	jp	00101$
00112$:
; skipping generated iCode
; genLabel
00104$:
;	./Src/main.c: 78: }
; genEndFunction
	addw	sp, #4
	ret
;	./Src/main.c: 80: void clock_setup() {
; genLabel
;	-----------------------------------------
;	 function clock_setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_clock_setup:
;	./Src/main.c: 81: CLK_DeInit();
; genCall
	call	_CLK_DeInit
;	./Src/main.c: 82: CLK_HSECmd(DISABLE);
; genIPush
	push	#0x00
; genCall
	call	_CLK_HSECmd
	pop	a
;	./Src/main.c: 83: CLK_LSICmd(DISABLE);
; genIPush
	push	#0x00
; genCall
	call	_CLK_LSICmd
	pop	a
;	./Src/main.c: 84: CLK_HSICmd(ENABLE); 
; genIPush
	push	#0x01
; genCall
	call	_CLK_HSICmd
	pop	a
;	./Src/main.c: 85: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
; genLabel
00101$:
; genIPush
	push	#0x02
	push	#0x01
; genCall
	call	_CLK_GetFlagStatus
	popw	x
; genIfx
	tnz	a
	jrne	00116$
	jp	00101$
00116$:
;	./Src/main.c: 86: CLK_ClockSwitchCmd(ENABLE);
; genIPush
	push	#0x01
; genCall
	call	_CLK_ClockSwitchCmd
	pop	a
;	./Src/main.c: 87: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
; genIPush
	push	#0x18
; genCall
	call	_CLK_HSIPrescalerConfig
	pop	a
;	./Src/main.c: 88: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
; genIPush
	push	#0x80
; genCall
	call	_CLK_SYSCLKConfig
	pop	a
;	./Src/main.c: 89: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
; genIPush
	push	#0x01
; genIPush
	push	#0x00
; genIPush
	push	#0xe1
; genIPush
	push	#0x01
; genCall
	call	_CLK_ClockSwitchConfig
	addw	sp, #4
;	./Src/main.c: 90: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
; genIPush
	push	#0x01
; genIPush
	push	#0x01
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 91: CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
; genIPush
	push	#0x00
; genIPush
	push	#0x00
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 92: CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
; genIPush
	push	#0x00
; genIPush
	push	#0x13
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 93: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
; genIPush
	push	#0x00
; genIPush
	push	#0x12
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 94: CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
; genIPush
	push	#0x00
; genIPush
	push	#0x03
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 95: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
; genIPush
	push	#0x00
; genIPush
	push	#0x07
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 96: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
; genIPush
	push	#0x00
; genIPush
	push	#0x05
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
;	./Src/main.c: 97: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
; genIPush
	push	#0x01
; genIPush
	push	#0x04
; genCall
	call	_CLK_PeripheralClockConfig
	popw	x
; genLabel
00104$:
;	./Src/main.c: 98: }
; genEndFunction
	ret
;	./Src/main.c: 100: void GPIO_setup() {
; genLabel
;	-----------------------------------------
;	 function GPIO_setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_setup:
;	./Src/main.c: 101: GPIO_DeInit(GPIOC);
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_DeInit
	popw	x
;	./Src/main.c: 102: GPIO_DeInit(GPIOD);
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_DeInit
	popw	x
;	./Src/main.c: 103: GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x08
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 104: GPIO_Init(SPI_Port, ((GPIO_Pin_TypeDef) SPI_SCK_PIN | SPI_MOSI_PIN), GPIO_MODE_OUT_PP_HIGH_FAST);
; genIPush
	push	#0xf0
; genIPush
	push	#0x60
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 107: GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
; genIPush
	push	#0x08
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 114: GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x80
; genIPush
	push	#0x0a
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 120: GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
; genIPush
	push	#0x02
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 126: GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
; genIPush
	push	#0x04
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 133: GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x08
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 139: GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
; genIPush
	push	#0xe0
; genIPush
	push	#0x10
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 145: GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
; genIPush
	push	#0x20
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
;	./Src/main.c: 151: GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);
; genIPush
	push	#0x00
; genIPush
	push	#0x40
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_Init
	addw	sp, #4
; genLabel
00101$:
;	./Src/main.c: 153: }
; genEndFunction
	ret
;	./Src/main.c: 155: void SPI_setup(void) {
; genLabel
;	-----------------------------------------
;	 function SPI_setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_setup:
;	./Src/main.c: 156: SPI_DeInit();
; genCall
	call	_SPI_DeInit
;	./Src/main.c: 157: SPI_Init(SPI_FIRSTBIT_MSB,
; genIPush
	push	#0x00
; genIPush
	push	#0x02
; genIPush
	push	#0xc0
; genIPush
	push	#0x00
; genIPush
	push	#0x02
; genIPush
	push	#0x04
; genIPush
	push	#0x10
; genIPush
	push	#0x00
; genCall
	call	_SPI_Init
	addw	sp, #8
;	./Src/main.c: 165: SPI_Cmd(ENABLE);
; genIPush
	push	#0x01
; genCall
	call	_SPI_Cmd
	pop	a
; genLabel
00101$:
;	./Src/main.c: 166: }
; genEndFunction
	ret
;	./Src/main.c: 168: void TIM4_setup() {
; genLabel
;	-----------------------------------------
;	 function TIM4_setup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_setup:
;	./Src/main.c: 169: TIM4_DeInit();
; genCall
	call	_TIM4_DeInit
;	./Src/main.c: 170: TIM4_TimeBaseInit(TIM4_PRESCALER_128, 0xFF);
; genIPush
	push	#0xff
; genIPush
	push	#0x07
; genCall
	call	_TIM4_TimeBaseInit
	popw	x
;	./Src/main.c: 171: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
; genIPush
	push	#0x01
; genIPush
	push	#0x01
; genCall
	call	_TIM4_ITConfig
	popw	x
;	./Src/main.c: 172: TIM4_Cmd(ENABLE);
; genIPush
	push	#0x01
; genCall
	call	_TIM4_Cmd
	pop	a
; genLabel
00101$:
;	./Src/main.c: 173: }
; genEndFunction
	ret
;	./Src/main.c: 175: void TIM4_OVERLOAD(void) __interrupt(23) {
; genLabel
;	-----------------------------------------
;	 function TIM4_OVERLOAD
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_OVERLOAD:
;	Reset bit 6 of reg CC. Hardware bug workaround.
	div	x, a
;	./Src/main.c: 176: TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);  
; genIPush
	push	#0x01
; genCall
	call	_TIM4_ClearITPendingBit
	pop	a
;	./Src/main.c: 178: if (!count) {
; genIfx
	ldw	x, _count+0
	jreq	00111$
	jp	00102$
00111$:
;	./Src/main.c: 179: GPIO_WriteReverse(GPIOD, GPIO_PIN_3);
; genIPush
	push	#0x08
; genIPush
	push	#0x0f
	push	#0x50
; genCall
	call	_GPIO_WriteReverse
	addw	sp, #3
;	./Src/main.c: 180: count=70;
; genAssign
	ldw	x, #0x0046
	ldw	_count+0, x
; genGoto
	jp	00104$
; genLabel
00102$:
;	./Src/main.c: 182: count--;
; genMinus
	ldw	x, _count+0
	decw	x
; genAssign
	ldw	_count+0, x
; genLabel
00104$:
;	./Src/main.c: 184: }
; genEndFunction
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__status:
	.db 0x2f
__xinit__count:
	.dw #0x0046
	.area CABS (ABS)
