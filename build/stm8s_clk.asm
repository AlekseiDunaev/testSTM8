;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_clk
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HSIDivFactor
	.globl _CLK_DeInit
	.globl _CLK_FastHaltWakeUpCmd
	.globl _CLK_HSECmd
	.globl _CLK_HSICmd
	.globl _CLK_LSICmd
	.globl _CLK_CCOCmd
	.globl _CLK_ClockSwitchCmd
	.globl _CLK_SlowActiveHaltWakeUpCmd
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_HSIPrescalerConfig
	.globl _CLK_CCOConfig
	.globl _CLK_ITConfig
	.globl _CLK_SYSCLKConfig
	.globl _CLK_SWIMConfig
	.globl _CLK_ClockSecuritySystemEnable
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_GetClockFreq
	.globl _CLK_AdjustHSICalibrationValue
	.globl _CLK_SYSCLKEmergencyClear
	.globl _CLK_GetFlagStatus
	.globl _CLK_GetITStatus
	.globl _CLK_ClearITPendingBit
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
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 72: void CLK_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_DeInit:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
; genPointerSet
	mov	0x50c0+0, #0x01
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
; genPointerSet
	mov	0x50c1+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
; genPointerSet
	mov	0x50c4+0, #0xe1
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
; genPointerSet
	mov	0x50c5+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
; genPointerSet
	mov	0x50c6+0, #0x18
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
; genPointerSet
	mov	0x50c7+0, #0xff
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
; genPointerSet
	mov	0x50ca+0, #0xff
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
; genPointerSet
	mov	0x50c8+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
; genPointerSet
	mov	0x50c9+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
; genLabel
00101$:
; genPointerGet
	ld	a, 0x50c9
; genAnd
	srl	a
	jrnc	00116$
	jp	00101$
00116$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
; genPointerSet
	mov	0x50c9+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
; genPointerSet
	mov	0x50cc+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
; genPointerSet
	mov	0x50cd+0, #0x00
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_FastHaltWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_FastHaltWakeUpCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
; genPointerGet
	ld	a, 0x50c0
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c0, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_HSECmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
; genPointerGet
	ld	a, 0x50c1
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c1, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c1, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_HSICmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_HSICmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
; genPointerGet
	ld	a, 0x50c0
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c0, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_LSICmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_LSICmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
; genPointerGet
	ld	a, 0x50c0
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c0, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_CCOCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_CCOCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
; genPointerGet
	ld	a, 0x50c9
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c9, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c9, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSwitchCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClockSwitchCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c5
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c5, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x50c5, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_SlowActiveHaltWakeUpCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_SlowActiveHaltWakeUpCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
; genPointerGet
	ld	a, 0x50c0
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x50c0, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_CLK_PeripheralClockConfig:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00128$
00127$:
	sll	(0x02, sp)
	dec	a
	jrne	00127$
00128$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genCpl
	ld	a, (0x02, sp)
	cpl	a
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
; genAnd
	ld	a, (0x05, sp)
	bcp	a, #0x10
	jreq	00129$
	jp	00108$
00129$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50c7
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00130$
	jp	00102$
00130$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x50c7, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50c7, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genPointerGet
	ld	a, 0x50ca
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00131$
	jp	00105$
00131$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x50ca, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x50ca, a
; genLabel
00110$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
; genEndFunction
	popw	x
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_CLK_ClockSwitchConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
; genPointerGet
	ld	a, 0x50c3
	ld	yl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c5
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
; genCmpEQorNE
	push	a
	ld	a, (0x04, sp)
	dec	a
	pop	a
	jrne	00232$
	jp	00233$
00232$:
	jp	00122$
00233$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c5, a
; genPointerGet
	ld	a, 0x50c5
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00234$
	jp	00102$
00234$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c5, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c5, a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
; genPointerSet
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
; genAssign
	clrw	x
	decw	x
; genLabel
00105$:
; genPointerGet
	ld	a, 0x50c5
; genAnd
	srl	a
	jrc	00235$
	jp	00107$
00235$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00236$
	jp	00107$
00236$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
; genMinus
	decw	x
; genGoto
	jp	00105$
; genLabel
00107$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
; genIfx
	tnzw	x
	jrne	00237$
	jp	00109$
00237$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
; genAssign
	ld	a, #0x01
	ld	xl, a
; genGoto
	jp	00123$
; genLabel
00109$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
; genAssign
	clr	a
	ld	xl, a
; genGoto
	jp	00123$
; genLabel
00122$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00238$
	jp	00112$
00238$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c5, a
; genGoto
	jp	00113$
; genLabel
00112$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c5, a
; genLabel
00113$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
; genPointerSet
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
; genAssign
	clrw	x
	decw	x
; genLabel
00115$:
; genPointerGet
	ld	a, 0x50c5
; genAnd
	bcp	a, #0x08
	jrne	00239$
	jp	00117$
00239$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00240$
	jp	00117$
00240$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
; genMinus
	decw	x
; genGoto
	jp	00115$
; genLabel
00117$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
; genIfx
	tnzw	x
	jrne	00241$
	jp	00119$
