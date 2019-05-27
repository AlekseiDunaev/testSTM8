;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_spi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_DeInit
	.globl _SPI_Init
	.globl _SPI_Cmd
	.globl _SPI_ITConfig
	.globl _SPI_SendData
	.globl _SPI_ReceiveData
	.globl _SPI_NSSInternalSoftwareCmd
	.globl _SPI_TransmitCRC
	.globl _SPI_CalculateCRCCmd
	.globl _SPI_GetCRC
	.globl _SPI_ResetCRC
	.globl _SPI_GetCRCPolynomial
	.globl _SPI_BiDirectionalLineConfig
	.globl _SPI_GetFlagStatus
	.globl _SPI_ClearFlag
	.globl _SPI_GetITStatus
	.globl _SPI_ClearITPendingBit
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
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 50: void SPI_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function SPI_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_DeInit:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5200+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5201+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
; genPointerSet
	mov	0x5202+0, #0x00
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
; genPointerSet
	mov	0x5203+0, #0x02
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
; genPointerSet
	mov	0x5205+0, #0x07
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 57: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
; genLabel
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_Init:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
; genOr
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
	ld	(0x01, sp), a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
; genOr
	ld	a, (0x07, sp)
	or	a, (0x08, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5200, a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
; genOr
	ld	a, (0x09, sp)
	or	a, (0x0a, sp)
; genPointerSet
	ld	0x5201, a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
; genPointerGet
	ld	a, 0x5201
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
; genCmpEQorNE
	push	a
	ld	a, (0x07, sp)
	cp	a, #0x04
	pop	a
	jrne	00112$
	jp	00113$
00112$:
	jp	00102$
00113$:
; skipping generated iCode
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5201, a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
; genPointerGet
	ld	a, 0x5200
; genOr
	or	a, (0x06, sp)
; genPointerSet
	ld	0x5200, a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
; genPointerSet
	ldw	x, #0x5205
	ld	a, (0x0b, sp)
	ld	(x), a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 111: }
; genEndFunction
	pop	a
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_Cmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
; genPointerGet
	ld	a, 0x5200
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 124: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5200, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5200, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 132: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 141: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_ITConfig:
	push	a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 149: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
; genAnd
	ld	a, (0x04, sp)
	and	a, #0x0f
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00112$
00111$:
	sll	(1, sp)
	dec	a
	jrne	00111$
00112$:
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
; genPointerGet
	ldw	x, #0x5202
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 151: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00113$
	jp	00102$
00113$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5202, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 157: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5202, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 159: }
; genEndFunction
	pop	a
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function SPI_SendData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_SendData:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
; genPointerSet
	ldw	x, #0x5204
	ld	a, (0x03, sp)
	ld	(x), a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 169: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 176: uint8_t SPI_ReceiveData(void)
; genLabel
;	-----------------------------------------
;	 function SPI_ReceiveData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_ReceiveData:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 178: return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
; genPointerGet
	ld	a, 0x5204
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 179: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 187: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_NSSInternalSoftwareCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_NSSInternalSoftwareCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
; genPointerGet
	ld	a, 0x5201
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 192: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 198: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5201, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 200: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 207: void SPI_TransmitCRC(void)
; genLabel
;	-----------------------------------------
;	 function SPI_TransmitCRC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_TransmitCRC:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 209: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
; genPointerGet
	ld	a, 0x5201
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5201, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 210: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 218: void SPI_CalculateCRCCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_CalculateCRCCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_CalculateCRCCmd:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
; genPointerGet
	ld	a, 0x5201
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 223: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 229: SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5201, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 231: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 238: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
; genLabel
;	-----------------------------------------
;	 function SPI_GetCRC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_GetCRC:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 245: if (SPI_CRC != SPI_CRC_RX)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 247: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
; genPointerGet
	ld	a, 0x5207
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 251: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
; genPointerGet
	ld	a, 0x5206
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 255: return crcreg;
; genReturn
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 256: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 263: void SPI_ResetCRC(void)
; genLabel
;	-----------------------------------------
;	 function SPI_ResetCRC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_ResetCRC:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 267: SPI_CalculateCRCCmd(ENABLE);
; genIPush
	push	#0x01
; genCall
	call	_SPI_CalculateCRCCmd
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 270: SPI_Cmd(ENABLE);
; genIPush
	push	#0x01
; genCall
	call	_SPI_Cmd
	pop	a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 271: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 278: uint8_t SPI_GetCRCPolynomial(void)
; genLabel
;	-----------------------------------------
;	 function SPI_GetCRCPolynomial
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_GetCRCPolynomial:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 280: return SPI->CRCPR; /* Return the CRC polynomial register */
; genPointerGet
	ld	a, 0x5205
; genReturn
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 281: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 288: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
; genLabel
;	-----------------------------------------
;	 function SPI_BiDirectionalLineConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_BiDirectionalLineConfig:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
; genPointerGet
	ld	a, 0x5201
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 293: if (SPI_Direction != SPI_DIRECTION_RX)
; genIfx
	tnz	(0x03, sp)
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 299: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5201, a
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 301: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
; genLabel
;	-----------------------------------------
;	 function SPI_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_GetFlagStatus:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
; genPointerGet
	ld	a, 0x5203
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00111$
	jp	00102$
00111$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
; genAssign
	clr	a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 328: return status;
; genReturn
; genLabel
00104$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 329: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
; genLabel
;	-----------------------------------------
;	 function SPI_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_ClearFlag:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
; genCpl
	ld	a, (0x03, sp)
	cpl	a
; genPointerSet
	ld	0x5203, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 351: }
; genEndFunction
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 366: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
; genLabel
;	-----------------------------------------
;	 function SPI_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_SPI_GetITStatus:
	pushw	x
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 375: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00118$
00117$:
	sll	(0x02, sp)
	dec	a
	jrne	00117$
00118$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 378: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
; genRightShiftLiteral
	ld	a, (0x05, sp)
	swap	a
	and	a, #0x0f
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 380: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00120$
00119$:
	sll	(0x01, sp)
	dec	a
	jrne	00119$
00120$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 382: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
; genPointerGet
	ld	a, 0x5203
; genAnd
	and	a, (0x01, sp)
; genAssign
	ld	xl, a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 384: if (((SPI->ICR & itpos) != RESET) && enablestatus)
; genPointerGet
	ld	a, 0x5202
; genAnd
	and	a, (0x02, sp)
; genIfx
	tnz	a
	jrne	00121$
	jp	00102$
00121$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00122$
	jp	00102$
00122$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 387: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 392: pendingbitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 395: return  pendingbitstatus;
; genReturn
; genLabel
00105$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 396: }
; genEndFunction
	popw	x
	ret
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 412: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
; genLabel
;	-----------------------------------------
;	 function SPI_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_ClearITPendingBit:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 420: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
; genAnd
	ld	a, (0x03, sp)
	and	a, #0xf0
; genRightShiftLiteral
	swap	a
	and	a, #0x0f
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00104$
00103$:
	sll	(1, sp)
	dec	a
	jrne	00103$
00104$:
	pop	a
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 422: SPI->SR = (uint8_t)(~itpos);
; genCpl
	cpl	a
; genPointerSet
	ld	0x5203, a
; genLabel
00101$:
;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 424: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
