                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM4_OVERLOAD
                                     12 	.globl _main
                                     13 	.globl _ILI9341_Write_Data
                                     14 	.globl _ILI9341_Write_Command
                                     15 	.globl _ILI9341_Init_Display
                                     16 	.globl _ILI9341_setup
                                     17 	.globl _TIM4_ClearITPendingBit
                                     18 	.globl _TIM4_ITConfig
                                     19 	.globl _TIM4_Cmd
                                     20 	.globl _TIM4_TimeBaseInit
                                     21 	.globl _TIM4_DeInit
                                     22 	.globl _SPI_Cmd
                                     23 	.globl _SPI_Init
                                     24 	.globl _SPI_DeInit
                                     25 	.globl _GPIO_ReadInputPin
                                     26 	.globl _GPIO_WriteReverse
                                     27 	.globl _GPIO_Init
                                     28 	.globl _GPIO_DeInit
                                     29 	.globl _CLK_GetFlagStatus
                                     30 	.globl _CLK_SYSCLKConfig
                                     31 	.globl _CLK_HSIPrescalerConfig
                                     32 	.globl _CLK_ClockSwitchConfig
                                     33 	.globl _CLK_PeripheralClockConfig
                                     34 	.globl _CLK_ClockSwitchCmd
                                     35 	.globl _CLK_LSICmd
                                     36 	.globl _CLK_HSICmd
                                     37 	.globl _CLK_HSECmd
                                     38 	.globl _CLK_DeInit
                                     39 	.globl _count
                                     40 	.globl _status
                                     41 	.globl _delay
                                     42 	.globl _clock_setup
                                     43 	.globl _GPIO_setup
                                     44 	.globl _SPI_setup
                                     45 	.globl _TIM4_setup
                                     46 ;--------------------------------------------------------
                                     47 ; ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DATA
                                     50 ;--------------------------------------------------------
                                     51 ; ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area INITIALIZED
      000001                         54 _status::
      000001                         55 	.ds 1
      000002                         56 _count::
      000002                         57 	.ds 2
                                     58 ;--------------------------------------------------------
                                     59 ; Stack segment in internal ram 
                                     60 ;--------------------------------------------------------
                                     61 	.area	SSEG
      FFFFFF                         62 __start__stack:
      FFFFFF                         63 	.ds	1
                                     64 
                                     65 ;--------------------------------------------------------
                                     66 ; absolute external ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area DABS (ABS)
                                     69 
                                     70 ; default segment ordering for linker
                                     71 	.area HOME
                                     72 	.area GSINIT
                                     73 	.area GSFINAL
                                     74 	.area CONST
                                     75 	.area INITIALIZER
                                     76 	.area CODE
                                     77 
                                     78 ;--------------------------------------------------------
                                     79 ; interrupt vector 
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME
      008000                         82 __interrupt_vect:
      008000 82 00 80 6B             83 	int s_GSINIT ; reset
      008004 82 00 00 00             84 	int 0x000000 ; trap
      008008 82 00 00 00             85 	int 0x000000 ; int0
      00800C 82 00 00 00             86 	int 0x000000 ; int1
      008010 82 00 00 00             87 	int 0x000000 ; int2
      008014 82 00 00 00             88 	int 0x000000 ; int3
      008018 82 00 00 00             89 	int 0x000000 ; int4
      00801C 82 00 00 00             90 	int 0x000000 ; int5
      008020 82 00 00 00             91 	int 0x000000 ; int6
      008024 82 00 00 00             92 	int 0x000000 ; int7
      008028 82 00 00 00             93 	int 0x000000 ; int8
      00802C 82 00 00 00             94 	int 0x000000 ; int9
      008030 82 00 00 00             95 	int 0x000000 ; int10
      008034 82 00 00 00             96 	int 0x000000 ; int11
      008038 82 00 00 00             97 	int 0x000000 ; int12
      00803C 82 00 00 00             98 	int 0x000000 ; int13
      008040 82 00 00 00             99 	int 0x000000 ; int14
      008044 82 00 00 00            100 	int 0x000000 ; int15
      008048 82 00 00 00            101 	int 0x000000 ; int16
      00804C 82 00 00 00            102 	int 0x000000 ; int17
      008050 82 00 00 00            103 	int 0x000000 ; int18
      008054 82 00 00 00            104 	int 0x000000 ; int19
      008058 82 00 00 00            105 	int 0x000000 ; int20
      00805C 82 00 00 00            106 	int 0x000000 ; int21
      008060 82 00 00 00            107 	int 0x000000 ; int22
      008064 82 00 93 C3            108 	int _TIM4_OVERLOAD ; int23
                                    109 ;--------------------------------------------------------
                                    110 ; global & static initialisations
                                    111 ;--------------------------------------------------------
                                    112 	.area HOME
                                    113 	.area GSINIT
                                    114 	.area GSFINAL
                                    115 	.area GSINIT
      00806B                        116 __sdcc_gs_init_startup:
      00806B                        117 __sdcc_init_data:
                                    118 ; stm8_genXINIT() start
      00806B AE 00 00         [ 2]  119 	ldw x, #l_DATA
      00806E 27 07            [ 1]  120 	jreq	00002$
      008070                        121 00001$:
      008070 72 4F 00 00      [ 1]  122 	clr (s_DATA - 1, x)
      008074 5A               [ 2]  123 	decw x
      008075 26 F9            [ 1]  124 	jrne	00001$
      008077                        125 00002$:
      008077 AE 00 03         [ 2]  126 	ldw	x, #l_INITIALIZER
      00807A 27 09            [ 1]  127 	jreq	00004$
      00807C                        128 00003$:
      00807C D6 80 8B         [ 1]  129 	ld	a, (s_INITIALIZER - 1, x)
      00807F D7 00 00         [ 1]  130 	ld	(s_INITIALIZED - 1, x), a
      008082 5A               [ 2]  131 	decw	x
      008083 26 F7            [ 1]  132 	jrne	00003$
      008085                        133 00004$:
                                    134 ; stm8_genXINIT() end
                                    135 	.area GSFINAL
      008085 CC 80 68         [ 2]  136 	jp	__sdcc_program_startup
                                    137 ;--------------------------------------------------------
                                    138 ; Home
                                    139 ;--------------------------------------------------------
                                    140 	.area HOME
                                    141 	.area HOME
      008068                        142 __sdcc_program_startup:
      008068 CC 91 9B         [ 2]  143 	jp	_main
                                    144 ;	return from main will return to caller
                                    145 ;--------------------------------------------------------
                                    146 ; code
                                    147 ;--------------------------------------------------------
                                    148 	.area CODE
                                    149 ;	./Src/main.c: 28: int main() {
                                    150 ; genLabel
                                    151 ;	-----------------------------------------
                                    152 ;	 function main
                                    153 ;	-----------------------------------------
                                    154 ;	Register assignment might be sub-optimal.
                                    155 ;	Stack space usage: 0 bytes.
      00919B                        156 _main:
                                    157 ;	./Src/main.c: 30: clock_setup();
                                    158 ; genCall
      00919B CD 92 74         [ 4]  159 	call	_clock_setup
                                    160 ;	./Src/main.c: 31: GPIO_setup();
                                    161 ; genCall
      00919E CD 92 F7         [ 4]  162 	call	_GPIO_setup
                                    163 ;	./Src/main.c: 32: SPI_setup();
                                    164 ; genCall
      0091A1 CD 93 8A         [ 4]  165 	call	_SPI_setup
                                    166 ;	./Src/main.c: 33: ILI9341_setup();
                                    167 ; genCall
      0091A4 CD 8D 93         [ 4]  168 	call	_ILI9341_setup
                                    169 ;	./Src/main.c: 34: ILI9341_Init_Display();
                                    170 ; genCall
      0091A7 CD 8E 66         [ 4]  171 	call	_ILI9341_Init_Display
                                    172 ;	./Src/main.c: 35: TIM4_setup();
                                    173 ; genCall
      0091AA CD 93 A9         [ 4]  174 	call	_TIM4_setup
                                    175 ;	./Src/main.c: 39: __endasm;
                                    176 ;	genInline
      0091AD 9A               [ 1]  177 	RIM;
                                    178 ;	./Src/main.c: 41: while(1)
                                    179 ; genLabel
      0091AE                        180 00114$:
                                    181 ;	./Src/main.c: 43: if (GPIO_ReadInputPin(FUNCS_PORT, FUNC1_PIN)) {
                                    182 ; genIPush
      0091AE 4B 02            [ 1]  183 	push	#0x02
                                    184 ; genIPush
      0091B0 4B 0F            [ 1]  185 	push	#0x0f
      0091B2 4B 50            [ 1]  186 	push	#0x50
                                    187 ; genCall
      0091B4 CD 8A A5         [ 4]  188 	call	_GPIO_ReadInputPin
      0091B7 5B 03            [ 2]  189 	addw	sp, #3
                                    190 ; genIfx
      0091B9 4D               [ 1]  191 	tnz	a
      0091BA 26 03            [ 1]  192 	jrne	00143$
      0091BC CC 91 C9         [ 2]  193 	jp	00102$
      0091BF                        194 00143$:
                                    195 ;	./Src/main.c: 44: status.func1 = 1;
                                    196 ; skipping iCode since result will be rematerialized
                                    197 ; skipping iCode since result will be rematerialized
                                    198 ; genPointerSet
      0091BF AE 00 01         [ 2]  199 	ldw	x, #_status
      0091C2 F6               [ 1]  200 	ld	a, (x)
      0091C3 AA 04            [ 1]  201 	or	a, #0x04
      0091C5 F7               [ 1]  202 	ld	(x), a
                                    203 ; genGoto
      0091C6 CC 91 D0         [ 2]  204 	jp	00103$
                                    205 ; genLabel
      0091C9                        206 00102$:
                                    207 ;	./Src/main.c: 46: status.func1 = 0;
                                    208 ; skipping iCode since result will be rematerialized
                                    209 ; skipping iCode since result will be rematerialized
                                    210 ; genPointerSet
      0091C9 AE 00 01         [ 2]  211 	ldw	x, #_status
      0091CC A6 FB            [ 1]  212 	ld	a, #0xfb
      0091CE F4               [ 1]  213 	and	a, (x)
      0091CF F7               [ 1]  214 	ld	(x), a
                                    215 ; genLabel
      0091D0                        216 00103$:
                                    217 ;	./Src/main.c: 49: if (GPIO_ReadInputPin(FUNCS_PORT, FUNC2_PIN)) {
                                    218 ; genIPush
      0091D0 4B 04            [ 1]  219 	push	#0x04
                                    220 ; genIPush
      0091D2 4B 0F            [ 1]  221 	push	#0x0f
      0091D4 4B 50            [ 1]  222 	push	#0x50
                                    223 ; genCall
      0091D6 CD 8A A5         [ 4]  224 	call	_GPIO_ReadInputPin
      0091D9 5B 03            [ 2]  225 	addw	sp, #3
                                    226 ; genIfx
      0091DB 4D               [ 1]  227 	tnz	a
      0091DC 26 03            [ 1]  228 	jrne	00144$
      0091DE CC 91 EB         [ 2]  229 	jp	00105$
      0091E1                        230 00144$:
                                    231 ;	./Src/main.c: 50: status.func2 = 1;
                                    232 ; skipping iCode since result will be rematerialized
                                    233 ; skipping iCode since result will be rematerialized
                                    234 ; genPointerSet
      0091E1 AE 00 01         [ 2]  235 	ldw	x, #_status
      0091E4 F6               [ 1]  236 	ld	a, (x)
      0091E5 AA 08            [ 1]  237 	or	a, #0x08
      0091E7 F7               [ 1]  238 	ld	(x), a
                                    239 ; genGoto
      0091E8 CC 91 F2         [ 2]  240 	jp	00106$
                                    241 ; genLabel
      0091EB                        242 00105$:
                                    243 ;	./Src/main.c: 52: status.func2 = 0;
                                    244 ; skipping iCode since result will be rematerialized
                                    245 ; skipping iCode since result will be rematerialized
                                    246 ; genPointerSet
      0091EB AE 00 01         [ 2]  247 	ldw	x, #_status
      0091EE A6 F7            [ 1]  248 	ld	a, #0xf7
      0091F0 F4               [ 1]  249 	and	a, (x)
      0091F1 F7               [ 1]  250 	ld	(x), a
                                    251 ; genLabel
      0091F2                        252 00106$:
                                    253 ;	./Src/main.c: 55: if (GPIO_ReadInputPin(SELS_PORT, SEL1_PIN)) {
                                    254 ; genIPush
      0091F2 4B 20            [ 1]  255 	push	#0x20
                                    256 ; genIPush
      0091F4 4B 0F            [ 1]  257 	push	#0x0f
      0091F6 4B 50            [ 1]  258 	push	#0x50
                                    259 ; genCall
      0091F8 CD 8A A5         [ 4]  260 	call	_GPIO_ReadInputPin
      0091FB 5B 03            [ 2]  261 	addw	sp, #3
                                    262 ; genIfx
      0091FD 4D               [ 1]  263 	tnz	a
      0091FE 26 03            [ 1]  264 	jrne	00145$
      009200 CC 92 0D         [ 2]  265 	jp	00108$
      009203                        266 00145$:
                                    267 ;	./Src/main.c: 56: status.sel1 = 1;
                                    268 ; skipping iCode since result will be rematerialized
                                    269 ; skipping iCode since result will be rematerialized
                                    270 ; genPointerSet
      009203 AE 00 01         [ 2]  271 	ldw	x, #_status
      009206 F6               [ 1]  272 	ld	a, (x)
      009207 AA 01            [ 1]  273 	or	a, #0x01
      009209 F7               [ 1]  274 	ld	(x), a
                                    275 ; genGoto
      00920A CC 92 14         [ 2]  276 	jp	00109$
                                    277 ; genLabel
      00920D                        278 00108$:
                                    279 ;	./Src/main.c: 58: status.sel1 = 0;
                                    280 ; skipping iCode since result will be rematerialized
                                    281 ; skipping iCode since result will be rematerialized
                                    282 ; genPointerSet
      00920D AE 00 01         [ 2]  283 	ldw	x, #_status
      009210 A6 FE            [ 1]  284 	ld	a, #0xfe
      009212 F4               [ 1]  285 	and	a, (x)
      009213 F7               [ 1]  286 	ld	(x), a
                                    287 ; genLabel
      009214                        288 00109$:
                                    289 ;	./Src/main.c: 61: if (GPIO_ReadInputPin(SELS_PORT, SEL2_PIN)) {
                                    290 ; genIPush
      009214 4B 40            [ 1]  291 	push	#0x40
                                    292 ; genIPush
      009216 4B 0F            [ 1]  293 	push	#0x0f
      009218 4B 50            [ 1]  294 	push	#0x50
                                    295 ; genCall
      00921A CD 8A A5         [ 4]  296 	call	_GPIO_ReadInputPin
      00921D 5B 03            [ 2]  297 	addw	sp, #3
                                    298 ; genIfx
      00921F 4D               [ 1]  299 	tnz	a
      009220 26 03            [ 1]  300 	jrne	00146$
      009222 CC 92 2F         [ 2]  301 	jp	00111$
      009225                        302 00146$:
                                    303 ;	./Src/main.c: 62: status.sel2 = 1;
                                    304 ; skipping iCode since result will be rematerialized
                                    305 ; skipping iCode since result will be rematerialized
                                    306 ; genPointerSet
      009225 AE 00 01         [ 2]  307 	ldw	x, #_status
      009228 F6               [ 1]  308 	ld	a, (x)
      009229 AA 02            [ 1]  309 	or	a, #0x02
      00922B F7               [ 1]  310 	ld	(x), a
                                    311 ; genGoto
      00922C CC 92 36         [ 2]  312 	jp	00112$
                                    313 ; genLabel
      00922F                        314 00111$:
                                    315 ;	./Src/main.c: 64: status.sel2 = 0;
                                    316 ; skipping iCode since result will be rematerialized
                                    317 ; skipping iCode since result will be rematerialized
                                    318 ; genPointerSet
      00922F AE 00 01         [ 2]  319 	ldw	x, #_status
      009232 A6 FD            [ 1]  320 	ld	a, #0xfd
      009234 F4               [ 1]  321 	and	a, (x)
      009235 F7               [ 1]  322 	ld	(x), a
                                    323 ; genLabel
      009236                        324 00112$:
                                    325 ;	./Src/main.c: 70: ILI9341_Write_Command(0xFF);
                                    326 ; genIPush
      009236 4B FF            [ 1]  327 	push	#0xff
      009238 4B 00            [ 1]  328 	push	#0x00
                                    329 ; genCall
      00923A CD 8D D5         [ 4]  330 	call	_ILI9341_Write_Command
      00923D 85               [ 2]  331 	popw	x
                                    332 ;	./Src/main.c: 71: ILI9341_Write_Data(0xFF);
                                    333 ; genIPush
      00923E 4B FF            [ 1]  334 	push	#0xff
      009240 4B 00            [ 1]  335 	push	#0x00
                                    336 ; genCall
      009242 CD 8E 23         [ 4]  337 	call	_ILI9341_Write_Data
      009245 85               [ 2]  338 	popw	x
                                    339 ; genGoto
      009246 CC 91 AE         [ 2]  340 	jp	00114$
                                    341 ; genLabel
      009249                        342 00116$:
                                    343 ;	./Src/main.c: 74: }
                                    344 ; genEndFunction
      009249 81               [ 4]  345 	ret
                                    346 ;	./Src/main.c: 76: void delay(long n) {
                                    347 ; genLabel
                                    348 ;	-----------------------------------------
                                    349 ;	 function delay
                                    350 ;	-----------------------------------------
                                    351 ;	Register assignment might be sub-optimal.
                                    352 ;	Stack space usage: 4 bytes.
      00924A                        353 _delay:
      00924A 52 04            [ 2]  354 	sub	sp, #4
                                    355 ;	./Src/main.c: 77: while (n--> 0);
                                    356 ; genAssign
      00924C 16 09            [ 2]  357 	ldw	y, (0x09, sp)
      00924E 1E 07            [ 2]  358 	ldw	x, (0x07, sp)
                                    359 ; genLabel
      009250                        360 00101$:
                                    361 ; genAssign
      009250 17 03            [ 2]  362 	ldw	(0x03, sp), y
      009252 1F 01            [ 2]  363 	ldw	(0x01, sp), x
                                    364 ; genMinus
      009254 72 A2 00 01      [ 2]  365 	subw	y, #0x0001
      009258 9F               [ 1]  366 	ld	a, xl
      009259 A2 00            [ 1]  367 	sbc	a, #0x00
      00925B 97               [ 1]  368 	ld	xl, a
      00925C 9E               [ 1]  369 	ld	a, xh
      00925D A2 00            [ 1]  370 	sbc	a, #0x00
      00925F 95               [ 1]  371 	ld	xh, a
                                    372 ; genCmp
                                    373 ; genCmpTop
      009260 4F               [ 1]  374 	clr	a
      009261 11 04            [ 1]  375 	cp	a, (0x04, sp)
      009263 4F               [ 1]  376 	clr	a
      009264 12 03            [ 1]  377 	sbc	a, (0x03, sp)
      009266 4F               [ 1]  378 	clr	a
      009267 12 02            [ 1]  379 	sbc	a, (0x02, sp)
      009269 4F               [ 1]  380 	clr	a
      00926A 12 01            [ 1]  381 	sbc	a, (0x01, sp)
      00926C 2E 03            [ 1]  382 	jrsge	00112$
      00926E CC 92 50         [ 2]  383 	jp	00101$
      009271                        384 00112$:
                                    385 ; skipping generated iCode
                                    386 ; genLabel
      009271                        387 00104$:
                                    388 ;	./Src/main.c: 78: }
                                    389 ; genEndFunction
      009271 5B 04            [ 2]  390 	addw	sp, #4
      009273 81               [ 4]  391 	ret
                                    392 ;	./Src/main.c: 80: void clock_setup() {
                                    393 ; genLabel
                                    394 ;	-----------------------------------------
                                    395 ;	 function clock_setup
                                    396 ;	-----------------------------------------
                                    397 ;	Register assignment is optimal.
                                    398 ;	Stack space usage: 0 bytes.
      009274                        399 _clock_setup:
                                    400 ;	./Src/main.c: 81: CLK_DeInit();
                                    401 ; genCall
      009274 CD 85 88         [ 4]  402 	call	_CLK_DeInit
                                    403 ;	./Src/main.c: 82: CLK_HSECmd(DISABLE);
                                    404 ; genIPush
      009277 4B 00            [ 1]  405 	push	#0x00
                                    406 ; genCall
      009279 CD 85 DA         [ 4]  407 	call	_CLK_HSECmd
      00927C 84               [ 1]  408 	pop	a
                                    409 ;	./Src/main.c: 83: CLK_LSICmd(DISABLE);
                                    410 ; genIPush
      00927D 4B 00            [ 1]  411 	push	#0x00
                                    412 ; genCall
      00927F CD 86 0A         [ 4]  413 	call	_CLK_LSICmd
      009282 84               [ 1]  414 	pop	a
                                    415 ;	./Src/main.c: 84: CLK_HSICmd(ENABLE); 
                                    416 ; genIPush
      009283 4B 01            [ 1]  417 	push	#0x01
                                    418 ; genCall
      009285 CD 85 F2         [ 4]  419 	call	_CLK_HSICmd
      009288 84               [ 1]  420 	pop	a
                                    421 ;	./Src/main.c: 85: while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
                                    422 ; genLabel
      009289                        423 00101$:
                                    424 ; genIPush
      009289 4B 02            [ 1]  425 	push	#0x02
      00928B 4B 01            [ 1]  426 	push	#0x01
                                    427 ; genCall
      00928D CD 89 22         [ 4]  428 	call	_CLK_GetFlagStatus
      009290 85               [ 2]  429 	popw	x
                                    430 ; genIfx
      009291 4D               [ 1]  431 	tnz	a
      009292 26 03            [ 1]  432 	jrne	00116$
      009294 CC 92 89         [ 2]  433 	jp	00101$
      009297                        434 00116$:
                                    435 ;	./Src/main.c: 86: CLK_ClockSwitchCmd(ENABLE);
                                    436 ; genIPush
      009297 4B 01            [ 1]  437 	push	#0x01
                                    438 ; genCall
      009299 CD 86 3A         [ 4]  439 	call	_CLK_ClockSwitchCmd
      00929C 84               [ 1]  440 	pop	a
                                    441 ;	./Src/main.c: 87: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
                                    442 ; genIPush
      00929D 4B 18            [ 1]  443 	push	#0x18
                                    444 ; genCall
      00929F CD 87 C1         [ 4]  445 	call	_CLK_HSIPrescalerConfig
      0092A2 84               [ 1]  446 	pop	a
                                    447 ;	./Src/main.c: 88: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
                                    448 ; genIPush
      0092A3 4B 80            [ 1]  449 	push	#0x80
                                    450 ; genCall
      0092A5 CD 88 53         [ 4]  451 	call	_CLK_SYSCLKConfig
      0092A8 84               [ 1]  452 	pop	a
                                    453 ;	./Src/main.c: 89: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
                                    454 ; genIPush
      0092A9 4B 01            [ 1]  455 	push	#0x01
                                    456 ; genIPush
      0092AB 4B 00            [ 1]  457 	push	#0x00
                                    458 ; genIPush
      0092AD 4B E1            [ 1]  459 	push	#0xe1
                                    460 ; genIPush
      0092AF 4B 01            [ 1]  461 	push	#0x01
                                    462 ; genCall
      0092B1 CD 86 BE         [ 4]  463 	call	_CLK_ClockSwitchConfig
      0092B4 5B 04            [ 2]  464 	addw	sp, #4
                                    465 ;	./Src/main.c: 90: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
                                    466 ; genIPush
      0092B6 4B 01            [ 1]  467 	push	#0x01
                                    468 ; genIPush
      0092B8 4B 01            [ 1]  469 	push	#0x01
                                    470 ; genCall
      0092BA CD 86 6A         [ 4]  471 	call	_CLK_PeripheralClockConfig
      0092BD 85               [ 2]  472 	popw	x
                                    473 ;	./Src/main.c: 91: CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
                                    474 ; genIPush
      0092BE 4B 00            [ 1]  475 	push	#0x00
                                    476 ; genIPush
      0092C0 4B 00            [ 1]  477 	push	#0x00
                                    478 ; genCall
      0092C2 CD 86 6A         [ 4]  479 	call	_CLK_PeripheralClockConfig
      0092C5 85               [ 2]  480 	popw	x
                                    481 ;	./Src/main.c: 92: CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
                                    482 ; genIPush
      0092C6 4B 00            [ 1]  483 	push	#0x00
                                    484 ; genIPush
      0092C8 4B 13            [ 1]  485 	push	#0x13
                                    486 ; genCall
      0092CA CD 86 6A         [ 4]  487 	call	_CLK_PeripheralClockConfig
      0092CD 85               [ 2]  488 	popw	x
                                    489 ;	./Src/main.c: 93: CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
                                    490 ; genIPush
      0092CE 4B 00            [ 1]  491 	push	#0x00
                                    492 ; genIPush
      0092D0 4B 12            [ 1]  493 	push	#0x12
                                    494 ; genCall
      0092D2 CD 86 6A         [ 4]  495 	call	_CLK_PeripheralClockConfig
      0092D5 85               [ 2]  496 	popw	x
                                    497 ;	./Src/main.c: 94: CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
                                    498 ; genIPush
      0092D6 4B 00            [ 1]  499 	push	#0x00
                                    500 ; genIPush
      0092D8 4B 03            [ 1]  501 	push	#0x03
                                    502 ; genCall
      0092DA CD 86 6A         [ 4]  503 	call	_CLK_PeripheralClockConfig
      0092DD 85               [ 2]  504 	popw	x
                                    505 ;	./Src/main.c: 95: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
                                    506 ; genIPush
      0092DE 4B 00            [ 1]  507 	push	#0x00
                                    508 ; genIPush
      0092E0 4B 07            [ 1]  509 	push	#0x07
                                    510 ; genCall
      0092E2 CD 86 6A         [ 4]  511 	call	_CLK_PeripheralClockConfig
      0092E5 85               [ 2]  512 	popw	x
                                    513 ;	./Src/main.c: 96: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
                                    514 ; genIPush
      0092E6 4B 00            [ 1]  515 	push	#0x00
                                    516 ; genIPush
      0092E8 4B 05            [ 1]  517 	push	#0x05
                                    518 ; genCall
      0092EA CD 86 6A         [ 4]  519 	call	_CLK_PeripheralClockConfig
      0092ED 85               [ 2]  520 	popw	x
                                    521 ;	./Src/main.c: 97: CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
                                    522 ; genIPush
      0092EE 4B 01            [ 1]  523 	push	#0x01
                                    524 ; genIPush
      0092F0 4B 04            [ 1]  525 	push	#0x04
                                    526 ; genCall
      0092F2 CD 86 6A         [ 4]  527 	call	_CLK_PeripheralClockConfig
      0092F5 85               [ 2]  528 	popw	x
                                    529 ; genLabel
      0092F6                        530 00104$:
                                    531 ;	./Src/main.c: 98: }
                                    532 ; genEndFunction
      0092F6 81               [ 4]  533 	ret
                                    534 ;	./Src/main.c: 100: void GPIO_setup() {
                                    535 ; genLabel
                                    536 ;	-----------------------------------------
                                    537 ;	 function GPIO_setup
                                    538 ;	-----------------------------------------
                                    539 ;	Register assignment is optimal.
                                    540 ;	Stack space usage: 0 bytes.
      0092F7                        541 _GPIO_setup:
                                    542 ;	./Src/main.c: 101: GPIO_DeInit(GPIOC);
                                    543 ; genIPush
      0092F7 4B 0A            [ 1]  544 	push	#0x0a
      0092F9 4B 50            [ 1]  545 	push	#0x50
                                    546 ; genCall
      0092FB CD 89 E0         [ 4]  547 	call	_GPIO_DeInit
      0092FE 85               [ 2]  548 	popw	x
                                    549 ;	./Src/main.c: 102: GPIO_DeInit(GPIOD);
                                    550 ; genIPush
      0092FF 4B 0F            [ 1]  551 	push	#0x0f
      009301 4B 50            [ 1]  552 	push	#0x50
                                    553 ; genCall
      009303 CD 89 E0         [ 4]  554 	call	_GPIO_DeInit
      009306 85               [ 2]  555 	popw	x
                                    556 ;	./Src/main.c: 103: GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
                                    557 ; genIPush
      009307 4B E0            [ 1]  558 	push	#0xe0
                                    559 ; genIPush
      009309 4B 08            [ 1]  560 	push	#0x08
                                    561 ; genIPush
      00930B 4B 0F            [ 1]  562 	push	#0x0f
      00930D 4B 50            [ 1]  563 	push	#0x50
                                    564 ; genCall
      00930F CD 89 F3         [ 4]  565 	call	_GPIO_Init
      009312 5B 04            [ 2]  566 	addw	sp, #4
                                    567 ;	./Src/main.c: 104: GPIO_Init(SPI_Port, ((GPIO_Pin_TypeDef) SPI_SCK_PIN | SPI_MOSI_PIN), GPIO_MODE_OUT_PP_HIGH_FAST);
                                    568 ; genIPush
      009314 4B F0            [ 1]  569 	push	#0xf0
                                    570 ; genIPush
      009316 4B 60            [ 1]  571 	push	#0x60
                                    572 ; genIPush
      009318 4B 0A            [ 1]  573 	push	#0x0a
      00931A 4B 50            [ 1]  574 	push	#0x50
                                    575 ; genCall
      00931C CD 89 F3         [ 4]  576 	call	_GPIO_Init
      00931F 5B 04            [ 2]  577 	addw	sp, #4
                                    578 ;	./Src/main.c: 107: GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
                                    579 ; genIPush
      009321 4B 00            [ 1]  580 	push	#0x00
                                    581 ; genIPush
      009323 4B 08            [ 1]  582 	push	#0x08
                                    583 ; genIPush
      009325 4B 0A            [ 1]  584 	push	#0x0a
      009327 4B 50            [ 1]  585 	push	#0x50
                                    586 ; genCall
      009329 CD 89 F3         [ 4]  587 	call	_GPIO_Init
      00932C 5B 04            [ 2]  588 	addw	sp, #4
                                    589 ;	./Src/main.c: 114: GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);
                                    590 ; genIPush
      00932E 4B E0            [ 1]  591 	push	#0xe0
                                    592 ; genIPush
      009330 4B 80            [ 1]  593 	push	#0x80
                                    594 ; genIPush
      009332 4B 0A            [ 1]  595 	push	#0x0a
      009334 4B 50            [ 1]  596 	push	#0x50
                                    597 ; genCall
      009336 CD 89 F3         [ 4]  598 	call	_GPIO_Init
      009339 5B 04            [ 2]  599 	addw	sp, #4
                                    600 ;	./Src/main.c: 120: GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);
                                    601 ; genIPush
      00933B 4B 00            [ 1]  602 	push	#0x00
                                    603 ; genIPush
      00933D 4B 02            [ 1]  604 	push	#0x02
                                    605 ; genIPush
      00933F 4B 0F            [ 1]  606 	push	#0x0f
      009341 4B 50            [ 1]  607 	push	#0x50
                                    608 ; genCall
      009343 CD 89 F3         [ 4]  609 	call	_GPIO_Init
      009346 5B 04            [ 2]  610 	addw	sp, #4
                                    611 ;	./Src/main.c: 126: GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT);
                                    612 ; genIPush
      009348 4B 00            [ 1]  613 	push	#0x00
                                    614 ; genIPush
      00934A 4B 04            [ 1]  615 	push	#0x04
                                    616 ; genIPush
      00934C 4B 0F            [ 1]  617 	push	#0x0f
      00934E 4B 50            [ 1]  618 	push	#0x50
                                    619 ; genCall
      009350 CD 89 F3         [ 4]  620 	call	_GPIO_Init
      009353 5B 04            [ 2]  621 	addw	sp, #4
                                    622 ;	./Src/main.c: 133: GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
                                    623 ; genIPush
      009355 4B E0            [ 1]  624 	push	#0xe0
                                    625 ; genIPush
      009357 4B 08            [ 1]  626 	push	#0x08
                                    627 ; genIPush
      009359 4B 0F            [ 1]  628 	push	#0x0f
      00935B 4B 50            [ 1]  629 	push	#0x50
                                    630 ; genCall
      00935D CD 89 F3         [ 4]  631 	call	_GPIO_Init
      009360 5B 04            [ 2]  632 	addw	sp, #4
                                    633 ;	./Src/main.c: 139: GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
                                    634 ; genIPush
      009362 4B E0            [ 1]  635 	push	#0xe0
                                    636 ; genIPush
      009364 4B 10            [ 1]  637 	push	#0x10
                                    638 ; genIPush
      009366 4B 0F            [ 1]  639 	push	#0x0f
      009368 4B 50            [ 1]  640 	push	#0x50
                                    641 ; genCall
      00936A CD 89 F3         [ 4]  642 	call	_GPIO_Init
      00936D 5B 04            [ 2]  643 	addw	sp, #4
                                    644 ;	./Src/main.c: 145: GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);
                                    645 ; genIPush
      00936F 4B 00            [ 1]  646 	push	#0x00
                                    647 ; genIPush
      009371 4B 20            [ 1]  648 	push	#0x20
                                    649 ; genIPush
      009373 4B 0F            [ 1]  650 	push	#0x0f
      009375 4B 50            [ 1]  651 	push	#0x50
                                    652 ; genCall
      009377 CD 89 F3         [ 4]  653 	call	_GPIO_Init
      00937A 5B 04            [ 2]  654 	addw	sp, #4
                                    655 ;	./Src/main.c: 151: GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);
                                    656 ; genIPush
      00937C 4B 00            [ 1]  657 	push	#0x00
                                    658 ; genIPush
      00937E 4B 40            [ 1]  659 	push	#0x40
                                    660 ; genIPush
      009380 4B 0F            [ 1]  661 	push	#0x0f
      009382 4B 50            [ 1]  662 	push	#0x50
                                    663 ; genCall
      009384 CD 89 F3         [ 4]  664 	call	_GPIO_Init
      009387 5B 04            [ 2]  665 	addw	sp, #4
                                    666 ; genLabel
      009389                        667 00101$:
                                    668 ;	./Src/main.c: 153: }
                                    669 ; genEndFunction
      009389 81               [ 4]  670 	ret
                                    671 ;	./Src/main.c: 155: void SPI_setup(void) {
                                    672 ; genLabel
                                    673 ;	-----------------------------------------
                                    674 ;	 function SPI_setup
                                    675 ;	-----------------------------------------
                                    676 ;	Register assignment is optimal.
                                    677 ;	Stack space usage: 0 bytes.
      00938A                        678 _SPI_setup:
                                    679 ;	./Src/main.c: 156: SPI_DeInit();
                                    680 ; genCall
      00938A CD 8A CC         [ 4]  681 	call	_SPI_DeInit
                                    682 ;	./Src/main.c: 157: SPI_Init(SPI_FIRSTBIT_MSB,
                                    683 ; genIPush
      00938D 4B 00            [ 1]  684 	push	#0x00
                                    685 ; genIPush
      00938F 4B 02            [ 1]  686 	push	#0x02
                                    687 ; genIPush
      009391 4B C0            [ 1]  688 	push	#0xc0
                                    689 ; genIPush
      009393 4B 00            [ 1]  690 	push	#0x00
                                    691 ; genIPush
      009395 4B 02            [ 1]  692 	push	#0x02
                                    693 ; genIPush
      009397 4B 04            [ 1]  694 	push	#0x04
                                    695 ; genIPush
      009399 4B 10            [ 1]  696 	push	#0x10
                                    697 ; genIPush
      00939B 4B 00            [ 1]  698 	push	#0x00
                                    699 ; genCall
      00939D CD 8A E1         [ 4]  700 	call	_SPI_Init
      0093A0 5B 08            [ 2]  701 	addw	sp, #8
                                    702 ;	./Src/main.c: 165: SPI_Cmd(ENABLE);
                                    703 ; genIPush
      0093A2 4B 01            [ 1]  704 	push	#0x01
                                    705 ; genCall
      0093A4 CD 8B 26         [ 4]  706 	call	_SPI_Cmd
      0093A7 84               [ 1]  707 	pop	a
                                    708 ; genLabel
      0093A8                        709 00101$:
                                    710 ;	./Src/main.c: 166: }
                                    711 ; genEndFunction
      0093A8 81               [ 4]  712 	ret
                                    713 ;	./Src/main.c: 168: void TIM4_setup() {
                                    714 ; genLabel
                                    715 ;	-----------------------------------------
                                    716 ;	 function TIM4_setup
                                    717 ;	-----------------------------------------
                                    718 ;	Register assignment is optimal.
                                    719 ;	Stack space usage: 0 bytes.
      0093A9                        720 _TIM4_setup:
                                    721 ;	./Src/main.c: 169: TIM4_DeInit();
                                    722 ; genCall
      0093A9 CD 8C 67         [ 4]  723 	call	_TIM4_DeInit
                                    724 ;	./Src/main.c: 170: TIM4_TimeBaseInit(TIM4_PRESCALER_128, 0xFF);
                                    725 ; genIPush
      0093AC 4B FF            [ 1]  726 	push	#0xff
                                    727 ; genIPush
      0093AE 4B 07            [ 1]  728 	push	#0x07
                                    729 ; genCall
      0093B0 CD 8C 80         [ 4]  730 	call	_TIM4_TimeBaseInit
      0093B3 85               [ 2]  731 	popw	x
                                    732 ;	./Src/main.c: 171: TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
                                    733 ; genIPush
      0093B4 4B 01            [ 1]  734 	push	#0x01
                                    735 ; genIPush
      0093B6 4B 01            [ 1]  736 	push	#0x01
                                    737 ; genCall
      0093B8 CD 8C A5         [ 4]  738 	call	_TIM4_ITConfig
      0093BB 85               [ 2]  739 	popw	x
                                    740 ;	./Src/main.c: 172: TIM4_Cmd(ENABLE);
                                    741 ; genIPush
      0093BC 4B 01            [ 1]  742 	push	#0x01
                                    743 ; genCall
      0093BE CD 8C 8D         [ 4]  744 	call	_TIM4_Cmd
      0093C1 84               [ 1]  745 	pop	a
                                    746 ; genLabel
      0093C2                        747 00101$:
                                    748 ;	./Src/main.c: 173: }
                                    749 ; genEndFunction
      0093C2 81               [ 4]  750 	ret
                                    751 ;	./Src/main.c: 175: void TIM4_OVERLOAD(void) __interrupt(23) {
                                    752 ; genLabel
                                    753 ;	-----------------------------------------
                                    754 ;	 function TIM4_OVERLOAD
                                    755 ;	-----------------------------------------
                                    756 ;	Register assignment is optimal.
                                    757 ;	Stack space usage: 0 bytes.
      0093C3                        758 _TIM4_OVERLOAD:
                                    759 ;	Reset bit 6 of reg CC. Hardware bug workaround.
      0093C3 62               [ 2]  760 	div	x, a
                                    761 ;	./Src/main.c: 176: TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);  
                                    762 ; genIPush
      0093C4 4B 01            [ 1]  763 	push	#0x01
                                    764 ; genCall
      0093C6 CD 8D 8C         [ 4]  765 	call	_TIM4_ClearITPendingBit
      0093C9 84               [ 1]  766 	pop	a
                                    767 ;	./Src/main.c: 178: if (!count) {
                                    768 ; genIfx
      0093CA CE 00 02         [ 2]  769 	ldw	x, _count+0
      0093CD 27 03            [ 1]  770 	jreq	00111$
      0093CF CC 93 E6         [ 2]  771 	jp	00102$
      0093D2                        772 00111$:
                                    773 ;	./Src/main.c: 179: GPIO_WriteReverse(GPIOD, GPIO_PIN_3);
                                    774 ; genIPush
      0093D2 4B 08            [ 1]  775 	push	#0x08
                                    776 ; genIPush
      0093D4 4B 0F            [ 1]  777 	push	#0x0f
      0093D6 4B 50            [ 1]  778 	push	#0x50
                                    779 ; genCall
      0093D8 CD 8A 95         [ 4]  780 	call	_GPIO_WriteReverse
      0093DB 5B 03            [ 2]  781 	addw	sp, #3
                                    782 ;	./Src/main.c: 180: count=70;
                                    783 ; genAssign
      0093DD AE 00 46         [ 2]  784 	ldw	x, #0x0046
      0093E0 CF 00 02         [ 2]  785 	ldw	_count+0, x
                                    786 ; genGoto
      0093E3 CC 93 ED         [ 2]  787 	jp	00104$
                                    788 ; genLabel
      0093E6                        789 00102$:
                                    790 ;	./Src/main.c: 182: count--;
                                    791 ; genMinus
      0093E6 CE 00 02         [ 2]  792 	ldw	x, _count+0
      0093E9 5A               [ 2]  793 	decw	x
                                    794 ; genAssign
      0093EA CF 00 02         [ 2]  795 	ldw	_count+0, x
                                    796 ; genLabel
      0093ED                        797 00104$:
                                    798 ;	./Src/main.c: 184: }
                                    799 ; genEndFunction
      0093ED 80               [11]  800 	iret
                                    801 	.area CODE
                                    802 	.area CONST
                                    803 	.area INITIALIZER
      00808C                        804 __xinit__status:
      00808C 2F                     805 	.db 0x2f
      00808D                        806 __xinit__count:
      00808D 00 46                  807 	.dw #0x0046
                                    808 	.area CABS (ABS)
