;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Mac OS X x86_64)
;--------------------------------------------------------
	.module stm8s_it
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EEPROM_EEC_IRQHandler
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _ADC1_IRQHandler
	.globl _I2C_IRQHandler
	.globl _UART1_RX_IRQHandler
	.globl _UART1_TX_IRQHandler
	.globl _TIM2_CAP_COM_IRQHandler
	.globl _TIM2_UPD_OVF_BRK_IRQHandler
	.globl _TIM1_CAP_COM_IRQHandler
	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
	.globl _SPI_IRQHandler
	.globl _EXTI_PORTE_IRQHandler
	.globl _EXTI_PORTD_IRQHandler
	.globl _EXTI_PORTC_IRQHandler
	.globl _EXTI_PORTB_IRQHandler
	.globl _EXTI_PORTA_IRQHandler
	.globl _CLK_IRQHandler
	.globl _AWU_IRQHandler
	.globl _TLI_IRQHandler
	.globl _TRAP_IRQHandler
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
;	./Src/stm8s_it.c: 66: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
; genLabel
;	-----------------------------------------
;	 function TRAP_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TRAP_IRQHandler:
;	./Src/stm8s_it.c: 71: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 78: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
; genLabel
;	-----------------------------------------
;	 function TLI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TLI_IRQHandler:
;	./Src/stm8s_it.c: 84: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 91: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
; genLabel
;	-----------------------------------------
;	 function AWU_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_IRQHandler:
;	./Src/stm8s_it.c: 96: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 103: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
; genLabel
;	-----------------------------------------
;	 function CLK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CLK_IRQHandler:
;	./Src/stm8s_it.c: 108: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 115: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTA_IRQHandler:
;	./Src/stm8s_it.c: 120: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 127: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTB_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTB_IRQHandler:
;	./Src/stm8s_it.c: 132: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 139: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTC_IRQHandler:
;	./Src/stm8s_it.c: 144: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTD_IRQHandler:
;	./Src/stm8s_it.c: 156: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 163: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
; genLabel
;	-----------------------------------------
;	 function EXTI_PORTE_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EXTI_PORTE_IRQHandler:
;	./Src/stm8s_it.c: 168: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 215: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
; genLabel
;	-----------------------------------------
;	 function SPI_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_IRQHandler:
;	./Src/stm8s_it.c: 220: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 227: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
; genLabel
;	-----------------------------------------
;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
;	./Src/stm8s_it.c: 232: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 239: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
; genLabel
;	-----------------------------------------
;	 function TIM1_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CAP_COM_IRQHandler:
;	./Src/stm8s_it.c: 244: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 277: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
; genLabel
;	-----------------------------------------
;	 function TIM2_UPD_OVF_BRK_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_UPD_OVF_BRK_IRQHandler:
;	./Src/stm8s_it.c: 282: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 289: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
; genLabel
;	-----------------------------------------
;	 function TIM2_CAP_COM_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CAP_COM_IRQHandler:
;	./Src/stm8s_it.c: 294: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 331: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
; genLabel
;	-----------------------------------------
;	 function UART1_TX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_TX_IRQHandler:
;	./Src/stm8s_it.c: 336: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 343: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
; genLabel
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_RX_IRQHandler:
;	./Src/stm8s_it.c: 348: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 382: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
; genLabel
;	-----------------------------------------
;	 function I2C_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_I2C_IRQHandler:
;	./Src/stm8s_it.c: 387: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 461: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
; genLabel
;	-----------------------------------------
;	 function ADC1_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ADC1_IRQHandler:
;	./Src/stm8s_it.c: 466: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 487: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
; genLabel
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_UPD_OVF_IRQHandler:
;	./Src/stm8s_it.c: 492: }
; genLabel
00101$:
; genEndFunction
	iret
;	./Src/stm8s_it.c: 500: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
; genLabel
;	-----------------------------------------
;	 function EEPROM_EEC_IRQHandler
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_EEPROM_EEC_IRQHandler:
;	./Src/stm8s_it.c: 505: }
; genLabel
00101$:
; genEndFunction
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
