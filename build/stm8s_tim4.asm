;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_tim4
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_DeInit
	.globl _TIM4_TimeBaseInit
	.globl _TIM4_Cmd
	.globl _TIM4_ITConfig
	.globl _TIM4_UpdateDisableConfig
	.globl _TIM4_UpdateRequestConfig
	.globl _TIM4_SelectOnePulseMode
	.globl _TIM4_PrescalerConfig
	.globl _TIM4_ARRPreloadConfig
	.globl _TIM4_GenerateEvent
	.globl _TIM4_SetCounter
	.globl _TIM4_SetAutoreload
	.globl _TIM4_GetCounter
	.globl _TIM4_GetPrescaler
	.globl _TIM4_GetFlagStatus
	.globl _TIM4_ClearFlag
	.globl _TIM4_GetITStatus
	.globl _TIM4_ClearITPendingBit
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
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_DeInit:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5340+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
; genPointerSet
	mov	0x5343+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
; genPointerSet
	mov	0x5346+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
; genPointerSet
	mov	0x5347+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
; genPointerSet
	mov	0x5348+0, #0xff
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
; genPointerSet
	mov	0x5344+0, #0x00
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 57: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
; genLabel
;	-----------------------------------------
;	 function TIM4_TimeBaseInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_TimeBaseInit:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
; genPointerSet
	ldw	x, #0x5347
	ld	a, (0x03, sp)
	ld	(x), a
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
; genPointerSet
	ldw	x, #0x5348
	ld	a, (0x04, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 73: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_Cmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
; genPointerGet
	ld	a, 0x5340
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 87: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5340, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5340, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 95: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_ITConfig:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
; genPointerGet
	ld	a, 0x5343
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 113: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5343, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
; genCpl
	push	a
	ld	a, (0x05, sp)
	cpl	a
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5343, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 123: }
; genEndFunction
	pop	a
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_UpdateDisableConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_UpdateDisableConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
; genPointerGet
	ld	a, 0x5340
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 137: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5340, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5340, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 145: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
; genLabel
;	-----------------------------------------
;	 function TIM4_UpdateRequestConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_UpdateRequestConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
; genPointerGet
	ld	a, 0x5340
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5340, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5340, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 169: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
; genLabel
;	-----------------------------------------
;	 function TIM4_SelectOnePulseMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_SelectOnePulseMode:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
; genPointerGet
	ld	a, 0x5340
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5340, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5340, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 193: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
; genLabel
;	-----------------------------------------
;	 function TIM4_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_PrescalerConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
; genPointerSet
	ldw	x, #0x5347
	ld	a, (0x03, sp)
	ld	(x), a
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
; genPointerSet
	ldw	x, #0x5345
	ld	a, (0x04, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 226: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM4_ARRPreloadConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_ARRPreloadConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
; genPointerGet
	ld	a, 0x5340
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 240: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5340, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5340, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 248: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
; genLabel
;	-----------------------------------------
;	 function TIM4_GenerateEvent
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GenerateEvent:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
; genPointerSet
	ldw	x, #0x5345
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 264: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
; genLabel
;	-----------------------------------------
;	 function TIM4_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_SetCounter:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
; genPointerSet
	ldw	x, #0x5346
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 276: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
; genLabel
;	-----------------------------------------
;	 function TIM4_SetAutoreload
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_SetAutoreload:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
; genPointerSet
	ldw	x, #0x5348
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 288: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GetCounter:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
; genPointerGet
	ld	a, 0x5346
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 299: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetPrescaler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GetPrescaler:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
; genPointerGet
	ld	a, 0x5347
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 310: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GetFlagStatus:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
; genPointerGet
	ld	a, 0x5344
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 328: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 332: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
; genReturn
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 335: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM4_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_ClearFlag:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
; genCpl
	ld	a, (0x03, sp)
	cpl	a
; genPointerSet
	ld	0x5344, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 351: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM4_GetITStatus:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
; genPointerGet
	ld	a, 0x5344
; genAnd
	and	a, (0x04, sp)
; genAssign
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
; genPointerGet
	ld	a, 0x5343
; genAnd
	and	a, (0x04, sp)
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
; genIfx
	tnz	(0x01, sp)
	jrne	00117$
	jp	00102$
00117$:
; genIfx
	tnz	a
	jrne	00118$
	jp	00102$
00118$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
; genReturn
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 382: }
; genEndFunction
	addw	sp, #1
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
; genLabel
;	-----------------------------------------
;	 function TIM4_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_ClearITPendingBit:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
; genCpl
	ld	a, (0x03, sp)
	cpl	a
; genPointerSet
	ld	0x5344, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 398: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