00241$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
; genPointerGet
	ld	a, 0x50c5
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x50c5, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
; genAssign
	ld	a, #0x01
	ld	xl, a
; genGoto
	jp	00123$
; genLabel
00119$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
; genAssign
	clr	a
	ld	xl, a
; genLabel
00123$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
; genIfx
	ld	a, xl
	tnz	a
	jrne	00242$
	jp	00136$
00242$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
; genIfx
	tnz	(0x06, sp)
	jreq	00243$
	jp	00132$
00243$:
; genCmpEQorNE
	ld	a, yl
	cp	a, #0xe1
	jrne	00245$
	jp	00246$
00245$:
	jp	00132$
00246$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
; genPointerGet
	ld	a, 0x50c0
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00136$
; genLabel
00132$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
; genIfx
	tnz	(0x06, sp)
	jreq	00247$
	jp	00128$
00247$:
; genCmpEQorNE
	ld	a, yl
	cp	a, #0xd2
	jrne	00249$
	jp	00250$
00249$:
	jp	00128$
00250$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
; genPointerGet
	ld	a, 0x50c0
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c0, a
; genGoto
	jp	00136$
; genLabel
00128$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
; genIfx
	tnz	(0x06, sp)
	jreq	00251$
	jp	00136$
00251$:
; genCmpEQorNE
	ld	a, yl
	cp	a, #0xb4
	jrne	00253$
	jp	00254$
00253$:
	jp	00136$
00254$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
; genPointerGet
	ld	a, 0x50c1
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c1, a
; genLabel
00136$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
; genReturn
	ld	a, xl
; genLabel
00137$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
; genLabel
;	-----------------------------------------
;	 function CLK_HSIPrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_HSIPrescalerConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
; genAnd
	and	a, #0xe7
; genPointerSet
	ld	0x50c6, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
; genPointerGet
	ld	a, 0x50c6
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x50c6, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
; genLabel
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_CCOConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
; genPointerGet
	ld	a, 0x50c9
; genAnd
	and	a, #0xe1
; genPointerSet
	ld	0x50c9, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
; genPointerGet
	ld	a, 0x50c9
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x50c9, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
; genPointerGet
	ld	a, 0x50c9
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c9, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_ITConfig:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jrne	00140$
	ld	a, #0x01
	ld	(0x01, sp), a
	jp	00141$
00140$:
	clr	(0x01, sp)
00141$:
; genCmpEQorNE
	ld	a, (0x04, sp)
	cp	a, #0x1c
	jrne	00143$
	ld	a, #0x01
	jp	00144$
00143$:
	clr	a
00144$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00145$
	jp	00110$
00145$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
; genIfx
	tnz	(0x01, sp)
	jreq	00146$
	jp	00102$
00146$:
; genIfx
	tnz	a
	jrne	00147$
	jp	00112$
00147$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
; genPointerGet
	ld	a, 0x50c5
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c5, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
; genGoto
	jp	00112$
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
; genPointerGet
	ld	a, 0x50c8
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x50c8, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
; genGoto
	jp	00112$
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
; genLabel
00110$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
; genIfx
	tnz	(0x01, sp)
	jreq	00148$
	jp	00106$
00148$:
; genIfx
	tnz	a
	jrne	00149$
	jp	00112$
00149$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c5, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
; genGoto
	jp	00112$
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
; genLabel
00106$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
; genPointerGet
	ld	a, 0x50c8
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x50c8, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
; genLabel
00112$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
; genEndFunction
	pop	a
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_CLK_SYSCLKConfig:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
; genAnd
	tnz	(0x05, sp)
	jrpl	00111$
	jp	00102$
00111$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
; genAnd
	and	a, #0xe7
; genPointerSet
	ld	0x50c6, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
	ld	(0x02, sp), a
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x18
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x50c6, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x50c6, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
; genPointerGet
	ld	a, 0x50c6
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x07
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x50c6, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
; genEndFunction
	popw	x
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
; genLabel
;	-----------------------------------------
;	 function CLK_SWIMConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_SWIMConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
; genPointerGet
	ld	a, 0x50cd
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50cd, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50cd, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
; genLabel
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClockSecuritySystemEnable:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
; genPointerGet
	ld	a, 0x50c8
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x50c8, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
; genLabel
;	-----------------------------------------
;	 function CLK_GetSYSCLKSource
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_GetSYSCLKSource:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
; genPointerGet
	ld	a, 0x50c3
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 570: uint32_t CLK_GetClockFreq(void)
; genLabel
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_CLK_GetClockFreq:
	sub	sp, #5
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 577: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
; genPointerGet
	ld	a, 0x50c3
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 579: if (clocksource == CLK_SOURCE_HSI)
; genCmpEQorNE
	ld	a, (0x01, sp)
	cp	a, #0xe1
	jrne	00120$
	jp	00121$
00120$:
	jp	00105$
00121$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
; genPointerGet
	ld	a, 0x50c6
