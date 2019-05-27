                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EEPROM_EEC_IRQHandler
                                     12 	.globl _TIM4_UPD_OVF_IRQHandler
                                     13 	.globl _ADC1_IRQHandler
                                     14 	.globl _I2C_IRQHandler
                                     15 	.globl _UART1_RX_IRQHandler
                                     16 	.globl _UART1_TX_IRQHandler
                                     17 	.globl _TIM2_CAP_COM_IRQHandler
                                     18 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     19 	.globl _TIM1_CAP_COM_IRQHandler
                                     20 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     21 	.globl _SPI_IRQHandler
                                     22 	.globl _EXTI_PORTE_IRQHandler
                                     23 	.globl _EXTI_PORTD_IRQHandler
                                     24 	.globl _EXTI_PORTC_IRQHandler
                                     25 	.globl _EXTI_PORTB_IRQHandler
                                     26 	.globl _EXTI_PORTA_IRQHandler
                                     27 	.globl _CLK_IRQHandler
                                     28 	.globl _AWU_IRQHandler
                                     29 	.globl _TLI_IRQHandler
                                     30 	.globl _TRAP_IRQHandler
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                                     68 ;	./Src/stm8s_it.c: 66: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     69 ; genLabel
                                     70 ;	-----------------------------------------
                                     71 ;	 function TRAP_IRQHandler
                                     72 ;	-----------------------------------------
                                     73 ;	Register assignment is optimal.
                                     74 ;	Stack space usage: 0 bytes.
      0093EE                         75 _TRAP_IRQHandler:
                                     76 ;	./Src/stm8s_it.c: 71: }
                                     77 ; genLabel
      0093EE                         78 00101$:
                                     79 ; genEndFunction
      0093EE 80               [11]   80 	iret
                                     81 ;	./Src/stm8s_it.c: 78: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     82 ; genLabel
                                     83 ;	-----------------------------------------
                                     84 ;	 function TLI_IRQHandler
                                     85 ;	-----------------------------------------
                                     86 ;	Register assignment is optimal.
                                     87 ;	Stack space usage: 0 bytes.
      0093EF                         88 _TLI_IRQHandler:
                                     89 ;	./Src/stm8s_it.c: 84: }
                                     90 ; genLabel
      0093EF                         91 00101$:
                                     92 ; genEndFunction
      0093EF 80               [11]   93 	iret
                                     94 ;	./Src/stm8s_it.c: 91: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                     95 ; genLabel
                                     96 ;	-----------------------------------------
                                     97 ;	 function AWU_IRQHandler
                                     98 ;	-----------------------------------------
                                     99 ;	Register assignment is optimal.
                                    100 ;	Stack space usage: 0 bytes.
      0093F0                        101 _AWU_IRQHandler:
                                    102 ;	./Src/stm8s_it.c: 96: }
                                    103 ; genLabel
      0093F0                        104 00101$:
                                    105 ; genEndFunction
      0093F0 80               [11]  106 	iret
                                    107 ;	./Src/stm8s_it.c: 103: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                    108 ; genLabel
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_IRQHandler
                                    111 ;	-----------------------------------------
                                    112 ;	Register assignment is optimal.
                                    113 ;	Stack space usage: 0 bytes.
      0093F1                        114 _CLK_IRQHandler:
                                    115 ;	./Src/stm8s_it.c: 108: }
                                    116 ; genLabel
      0093F1                        117 00101$:
                                    118 ; genEndFunction
      0093F1 80               [11]  119 	iret
                                    120 ;	./Src/stm8s_it.c: 115: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                    121 ; genLabel
                                    122 ;	-----------------------------------------
                                    123 ;	 function EXTI_PORTA_IRQHandler
                                    124 ;	-----------------------------------------
                                    125 ;	Register assignment is optimal.
                                    126 ;	Stack space usage: 0 bytes.
      0093F2                        127 _EXTI_PORTA_IRQHandler:
                                    128 ;	./Src/stm8s_it.c: 120: }
                                    129 ; genLabel
      0093F2                        130 00101$:
                                    131 ; genEndFunction
      0093F2 80               [11]  132 	iret
                                    133 ;	./Src/stm8s_it.c: 127: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    134 ; genLabel
                                    135 ;	-----------------------------------------
                                    136 ;	 function EXTI_PORTB_IRQHandler
                                    137 ;	-----------------------------------------
                                    138 ;	Register assignment is optimal.
                                    139 ;	Stack space usage: 0 bytes.
      0093F3                        140 _EXTI_PORTB_IRQHandler:
                                    141 ;	./Src/stm8s_it.c: 132: }
                                    142 ; genLabel
      0093F3                        143 00101$:
                                    144 ; genEndFunction
      0093F3 80               [11]  145 	iret
                                    146 ;	./Src/stm8s_it.c: 139: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    147 ; genLabel
                                    148 ;	-----------------------------------------
                                    149 ;	 function EXTI_PORTC_IRQHandler
                                    150 ;	-----------------------------------------
                                    151 ;	Register assignment is optimal.
                                    152 ;	Stack space usage: 0 bytes.
      0093F4                        153 _EXTI_PORTC_IRQHandler:
                                    154 ;	./Src/stm8s_it.c: 144: }
                                    155 ; genLabel
      0093F4                        156 00101$:
                                    157 ; genEndFunction
      0093F4 80               [11]  158 	iret
                                    159 ;	./Src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    160 ; genLabel
                                    161 ;	-----------------------------------------
                                    162 ;	 function EXTI_PORTD_IRQHandler
                                    163 ;	-----------------------------------------
                                    164 ;	Register assignment is optimal.
                                    165 ;	Stack space usage: 0 bytes.
      0093F5                        166 _EXTI_PORTD_IRQHandler:
                                    167 ;	./Src/stm8s_it.c: 156: }
                                    168 ; genLabel
      0093F5                        169 00101$:
                                    170 ; genEndFunction
      0093F5 80               [11]  171 	iret
                                    172 ;	./Src/stm8s_it.c: 163: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    173 ; genLabel
                                    174 ;	-----------------------------------------
                                    175 ;	 function EXTI_PORTE_IRQHandler
                                    176 ;	-----------------------------------------
                                    177 ;	Register assignment is optimal.
                                    178 ;	Stack space usage: 0 bytes.
      0093F6                        179 _EXTI_PORTE_IRQHandler:
                                    180 ;	./Src/stm8s_it.c: 168: }
                                    181 ; genLabel
      0093F6                        182 00101$:
                                    183 ; genEndFunction
      0093F6 80               [11]  184 	iret
                                    185 ;	./Src/stm8s_it.c: 215: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    186 ; genLabel
                                    187 ;	-----------------------------------------
                                    188 ;	 function SPI_IRQHandler
                                    189 ;	-----------------------------------------
                                    190 ;	Register assignment is optimal.
                                    191 ;	Stack space usage: 0 bytes.
      0093F7                        192 _SPI_IRQHandler:
                                    193 ;	./Src/stm8s_it.c: 220: }
                                    194 ; genLabel
      0093F7                        195 00101$:
                                    196 ; genEndFunction
      0093F7 80               [11]  197 	iret
                                    198 ;	./Src/stm8s_it.c: 227: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    199 ; genLabel
                                    200 ;	-----------------------------------------
                                    201 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    202 ;	-----------------------------------------
                                    203 ;	Register assignment is optimal.
                                    204 ;	Stack space usage: 0 bytes.
      0093F8                        205 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    206 ;	./Src/stm8s_it.c: 232: }
                                    207 ; genLabel
      0093F8                        208 00101$:
                                    209 ; genEndFunction
      0093F8 80               [11]  210 	iret
                                    211 ;	./Src/stm8s_it.c: 239: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    212 ; genLabel
                                    213 ;	-----------------------------------------
                                    214 ;	 function TIM1_CAP_COM_IRQHandler
                                    215 ;	-----------------------------------------
                                    216 ;	Register assignment is optimal.
                                    217 ;	Stack space usage: 0 bytes.
      0093F9                        218 _TIM1_CAP_COM_IRQHandler:
                                    219 ;	./Src/stm8s_it.c: 244: }
                                    220 ; genLabel
      0093F9                        221 00101$:
                                    222 ; genEndFunction
      0093F9 80               [11]  223 	iret
                                    224 ;	./Src/stm8s_it.c: 277: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    225 ; genLabel
                                    226 ;	-----------------------------------------
                                    227 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    228 ;	-----------------------------------------
                                    229 ;	Register assignment is optimal.
                                    230 ;	Stack space usage: 0 bytes.
      0093FA                        231 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    232 ;	./Src/stm8s_it.c: 282: }
                                    233 ; genLabel
      0093FA                        234 00101$:
                                    235 ; genEndFunction
      0093FA 80               [11]  236 	iret
                                    237 ;	./Src/stm8s_it.c: 289: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    238 ; genLabel
                                    239 ;	-----------------------------------------
                                    240 ;	 function TIM2_CAP_COM_IRQHandler
                                    241 ;	-----------------------------------------
                                    242 ;	Register assignment is optimal.
                                    243 ;	Stack space usage: 0 bytes.
      0093FB                        244 _TIM2_CAP_COM_IRQHandler:
                                    245 ;	./Src/stm8s_it.c: 294: }
                                    246 ; genLabel
      0093FB                        247 00101$:
                                    248 ; genEndFunction
      0093FB 80               [11]  249 	iret
                                    250 ;	./Src/stm8s_it.c: 331: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    251 ; genLabel
                                    252 ;	-----------------------------------------
                                    253 ;	 function UART1_TX_IRQHandler
                                    254 ;	-----------------------------------------
                                    255 ;	Register assignment is optimal.
                                    256 ;	Stack space usage: 0 bytes.
      0093FC                        257 _UART1_TX_IRQHandler:
                                    258 ;	./Src/stm8s_it.c: 336: }
                                    259 ; genLabel
      0093FC                        260 00101$:
                                    261 ; genEndFunction
      0093FC 80               [11]  262 	iret
                                    263 ;	./Src/stm8s_it.c: 343: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    264 ; genLabel
                                    265 ;	-----------------------------------------
                                    266 ;	 function UART1_RX_IRQHandler
                                    267 ;	-----------------------------------------
                                    268 ;	Register assignment is optimal.
                                    269 ;	Stack space usage: 0 bytes.
      0093FD                        270 _UART1_RX_IRQHandler:
                                    271 ;	./Src/stm8s_it.c: 348: }
                                    272 ; genLabel
      0093FD                        273 00101$:
                                    274 ; genEndFunction
      0093FD 80               [11]  275 	iret
                                    276 ;	./Src/stm8s_it.c: 382: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    277 ; genLabel
                                    278 ;	-----------------------------------------
                                    279 ;	 function I2C_IRQHandler
                                    280 ;	-----------------------------------------
                                    281 ;	Register assignment is optimal.
                                    282 ;	Stack space usage: 0 bytes.
      0093FE                        283 _I2C_IRQHandler:
                                    284 ;	./Src/stm8s_it.c: 387: }
                                    285 ; genLabel
      0093FE                        286 00101$:
                                    287 ; genEndFunction
      0093FE 80               [11]  288 	iret
                                    289 ;	./Src/stm8s_it.c: 461: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    290 ; genLabel
                                    291 ;	-----------------------------------------
                                    292 ;	 function ADC1_IRQHandler
                                    293 ;	-----------------------------------------
                                    294 ;	Register assignment is optimal.
                                    295 ;	Stack space usage: 0 bytes.
      0093FF                        296 _ADC1_IRQHandler:
                                    297 ;	./Src/stm8s_it.c: 466: }
                                    298 ; genLabel
      0093FF                        299 00101$:
                                    300 ; genEndFunction
      0093FF 80               [11]  301 	iret
                                    302 ;	./Src/stm8s_it.c: 487: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    303 ; genLabel
                                    304 ;	-----------------------------------------
                                    305 ;	 function TIM4_UPD_OVF_IRQHandler
                                    306 ;	-----------------------------------------
                                    307 ;	Register assignment is optimal.
                                    308 ;	Stack space usage: 0 bytes.
      009400                        309 _TIM4_UPD_OVF_IRQHandler:
                                    310 ;	./Src/stm8s_it.c: 492: }
                                    311 ; genLabel
      009400                        312 00101$:
                                    313 ; genEndFunction
      009400 80               [11]  314 	iret
                                    315 ;	./Src/stm8s_it.c: 500: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    316 ; genLabel
                                    317 ;	-----------------------------------------
                                    318 ;	 function EEPROM_EEC_IRQHandler
                                    319 ;	-----------------------------------------
                                    320 ;	Register assignment is optimal.
                                    321 ;	Stack space usage: 0 bytes.
      009401                        322 _EEPROM_EEC_IRQHandler:
                                    323 ;	./Src/stm8s_it.c: 505: }
                                    324 ; genLabel
      009401                        325 00101$:
                                    326 ; genEndFunction
      009401 80               [11]  327 	iret
                                    328 	.area CODE
                                    329 	.area CONST
                                    330 	.area INITIALIZER
                                    331 	.area CABS (ABS)
