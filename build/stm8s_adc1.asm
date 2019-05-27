;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_adc1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_DeInit
	.globl _ADC1_Init
	.globl _ADC1_Cmd
	.globl _ADC1_ScanModeCmd
	.globl _ADC1_DataBufferCmd
	.globl _ADC1_ITConfig
	.globl _ADC1_PrescalerConfig
	.globl _ADC1_SchmittTriggerConfig
	.globl _ADC1_ConversionConfig
	.globl _ADC1_ExternalTriggerConfig
	.globl _ADC1_StartConversion
	.globl _ADC1_GetConversionValue
	.globl _ADC1_AWDChannelConfig
	.globl _ADC1_SetHighThreshold
	.globl _ADC1_SetLowThreshold
	.globl _ADC1_GetBufferValue
	.globl _ADC1_GetAWDChannelStatus
	.globl _ADC1_GetFlagStatus
	.globl _ADC1_ClearFlag
	.globl _ADC1_GetITStatus
	.globl _ADC1_ClearITPendingBit
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
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ADC1_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_DeInit:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
; genPointerSet
	mov	0x5400+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5401+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5402+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
; genPointerSet
	mov	0x5403+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
; genPointerSet
	mov	0x5406+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
; genPointerSet
	mov	0x5407+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
; genPointerSet
	mov	0x5408+0, #0xff
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
; genPointerSet
	mov	0x5409+0, #0x03
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
; genPointerSet
	mov	0x540a+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
; genPointerSet
	mov	0x540b+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
; genPointerSet
	mov	0x540e+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
; genPointerSet
	mov	0x540f+0, #0x00
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 66: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
; genLabel
;	-----------------------------------------
;	 function ADC1_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_Init:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 103: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
; genIPush
	ld	a, (0x08, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genIPush
	ld	a, (0x05, sp)
	push	a
; genCall
	call	_ADC1_ConversionConfig
	addw	sp, #3
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 105: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
; genIPush
	ld	a, (0x05, sp)
	push	a
; genCall
	call	_ADC1_PrescalerConfig
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 110: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
; genIPush
	ld	a, (0x07, sp)
	push	a
; genIPush
	ld	a, (0x07, sp)
	push	a
; genCall
	call	_ADC1_ExternalTriggerConfig
	popw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 115: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
; genIPush
	ld	a, (0x0a, sp)
	push	a
; genIPush
	ld	a, (0x0a, sp)
	push	a
; genCall
	call	_ADC1_SchmittTriggerConfig
	popw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 118: ADC1->CR1 |= ADC1_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 119: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 126: void ADC1_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_Cmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 131: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 137: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5401, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 139: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 146: void ADC1_ScanModeCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_ScanModeCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_ScanModeCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
; genPointerGet
	ld	a, 0x5402
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 151: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5402, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 157: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5402, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 159: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 166: void ADC1_DataBufferCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_DataBufferCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_DataBufferCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
; genPointerGet
	ld	a, 0x5403
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 171: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5403, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 177: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5403, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 179: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 190: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_ADC1_ITConfig:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
; genPointerGet
	ld	a, 0x5400
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 196: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
; genCast
; genAssign
	ld	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5400, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 204: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
; genCpl
	ldw	x, (0x04, sp)
	cplw	x
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5400, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 206: }
; genEndFunction
	pop	a
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 214: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
; genLabel
;	-----------------------------------------
;	 function ADC1_PrescalerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_PrescalerConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 220: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
; genPointerGet
	ld	a, 0x5401
; genAnd
	and	a, #0x8f
; genPointerSet
	ld	0x5401, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 222: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 223: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 233: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_SchmittTriggerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_ADC1_SchmittTriggerConfig:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 239: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
; genCmpEQorNE
	ld	a, (0x05, sp)
	inc	a
	jrne	00144$
	jp	00145$
00144$:
	jp	00114$
00145$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5407
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 241: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00146$
	jp	00102$
00146$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
; genPointerSet
	mov	0x5407+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0x00
; genGoto
	jp	00116$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 248: ADC1->TDRL |= (uint8_t)0xFF;
