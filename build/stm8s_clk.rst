                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _HSIDivFactor
                                     12 	.globl _CLK_DeInit
                                     13 	.globl _CLK_FastHaltWakeUpCmd
                                     14 	.globl _CLK_HSECmd
                                     15 	.globl _CLK_HSICmd
                                     16 	.globl _CLK_LSICmd
                                     17 	.globl _CLK_CCOCmd
                                     18 	.globl _CLK_ClockSwitchCmd
                                     19 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     20 	.globl _CLK_PeripheralClockConfig
                                     21 	.globl _CLK_ClockSwitchConfig
                                     22 	.globl _CLK_HSIPrescalerConfig
                                     23 	.globl _CLK_CCOConfig
                                     24 	.globl _CLK_ITConfig
                                     25 	.globl _CLK_SYSCLKConfig
                                     26 	.globl _CLK_SWIMConfig
                                     27 	.globl _CLK_ClockSecuritySystemEnable
                                     28 	.globl _CLK_GetSYSCLKSource
                                     29 	.globl _CLK_GetClockFreq
                                     30 	.globl _CLK_AdjustHSICalibrationValue
                                     31 	.globl _CLK_SYSCLKEmergencyClear
                                     32 	.globl _CLK_GetFlagStatus
                                     33 	.globl _CLK_GetITStatus
                                     34 	.globl _CLK_ClearITPendingBit
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DATA
                                     39 ;--------------------------------------------------------
                                     40 ; ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area INITIALIZED
                                     43 ;--------------------------------------------------------
                                     44 ; absolute external ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DABS (ABS)
                                     47 
                                     48 ; default segment ordering for linker
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area CONST
                                     53 	.area INITIALIZER
                                     54 	.area CODE
                                     55 
                                     56 ;--------------------------------------------------------
                                     57 ; global & static initialisations
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area GSINIT
                                     61 	.area GSFINAL
                                     62 	.area GSINIT
                                     63 ;--------------------------------------------------------
                                     64 ; Home
                                     65 ;--------------------------------------------------------
                                     66 	.area HOME
                                     67 	.area HOME
                                     68 ;--------------------------------------------------------
                                     69 ; code
                                     70 ;--------------------------------------------------------
                                     71 	.area CODE
                                     72 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     73 ; genLabel
                                     74 ;	-----------------------------------------
                                     75 ;	 function CLK_DeInit
                                     76 ;	-----------------------------------------
                                     77 ;	Register assignment is optimal.
                                     78 ;	Stack space usage: 0 bytes.
      008588                         79 _CLK_DeInit:
                                     80 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
                                     81 ; genPointerSet
      008588 35 01 50 C0      [ 1]   82 	mov	0x50c0+0, #0x01
                                     83 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
                                     84 ; genPointerSet
      00858C 35 00 50 C1      [ 1]   85 	mov	0x50c1+0, #0x00
                                     86 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
                                     87 ; genPointerSet
      008590 35 E1 50 C4      [ 1]   88 	mov	0x50c4+0, #0xe1
                                     89 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
                                     90 ; genPointerSet
      008594 35 00 50 C5      [ 1]   91 	mov	0x50c5+0, #0x00
                                     92 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
                                     93 ; genPointerSet
      008598 35 18 50 C6      [ 1]   94 	mov	0x50c6+0, #0x18
                                     95 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
                                     96 ; genPointerSet
      00859C 35 FF 50 C7      [ 1]   97 	mov	0x50c7+0, #0xff
                                     98 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
                                     99 ; genPointerSet
      0085A0 35 FF 50 CA      [ 1]  100 	mov	0x50ca+0, #0xff
                                    101 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
                                    102 ; genPointerSet
      0085A4 35 00 50 C8      [ 1]  103 	mov	0x50c8+0, #0x00
                                    104 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    105 ; genPointerSet
      0085A8 35 00 50 C9      [ 1]  106 	mov	0x50c9+0, #0x00
                                    107 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
                                    108 ; genLabel
      0085AC                        109 00101$:
                                    110 ; genPointerGet
      0085AC C6 50 C9         [ 1]  111 	ld	a, 0x50c9
                                    112 ; genAnd
      0085AF 44               [ 1]  113 	srl	a
      0085B0 24 03            [ 1]  114 	jrnc	00116$
      0085B2 CC 85 AC         [ 2]  115 	jp	00101$
      0085B5                        116 00116$:
                                    117 ; skipping generated iCode
                                    118 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
                                    119 ; genPointerSet
      0085B5 35 00 50 C9      [ 1]  120 	mov	0x50c9+0, #0x00
                                    121 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
                                    122 ; genPointerSet
      0085B9 35 00 50 CC      [ 1]  123 	mov	0x50cc+0, #0x00
                                    124 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
                                    125 ; genPointerSet
      0085BD 35 00 50 CD      [ 1]  126 	mov	0x50cd+0, #0x00
                                    127 ; genLabel
      0085C1                        128 00104$:
                                    129 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
                                    130 ; genEndFunction
      0085C1 81               [ 4]  131 	ret
                                    132 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    133 ; genLabel
                                    134 ;	-----------------------------------------
                                    135 ;	 function CLK_FastHaltWakeUpCmd
                                    136 ;	-----------------------------------------
                                    137 ;	Register assignment is optimal.
                                    138 ;	Stack space usage: 0 bytes.
      0085C2                        139 _CLK_FastHaltWakeUpCmd:
                                    140 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    141 ; genPointerGet
      0085C2 C6 50 C0         [ 1]  142 	ld	a, 0x50c0
                                    143 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
                                    144 ; genIfx
      0085C5 0D 03            [ 1]  145 	tnz	(0x03, sp)
      0085C7 26 03            [ 1]  146 	jrne	00111$
      0085C9 CC 85 D4         [ 2]  147 	jp	00102$
      0085CC                        148 00111$:
                                    149 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
                                    150 ; genOr
      0085CC AA 04            [ 1]  151 	or	a, #0x04
                                    152 ; genPointerSet
      0085CE C7 50 C0         [ 1]  153 	ld	0x50c0, a
                                    154 ; genGoto
      0085D1 CC 85 D9         [ 2]  155 	jp	00104$
                                    156 ; genLabel
      0085D4                        157 00102$:
                                    158 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
                                    159 ; genAnd
      0085D4 A4 FB            [ 1]  160 	and	a, #0xfb
                                    161 ; genPointerSet
      0085D6 C7 50 C0         [ 1]  162 	ld	0x50c0, a
                                    163 ; genLabel
      0085D9                        164 00104$:
                                    165 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
                                    166 ; genEndFunction
      0085D9 81               [ 4]  167 	ret
                                    168 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    169 ; genLabel
                                    170 ;	-----------------------------------------
                                    171 ;	 function CLK_HSECmd
                                    172 ;	-----------------------------------------
                                    173 ;	Register assignment is optimal.
                                    174 ;	Stack space usage: 0 bytes.
      0085DA                        175 _CLK_HSECmd:
                                    176 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    177 ; genPointerGet
      0085DA C6 50 C1         [ 1]  178 	ld	a, 0x50c1
                                    179 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
                                    180 ; genIfx
      0085DD 0D 03            [ 1]  181 	tnz	(0x03, sp)
      0085DF 26 03            [ 1]  182 	jrne	00111$
      0085E1 CC 85 EC         [ 2]  183 	jp	00102$
      0085E4                        184 00111$:
                                    185 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
                                    186 ; genOr
      0085E4 AA 01            [ 1]  187 	or	a, #0x01
                                    188 ; genPointerSet
      0085E6 C7 50 C1         [ 1]  189 	ld	0x50c1, a
                                    190 ; genGoto
      0085E9 CC 85 F1         [ 2]  191 	jp	00104$
                                    192 ; genLabel
      0085EC                        193 00102$:
                                    194 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    195 ; genAnd
      0085EC A4 FE            [ 1]  196 	and	a, #0xfe
                                    197 ; genPointerSet
      0085EE C7 50 C1         [ 1]  198 	ld	0x50c1, a
                                    199 ; genLabel
      0085F1                        200 00104$:
                                    201 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
                                    202 ; genEndFunction
      0085F1 81               [ 4]  203 	ret
                                    204 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    205 ; genLabel
                                    206 ;	-----------------------------------------
                                    207 ;	 function CLK_HSICmd
                                    208 ;	-----------------------------------------
                                    209 ;	Register assignment is optimal.
                                    210 ;	Stack space usage: 0 bytes.
      0085F2                        211 _CLK_HSICmd:
                                    212 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    213 ; genPointerGet
      0085F2 C6 50 C0         [ 1]  214 	ld	a, 0x50c0
                                    215 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
                                    216 ; genIfx
      0085F5 0D 03            [ 1]  217 	tnz	(0x03, sp)
      0085F7 26 03            [ 1]  218 	jrne	00111$
      0085F9 CC 86 04         [ 2]  219 	jp	00102$
      0085FC                        220 00111$:
                                    221 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
                                    222 ; genOr
      0085FC AA 01            [ 1]  223 	or	a, #0x01
                                    224 ; genPointerSet
      0085FE C7 50 C0         [ 1]  225 	ld	0x50c0, a
                                    226 ; genGoto
      008601 CC 86 09         [ 2]  227 	jp	00104$
                                    228 ; genLabel
      008604                        229 00102$:
                                    230 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    231 ; genAnd
      008604 A4 FE            [ 1]  232 	and	a, #0xfe
                                    233 ; genPointerSet
      008606 C7 50 C0         [ 1]  234 	ld	0x50c0, a
                                    235 ; genLabel
      008609                        236 00104$:
                                    237 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
                                    238 ; genEndFunction
      008609 81               [ 4]  239 	ret
                                    240 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    241 ; genLabel
                                    242 ;	-----------------------------------------
                                    243 ;	 function CLK_LSICmd
                                    244 ;	-----------------------------------------
                                    245 ;	Register assignment is optimal.
                                    246 ;	Stack space usage: 0 bytes.
      00860A                        247 _CLK_LSICmd:
                                    248 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    249 ; genPointerGet
      00860A C6 50 C0         [ 1]  250 	ld	a, 0x50c0
                                    251 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
                                    252 ; genIfx
      00860D 0D 03            [ 1]  253 	tnz	(0x03, sp)
      00860F 26 03            [ 1]  254 	jrne	00111$
      008611 CC 86 1C         [ 2]  255 	jp	00102$
      008614                        256 00111$:
                                    257 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
                                    258 ; genOr
      008614 AA 08            [ 1]  259 	or	a, #0x08
                                    260 ; genPointerSet
      008616 C7 50 C0         [ 1]  261 	ld	0x50c0, a
                                    262 ; genGoto
      008619 CC 86 21         [ 2]  263 	jp	00104$
                                    264 ; genLabel
      00861C                        265 00102$:
                                    266 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    267 ; genAnd
      00861C A4 F7            [ 1]  268 	and	a, #0xf7
                                    269 ; genPointerSet
      00861E C7 50 C0         [ 1]  270 	ld	0x50c0, a
                                    271 ; genLabel
      008621                        272 00104$:
                                    273 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
                                    274 ; genEndFunction
      008621 81               [ 4]  275 	ret
                                    276 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    277 ; genLabel
                                    278 ;	-----------------------------------------
                                    279 ;	 function CLK_CCOCmd
                                    280 ;	-----------------------------------------
                                    281 ;	Register assignment is optimal.
                                    282 ;	Stack space usage: 0 bytes.
      008622                        283 _CLK_CCOCmd:
                                    284 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    285 ; genPointerGet
      008622 C6 50 C9         [ 1]  286 	ld	a, 0x50c9
                                    287 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
                                    288 ; genIfx
      008625 0D 03            [ 1]  289 	tnz	(0x03, sp)
      008627 26 03            [ 1]  290 	jrne	00111$
      008629 CC 86 34         [ 2]  291 	jp	00102$
      00862C                        292 00111$:
                                    293 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    294 ; genOr
      00862C AA 01            [ 1]  295 	or	a, #0x01
                                    296 ; genPointerSet
      00862E C7 50 C9         [ 1]  297 	ld	0x50c9, a
                                    298 ; genGoto
      008631 CC 86 39         [ 2]  299 	jp	00104$
                                    300 ; genLabel
      008634                        301 00102$:
                                    302 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
                                    303 ; genAnd
      008634 A4 FE            [ 1]  304 	and	a, #0xfe
                                    305 ; genPointerSet
      008636 C7 50 C9         [ 1]  306 	ld	0x50c9, a
                                    307 ; genLabel
      008639                        308 00104$:
                                    309 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
                                    310 ; genEndFunction
      008639 81               [ 4]  311 	ret
                                    312 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    313 ; genLabel
                                    314 ;	-----------------------------------------
                                    315 ;	 function CLK_ClockSwitchCmd
                                    316 ;	-----------------------------------------
                                    317 ;	Register assignment is optimal.
                                    318 ;	Stack space usage: 0 bytes.
      00863A                        319 _CLK_ClockSwitchCmd:
                                    320 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    321 ; genPointerGet
      00863A C6 50 C5         [ 1]  322 	ld	a, 0x50c5
                                    323 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
                                    324 ; genIfx
      00863D 0D 03            [ 1]  325 	tnz	(0x03, sp)
      00863F 26 03            [ 1]  326 	jrne	00111$
      008641 CC 86 4C         [ 2]  327 	jp	00102$
      008644                        328 00111$:
                                    329 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
                                    330 ; genOr
      008644 AA 02            [ 1]  331 	or	a, #0x02
                                    332 ; genPointerSet
      008646 C7 50 C5         [ 1]  333 	ld	0x50c5, a
                                    334 ; genGoto
      008649 CC 86 51         [ 2]  335 	jp	00104$
                                    336 ; genLabel
      00864C                        337 00102$:
                                    338 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
                                    339 ; genAnd
      00864C A4 FD            [ 1]  340 	and	a, #0xfd
                                    341 ; genPointerSet
      00864E C7 50 C5         [ 1]  342 	ld	0x50c5, a
                                    343 ; genLabel
      008651                        344 00104$:
                                    345 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
                                    346 ; genEndFunction
      008651 81               [ 4]  347 	ret
                                    348 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    349 ; genLabel
                                    350 ;	-----------------------------------------
                                    351 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    352 ;	-----------------------------------------
                                    353 ;	Register assignment is optimal.
                                    354 ;	Stack space usage: 0 bytes.
      008652                        355 _CLK_SlowActiveHaltWakeUpCmd:
                                    356 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    357 ; genPointerGet
      008652 C6 50 C0         [ 1]  358 	ld	a, 0x50c0
                                    359 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
                                    360 ; genIfx
      008655 0D 03            [ 1]  361 	tnz	(0x03, sp)
      008657 26 03            [ 1]  362 	jrne	00111$
      008659 CC 86 64         [ 2]  363 	jp	00102$
      00865C                        364 00111$:
                                    365 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
                                    366 ; genOr
      00865C AA 20            [ 1]  367 	or	a, #0x20
                                    368 ; genPointerSet
      00865E C7 50 C0         [ 1]  369 	ld	0x50c0, a
                                    370 ; genGoto
      008661 CC 86 69         [ 2]  371 	jp	00104$
                                    372 ; genLabel
      008664                        373 00102$:
                                    374 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
                                    375 ; genAnd
      008664 A4 DF            [ 1]  376 	and	a, #0xdf
                                    377 ; genPointerSet
      008666 C7 50 C0         [ 1]  378 	ld	0x50c0, a
                                    379 ; genLabel
      008669                        380 00104$:
                                    381 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
                                    382 ; genEndFunction
      008669 81               [ 4]  383 	ret
                                    384 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    385 ; genLabel
                                    386 ;	-----------------------------------------
                                    387 ;	 function CLK_PeripheralClockConfig
                                    388 ;	-----------------------------------------
                                    389 ;	Register assignment is optimal.
                                    390 ;	Stack space usage: 2 bytes.
      00866A                        391 _CLK_PeripheralClockConfig:
      00866A 89               [ 2]  392 	pushw	x
                                    393 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    394 ; genAnd
      00866B 7B 05            [ 1]  395 	ld	a, (0x05, sp)
      00866D A4 0F            [ 1]  396 	and	a, #0x0f
                                    397 ; genLeftShift
      00866F 88               [ 1]  398 	push	a
      008670 A6 01            [ 1]  399 	ld	a, #0x01
      008672 6B 03            [ 1]  400 	ld	(0x03, sp), a
      008674 84               [ 1]  401 	pop	a
      008675 4D               [ 1]  402 	tnz	a
      008676 27 05            [ 1]  403 	jreq	00128$
      008678                        404 00127$:
      008678 08 02            [ 1]  405 	sll	(0x02, sp)
      00867A 4A               [ 1]  406 	dec	a
      00867B 26 FB            [ 1]  407 	jrne	00127$
      00867D                        408 00128$:
                                    409 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    410 ; genCpl
      00867D 7B 02            [ 1]  411 	ld	a, (0x02, sp)
      00867F 43               [ 1]  412 	cpl	a
      008680 6B 01            [ 1]  413 	ld	(0x01, sp), a
                                    414 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
                                    415 ; genAnd
      008682 7B 05            [ 1]  416 	ld	a, (0x05, sp)
      008684 A5 10            [ 1]  417 	bcp	a, #0x10
      008686 27 03            [ 1]  418 	jreq	00129$
      008688 CC 86 A5         [ 2]  419 	jp	00108$
      00868B                        420 00129$:
                                    421 ; skipping generated iCode
                                    422 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    423 ; genPointerGet
      00868B C6 50 C7         [ 1]  424 	ld	a, 0x50c7
                                    425 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
                                    426 ; genIfx
      00868E 0D 06            [ 1]  427 	tnz	(0x06, sp)
      008690 26 03            [ 1]  428 	jrne	00130$
      008692 CC 86 9D         [ 2]  429 	jp	00102$
      008695                        430 00130$:
                                    431 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    432 ; genOr
      008695 1A 02            [ 1]  433 	or	a, (0x02, sp)
                                    434 ; genPointerSet
      008697 C7 50 C7         [ 1]  435 	ld	0x50c7, a
                                    436 ; genGoto
      00869A CC 86 BC         [ 2]  437 	jp	00110$
                                    438 ; genLabel
      00869D                        439 00102$:
                                    440 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    441 ; genAnd
      00869D 14 01            [ 1]  442 	and	a, (0x01, sp)
                                    443 ; genPointerSet
      00869F C7 50 C7         [ 1]  444 	ld	0x50c7, a
                                    445 ; genGoto
      0086A2 CC 86 BC         [ 2]  446 	jp	00110$
                                    447 ; genLabel
      0086A5                        448 00108$:
                                    449 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    450 ; genPointerGet
      0086A5 C6 50 CA         [ 1]  451 	ld	a, 0x50ca
                                    452 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
                                    453 ; genIfx
      0086A8 0D 06            [ 1]  454 	tnz	(0x06, sp)
      0086AA 26 03            [ 1]  455 	jrne	00131$
      0086AC CC 86 B7         [ 2]  456 	jp	00105$
      0086AF                        457 00131$:
                                    458 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
                                    459 ; genOr
      0086AF 1A 02            [ 1]  460 	or	a, (0x02, sp)
                                    461 ; genPointerSet
      0086B1 C7 50 CA         [ 1]  462 	ld	0x50ca, a
                                    463 ; genGoto
      0086B4 CC 86 BC         [ 2]  464 	jp	00110$
                                    465 ; genLabel
      0086B7                        466 00105$:
                                    467 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
                                    468 ; genAnd
      0086B7 14 01            [ 1]  469 	and	a, (0x01, sp)
                                    470 ; genPointerSet
      0086B9 C7 50 CA         [ 1]  471 	ld	0x50ca, a
                                    472 ; genLabel
      0086BC                        473 00110$:
                                    474 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
                                    475 ; genEndFunction
      0086BC 85               [ 2]  476 	popw	x
      0086BD 81               [ 4]  477 	ret
                                    478 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    479 ; genLabel
                                    480 ;	-----------------------------------------
                                    481 ;	 function CLK_ClockSwitchConfig
                                    482 ;	-----------------------------------------
                                    483 ;	Register assignment might be sub-optimal.
                                    484 ;	Stack space usage: 0 bytes.
      0086BE                        485 _CLK_ClockSwitchConfig:
                                    486 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
                                    487 ; genPointerGet
      0086BE C6 50 C3         [ 1]  488 	ld	a, 0x50c3
      0086C1 90 97            [ 1]  489 	ld	yl, a
                                    490 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                    491 ; genPointerGet
      0086C3 C6 50 C5         [ 1]  492 	ld	a, 0x50c5
                                    493 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
                                    494 ; genCmpEQorNE
      0086C6 88               [ 1]  495 	push	a
      0086C7 7B 04            [ 1]  496 	ld	a, (0x04, sp)
      0086C9 4A               [ 1]  497 	dec	a
      0086CA 84               [ 1]  498 	pop	a
      0086CB 26 03            [ 1]  499 	jrne	00232$
      0086CD CC 86 D3         [ 2]  500 	jp	00233$
      0086D0                        501 00232$:
      0086D0 CC 87 1B         [ 2]  502 	jp	00122$
      0086D3                        503 00233$:
                                    504 ; skipping generated iCode
                                    505 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
                                    506 ; genOr
      0086D3 AA 02            [ 1]  507 	or	a, #0x02
                                    508 ; genPointerSet
      0086D5 C7 50 C5         [ 1]  509 	ld	0x50c5, a
                                    510 ; genPointerGet
      0086D8 C6 50 C5         [ 1]  511 	ld	a, 0x50c5
                                    512 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
                                    513 ; genIfx
      0086DB 0D 05            [ 1]  514 	tnz	(0x05, sp)
      0086DD 26 03            [ 1]  515 	jrne	00234$
      0086DF CC 86 EA         [ 2]  516 	jp	00102$
      0086E2                        517 00234$:
                                    518 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    519 ; genOr
      0086E2 AA 04            [ 1]  520 	or	a, #0x04
                                    521 ; genPointerSet
      0086E4 C7 50 C5         [ 1]  522 	ld	0x50c5, a
                                    523 ; genGoto
      0086E7 CC 86 EF         [ 2]  524 	jp	00103$
                                    525 ; genLabel
      0086EA                        526 00102$:
                                    527 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    528 ; genAnd
      0086EA A4 FB            [ 1]  529 	and	a, #0xfb
                                    530 ; genPointerSet
      0086EC C7 50 C5         [ 1]  531 	ld	0x50c5, a
                                    532 ; genLabel
      0086EF                        533 00103$:
                                    534 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
                                    535 ; genPointerSet
      0086EF AE 50 C4         [ 2]  536 	ldw	x, #0x50c4
      0086F2 7B 04            [ 1]  537 	ld	a, (0x04, sp)
      0086F4 F7               [ 1]  538 	ld	(x), a
                                    539 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
                                    540 ; genAssign
      0086F5 5F               [ 1]  541 	clrw	x
      0086F6 5A               [ 2]  542 	decw	x
                                    543 ; genLabel
      0086F7                        544 00105$:
                                    545 ; genPointerGet
      0086F7 C6 50 C5         [ 1]  546 	ld	a, 0x50c5
                                    547 ; genAnd
      0086FA 44               [ 1]  548 	srl	a
      0086FB 25 03            [ 1]  549 	jrc	00235$
      0086FD CC 87 0A         [ 2]  550 	jp	00107$
      008700                        551 00235$:
                                    552 ; skipping generated iCode
                                    553 ; genIfx
      008700 5D               [ 2]  554 	tnzw	x
      008701 26 03            [ 1]  555 	jrne	00236$
      008703 CC 87 0A         [ 2]  556 	jp	00107$
      008706                        557 00236$:
                                    558 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
                                    559 ; genMinus
      008706 5A               [ 2]  560 	decw	x
                                    561 ; genGoto
      008707 CC 86 F7         [ 2]  562 	jp	00105$
                                    563 ; genLabel
      00870A                        564 00107$:
                                    565 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
                                    566 ; genIfx
      00870A 5D               [ 2]  567 	tnzw	x
      00870B 26 03            [ 1]  568 	jrne	00237$
      00870D CC 87 16         [ 2]  569 	jp	00109$
      008710                        570 00237$:
                                    571 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
                                    572 ; genAssign
      008710 A6 01            [ 1]  573 	ld	a, #0x01
      008712 97               [ 1]  574 	ld	xl, a
                                    575 ; genGoto
      008713 CC 87 61         [ 2]  576 	jp	00123$
                                    577 ; genLabel
      008716                        578 00109$:
                                    579 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
                                    580 ; genAssign
      008716 4F               [ 1]  581 	clr	a
      008717 97               [ 1]  582 	ld	xl, a
                                    583 ; genGoto
      008718 CC 87 61         [ 2]  584 	jp	00123$
                                    585 ; genLabel
      00871B                        586 00122$:
                                    587 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
                                    588 ; genIfx
      00871B 0D 05            [ 1]  589 	tnz	(0x05, sp)
      00871D 26 03            [ 1]  590 	jrne	00238$
      00871F CC 87 2A         [ 2]  591 	jp	00112$
      008722                        592 00238$:
                                    593 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    594 ; genOr
      008722 AA 04            [ 1]  595 	or	a, #0x04
                                    596 ; genPointerSet
      008724 C7 50 C5         [ 1]  597 	ld	0x50c5, a
                                    598 ; genGoto
      008727 CC 87 2F         [ 2]  599 	jp	00113$
                                    600 ; genLabel
      00872A                        601 00112$:
                                    602 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    603 ; genAnd
      00872A A4 FB            [ 1]  604 	and	a, #0xfb
                                    605 ; genPointerSet
      00872C C7 50 C5         [ 1]  606 	ld	0x50c5, a
                                    607 ; genLabel
      00872F                        608 00113$:
                                    609 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
                                    610 ; genPointerSet
      00872F AE 50 C4         [ 2]  611 	ldw	x, #0x50c4
      008732 7B 04            [ 1]  612 	ld	a, (0x04, sp)
      008734 F7               [ 1]  613 	ld	(x), a
                                    614 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
                                    615 ; genAssign
      008735 5F               [ 1]  616 	clrw	x
      008736 5A               [ 2]  617 	decw	x
                                    618 ; genLabel
      008737                        619 00115$:
                                    620 ; genPointerGet
      008737 C6 50 C5         [ 1]  621 	ld	a, 0x50c5
                                    622 ; genAnd
      00873A A5 08            [ 1]  623 	bcp	a, #0x08
      00873C 26 03            [ 1]  624 	jrne	00239$
      00873E CC 87 4B         [ 2]  625 	jp	00117$
      008741                        626 00239$:
                                    627 ; skipping generated iCode
                                    628 ; genIfx
      008741 5D               [ 2]  629 	tnzw	x
      008742 26 03            [ 1]  630 	jrne	00240$
      008744 CC 87 4B         [ 2]  631 	jp	00117$
      008747                        632 00240$:
                                    633 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
                                    634 ; genMinus
      008747 5A               [ 2]  635 	decw	x
                                    636 ; genGoto
      008748 CC 87 37         [ 2]  637 	jp	00115$
                                    638 ; genLabel
      00874B                        639 00117$:
                                    640 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
                                    641 ; genIfx
      00874B 5D               [ 2]  642 	tnzw	x
      00874C 26 03            [ 1]  643 	jrne	00241$
      00874E CC 87 5F         [ 2]  644 	jp	00119$
      008751                        645 00241$:
                                    646 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
                                    647 ; genPointerGet
      008751 C6 50 C5         [ 1]  648 	ld	a, 0x50c5
                                    649 ; genOr
      008754 AA 02            [ 1]  650 	or	a, #0x02
                                    651 ; genPointerSet
      008756 C7 50 C5         [ 1]  652 	ld	0x50c5, a
                                    653 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
                                    654 ; genAssign
      008759 A6 01            [ 1]  655 	ld	a, #0x01
      00875B 97               [ 1]  656 	ld	xl, a
                                    657 ; genGoto
      00875C CC 87 61         [ 2]  658 	jp	00123$
                                    659 ; genLabel
      00875F                        660 00119$:
                                    661 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
                                    662 ; genAssign
      00875F 4F               [ 1]  663 	clr	a
      008760 97               [ 1]  664 	ld	xl, a
                                    665 ; genLabel
      008761                        666 00123$:
                                    667 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
                                    668 ; genIfx
      008761 9F               [ 1]  669 	ld	a, xl
      008762 4D               [ 1]  670 	tnz	a
      008763 26 03            [ 1]  671 	jrne	00242$
      008765 CC 87 BF         [ 2]  672 	jp	00136$
      008768                        673 00242$:
                                    674 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
                                    675 ; genIfx
      008768 0D 06            [ 1]  676 	tnz	(0x06, sp)
      00876A 27 03            [ 1]  677 	jreq	00243$
      00876C CC 87 86         [ 2]  678 	jp	00132$
      00876F                        679 00243$:
                                    680 ; genCmpEQorNE
      00876F 90 9F            [ 1]  681 	ld	a, yl
      008771 A1 E1            [ 1]  682 	cp	a, #0xe1
      008773 26 03            [ 1]  683 	jrne	00245$
      008775 CC 87 7B         [ 2]  684 	jp	00246$
      008778                        685 00245$:
      008778 CC 87 86         [ 2]  686 	jp	00132$
      00877B                        687 00246$:
                                    688 ; skipping generated iCode
                                    689 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
                                    690 ; genPointerGet
      00877B C6 50 C0         [ 1]  691 	ld	a, 0x50c0
                                    692 ; genAnd
      00877E A4 FE            [ 1]  693 	and	a, #0xfe
                                    694 ; genPointerSet
      008780 C7 50 C0         [ 1]  695 	ld	0x50c0, a
                                    696 ; genGoto
      008783 CC 87 BF         [ 2]  697 	jp	00136$
                                    698 ; genLabel
      008786                        699 00132$:
                                    700 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
                                    701 ; genIfx
      008786 0D 06            [ 1]  702 	tnz	(0x06, sp)
      008788 27 03            [ 1]  703 	jreq	00247$
      00878A CC 87 A4         [ 2]  704 	jp	00128$
      00878D                        705 00247$:
                                    706 ; genCmpEQorNE
      00878D 90 9F            [ 1]  707 	ld	a, yl
      00878F A1 D2            [ 1]  708 	cp	a, #0xd2
      008791 26 03            [ 1]  709 	jrne	00249$
      008793 CC 87 99         [ 2]  710 	jp	00250$
      008796                        711 00249$:
      008796 CC 87 A4         [ 2]  712 	jp	00128$
      008799                        713 00250$:
                                    714 ; skipping generated iCode
                                    715 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
                                    716 ; genPointerGet
      008799 C6 50 C0         [ 1]  717 	ld	a, 0x50c0
                                    718 ; genAnd
      00879C A4 F7            [ 1]  719 	and	a, #0xf7
                                    720 ; genPointerSet
      00879E C7 50 C0         [ 1]  721 	ld	0x50c0, a
                                    722 ; genGoto
      0087A1 CC 87 BF         [ 2]  723 	jp	00136$
                                    724 ; genLabel
      0087A4                        725 00128$:
                                    726 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
                                    727 ; genIfx
      0087A4 0D 06            [ 1]  728 	tnz	(0x06, sp)
      0087A6 27 03            [ 1]  729 	jreq	00251$
      0087A8 CC 87 BF         [ 2]  730 	jp	00136$
      0087AB                        731 00251$:
                                    732 ; genCmpEQorNE
      0087AB 90 9F            [ 1]  733 	ld	a, yl
      0087AD A1 B4            [ 1]  734 	cp	a, #0xb4
      0087AF 26 03            [ 1]  735 	jrne	00253$
      0087B1 CC 87 B7         [ 2]  736 	jp	00254$
      0087B4                        737 00253$:
      0087B4 CC 87 BF         [ 2]  738 	jp	00136$
      0087B7                        739 00254$:
                                    740 ; skipping generated iCode
                                    741 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
                                    742 ; genPointerGet
      0087B7 C6 50 C1         [ 1]  743 	ld	a, 0x50c1
                                    744 ; genAnd
      0087BA A4 FE            [ 1]  745 	and	a, #0xfe
                                    746 ; genPointerSet
      0087BC C7 50 C1         [ 1]  747 	ld	0x50c1, a
                                    748 ; genLabel
      0087BF                        749 00136$:
                                    750 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
                                    751 ; genReturn
      0087BF 9F               [ 1]  752 	ld	a, xl
                                    753 ; genLabel
      0087C0                        754 00137$:
                                    755 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
                                    756 ; genEndFunction
      0087C0 81               [ 4]  757 	ret
                                    758 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    759 ; genLabel
                                    760 ;	-----------------------------------------
                                    761 ;	 function CLK_HSIPrescalerConfig
                                    762 ;	-----------------------------------------
                                    763 ;	Register assignment is optimal.
                                    764 ;	Stack space usage: 0 bytes.
      0087C1                        765 _CLK_HSIPrescalerConfig:
                                    766 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                    767 ; genPointerGet
      0087C1 C6 50 C6         [ 1]  768 	ld	a, 0x50c6
                                    769 ; genAnd
      0087C4 A4 E7            [ 1]  770 	and	a, #0xe7
                                    771 ; genPointerSet
      0087C6 C7 50 C6         [ 1]  772 	ld	0x50c6, a
                                    773 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
                                    774 ; genPointerGet
      0087C9 C6 50 C6         [ 1]  775 	ld	a, 0x50c6
                                    776 ; genOr
      0087CC 1A 03            [ 1]  777 	or	a, (0x03, sp)
                                    778 ; genPointerSet
      0087CE C7 50 C6         [ 1]  779 	ld	0x50c6, a
                                    780 ; genLabel
      0087D1                        781 00101$:
                                    782 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
                                    783 ; genEndFunction
      0087D1 81               [ 4]  784 	ret
                                    785 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    786 ; genLabel
                                    787 ;	-----------------------------------------
                                    788 ;	 function CLK_CCOConfig
                                    789 ;	-----------------------------------------
                                    790 ;	Register assignment is optimal.
                                    791 ;	Stack space usage: 0 bytes.
      0087D2                        792 _CLK_CCOConfig:
                                    793 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
                                    794 ; genPointerGet
      0087D2 C6 50 C9         [ 1]  795 	ld	a, 0x50c9
                                    796 ; genAnd
      0087D5 A4 E1            [ 1]  797 	and	a, #0xe1
                                    798 ; genPointerSet
      0087D7 C7 50 C9         [ 1]  799 	ld	0x50c9, a
                                    800 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
                                    801 ; genPointerGet
      0087DA C6 50 C9         [ 1]  802 	ld	a, 0x50c9
                                    803 ; genOr
      0087DD 1A 03            [ 1]  804 	or	a, (0x03, sp)
                                    805 ; genPointerSet
      0087DF C7 50 C9         [ 1]  806 	ld	0x50c9, a
                                    807 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
                                    808 ; genPointerGet
      0087E2 C6 50 C9         [ 1]  809 	ld	a, 0x50c9
                                    810 ; genOr
      0087E5 AA 01            [ 1]  811 	or	a, #0x01
                                    812 ; genPointerSet
      0087E7 C7 50 C9         [ 1]  813 	ld	0x50c9, a
                                    814 ; genLabel
      0087EA                        815 00101$:
                                    816 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
                                    817 ; genEndFunction
      0087EA 81               [ 4]  818 	ret
                                    819 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    820 ; genLabel
                                    821 ;	-----------------------------------------
                                    822 ;	 function CLK_ITConfig
                                    823 ;	-----------------------------------------
                                    824 ;	Register assignment is optimal.
                                    825 ;	Stack space usage: 1 bytes.
      0087EB                        826 _CLK_ITConfig:
      0087EB 88               [ 1]  827 	push	a
                                    828 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
                                    829 ; genCmpEQorNE
      0087EC 7B 04            [ 1]  830 	ld	a, (0x04, sp)
      0087EE A1 0C            [ 1]  831 	cp	a, #0x0c
      0087F0 26 07            [ 1]  832 	jrne	00140$
      0087F2 A6 01            [ 1]  833 	ld	a, #0x01
      0087F4 6B 01            [ 1]  834 	ld	(0x01, sp), a
      0087F6 CC 87 FB         [ 2]  835 	jp	00141$
      0087F9                        836 00140$:
      0087F9 0F 01            [ 1]  837 	clr	(0x01, sp)
      0087FB                        838 00141$:
                                    839 ; genCmpEQorNE
      0087FB 7B 04            [ 1]  840 	ld	a, (0x04, sp)
      0087FD A1 1C            [ 1]  841 	cp	a, #0x1c
      0087FF 26 05            [ 1]  842 	jrne	00143$
      008801 A6 01            [ 1]  843 	ld	a, #0x01
      008803 CC 88 07         [ 2]  844 	jp	00144$
      008806                        845 00143$:
      008806 4F               [ 1]  846 	clr	a
      008807                        847 00144$:
                                    848 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
                                    849 ; genIfx
      008807 0D 05            [ 1]  850 	tnz	(0x05, sp)
      008809 26 03            [ 1]  851 	jrne	00145$
      00880B CC 88 31         [ 2]  852 	jp	00110$
      00880E                        853 00145$:
                                    854 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
                                    855 ; genIfx
      00880E 0D 01            [ 1]  856 	tnz	(0x01, sp)
      008810 27 03            [ 1]  857 	jreq	00146$
      008812 CC 88 26         [ 2]  858 	jp	00102$
      008815                        859 00146$:
                                    860 ; genIfx
      008815 4D               [ 1]  861 	tnz	a
      008816 26 03            [ 1]  862 	jrne	00147$
      008818 CC 88 51         [ 2]  863 	jp	00112$
      00881B                        864 00147$:
                                    865 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
                                    866 ; genPointerGet
      00881B C6 50 C5         [ 1]  867 	ld	a, 0x50c5
                                    868 ; genOr
      00881E AA 04            [ 1]  869 	or	a, #0x04
                                    870 ; genPointerSet
      008820 C7 50 C5         [ 1]  871 	ld	0x50c5, a
                                    872 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
                                    873 ; genGoto
      008823 CC 88 51         [ 2]  874 	jp	00112$
                                    875 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
                                    876 ; genLabel
      008826                        877 00102$:
                                    878 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
                                    879 ; genPointerGet
      008826 C6 50 C8         [ 1]  880 	ld	a, 0x50c8
                                    881 ; genOr
      008829 AA 04            [ 1]  882 	or	a, #0x04
                                    883 ; genPointerSet
      00882B C7 50 C8         [ 1]  884 	ld	0x50c8, a
                                    885 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
                                    886 ; genGoto
      00882E CC 88 51         [ 2]  887 	jp	00112$
                                    888 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
                                    889 ; genLabel
      008831                        890 00110$:
                                    891 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
                                    892 ; genIfx
      008831 0D 01            [ 1]  893 	tnz	(0x01, sp)
      008833 27 03            [ 1]  894 	jreq	00148$
      008835 CC 88 49         [ 2]  895 	jp	00106$
      008838                        896 00148$:
                                    897 ; genIfx
      008838 4D               [ 1]  898 	tnz	a
      008839 26 03            [ 1]  899 	jrne	00149$
      00883B CC 88 51         [ 2]  900 	jp	00112$
      00883E                        901 00149$:
                                    902 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
                                    903 ; genPointerGet
      00883E C6 50 C5         [ 1]  904 	ld	a, 0x50c5
                                    905 ; genAnd
      008841 A4 FB            [ 1]  906 	and	a, #0xfb
                                    907 ; genPointerSet
      008843 C7 50 C5         [ 1]  908 	ld	0x50c5, a
                                    909 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
                                    910 ; genGoto
      008846 CC 88 51         [ 2]  911 	jp	00112$
                                    912 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
                                    913 ; genLabel
      008849                        914 00106$:
                                    915 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
                                    916 ; genPointerGet
      008849 C6 50 C8         [ 1]  917 	ld	a, 0x50c8
                                    918 ; genAnd
      00884C A4 FB            [ 1]  919 	and	a, #0xfb
                                    920 ; genPointerSet
      00884E C7 50 C8         [ 1]  921 	ld	0x50c8, a
                                    922 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
                                    923 ; genLabel
      008851                        924 00112$:
                                    925 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
                                    926 ; genEndFunction
      008851 84               [ 1]  927 	pop	a
      008852 81               [ 4]  928 	ret
                                    929 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    930 ; genLabel
                                    931 ;	-----------------------------------------
                                    932 ;	 function CLK_SYSCLKConfig
                                    933 ;	-----------------------------------------
                                    934 ;	Register assignment is optimal.
                                    935 ;	Stack space usage: 2 bytes.
      008853                        936 _CLK_SYSCLKConfig:
      008853 89               [ 2]  937 	pushw	x
                                    938 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                    939 ; genPointerGet
      008854 C6 50 C6         [ 1]  940 	ld	a, 0x50c6
                                    941 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
                                    942 ; genAnd
      008857 0D 05            [ 1]  943 	tnz	(0x05, sp)
      008859 2A 03            [ 1]  944 	jrpl	00111$
      00885B CC 88 74         [ 2]  945 	jp	00102$
      00885E                        946 00111$:
                                    947 ; skipping generated iCode
                                    948 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
                                    949 ; genAnd
      00885E A4 E7            [ 1]  950 	and	a, #0xe7
                                    951 ; genPointerSet
      008860 C7 50 C6         [ 1]  952 	ld	0x50c6, a
                                    953 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
                                    954 ; genPointerGet
      008863 C6 50 C6         [ 1]  955 	ld	a, 0x50c6
      008866 6B 02            [ 1]  956 	ld	(0x02, sp), a
                                    957 ; genAnd
      008868 7B 05            [ 1]  958 	ld	a, (0x05, sp)
      00886A A4 18            [ 1]  959 	and	a, #0x18
                                    960 ; genOr
      00886C 1A 02            [ 1]  961 	or	a, (0x02, sp)
                                    962 ; genPointerSet
      00886E C7 50 C6         [ 1]  963 	ld	0x50c6, a
                                    964 ; genGoto
      008871 CC 88 87         [ 2]  965 	jp	00104$
                                    966 ; genLabel
      008874                        967 00102$:
                                    968 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
                                    969 ; genAnd
      008874 A4 F8            [ 1]  970 	and	a, #0xf8
                                    971 ; genPointerSet
      008876 C7 50 C6         [ 1]  972 	ld	0x50c6, a
                                    973 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
                                    974 ; genPointerGet
      008879 C6 50 C6         [ 1]  975 	ld	a, 0x50c6
      00887C 6B 01            [ 1]  976 	ld	(0x01, sp), a
                                    977 ; genAnd
      00887E 7B 05            [ 1]  978 	ld	a, (0x05, sp)
      008880 A4 07            [ 1]  979 	and	a, #0x07
                                    980 ; genOr
      008882 1A 01            [ 1]  981 	or	a, (0x01, sp)
                                    982 ; genPointerSet
      008884 C7 50 C6         [ 1]  983 	ld	0x50c6, a
                                    984 ; genLabel
      008887                        985 00104$:
                                    986 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
                                    987 ; genEndFunction
      008887 85               [ 2]  988 	popw	x
      008888 81               [ 4]  989 	ret
                                    990 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    991 ; genLabel
                                    992 ;	-----------------------------------------
                                    993 ;	 function CLK_SWIMConfig
                                    994 ;	-----------------------------------------
                                    995 ;	Register assignment is optimal.
                                    996 ;	Stack space usage: 0 bytes.
      008889                        997 _CLK_SWIMConfig:
                                    998 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                    999 ; genPointerGet
      008889 C6 50 CD         [ 1] 1000 	ld	a, 0x50cd
                                   1001 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
                                   1002 ; genIfx
      00888C 0D 03            [ 1] 1003 	tnz	(0x03, sp)
      00888E 26 03            [ 1] 1004 	jrne	00111$
      008890 CC 88 9B         [ 2] 1005 	jp	00102$
      008893                       1006 00111$:
                                   1007 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
                                   1008 ; genOr
      008893 AA 01            [ 1] 1009 	or	a, #0x01
                                   1010 ; genPointerSet
      008895 C7 50 CD         [ 1] 1011 	ld	0x50cd, a
                                   1012 ; genGoto
      008898 CC 88 A0         [ 2] 1013 	jp	00104$
                                   1014 ; genLabel
      00889B                       1015 00102$:
                                   1016 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
                                   1017 ; genAnd
      00889B A4 FE            [ 1] 1018 	and	a, #0xfe
                                   1019 ; genPointerSet
      00889D C7 50 CD         [ 1] 1020 	ld	0x50cd, a
                                   1021 ; genLabel
      0088A0                       1022 00104$:
                                   1023 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
                                   1024 ; genEndFunction
      0088A0 81               [ 4] 1025 	ret
                                   1026 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                   1027 ; genLabel
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function CLK_ClockSecuritySystemEnable
                                   1030 ;	-----------------------------------------
                                   1031 ;	Register assignment is optimal.
                                   1032 ;	Stack space usage: 0 bytes.
      0088A1                       1033 _CLK_ClockSecuritySystemEnable:
                                   1034 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
                                   1035 ; genPointerGet
      0088A1 C6 50 C8         [ 1] 1036 	ld	a, 0x50c8
                                   1037 ; genOr
      0088A4 AA 01            [ 1] 1038 	or	a, #0x01
                                   1039 ; genPointerSet
      0088A6 C7 50 C8         [ 1] 1040 	ld	0x50c8, a
                                   1041 ; genLabel
      0088A9                       1042 00101$:
                                   1043 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
                                   1044 ; genEndFunction
      0088A9 81               [ 4] 1045 	ret
                                   1046 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                   1047 ; genLabel
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function CLK_GetSYSCLKSource
                                   1050 ;	-----------------------------------------
                                   1051 ;	Register assignment is optimal.
                                   1052 ;	Stack space usage: 0 bytes.
      0088AA                       1053 _CLK_GetSYSCLKSource:
                                   1054 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
                                   1055 ; genPointerGet
      0088AA C6 50 C3         [ 1] 1056 	ld	a, 0x50c3
                                   1057 ; genReturn
                                   1058 ; genLabel
      0088AD                       1059 00101$:
                                   1060 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
                                   1061 ; genEndFunction
      0088AD 81               [ 4] 1062 	ret
                                   1063 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 570: uint32_t CLK_GetClockFreq(void)
                                   1064 ; genLabel
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function CLK_GetClockFreq
                                   1067 ;	-----------------------------------------
                                   1068 ;	Register assignment might be sub-optimal.
                                   1069 ;	Stack space usage: 5 bytes.
      0088AE                       1070 _CLK_GetClockFreq:
      0088AE 52 05            [ 2] 1071 	sub	sp, #5
                                   1072 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 577: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
                                   1073 ; genPointerGet
      0088B0 C6 50 C3         [ 1] 1074 	ld	a, 0x50c3
      0088B3 6B 01            [ 1] 1075 	ld	(0x01, sp), a
                                   1076 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 579: if (clocksource == CLK_SOURCE_HSI)
                                   1077 ; genCmpEQorNE
      0088B5 7B 01            [ 1] 1078 	ld	a, (0x01, sp)
      0088B7 A1 E1            [ 1] 1079 	cp	a, #0xe1
      0088B9 26 03            [ 1] 1080 	jrne	00120$
      0088BB CC 88 C1         [ 2] 1081 	jp	00121$
      0088BE                       1082 00120$:
      0088BE CC 88 E8         [ 2] 1083 	jp	00105$
      0088C1                       1084 00121$:
                                   1085 ; skipping generated iCode
                                   1086 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
                                   1087 ; genPointerGet
      0088C1 C6 50 C6         [ 1] 1088 	ld	a, 0x50c6
                                   1089 ; genAnd
      0088C4 A4 18            [ 1] 1090 	and	a, #0x18
                                   1091 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: tmp = (uint8_t)(tmp >> 3);
                                   1092 ; genRightShiftLiteral
      0088C6 44               [ 1] 1093 	srl	a
      0088C7 44               [ 1] 1094 	srl	a
      0088C8 44               [ 1] 1095 	srl	a
                                   1096 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: presc = HSIDivFactor[tmp];
                                   1097 ; skipping iCode since result will be rematerialized
                                   1098 ; genPlus
      0088C9 5F               [ 1] 1099 	clrw	x
      0088CA 97               [ 1] 1100 	ld	xl, a
      0088CB 1C 80 88         [ 2] 1101 	addw	x, #_HSIDivFactor
                                   1102 ; genPointerGet
      0088CE F6               [ 1] 1103 	ld	a, (x)
                                   1104 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 584: clockfrequency = HSI_VALUE / presc;
                                   1105 ; genCast
                                   1106 ; genAssign
      0088CF 5F               [ 1] 1107 	clrw	x
      0088D0 97               [ 1] 1108 	ld	xl, a
      0088D1 90 5F            [ 1] 1109 	clrw	y
                                   1110 ; genIPush
      0088D3 89               [ 2] 1111 	pushw	x
      0088D4 90 89            [ 2] 1112 	pushw	y
                                   1113 ; genIPush
      0088D6 4B 00            [ 1] 1114 	push	#0x00
      0088D8 4B 24            [ 1] 1115 	push	#0x24
      0088DA 4B F4            [ 1] 1116 	push	#0xf4
      0088DC 4B 00            [ 1] 1117 	push	#0x00
                                   1118 ; genCall
      0088DE CD 94 02         [ 4] 1119 	call	__divulong
      0088E1 5B 08            [ 2] 1120 	addw	sp, #8
                                   1121 ; genAssign
      0088E3 1F 04            [ 2] 1122 	ldw	(0x04, sp), x
                                   1123 ; genGoto
      0088E5 CC 89 09         [ 2] 1124 	jp	00106$
                                   1125 ; genLabel
      0088E8                       1126 00105$:
                                   1127 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 586: else if ( clocksource == CLK_SOURCE_LSI)
                                   1128 ; genCmpEQorNE
      0088E8 7B 01            [ 1] 1129 	ld	a, (0x01, sp)
      0088EA A1 D2            [ 1] 1130 	cp	a, #0xd2
      0088EC 26 03            [ 1] 1131 	jrne	00123$
      0088EE CC 88 F4         [ 2] 1132 	jp	00124$
      0088F1                       1133 00123$:
      0088F1 CC 89 00         [ 2] 1134 	jp	00102$
      0088F4                       1135 00124$:
                                   1136 ; skipping generated iCode
                                   1137 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 588: clockfrequency = LSI_VALUE;
                                   1138 ; genAssign
      0088F4 AE F4 00         [ 2] 1139 	ldw	x, #0xf400
      0088F7 1F 04            [ 2] 1140 	ldw	(0x04, sp), x
      0088F9 90 AE 00 01      [ 2] 1141 	ldw	y, #0x0001
                                   1142 ; genGoto
      0088FD CC 89 09         [ 2] 1143 	jp	00106$
                                   1144 ; genLabel
      008900                       1145 00102$:
                                   1146 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 592: clockfrequency = HSE_VALUE;
                                   1147 ; genAssign
      008900 AE 24 00         [ 2] 1148 	ldw	x, #0x2400
      008903 1F 04            [ 2] 1149 	ldw	(0x04, sp), x
      008905 90 AE 00 F4      [ 2] 1150 	ldw	y, #0x00f4
                                   1151 ; genLabel
      008909                       1152 00106$:
                                   1153 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: return((uint32_t)clockfrequency);
                                   1154 ; genReturn
      008909 1E 04            [ 2] 1155 	ldw	x, (0x04, sp)
                                   1156 ; genLabel
      00890B                       1157 00107$:
                                   1158 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 596: }
                                   1159 ; genEndFunction
      00890B 5B 05            [ 2] 1160 	addw	sp, #5
      00890D 81               [ 4] 1161 	ret
                                   1162 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 605: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1163 ; genLabel
                                   1164 ;	-----------------------------------------
                                   1165 ;	 function CLK_AdjustHSICalibrationValue
                                   1166 ;	-----------------------------------------
                                   1167 ;	Register assignment is optimal.
                                   1168 ;	Stack space usage: 0 bytes.
      00890E                       1169 _CLK_AdjustHSICalibrationValue:
                                   1170 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
                                   1171 ; genPointerGet
      00890E C6 50 CC         [ 1] 1172 	ld	a, 0x50cc
                                   1173 ; genAnd
      008911 A4 F8            [ 1] 1174 	and	a, #0xf8
                                   1175 ; genOr
      008913 1A 03            [ 1] 1176 	or	a, (0x03, sp)
                                   1177 ; genPointerSet
      008915 C7 50 CC         [ 1] 1178 	ld	0x50cc, a
                                   1179 ; genLabel
      008918                       1180 00101$:
                                   1181 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 612: }
                                   1182 ; genEndFunction
      008918 81               [ 4] 1183 	ret
                                   1184 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 623: void CLK_SYSCLKEmergencyClear(void)
                                   1185 ; genLabel
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function CLK_SYSCLKEmergencyClear
                                   1188 ;	-----------------------------------------
                                   1189 ;	Register assignment is optimal.
                                   1190 ;	Stack space usage: 0 bytes.
      008919                       1191 _CLK_SYSCLKEmergencyClear:
                                   1192 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
                                   1193 ; genPointerGet
      008919 C6 50 C5         [ 1] 1194 	ld	a, 0x50c5
                                   1195 ; genAnd
      00891C A4 FE            [ 1] 1196 	and	a, #0xfe
                                   1197 ; genPointerSet
      00891E C7 50 C5         [ 1] 1198 	ld	0x50c5, a
                                   1199 ; genLabel
      008921                       1200 00101$:
                                   1201 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 626: }
                                   1202 ; genEndFunction
      008921 81               [ 4] 1203 	ret
                                   1204 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 635: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1205 ; genLabel
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function CLK_GetFlagStatus
                                   1208 ;	-----------------------------------------
                                   1209 ;	Register assignment is optimal.
                                   1210 ;	Stack space usage: 1 bytes.
      008922                       1211 _CLK_GetFlagStatus:
      008922 88               [ 1] 1212 	push	a
                                   1213 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 645: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
                                   1214 ; genAnd
      008923 4F               [ 1] 1215 	clr	a
      008924 97               [ 1] 1216 	ld	xl, a
      008925 7B 04            [ 1] 1217 	ld	a, (0x04, sp)
                                   1218 ; genAssign
      008927 95               [ 1] 1219 	ld	xh, a
                                   1220 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 648: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
                                   1221 ; genCmpEQorNE
      008928 A3 01 00         [ 2] 1222 	cpw	x, #0x0100
      00892B 26 03            [ 1] 1223 	jrne	00144$
      00892D CC 89 33         [ 2] 1224 	jp	00145$
      008930                       1225 00144$:
      008930 CC 89 39         [ 2] 1226 	jp	00111$
      008933                       1227 00145$:
                                   1228 ; skipping generated iCode
                                   1229 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 650: tmpreg = CLK->ICKR;
                                   1230 ; genPointerGet
      008933 C6 50 C0         [ 1] 1231 	ld	a, 0x50c0
                                   1232 ; genGoto
      008936 CC 89 6F         [ 2] 1233 	jp	00112$
                                   1234 ; genLabel
      008939                       1235 00111$:
                                   1236 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 652: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
                                   1237 ; genCmpEQorNE
      008939 A3 02 00         [ 2] 1238 	cpw	x, #0x0200
      00893C 26 03            [ 1] 1239 	jrne	00147$
      00893E CC 89 44         [ 2] 1240 	jp	00148$
      008941                       1241 00147$:
      008941 CC 89 4A         [ 2] 1242 	jp	00108$
      008944                       1243 00148$:
                                   1244 ; skipping generated iCode
                                   1245 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 654: tmpreg = CLK->ECKR;
                                   1246 ; genPointerGet
      008944 C6 50 C1         [ 1] 1247 	ld	a, 0x50c1
                                   1248 ; genGoto
      008947 CC 89 6F         [ 2] 1249 	jp	00112$
                                   1250 ; genLabel
      00894A                       1251 00108$:
                                   1252 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 656: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
                                   1253 ; genCmpEQorNE
      00894A A3 03 00         [ 2] 1254 	cpw	x, #0x0300
      00894D 26 03            [ 1] 1255 	jrne	00150$
      00894F CC 89 55         [ 2] 1256 	jp	00151$
      008952                       1257 00150$:
      008952 CC 89 5B         [ 2] 1258 	jp	00105$
      008955                       1259 00151$:
                                   1260 ; skipping generated iCode
                                   1261 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 658: tmpreg = CLK->SWCR;
                                   1262 ; genPointerGet
      008955 C6 50 C5         [ 1] 1263 	ld	a, 0x50c5
                                   1264 ; genGoto
      008958 CC 89 6F         [ 2] 1265 	jp	00112$
                                   1266 ; genLabel
      00895B                       1267 00105$:
                                   1268 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 660: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
                                   1269 ; genCmpEQorNE
      00895B A3 04 00         [ 2] 1270 	cpw	x, #0x0400
      00895E 26 03            [ 1] 1271 	jrne	00153$
      008960 CC 89 66         [ 2] 1272 	jp	00154$
      008963                       1273 00153$:
      008963 CC 89 6C         [ 2] 1274 	jp	00102$
      008966                       1275 00154$:
                                   1276 ; skipping generated iCode
                                   1277 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 662: tmpreg = CLK->CSSR;
                                   1278 ; genPointerGet
      008966 C6 50 C8         [ 1] 1279 	ld	a, 0x50c8
                                   1280 ; genGoto
      008969 CC 89 6F         [ 2] 1281 	jp	00112$
                                   1282 ; genLabel
      00896C                       1283 00102$:
                                   1284 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 666: tmpreg = CLK->CCOR;
                                   1285 ; genPointerGet
      00896C C6 50 C9         [ 1] 1286 	ld	a, 0x50c9
                                   1287 ; genLabel
      00896F                       1288 00112$:
                                   1289 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 669: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
                                   1290 ; genCast
                                   1291 ; genAssign
      00896F 88               [ 1] 1292 	push	a
      008970 7B 06            [ 1] 1293 	ld	a, (0x06, sp)
      008972 6B 02            [ 1] 1294 	ld	(0x02, sp), a
      008974 84               [ 1] 1295 	pop	a
                                   1296 ; genAnd
      008975 14 01            [ 1] 1297 	and	a, (0x01, sp)
                                   1298 ; genIfx
      008977 4D               [ 1] 1299 	tnz	a
      008978 26 03            [ 1] 1300 	jrne	00155$
      00897A CC 89 82         [ 2] 1301 	jp	00114$
      00897D                       1302 00155$:
                                   1303 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 671: bitstatus = SET;
                                   1304 ; genAssign
      00897D A6 01            [ 1] 1305 	ld	a, #0x01
                                   1306 ; genGoto
      00897F CC 89 83         [ 2] 1307 	jp	00115$
                                   1308 ; genLabel
      008982                       1309 00114$:
                                   1310 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 675: bitstatus = RESET;
                                   1311 ; genAssign
      008982 4F               [ 1] 1312 	clr	a
                                   1313 ; genLabel
      008983                       1314 00115$:
                                   1315 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: return((FlagStatus)bitstatus);
                                   1316 ; genReturn
                                   1317 ; genLabel
      008983                       1318 00116$:
                                   1319 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 680: }
                                   1320 ; genEndFunction
      008983 5B 01            [ 2] 1321 	addw	sp, #1
      008985 81               [ 4] 1322 	ret
                                   1323 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 688: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1324 ; genLabel
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function CLK_GetITStatus
                                   1327 ;	-----------------------------------------
                                   1328 ;	Register assignment is optimal.
                                   1329 ;	Stack space usage: 0 bytes.
      008986                       1330 _CLK_GetITStatus:
                                   1331 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 695: if (CLK_IT == CLK_IT_SWIF)
                                   1332 ; genCmpEQorNE
      008986 7B 03            [ 1] 1333 	ld	a, (0x03, sp)
      008988 A1 1C            [ 1] 1334 	cp	a, #0x1c
      00898A 26 03            [ 1] 1335 	jrne	00128$
      00898C CC 89 92         [ 2] 1336 	jp	00129$
      00898F                       1337 00128$:
      00898F CC 89 AA         [ 2] 1338 	jp	00108$
      008992                       1339 00129$:
                                   1340 ; skipping generated iCode
                                   1341 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 698: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1342 ; genPointerGet
      008992 C6 50 C5         [ 1] 1343 	ld	a, 0x50c5
                                   1344 ; genAnd
      008995 14 03            [ 1] 1345 	and	a, (0x03, sp)
                                   1346 ; genCmpEQorNE
      008997 A1 0C            [ 1] 1347 	cp	a, #0x0c
      008999 26 03            [ 1] 1348 	jrne	00131$
      00899B CC 89 A1         [ 2] 1349 	jp	00132$
      00899E                       1350 00131$:
      00899E CC 89 A6         [ 2] 1351 	jp	00102$
      0089A1                       1352 00132$:
                                   1353 ; skipping generated iCode
                                   1354 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 700: bitstatus = SET;
                                   1355 ; genAssign
      0089A1 A6 01            [ 1] 1356 	ld	a, #0x01
                                   1357 ; genGoto
      0089A3 CC 89 BF         [ 2] 1358 	jp	00109$
                                   1359 ; genLabel
      0089A6                       1360 00102$:
                                   1361 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 704: bitstatus = RESET;
                                   1362 ; genAssign
      0089A6 4F               [ 1] 1363 	clr	a
                                   1364 ; genGoto
      0089A7 CC 89 BF         [ 2] 1365 	jp	00109$
                                   1366 ; genLabel
      0089AA                       1367 00108$:
                                   1368 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 710: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
                                   1369 ; genPointerGet
      0089AA C6 50 C8         [ 1] 1370 	ld	a, 0x50c8
                                   1371 ; genAnd
      0089AD 14 03            [ 1] 1372 	and	a, (0x03, sp)
                                   1373 ; genCmpEQorNE
      0089AF A1 0C            [ 1] 1374 	cp	a, #0x0c
      0089B1 26 03            [ 1] 1375 	jrne	00134$
      0089B3 CC 89 B9         [ 2] 1376 	jp	00135$
      0089B6                       1377 00134$:
      0089B6 CC 89 BE         [ 2] 1378 	jp	00105$
      0089B9                       1379 00135$:
                                   1380 ; skipping generated iCode
                                   1381 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 712: bitstatus = SET;
                                   1382 ; genAssign
      0089B9 A6 01            [ 1] 1383 	ld	a, #0x01
                                   1384 ; genGoto
      0089BB CC 89 BF         [ 2] 1385 	jp	00109$
                                   1386 ; genLabel
      0089BE                       1387 00105$:
                                   1388 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 716: bitstatus = RESET;
                                   1389 ; genAssign
      0089BE 4F               [ 1] 1390 	clr	a
                                   1391 ; genLabel
      0089BF                       1392 00109$:
                                   1393 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: return bitstatus;
                                   1394 ; genReturn
                                   1395 ; genLabel
      0089BF                       1396 00110$:
                                   1397 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 722: }
                                   1398 ; genEndFunction
      0089BF 81               [ 4] 1399 	ret
                                   1400 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 730: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1401 ; genLabel
                                   1402 ;	-----------------------------------------
                                   1403 ;	 function CLK_ClearITPendingBit
                                   1404 ;	-----------------------------------------
                                   1405 ;	Register assignment is optimal.
                                   1406 ;	Stack space usage: 0 bytes.
      0089C0                       1407 _CLK_ClearITPendingBit:
                                   1408 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 735: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
                                   1409 ; genCmpEQorNE
      0089C0 7B 03            [ 1] 1410 	ld	a, (0x03, sp)
      0089C2 A1 0C            [ 1] 1411 	cp	a, #0x0c
      0089C4 26 03            [ 1] 1412 	jrne	00112$
      0089C6 CC 89 CC         [ 2] 1413 	jp	00113$
      0089C9                       1414 00112$:
      0089C9 CC 89 D7         [ 2] 1415 	jp	00102$
      0089CC                       1416 00113$:
                                   1417 ; skipping generated iCode
                                   1418 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 738: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
                                   1419 ; genPointerGet
      0089CC C6 50 C8         [ 1] 1420 	ld	a, 0x50c8
                                   1421 ; genAnd
      0089CF A4 F7            [ 1] 1422 	and	a, #0xf7
                                   1423 ; genPointerSet
      0089D1 C7 50 C8         [ 1] 1424 	ld	0x50c8, a
                                   1425 ; genGoto
      0089D4 CC 89 DF         [ 2] 1426 	jp	00104$
                                   1427 ; genLabel
      0089D7                       1428 00102$:
                                   1429 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 743: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
                                   1430 ; genPointerGet
      0089D7 C6 50 C5         [ 1] 1431 	ld	a, 0x50c5
                                   1432 ; genAnd
      0089DA A4 F7            [ 1] 1433 	and	a, #0xf7
                                   1434 ; genPointerSet
      0089DC C7 50 C5         [ 1] 1435 	ld	0x50c5, a
                                   1436 ; genLabel
      0089DF                       1437 00104$:
                                   1438 ;	./STM8S_StdPeriph_Driver/src/stm8s_clk.c: 746: }
                                   1439 ; genEndFunction
      0089DF 81               [ 4] 1440 	ret
                                   1441 	.area CODE
                                   1442 	.area CONST
      008088                       1443 _HSIDivFactor:
      008088 01                    1444 	.db #0x01	; 1
      008089 02                    1445 	.db #0x02	; 2
      00808A 04                    1446 	.db #0x04	; 4
      00808B 08                    1447 	.db #0x08	; 8
                                   1448 	.area INITIALIZER
                                   1449 	.area CABS (ABS)