; genAnd
	and	a, #0x18
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: tmp = (uint8_t)(tmp >> 3);
; genRightShiftLiteral
	srl	a
	srl	a
	srl	a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: presc = HSIDivFactor[tmp];
; skipping iCode since result will be rematerialized
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #_HSIDivFactor
; genPointerGet
	ld	a, (x)
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 584: clockfrequency = HSI_VALUE / presc;
; genCast
; genAssign
	clrw	x
	ld	xl, a
	clrw	y
; genIPush
	pushw	x
	pushw	y
; genIPush
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
; genCall
	call	__divulong
	addw	sp, #8
; genAssign
	ldw	(0x04, sp), x
; genGoto
	jp	00106$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 586: else if ( clocksource == CLK_SOURCE_LSI)
; genCmpEQorNE
	ld	a, (0x01, sp)
	cp	a, #0xd2
	jrne	00123$
	jp	00124$
00123$:
	jp	00102$
00124$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 588: clockfrequency = LSI_VALUE;
; genAssign
	ldw	x, #0xf400
	ldw	(0x04, sp), x
	ldw	y, #0x0001
; genGoto
	jp	00106$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 592: clockfrequency = HSE_VALUE;
; genAssign
	ldw	x, #0x2400
	ldw	(0x04, sp), x
	ldw	y, #0x00f4
; genLabel
00106$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: return((uint32_t)clockfrequency);
; genReturn
	ldw	x, (0x04, sp)
; genLabel
00107$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 596: }
; genEndFunction
	addw	sp, #5
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 605: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
; genLabel
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_AdjustHSICalibrationValue:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
; genPointerGet
	ld	a, 0x50cc
; genAnd
	and	a, #0xf8
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x50cc, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 612: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 623: void CLK_SYSCLKEmergencyClear(void)
; genLabel
;	-----------------------------------------
;	 function CLK_SYSCLKEmergencyClear
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_SYSCLKEmergencyClear:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x50c5, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 626: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 635: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
; genLabel
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CLK_GetFlagStatus:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 645: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
; genAnd
	clr	a
	ld	xl, a
	ld	a, (0x04, sp)
; genAssign
	ld	xh, a
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 648: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
; genCmpEQorNE
	cpw	x, #0x0100
	jrne	00144$
	jp	00145$
00144$:
	jp	00111$
00145$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 650: tmpreg = CLK->ICKR;
; genPointerGet
	ld	a, 0x50c0
; genGoto
	jp	00112$
; genLabel
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 652: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
; genCmpEQorNE
	cpw	x, #0x0200
	jrne	00147$
	jp	00148$
00147$:
	jp	00108$
00148$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 654: tmpreg = CLK->ECKR;
; genPointerGet
	ld	a, 0x50c1
; genGoto
	jp	00112$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 656: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
; genCmpEQorNE
	cpw	x, #0x0300
	jrne	00150$
	jp	00151$
00150$:
	jp	00105$
00151$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 658: tmpreg = CLK->SWCR;
; genPointerGet
	ld	a, 0x50c5
; genGoto
	jp	00112$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 660: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
; genCmpEQorNE
	cpw	x, #0x0400
	jrne	00153$
	jp	00154$
00153$:
	jp	00102$
00154$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 662: tmpreg = CLK->CSSR;
; genPointerGet
	ld	a, 0x50c8
; genGoto
	jp	00112$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 666: tmpreg = CLK->CCOR;
; genPointerGet
	ld	a, 0x50c9
; genLabel
00112$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 669: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
; genCast
; genAssign
	push	a
	ld	a, (0x06, sp)
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00155$
	jp	00114$
00155$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 671: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00115$
; genLabel
00114$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 675: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00115$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: return((FlagStatus)bitstatus);
; genReturn
; genLabel
00116$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 680: }
; genEndFunction
	addw	sp, #1
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 688: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
; genLabel
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_GetITStatus:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 695: if (CLK_IT == CLK_IT_SWIF)
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x1c
	jrne	00128$
	jp	00129$
00128$:
	jp	00108$
00129$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 698: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, (0x03, sp)
; genCmpEQorNE
	cp	a, #0x0c
	jrne	00131$
	jp	00132$
00131$:
	jp	00102$
00132$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 700: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00109$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 704: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00109$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 710: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
; genPointerGet
	ld	a, 0x50c8
; genAnd
	and	a, (0x03, sp)
; genCmpEQorNE
	cp	a, #0x0c
	jrne	00134$
	jp	00135$
00134$:
	jp	00105$
00135$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 712: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00109$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 716: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00109$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: return bitstatus;
; genReturn
; genLabel
00110$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 722: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 730: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
; genLabel
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_ClearITPendingBit:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 735: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
; genCmpEQorNE
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jrne	00112$
	jp	00113$
00112$:
	jp	00102$
00113$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 738: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
; genPointerGet
	ld	a, 0x50c8
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c8, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 743: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
; genPointerGet
	ld	a, 0x50c5
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x50c5, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 746: }
; genEndFunction
	ret
	.area CODE
	.area CONST
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.area INITIALIZER
	.area CABS (ABS)