; genPointerSet
	mov	0x5407+0, #0xff
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 249: ADC1->TDRH |= (uint8_t)0xFF;
; genPointerGet
; Dummy read
	ld	a, 0x5406
; genPointerSet
	mov	0x5406+0, #0xff
; genGoto
	jp	00116$
; genLabel
00114$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 252: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
; genCmp
; genCmpTop
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrc	00147$
	jp	00111$
00147$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5407
	ld	(0x02, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, (0x06, sp)
	jreq	00149$
00148$:
	sll	(1, sp)
	dec	a
	jrne	00148$
00149$:
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 254: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00150$
	jp	00105$
00150$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5407, a
; genGoto
	jp	00116$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 260: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5407, a
; genGoto
	jp	00116$
; genLabel
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
; genPointerGet
	ld	a, 0x5406
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
; genMinus
	ld	a, (0x05, sp)
	sub	a, #0x08
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00152$
00151$:
	sll	(1, sp)
	dec	a
	jrne	00151$
00152$:
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 265: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00153$
	jp	00108$
00153$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
; genGoto
	jp	00116$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 271: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5406, a
; genLabel
00116$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 274: }
; genEndFunction
	popw	x
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 286: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
; genLabel
;	-----------------------------------------
;	 function ADC1_ConversionConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_ConversionConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 294: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5402, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 296: ADC1->CR2 |= (uint8_t)(ADC1_Align);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x5402, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
; genPointerGet
	ld	a, 0x5401
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 298: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
; genCmpEQorNE
	push	a
	ld	a, (0x04, sp)
	dec	a
	pop	a
	jrne	00112$
	jp	00113$
00112$:
	jp	00102$
00113$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5401, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 306: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5401, a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 310: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5400, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 312: ADC1->CSR |= (uint8_t)(ADC1_Channel);
; genPointerGet
	ld	a, 0x5400
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5400, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 313: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 325: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_ExternalTriggerConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_ExternalTriggerConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 332: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
; genPointerGet
	ld	a, 0x5402
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5402, a
; genPointerGet
	ld	a, 0x5402
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 334: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 337: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5402, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 342: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5402, a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 346: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
; genPointerGet
	ld	a, 0x5402
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x5402, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 347: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 358: void ADC1_StartConversion(void)
; genLabel
;	-----------------------------------------
;	 function ADC1_StartConversion
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_StartConversion:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 360: ADC1->CR1 |= ADC1_CR1_ADON;
; genPointerGet
	ld	a, 0x5401
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5401, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 361: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 370: uint16_t ADC1_GetConversionValue(void)
; genLabel
;	-----------------------------------------
;	 function ADC1_GetConversionValue
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_ADC1_GetConversionValue:
	sub	sp, #8
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 375: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
; genPointerGet
	ld	a, 0x5402
; genAnd
	bcp	a, #0x08
	jrne	00111$
	jp	00102$
00111$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 378: templ = ADC1->DRL;
; genPointerGet
	ld	a, 0x5405
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 380: temph = ADC1->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	y
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 382: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
; genLeftShiftLiteral
	clr	(0x08, sp)
; genCast
; genAssign
	clr	(0x05, sp)
; genOr
	or	a, (0x05, sp)
	ld	xh, a
	ld	a, xl
	or	a, (0x08, sp)
	ld	xl, a
; genAssign
	ldw	(0x03, sp), x
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 387: temph = ADC1->DRH;
; genPointerGet
	ld	a, 0x5404
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genAssign
	exgw	x, y
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 389: templ = ADC1->DRL;
; genPointerGet
	ld	a, 0x5405
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 391: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
; genLeftShiftLiteral
	clr	a
; genOr
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x01, sp)
	ld	xh, a
; genAssign
	ldw	(0x03, sp), x
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 394: return ((uint16_t)temph);
; genReturn
	ldw	x, (0x03, sp)
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 395: }
; genEndFunction
	addw	sp, #8
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 405: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function ADC1_AWDChannelConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_ADC1_AWDChannelConfig:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 411: if (Channel < (uint8_t)8)
; genCmp
; genCmpTop
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrc	00127$
	jp	00108$
