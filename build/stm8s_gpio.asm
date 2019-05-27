;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
	.globl _GPIO_Init
	.globl _GPIO_Write
	.globl _GPIO_WriteHigh
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteReverse
	.globl _GPIO_ReadOutputData
	.globl _GPIO_ReadInputData
	.globl _GPIO_ReadInputPin
	.globl _GPIO_ExternalPullUpConfig
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
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_DeInit:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
; genAssign
	ldw	y, (0x03, sp)
; genPointerSet
	clr	(y)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
; genPlus
	ldw	x, y
	incw	x
	incw	x
; genPointerSet
	clr	(x)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerSet
	clr	(x)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
; genPlus
	ldw	x, y
	addw	x, #0x0004
; genPointerSet
	clr	(x)
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
; genLabel
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_GPIO_Init:
	sub	sp, #5
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genAssign
	ldw	y, (0x08, sp)
; genPlus
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x04, sp), x
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
; genCpl
	push	a
	ld	a, (0x0b, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
; genPlus
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x01, sp), x
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
; genAnd
	tnz	(0x0b, sp)
	jrmi	00135$
	jp	00105$
00135$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
; genPointerGet
	ld	a, (y)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
; genAnd
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x10
	pop	a
	jrne	00136$
	jp	00102$
00136$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ld	(y), a
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	(y), a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genGoto
	jp	00106$
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x01, sp)
	ld	a, (x)
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x01, sp)
	ld	(x), a
; genLabel
00106$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genPlus
	ldw	x, y
	addw	x, #0x0003
; genPointerGet
	ld	a, (x)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
; genAnd
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x40
	pop	a
	jrne	00137$
	jp	00108$
00137$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jp	00109$
; genLabel
00108$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ld	(x), a
; genLabel
00109$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genPointerGet
	ldw	x, (0x04, sp)
	ld	a, (x)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
; genAnd
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x20
	pop	a
	jrne	00138$
	jp	00111$
00138$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x0a, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
; genGoto
	jp	00113$
; genLabel
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
; genAnd
	and	a, (0x03, sp)
; genPointerSet
	ldw	x, (0x04, sp)
	ld	(x), a
; genLabel
00113$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
; genEndFunction
	addw	sp, #5
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
; genLabel
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_Write:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
; genAssign
	ldw	x, (0x03, sp)
; genPointerSet
	ld	a, (0x05, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_WriteHigh:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
; genAssign
	ldw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteLow
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_GPIO_WriteLow:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
; genAssign
	ldw	x, (0x04, sp)
; genPointerGet
	ld	a, (x)
	ld	(0x01, sp), a
; genCpl
	ld	a, (0x06, sp)
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
; genEndFunction
	pop	a
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
; genLabel
;	-----------------------------------------
;	 function GPIO_WriteReverse
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_WriteReverse:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
; genAssign
	ldw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genXor
	xor	a, (0x05, sp)
; genPointerSet
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadOutputData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadOutputData:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
; genAssign
	ldw	x, (0x03, sp)
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadInputData:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
; genAssign
	ldw	x, (0x03, sp)
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
; genLabel
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_GPIO_ReadInputPin:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
; genAssign
	ldw	x, (0x03, sp)
; genAssign
; genPointerGet
	ld	a, (0x1, x)
; genAnd
	and	a, (0x05, sp)
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_GPIO_ExternalPullUpConfig:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genAssign
	ldw	x, (0x04, sp)
; genPlus
	addw	x, #0x0003
; genPointerGet
	ld	a, (x)
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
; genIfx
	tnz	(0x07, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	(x), a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
; genCpl
	push	a
	ld	a, (0x07, sp)
	cpl	a
	ld	(0x02, sp), a
	pop	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	(x), a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
