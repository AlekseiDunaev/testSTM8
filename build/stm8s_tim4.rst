                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_DeInit
                                     12 	.globl _TIM4_TimeBaseInit
                                     13 	.globl _TIM4_Cmd
                                     14 	.globl _TIM4_ITConfig
                                     15 	.globl _TIM4_UpdateDisableConfig
                                     16 	.globl _TIM4_UpdateRequestConfig
                                     17 	.globl _TIM4_SelectOnePulseMode
                                     18 	.globl _TIM4_PrescalerConfig
                                     19 	.globl _TIM4_ARRPreloadConfig
                                     20 	.globl _TIM4_GenerateEvent
                                     21 	.globl _TIM4_SetCounter
                                     22 	.globl _TIM4_SetAutoreload
                                     23 	.globl _TIM4_GetCounter
                                     24 	.globl _TIM4_GetPrescaler
                                     25 	.globl _TIM4_GetFlagStatus
                                     26 	.globl _TIM4_ClearFlag
                                     27 	.globl _TIM4_GetITStatus
                                     28 	.globl _TIM4_ClearITPendingBit
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DATA
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; absolute external ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DABS (ABS)
                                     41 
                                     42 ; default segment ordering for linker
                                     43 	.area HOME
                                     44 	.area GSINIT
                                     45 	.area GSFINAL
                                     46 	.area CONST
                                     47 	.area INITIALIZER
                                     48 	.area CODE
                                     49 
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area CODE
                                     66 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     67 ; genLabel
                                     68 ;	-----------------------------------------
                                     69 ;	 function TIM4_DeInit
                                     70 ;	-----------------------------------------
                                     71 ;	Register assignment is optimal.
                                     72 ;	Stack space usage: 0 bytes.
      008C67                         73 _TIM4_DeInit:
                                     74 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
                                     75 ; genPointerSet
      008C67 35 00 53 40      [ 1]   76 	mov	0x5340+0, #0x00
                                     77 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
                                     78 ; genPointerSet
      008C6B 35 00 53 43      [ 1]   79 	mov	0x5343+0, #0x00
                                     80 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
                                     81 ; genPointerSet
      008C6F 35 00 53 46      [ 1]   82 	mov	0x5346+0, #0x00
                                     83 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
                                     84 ; genPointerSet
      008C73 35 00 53 47      [ 1]   85 	mov	0x5347+0, #0x00
                                     86 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
                                     87 ; genPointerSet
      008C77 35 FF 53 48      [ 1]   88 	mov	0x5348+0, #0xff
                                     89 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
                                     90 ; genPointerSet
      008C7B 35 00 53 44      [ 1]   91 	mov	0x5344+0, #0x00
                                     92 ; genLabel
      008C7F                         93 00101$:
                                     94 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 57: }
                                     95 ; genEndFunction
      008C7F 81               [ 4]   96 	ret
                                     97 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                     98 ; genLabel
                                     99 ;	-----------------------------------------
                                    100 ;	 function TIM4_TimeBaseInit
                                    101 ;	-----------------------------------------
                                    102 ;	Register assignment is optimal.
                                    103 ;	Stack space usage: 0 bytes.
      008C80                        104 _TIM4_TimeBaseInit:
                                    105 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
                                    106 ; genPointerSet
      008C80 AE 53 47         [ 2]  107 	ldw	x, #0x5347
      008C83 7B 03            [ 1]  108 	ld	a, (0x03, sp)
      008C85 F7               [ 1]  109 	ld	(x), a
                                    110 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
                                    111 ; genPointerSet
      008C86 AE 53 48         [ 2]  112 	ldw	x, #0x5348
      008C89 7B 04            [ 1]  113 	ld	a, (0x04, sp)
      008C8B F7               [ 1]  114 	ld	(x), a
                                    115 ; genLabel
      008C8C                        116 00101$:
                                    117 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 73: }
                                    118 ; genEndFunction
      008C8C 81               [ 4]  119 	ret
                                    120 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    121 ; genLabel
                                    122 ;	-----------------------------------------
                                    123 ;	 function TIM4_Cmd
                                    124 ;	-----------------------------------------
                                    125 ;	Register assignment is optimal.
                                    126 ;	Stack space usage: 0 bytes.
      008C8D                        127 _TIM4_Cmd:
                                    128 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    129 ; genPointerGet
      008C8D C6 53 40         [ 1]  130 	ld	a, 0x5340
                                    131 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 87: if (NewState != DISABLE)
                                    132 ; genIfx
      008C90 0D 03            [ 1]  133 	tnz	(0x03, sp)
      008C92 26 03            [ 1]  134 	jrne	00111$
      008C94 CC 8C 9F         [ 2]  135 	jp	00102$
      008C97                        136 00111$:
                                    137 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
                                    138 ; genOr
      008C97 AA 01            [ 1]  139 	or	a, #0x01
                                    140 ; genPointerSet
      008C99 C7 53 40         [ 1]  141 	ld	0x5340, a
                                    142 ; genGoto
      008C9C CC 8C A4         [ 2]  143 	jp	00104$
                                    144 ; genLabel
      008C9F                        145 00102$:
                                    146 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
                                    147 ; genAnd
      008C9F A4 FE            [ 1]  148 	and	a, #0xfe
                                    149 ; genPointerSet
      008CA1 C7 53 40         [ 1]  150 	ld	0x5340, a
                                    151 ; genLabel
      008CA4                        152 00104$:
                                    153 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 95: }
                                    154 ; genEndFunction
      008CA4 81               [ 4]  155 	ret
                                    156 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    157 ; genLabel
                                    158 ;	-----------------------------------------
                                    159 ;	 function TIM4_ITConfig
                                    160 ;	-----------------------------------------
                                    161 ;	Register assignment is optimal.
                                    162 ;	Stack space usage: 1 bytes.
      008CA5                        163 _TIM4_ITConfig:
      008CA5 88               [ 1]  164 	push	a
                                    165 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    166 ; genPointerGet
      008CA6 C6 53 43         [ 1]  167 	ld	a, 0x5343
                                    168 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 113: if (NewState != DISABLE)
                                    169 ; genIfx
      008CA9 0D 05            [ 1]  170 	tnz	(0x05, sp)
      008CAB 26 03            [ 1]  171 	jrne	00111$
      008CAD CC 8C B8         [ 2]  172 	jp	00102$
      008CB0                        173 00111$:
                                    174 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
                                    175 ; genOr
      008CB0 1A 04            [ 1]  176 	or	a, (0x04, sp)
                                    177 ; genPointerSet
      008CB2 C7 53 43         [ 1]  178 	ld	0x5343, a
                                    179 ; genGoto
      008CB5 CC 8C C4         [ 2]  180 	jp	00104$
                                    181 ; genLabel
      008CB8                        182 00102$:
                                    183 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
                                    184 ; genCpl
      008CB8 88               [ 1]  185 	push	a
      008CB9 7B 05            [ 1]  186 	ld	a, (0x05, sp)
      008CBB 43               [ 1]  187 	cpl	a
      008CBC 6B 02            [ 1]  188 	ld	(0x02, sp), a
      008CBE 84               [ 1]  189 	pop	a
                                    190 ; genAnd
      008CBF 14 01            [ 1]  191 	and	a, (0x01, sp)
                                    192 ; genPointerSet
      008CC1 C7 53 43         [ 1]  193 	ld	0x5343, a
                                    194 ; genLabel
      008CC4                        195 00104$:
                                    196 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 123: }
                                    197 ; genEndFunction
      008CC4 84               [ 1]  198 	pop	a
      008CC5 81               [ 4]  199 	ret
                                    200 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    201 ; genLabel
                                    202 ;	-----------------------------------------
                                    203 ;	 function TIM4_UpdateDisableConfig
                                    204 ;	-----------------------------------------
                                    205 ;	Register assignment is optimal.
                                    206 ;	Stack space usage: 0 bytes.
      008CC6                        207 _TIM4_UpdateDisableConfig:
                                    208 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    209 ; genPointerGet
      008CC6 C6 53 40         [ 1]  210 	ld	a, 0x5340
                                    211 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 137: if (NewState != DISABLE)
                                    212 ; genIfx
      008CC9 0D 03            [ 1]  213 	tnz	(0x03, sp)
      008CCB 26 03            [ 1]  214 	jrne	00111$
      008CCD CC 8C D8         [ 2]  215 	jp	00102$
      008CD0                        216 00111$:
                                    217 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
                                    218 ; genOr
      008CD0 AA 02            [ 1]  219 	or	a, #0x02
                                    220 ; genPointerSet
      008CD2 C7 53 40         [ 1]  221 	ld	0x5340, a
                                    222 ; genGoto
      008CD5 CC 8C DD         [ 2]  223 	jp	00104$
                                    224 ; genLabel
      008CD8                        225 00102$:
                                    226 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
                                    227 ; genAnd
      008CD8 A4 FD            [ 1]  228 	and	a, #0xfd
                                    229 ; genPointerSet
      008CDA C7 53 40         [ 1]  230 	ld	0x5340, a
                                    231 ; genLabel
      008CDD                        232 00104$:
                                    233 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 145: }
                                    234 ; genEndFunction
      008CDD 81               [ 4]  235 	ret
                                    236 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    237 ; genLabel
                                    238 ;	-----------------------------------------
                                    239 ;	 function TIM4_UpdateRequestConfig
                                    240 ;	-----------------------------------------
                                    241 ;	Register assignment is optimal.
                                    242 ;	Stack space usage: 0 bytes.
      008CDE                        243 _TIM4_UpdateRequestConfig:
                                    244 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    245 ; genPointerGet
      008CDE C6 53 40         [ 1]  246 	ld	a, 0x5340
                                    247 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
                                    248 ; genIfx
      008CE1 0D 03            [ 1]  249 	tnz	(0x03, sp)
      008CE3 26 03            [ 1]  250 	jrne	00111$
      008CE5 CC 8C F0         [ 2]  251 	jp	00102$
      008CE8                        252 00111$:
                                    253 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
                                    254 ; genOr
      008CE8 AA 04            [ 1]  255 	or	a, #0x04
                                    256 ; genPointerSet
      008CEA C7 53 40         [ 1]  257 	ld	0x5340, a
                                    258 ; genGoto
      008CED CC 8C F5         [ 2]  259 	jp	00104$
                                    260 ; genLabel
      008CF0                        261 00102$:
                                    262 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
                                    263 ; genAnd
      008CF0 A4 FB            [ 1]  264 	and	a, #0xfb
                                    265 ; genPointerSet
      008CF2 C7 53 40         [ 1]  266 	ld	0x5340, a
                                    267 ; genLabel
      008CF5                        268 00104$:
                                    269 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 169: }
                                    270 ; genEndFunction
      008CF5 81               [ 4]  271 	ret
                                    272 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    273 ; genLabel
                                    274 ;	-----------------------------------------
                                    275 ;	 function TIM4_SelectOnePulseMode
                                    276 ;	-----------------------------------------
                                    277 ;	Register assignment is optimal.
                                    278 ;	Stack space usage: 0 bytes.
      008CF6                        279 _TIM4_SelectOnePulseMode:
                                    280 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    281 ; genPointerGet
      008CF6 C6 53 40         [ 1]  282 	ld	a, 0x5340
                                    283 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
                                    284 ; genIfx
      008CF9 0D 03            [ 1]  285 	tnz	(0x03, sp)
      008CFB 26 03            [ 1]  286 	jrne	00111$
      008CFD CC 8D 08         [ 2]  287 	jp	00102$
      008D00                        288 00111$:
                                    289 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
                                    290 ; genOr
      008D00 AA 08            [ 1]  291 	or	a, #0x08
                                    292 ; genPointerSet
      008D02 C7 53 40         [ 1]  293 	ld	0x5340, a
                                    294 ; genGoto
      008D05 CC 8D 0D         [ 2]  295 	jp	00104$
                                    296 ; genLabel
      008D08                        297 00102$:
                                    298 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
                                    299 ; genAnd
      008D08 A4 F7            [ 1]  300 	and	a, #0xf7
                                    301 ; genPointerSet
      008D0A C7 53 40         [ 1]  302 	ld	0x5340, a
                                    303 ; genLabel
      008D0D                        304 00104$:
                                    305 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 193: }
                                    306 ; genEndFunction
      008D0D 81               [ 4]  307 	ret
                                    308 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    309 ; genLabel
                                    310 ;	-----------------------------------------
                                    311 ;	 function TIM4_PrescalerConfig
                                    312 ;	-----------------------------------------
                                    313 ;	Register assignment is optimal.
                                    314 ;	Stack space usage: 0 bytes.
      008D0E                        315 _TIM4_PrescalerConfig:
                                    316 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
                                    317 ; genPointerSet
      008D0E AE 53 47         [ 2]  318 	ldw	x, #0x5347
      008D11 7B 03            [ 1]  319 	ld	a, (0x03, sp)
      008D13 F7               [ 1]  320 	ld	(x), a
                                    321 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
                                    322 ; genPointerSet
      008D14 AE 53 45         [ 2]  323 	ldw	x, #0x5345
      008D17 7B 04            [ 1]  324 	ld	a, (0x04, sp)
      008D19 F7               [ 1]  325 	ld	(x), a
                                    326 ; genLabel
      008D1A                        327 00101$:
                                    328 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 226: }
                                    329 ; genEndFunction
      008D1A 81               [ 4]  330 	ret
                                    331 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    332 ; genLabel
                                    333 ;	-----------------------------------------
                                    334 ;	 function TIM4_ARRPreloadConfig
                                    335 ;	-----------------------------------------
                                    336 ;	Register assignment is optimal.
                                    337 ;	Stack space usage: 0 bytes.
      008D1B                        338 _TIM4_ARRPreloadConfig:
                                    339 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    340 ; genPointerGet
      008D1B C6 53 40         [ 1]  341 	ld	a, 0x5340
                                    342 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 240: if (NewState != DISABLE)
                                    343 ; genIfx
      008D1E 0D 03            [ 1]  344 	tnz	(0x03, sp)
      008D20 26 03            [ 1]  345 	jrne	00111$
      008D22 CC 8D 2D         [ 2]  346 	jp	00102$
      008D25                        347 00111$:
                                    348 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
                                    349 ; genOr
      008D25 AA 80            [ 1]  350 	or	a, #0x80
                                    351 ; genPointerSet
      008D27 C7 53 40         [ 1]  352 	ld	0x5340, a
                                    353 ; genGoto
      008D2A CC 8D 32         [ 2]  354 	jp	00104$
                                    355 ; genLabel
      008D2D                        356 00102$:
                                    357 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
                                    358 ; genAnd
      008D2D A4 7F            [ 1]  359 	and	a, #0x7f
                                    360 ; genPointerSet
      008D2F C7 53 40         [ 1]  361 	ld	0x5340, a
                                    362 ; genLabel
      008D32                        363 00104$:
                                    364 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 248: }
                                    365 ; genEndFunction
      008D32 81               [ 4]  366 	ret
                                    367 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    368 ; genLabel
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM4_GenerateEvent
                                    371 ;	-----------------------------------------
                                    372 ;	Register assignment is optimal.
                                    373 ;	Stack space usage: 0 bytes.
      008D33                        374 _TIM4_GenerateEvent:
                                    375 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
                                    376 ; genPointerSet
      008D33 AE 53 45         [ 2]  377 	ldw	x, #0x5345
      008D36 7B 03            [ 1]  378 	ld	a, (0x03, sp)
      008D38 F7               [ 1]  379 	ld	(x), a
                                    380 ; genLabel
      008D39                        381 00101$:
                                    382 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 264: }
                                    383 ; genEndFunction
      008D39 81               [ 4]  384 	ret
                                    385 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    386 ; genLabel
                                    387 ;	-----------------------------------------
                                    388 ;	 function TIM4_SetCounter
                                    389 ;	-----------------------------------------
                                    390 ;	Register assignment is optimal.
                                    391 ;	Stack space usage: 0 bytes.
      008D3A                        392 _TIM4_SetCounter:
                                    393 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
                                    394 ; genPointerSet
      008D3A AE 53 46         [ 2]  395 	ldw	x, #0x5346
      008D3D 7B 03            [ 1]  396 	ld	a, (0x03, sp)
      008D3F F7               [ 1]  397 	ld	(x), a
                                    398 ; genLabel
      008D40                        399 00101$:
                                    400 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 276: }
                                    401 ; genEndFunction
      008D40 81               [ 4]  402 	ret
                                    403 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                    404 ; genLabel
                                    405 ;	-----------------------------------------
                                    406 ;	 function TIM4_SetAutoreload
                                    407 ;	-----------------------------------------
                                    408 ;	Register assignment is optimal.
                                    409 ;	Stack space usage: 0 bytes.
      008D41                        410 _TIM4_SetAutoreload:
                                    411 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
                                    412 ; genPointerSet
      008D41 AE 53 48         [ 2]  413 	ldw	x, #0x5348
      008D44 7B 03            [ 1]  414 	ld	a, (0x03, sp)
      008D46 F7               [ 1]  415 	ld	(x), a
                                    416 ; genLabel
      008D47                        417 00101$:
                                    418 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 288: }
                                    419 ; genEndFunction
      008D47 81               [ 4]  420 	ret
                                    421 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                    422 ; genLabel
                                    423 ;	-----------------------------------------
                                    424 ;	 function TIM4_GetCounter
                                    425 ;	-----------------------------------------
                                    426 ;	Register assignment is optimal.
                                    427 ;	Stack space usage: 0 bytes.
      008D48                        428 _TIM4_GetCounter:
                                    429 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
                                    430 ; genPointerGet
      008D48 C6 53 46         [ 1]  431 	ld	a, 0x5346
                                    432 ; genReturn
                                    433 ; genLabel
      008D4B                        434 00101$:
                                    435 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 299: }
                                    436 ; genEndFunction
      008D4B 81               [ 4]  437 	ret
                                    438 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                    439 ; genLabel
                                    440 ;	-----------------------------------------
                                    441 ;	 function TIM4_GetPrescaler
                                    442 ;	-----------------------------------------
                                    443 ;	Register assignment is optimal.
                                    444 ;	Stack space usage: 0 bytes.
      008D4C                        445 _TIM4_GetPrescaler:
                                    446 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
                                    447 ; genPointerGet
      008D4C C6 53 47         [ 1]  448 	ld	a, 0x5347
                                    449 ; genReturn
                                    450 ; genLabel
      008D4F                        451 00101$:
                                    452 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 310: }
                                    453 ; genEndFunction
      008D4F 81               [ 4]  454 	ret
                                    455 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    456 ; genLabel
                                    457 ;	-----------------------------------------
                                    458 ;	 function TIM4_GetFlagStatus
                                    459 ;	-----------------------------------------
                                    460 ;	Register assignment is optimal.
                                    461 ;	Stack space usage: 0 bytes.
      008D50                        462 _TIM4_GetFlagStatus:
                                    463 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
                                    464 ; genPointerGet
      008D50 C6 53 44         [ 1]  465 	ld	a, 0x5344
                                    466 ; genAnd
      008D53 14 03            [ 1]  467 	and	a, (0x03, sp)
                                    468 ; genIfx
      008D55 4D               [ 1]  469 	tnz	a
      008D56 26 03            [ 1]  470 	jrne	00111$
      008D58 CC 8D 60         [ 2]  471 	jp	00102$
      008D5B                        472 00111$:
                                    473 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 328: bitstatus = SET;
                                    474 ; genAssign
      008D5B A6 01            [ 1]  475 	ld	a, #0x01
                                    476 ; genGoto
      008D5D CC 8D 61         [ 2]  477 	jp	00103$
                                    478 ; genLabel
      008D60                        479 00102$:
                                    480 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 332: bitstatus = RESET;
                                    481 ; genAssign
      008D60 4F               [ 1]  482 	clr	a
                                    483 ; genLabel
      008D61                        484 00103$:
                                    485 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                                    486 ; genReturn
                                    487 ; genLabel
      008D61                        488 00104$:
                                    489 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 335: }
                                    490 ; genEndFunction
      008D61 81               [ 4]  491 	ret
                                    492 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    493 ; genLabel
                                    494 ;	-----------------------------------------
                                    495 ;	 function TIM4_ClearFlag
                                    496 ;	-----------------------------------------
                                    497 ;	Register assignment is optimal.
                                    498 ;	Stack space usage: 0 bytes.
      008D62                        499 _TIM4_ClearFlag:
                                    500 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
                                    501 ; genCpl
      008D62 7B 03            [ 1]  502 	ld	a, (0x03, sp)
      008D64 43               [ 1]  503 	cpl	a
                                    504 ; genPointerSet
      008D65 C7 53 44         [ 1]  505 	ld	0x5344, a
                                    506 ; genLabel
      008D68                        507 00101$:
                                    508 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 351: }
                                    509 ; genEndFunction
      008D68 81               [ 4]  510 	ret
                                    511 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                    512 ; genLabel
                                    513 ;	-----------------------------------------
                                    514 ;	 function TIM4_GetITStatus
                                    515 ;	-----------------------------------------
                                    516 ;	Register assignment is optimal.
                                    517 ;	Stack space usage: 1 bytes.
      008D69                        518 _TIM4_GetITStatus:
      008D69 88               [ 1]  519 	push	a
                                    520 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
                                    521 ; genPointerGet
      008D6A C6 53 44         [ 1]  522 	ld	a, 0x5344
                                    523 ; genAnd
      008D6D 14 04            [ 1]  524 	and	a, (0x04, sp)
                                    525 ; genAssign
      008D6F 6B 01            [ 1]  526 	ld	(0x01, sp), a
                                    527 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
                                    528 ; genPointerGet
      008D71 C6 53 43         [ 1]  529 	ld	a, 0x5343
                                    530 ; genAnd
      008D74 14 04            [ 1]  531 	and	a, (0x04, sp)
                                    532 ; genAssign
                                    533 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
                                    534 ; genIfx
      008D76 0D 01            [ 1]  535 	tnz	(0x01, sp)
      008D78 26 03            [ 1]  536 	jrne	00117$
      008D7A CC 8D 88         [ 2]  537 	jp	00102$
      008D7D                        538 00117$:
                                    539 ; genIfx
      008D7D 4D               [ 1]  540 	tnz	a
      008D7E 26 03            [ 1]  541 	jrne	00118$
      008D80 CC 8D 88         [ 2]  542 	jp	00102$
      008D83                        543 00118$:
                                    544 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
                                    545 ; genAssign
      008D83 A6 01            [ 1]  546 	ld	a, #0x01
                                    547 ; genGoto
      008D85 CC 8D 89         [ 2]  548 	jp	00103$
                                    549 ; genLabel
      008D88                        550 00102$:
                                    551 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
                                    552 ; genAssign
      008D88 4F               [ 1]  553 	clr	a
                                    554 ; genLabel
      008D89                        555 00103$:
                                    556 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                                    557 ; genReturn
                                    558 ; genLabel
      008D89                        559 00105$:
                                    560 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 382: }
                                    561 ; genEndFunction
      008D89 5B 01            [ 2]  562 	addw	sp, #1
      008D8B 81               [ 4]  563 	ret
                                    564 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                    565 ; genLabel
                                    566 ;	-----------------------------------------
                                    567 ;	 function TIM4_ClearITPendingBit
                                    568 ;	-----------------------------------------
                                    569 ;	Register assignment is optimal.
                                    570 ;	Stack space usage: 0 bytes.
      008D8C                        571 _TIM4_ClearITPendingBit:
                                    572 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
                                    573 ; genCpl
      008D8C 7B 03            [ 1]  574 	ld	a, (0x03, sp)
      008D8E 43               [ 1]  575 	cpl	a
                                    576 ; genPointerSet
      008D8F C7 53 44         [ 1]  577 	ld	0x5344, a
                                    578 ; genLabel
      008D92                        579 00101$:
                                    580 ;	./STM8S_StdPeriph_Driver/src/stm8s_tim4.c: 398: }
                                    581 ; genEndFunction
      008D92 81               [ 4]  582 	ret
                                    583 	.area CODE
                                    584 	.area CONST
                                    585 	.area INITIALIZER
                                    586 	.area CABS (ABS)