00127$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
; genPointerGet
	ld	a, 0x540f
	ld	(0x02, sp), a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, (0x06, sp)
	jreq	00129$
00128$:
	sll	(1, sp)
	dec	a
	jrne	00128$
00129$:
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 413: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00130$
	jp	00102$
00130$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x540f, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 419: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x540f, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
; genPointerGet
	ld	a, 0x540e
	ld	(0x01, sp), a
; genMinus
	ld	a, (0x05, sp)
	sub	a, #0x08
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00132$
00131$:
	sll	(1, sp)
	dec	a
	jrne	00131$
00132$:
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 424: if (NewState != DISABLE)
; genIfx
	tnz	(0x06, sp)
	jrne	00133$
	jp	00105$
00133$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x540e, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 430: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x540e, a
; genLabel
00110$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 433: }
; genEndFunction
	popw	x
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 441: void ADC1_SetHighThreshold(uint16_t Threshold)
; genLabel
;	-----------------------------------------
;	 function ADC1_SetHighThreshold
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_SetHighThreshold:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 443: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
; genRightShiftLiteral
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5408, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 444: ADC1->HTRL = (uint8_t)Threshold;
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x5409, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 445: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 453: void ADC1_SetLowThreshold(uint16_t Threshold)
; genLabel
;	-----------------------------------------
;	 function ADC1_SetLowThreshold
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_SetLowThreshold:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 455: ADC1->LTRL = (uint8_t)Threshold;
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x540b, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 456: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
; genRightShiftLiteral
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x540a, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 457: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 466: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
; genLabel
;	-----------------------------------------
;	 function ADC1_GetBufferValue
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 11 bytes.
_ADC1_GetBufferValue:
	sub	sp, #11
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
; genPointerGet
	ld	a, 0x5402
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
; genCast
; genAssign
	ld	a, (0x0e, sp)
; genLeftShiftLiteral
	sll	a
; genCast
; genAssign
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genCast
; genAssign
	exgw	x, y
; genPlus
	ldw	x, y
	addw	x, #0x53e1
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
; genPlus
	addw	y, #0x53e0
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
; genCast
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
; genCast
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
; genPointerGet
	ld	a, (x)
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
; genPointerGet
	ld	a, (y)
; genCast
; genAssign
	clrw	y
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
; genAnd
	push	a
	ld	a, (0x02, sp)
	bcp	a, #0x08
	pop	a
	jrne	00111$
	jp	00102$
00111$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 481: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
; genLeftShiftLiteral
	clr	(0x0b, sp)
; genCast
; genAssign
	clr	(0x08, sp)
; genOr
	or	a, (0x08, sp)
	ld	xh, a
	ld	a, xl
	or	a, (0x0b, sp)
	ld	xl, a
; genAssign
	ldw	(0x06, sp), x
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 486: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 488: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
; genAssign
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 490: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
; genCast
; genAssign
	rlwa	x
	clr	a
	rrwa	x
; genLeftShiftLiteral
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x04, sp), x
; genLeftShiftLiteral
	ld	xl, a
	clr	a
; genOr
	or	a, (0x05, sp)
	ld	(0x03, sp), a
	ld	a, xl
	or	a, (0x04, sp)
; genAssign
	ld	(0x06, sp), a
	ld	a, (0x03, sp)
	ld	(0x07, sp), a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 493: return ((uint16_t)temph);
; genReturn
	ldw	x, (0x06, sp)
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 494: }
; genEndFunction
	addw	sp, #11
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 502: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
; genLabel
;	-----------------------------------------
;	 function ADC1_GetAWDChannelStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_ADC1_GetAWDChannelStatus:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 509: if (Channel < (uint8_t)8)
; genCmp
; genCmpTop
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrc	00111$
	jp	00102$
00111$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 511: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
; genPointerGet
	ld	a, 0x540d
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, (0x06, sp)
	jreq	00113$
00112$:
	sll	(0x02, sp)
	dec	a
	jrne	00112$
00113$:
	pop	a
; genAnd
	and	a, (0x01, sp)
; genAssign
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 515: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
; genPointerGet
	ld	a, 0x540c
	ld	xl, a
; genMinus
	ld	a, (0x05, sp)
	sub	a, #0x08
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00115$
00114$:
	sll	(0x02, sp)
	dec	a
	jrne	00114$
00115$:
; genAnd
	ld	a, xl
	and	a, (0x02, sp)
; genAssign
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 518: return ((FlagStatus)status);
; genReturn
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 519: }
; genEndFunction
	popw	x
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 527: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
; genLabel
;	-----------------------------------------
;	 function ADC1_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_ADC1_GetFlagStatus:
	sub	sp, #4
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 535: if ((Flag & 0x0F) == 0x01)
; genCast
; genAssign
	ld	a, (0x07, sp)
	clr	(0x03, sp)
; genAnd
	push	a
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	pop	a
; genCmpEQorNE
	decw	x
	jrne	00128$
	jp	00129$
00128$:
	jp	00108$
00129$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 538: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
; genPointerGet
	ld	a, 0x5403
; genAnd
	and	a, #0x40
; genGoto
	jp	00109$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 540: else if ((Flag & 0xF0) == 0x10)
; genAnd
	and	a, #0xf0
	ld	xl, a
	clr	a
; genCmpEQorNE
	ld	xh, a
	cpw	x, #0x0010
	jrne	00131$
	jp	00132$
00131$:
	jp	00105$
00132$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 543: temp = (uint8_t)(Flag & (uint8_t)0x0F);
; genAnd
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 544: if (temp < 8)
; genCmp
; genCmpTop
	ld	a, xl
	cp	a, #0x08
	jrc	00133$
	jp	00102$
00133$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 546: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
; genPointerGet
	ld	a, 0x540d
	ld	(0x02, sp), a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00135$
00134$:
	sll	(1, sp)
	dec	a
	jrne	00134$
00135$:
	pop	a
; genAnd
	and	a, (0x02, sp)
; genAssign
; genGoto
	jp	00109$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 550: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
; genPointerGet
	ld	a, 0x540c
	ld	(0x01, sp), a
; genCast
; genAssign
; genMinus
	subw	x, #8
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00137$
00136$:
	sll	(1, sp)
	dec	a
	jrne	00136$
00137$:
	pop	a
; genCast
; genAssign
; genAnd
	and	a, (0x01, sp)
; genAssign
; genGoto
	jp	00109$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 555: flagstatus = (uint8_t)(ADC1->CSR & Flag);
; genPointerGet
	ld	a, 0x5400
; genAnd
	and	a, (0x07, sp)
; genAssign
; genLabel
00109$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 557: return ((FlagStatus)flagstatus);
; genReturn
; genLabel
00110$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 559: }
; genEndFunction
	addw	sp, #4
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 567: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
; genLabel
;	-----------------------------------------
;	 function ADC1_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_ADC1_ClearFlag:
	sub	sp, #5
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 574: if ((Flag & 0x0F) == 0x01)
; genCast
; genAssign
	ld	a, (0x08, sp)
	clr	(0x04, sp)
; genAnd
	push	a
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	pop	a
; genCmpEQorNE
	decw	x
	jrne	00128$
	jp	00129$
00128$:
	jp	00108$
00129$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 577: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
; genPointerGet
	ld	a, 0x5403
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5403, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 579: else if ((Flag & 0xF0) == 0x10)
; genAnd
	and	a, #0xf0
	ld	xl, a
	clr	a
; genCmpEQorNE
	ld	xh, a
	cpw	x, #0x0010
	jrne	00131$
	jp	00132$
00131$:
	jp	00105$
00132$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 582: temp = (uint8_t)(Flag & (uint8_t)0x0F);
; genAnd
	ld	a, (0x08, sp)
	and	a, #0x0f
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 583: if (temp < 8)
; genCmp
; genCmpTop
	ld	a, xl
	cp	a, #0x08
	jrc	00133$
	jp	00102$
00133$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 585: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
; genPointerGet
	ld	a, 0x540d
	ld	(0x03, sp), a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00135$
00134$:
	sll	(1, sp)
	dec	a
	jrne	00134$
00135$:
	pop	a
; genCpl
	cpl	a
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	0x540d, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 589: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
; genPointerGet
	ld	a, 0x540c
	ld	(0x02, sp), a
; genCast
; genAssign
; genMinus
	subw	x, #8
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00137$
00136$:
	sll	(1, sp)
	dec	a
	jrne	00136$
00137$:
	pop	a
; genCast
; genAssign
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x540c, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 594: ADC1->CSR &= (uint8_t) (~Flag);
; genPointerGet
	ld	a, 0x5400
	ld	(0x01, sp), a
; genCpl
	ld	a, (0x08, sp)
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5400, a
; genLabel
00110$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 596: }
; genEndFunction
	addw	sp, #5
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 616: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
; genLabel
;	-----------------------------------------
;	 function ADC1_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_ADC1_GetITStatus:
	sub	sp, #3
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
; genAnd
	ld	a, (0x07, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
; genCast
; genAssign
	ld	a, (0x07, sp)
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
; genCmpEQorNE
	cpw	x, #0x0010
	jrne	00120$
	jp	00121$
00120$:
	jp	00105$
00121$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
; genAnd
	and	a, #0x0f
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 628: if (temp < 8)
; genCmp
; genCmpTop
	ld	a, xl
	cp	a, #0x08
	jrc	00122$
	jp	00102$
00122$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 630: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
; genPointerGet
	ld	a, 0x540d
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x04, sp), a
	ld	a, xl
	tnz	a
	jreq	00124$
00123$:
	sll	(0x04, sp)
	dec	a
	jrne	00123$
00124$:
	pop	a
; genAnd
	and	a, (0x03, sp)
; genAssign
; genGoto
	jp	00106$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 634: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
; genPointerGet
	ld	a, 0x540c
	ld	(0x02, sp), a
; genCast
; genAssign
; genMinus
	subw	x, #8
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00126$
00125$:
	sll	(1, sp)
	dec	a
	jrne	00125$
00126$:
	pop	a
; genCast
; genAssign
; genAnd
	and	a, (0x02, sp)
; genAssign
; genGoto
	jp	00106$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 639: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
; genPointerGet
	ldw	x, #0x5400
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, (0x01, sp)
; genAssign
; genLabel
00106$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 641: return ((ITStatus)itstatus);
; genReturn
; genLabel
00107$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 642: }
; genEndFunction
	addw	sp, #3
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 662: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
; genLabel
;	-----------------------------------------
;	 function ADC1_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_ADC1_ClearITPendingBit:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 669: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
; genAnd
	ld	a, (0x06, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
; genCmpEQorNE
	ld	xh, a
	cpw	x, #0x0010
	jrne	00120$
	jp	00121$
00120$:
	jp	00105$
00121$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 672: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
; genCast
; genAssign
	ld	a, (0x06, sp)
; genAnd
	and	a, #0x0f
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 673: if (temp < 8)
; genCmp
; genCmpTop
	ld	a, xl
	cp	a, #0x08
	jrc	00122$
	jp	00102$
00122$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 675: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
; genPointerGet
	ld	a, 0x540d
	ld	(0x02, sp), a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00124$
00123$:
	sll	(1, sp)
	dec	a
	jrne	00123$
00124$:
	pop	a
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x540d, a
; genGoto
	jp	00107$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 679: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
; genPointerGet
	ld	a, 0x540c
	ld	(0x01, sp), a
; genCast
; genAssign
; genMinus
	subw	x, #8
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00126$
00125$:
	sll	(1, sp)
	dec	a
	jrne	00125$
00126$:
	pop	a
; genCast
; genAssign
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x540c, a
; genGoto
	jp	00107$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 684: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
; genPointerGet
	ld	a, 0x5400
; genCpl
	ldw	x, (0x05, sp)
	cplw	x
; genCast
; genAssign
; genAnd
	pushw	x
	and	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x5400, a
; genLabel
00107$:
;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 686: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
