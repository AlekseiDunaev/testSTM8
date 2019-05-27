                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                                     58 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     59 ; genLabel
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
                                     63 ;	Register assignment might be sub-optimal.
                                     64 ;	Stack space usage: 0 bytes.
      0089E0                         65 _GPIO_DeInit:
                                     66 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
                                     67 ; genAssign
      0089E0 16 03            [ 2]   68 	ldw	y, (0x03, sp)
                                     69 ; genPointerSet
      0089E2 90 7F            [ 1]   70 	clr	(y)
                                     71 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
                                     72 ; genPlus
      0089E4 93               [ 1]   73 	ldw	x, y
      0089E5 5C               [ 1]   74 	incw	x
      0089E6 5C               [ 1]   75 	incw	x
                                     76 ; genPointerSet
      0089E7 7F               [ 1]   77 	clr	(x)
                                     78 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
                                     79 ; genPlus
      0089E8 93               [ 1]   80 	ldw	x, y
      0089E9 1C 00 03         [ 2]   81 	addw	x, #0x0003
                                     82 ; genPointerSet
      0089EC 7F               [ 1]   83 	clr	(x)
                                     84 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
                                     85 ; genPlus
      0089ED 93               [ 1]   86 	ldw	x, y
      0089EE 1C 00 04         [ 2]   87 	addw	x, #0x0004
                                     88 ; genPointerSet
      0089F1 7F               [ 1]   89 	clr	(x)
                                     90 ; genLabel
      0089F2                         91 00101$:
                                     92 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
                                     93 ; genEndFunction
      0089F2 81               [ 4]   94 	ret
                                     95 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     96 ; genLabel
                                     97 ;	-----------------------------------------
                                     98 ;	 function GPIO_Init
                                     99 ;	-----------------------------------------
                                    100 ;	Register assignment might be sub-optimal.
                                    101 ;	Stack space usage: 5 bytes.
      0089F3                        102 _GPIO_Init:
      0089F3 52 05            [ 2]  103 	sub	sp, #5
                                    104 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    105 ; genAssign
      0089F5 16 08            [ 2]  106 	ldw	y, (0x08, sp)
                                    107 ; genPlus
      0089F7 93               [ 1]  108 	ldw	x, y
      0089F8 1C 00 04         [ 2]  109 	addw	x, #0x0004
      0089FB 1F 04            [ 2]  110 	ldw	(0x04, sp), x
                                    111 ; genPointerGet
      0089FD 1E 04            [ 2]  112 	ldw	x, (0x04, sp)
      0089FF F6               [ 1]  113 	ld	a, (x)
                                    114 ; genCpl
      008A00 88               [ 1]  115 	push	a
      008A01 7B 0B            [ 1]  116 	ld	a, (0x0b, sp)
      008A03 43               [ 1]  117 	cpl	a
      008A04 6B 04            [ 1]  118 	ld	(0x04, sp), a
      008A06 84               [ 1]  119 	pop	a
                                    120 ; genAnd
      008A07 14 03            [ 1]  121 	and	a, (0x03, sp)
                                    122 ; genPointerSet
      008A09 1E 04            [ 2]  123 	ldw	x, (0x04, sp)
      008A0B F7               [ 1]  124 	ld	(x), a
                                    125 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    126 ; genPlus
      008A0C 93               [ 1]  127 	ldw	x, y
      008A0D 5C               [ 1]  128 	incw	x
      008A0E 5C               [ 1]  129 	incw	x
      008A0F 1F 01            [ 2]  130 	ldw	(0x01, sp), x
                                    131 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
                                    132 ; genAnd
      008A11 0D 0B            [ 1]  133 	tnz	(0x0b, sp)
      008A13 2B 03            [ 1]  134 	jrmi	00135$
      008A15 CC 8A 3B         [ 2]  135 	jp	00105$
      008A18                        136 00135$:
                                    137 ; skipping generated iCode
                                    138 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    139 ; genPointerGet
      008A18 90 F6            [ 1]  140 	ld	a, (y)
                                    141 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
                                    142 ; genAnd
      008A1A 88               [ 1]  143 	push	a
      008A1B 7B 0C            [ 1]  144 	ld	a, (0x0c, sp)
      008A1D A5 10            [ 1]  145 	bcp	a, #0x10
      008A1F 84               [ 1]  146 	pop	a
      008A20 26 03            [ 1]  147 	jrne	00136$
      008A22 CC 8A 2C         [ 2]  148 	jp	00102$
      008A25                        149 00136$:
                                    150 ; skipping generated iCode
                                    151 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
                                    152 ; genOr
      008A25 1A 0A            [ 1]  153 	or	a, (0x0a, sp)
                                    154 ; genPointerSet
      008A27 90 F7            [ 1]  155 	ld	(y), a
                                    156 ; genGoto
      008A29 CC 8A 30         [ 2]  157 	jp	00103$
                                    158 ; genLabel
      008A2C                        159 00102$:
                                    160 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
                                    161 ; genAnd
      008A2C 14 03            [ 1]  162 	and	a, (0x03, sp)
                                    163 ; genPointerSet
      008A2E 90 F7            [ 1]  164 	ld	(y), a
                                    165 ; genLabel
      008A30                        166 00103$:
                                    167 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
                                    168 ; genPointerGet
      008A30 1E 01            [ 2]  169 	ldw	x, (0x01, sp)
      008A32 F6               [ 1]  170 	ld	a, (x)
                                    171 ; genOr
      008A33 1A 0A            [ 1]  172 	or	a, (0x0a, sp)
                                    173 ; genPointerSet
      008A35 1E 01            [ 2]  174 	ldw	x, (0x01, sp)
      008A37 F7               [ 1]  175 	ld	(x), a
                                    176 ; genGoto
      008A38 CC 8A 43         [ 2]  177 	jp	00106$
                                    178 ; genLabel
      008A3B                        179 00105$:
                                    180 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
                                    181 ; genPointerGet
      008A3B 1E 01            [ 2]  182 	ldw	x, (0x01, sp)
      008A3D F6               [ 1]  183 	ld	a, (x)
                                    184 ; genAnd
      008A3E 14 03            [ 1]  185 	and	a, (0x03, sp)
                                    186 ; genPointerSet
      008A40 1E 01            [ 2]  187 	ldw	x, (0x01, sp)
      008A42 F7               [ 1]  188 	ld	(x), a
                                    189 ; genLabel
      008A43                        190 00106$:
                                    191 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    192 ; genPlus
      008A43 93               [ 1]  193 	ldw	x, y
      008A44 1C 00 03         [ 2]  194 	addw	x, #0x0003
                                    195 ; genPointerGet
      008A47 F6               [ 1]  196 	ld	a, (x)
                                    197 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
                                    198 ; genAnd
      008A48 88               [ 1]  199 	push	a
      008A49 7B 0C            [ 1]  200 	ld	a, (0x0c, sp)
      008A4B A5 40            [ 1]  201 	bcp	a, #0x40
      008A4D 84               [ 1]  202 	pop	a
      008A4E 26 03            [ 1]  203 	jrne	00137$
      008A50 CC 8A 59         [ 2]  204 	jp	00108$
      008A53                        205 00137$:
                                    206 ; skipping generated iCode
                                    207 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    208 ; genOr
      008A53 1A 0A            [ 1]  209 	or	a, (0x0a, sp)
                                    210 ; genPointerSet
      008A55 F7               [ 1]  211 	ld	(x), a
                                    212 ; genGoto
      008A56 CC 8A 5C         [ 2]  213 	jp	00109$
                                    214 ; genLabel
      008A59                        215 00108$:
                                    216 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    217 ; genAnd
      008A59 14 03            [ 1]  218 	and	a, (0x03, sp)
                                    219 ; genPointerSet
      008A5B F7               [ 1]  220 	ld	(x), a
                                    221 ; genLabel
      008A5C                        222 00109$:
                                    223 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    224 ; genPointerGet
      008A5C 1E 04            [ 2]  225 	ldw	x, (0x04, sp)
      008A5E F6               [ 1]  226 	ld	a, (x)
                                    227 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
                                    228 ; genAnd
      008A5F 88               [ 1]  229 	push	a
      008A60 7B 0C            [ 1]  230 	ld	a, (0x0c, sp)
      008A62 A5 20            [ 1]  231 	bcp	a, #0x20
      008A64 84               [ 1]  232 	pop	a
      008A65 26 03            [ 1]  233 	jrne	00138$
      008A67 CC 8A 72         [ 2]  234 	jp	00111$
      008A6A                        235 00138$:
                                    236 ; skipping generated iCode
                                    237 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
                                    238 ; genOr
      008A6A 1A 0A            [ 1]  239 	or	a, (0x0a, sp)
                                    240 ; genPointerSet
      008A6C 1E 04            [ 2]  241 	ldw	x, (0x04, sp)
      008A6E F7               [ 1]  242 	ld	(x), a
                                    243 ; genGoto
      008A6F CC 8A 77         [ 2]  244 	jp	00113$
                                    245 ; genLabel
      008A72                        246 00111$:
                                    247 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
                                    248 ; genAnd
      008A72 14 03            [ 1]  249 	and	a, (0x03, sp)
                                    250 ; genPointerSet
      008A74 1E 04            [ 2]  251 	ldw	x, (0x04, sp)
      008A76 F7               [ 1]  252 	ld	(x), a
                                    253 ; genLabel
      008A77                        254 00113$:
                                    255 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
                                    256 ; genEndFunction
      008A77 5B 05            [ 2]  257 	addw	sp, #5
      008A79 81               [ 4]  258 	ret
                                    259 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    260 ; genLabel
                                    261 ;	-----------------------------------------
                                    262 ;	 function GPIO_Write
                                    263 ;	-----------------------------------------
                                    264 ;	Register assignment is optimal.
                                    265 ;	Stack space usage: 0 bytes.
      008A7A                        266 _GPIO_Write:
                                    267 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
                                    268 ; genAssign
      008A7A 1E 03            [ 2]  269 	ldw	x, (0x03, sp)
                                    270 ; genPointerSet
      008A7C 7B 05            [ 1]  271 	ld	a, (0x05, sp)
      008A7E F7               [ 1]  272 	ld	(x), a
                                    273 ; genLabel
      008A7F                        274 00101$:
                                    275 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
                                    276 ; genEndFunction
      008A7F 81               [ 4]  277 	ret
                                    278 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    279 ; genLabel
                                    280 ;	-----------------------------------------
                                    281 ;	 function GPIO_WriteHigh
                                    282 ;	-----------------------------------------
                                    283 ;	Register assignment is optimal.
                                    284 ;	Stack space usage: 0 bytes.
      008A80                        285 _GPIO_WriteHigh:
                                    286 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
                                    287 ; genAssign
      008A80 1E 03            [ 2]  288 	ldw	x, (0x03, sp)
                                    289 ; genPointerGet
      008A82 F6               [ 1]  290 	ld	a, (x)
                                    291 ; genOr
      008A83 1A 05            [ 1]  292 	or	a, (0x05, sp)
                                    293 ; genPointerSet
      008A85 F7               [ 1]  294 	ld	(x), a
                                    295 ; genLabel
      008A86                        296 00101$:
                                    297 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
                                    298 ; genEndFunction
      008A86 81               [ 4]  299 	ret
                                    300 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    301 ; genLabel
                                    302 ;	-----------------------------------------
                                    303 ;	 function GPIO_WriteLow
                                    304 ;	-----------------------------------------
                                    305 ;	Register assignment is optimal.
                                    306 ;	Stack space usage: 1 bytes.
      008A87                        307 _GPIO_WriteLow:
      008A87 88               [ 1]  308 	push	a
                                    309 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
                                    310 ; genAssign
      008A88 1E 04            [ 2]  311 	ldw	x, (0x04, sp)
                                    312 ; genPointerGet
      008A8A F6               [ 1]  313 	ld	a, (x)
      008A8B 6B 01            [ 1]  314 	ld	(0x01, sp), a
                                    315 ; genCpl
      008A8D 7B 06            [ 1]  316 	ld	a, (0x06, sp)
      008A8F 43               [ 1]  317 	cpl	a
                                    318 ; genAnd
      008A90 14 01            [ 1]  319 	and	a, (0x01, sp)
                                    320 ; genPointerSet
      008A92 F7               [ 1]  321 	ld	(x), a
                                    322 ; genLabel
      008A93                        323 00101$:
                                    324 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
                                    325 ; genEndFunction
      008A93 84               [ 1]  326 	pop	a
      008A94 81               [ 4]  327 	ret
                                    328 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    329 ; genLabel
                                    330 ;	-----------------------------------------
                                    331 ;	 function GPIO_WriteReverse
                                    332 ;	-----------------------------------------
                                    333 ;	Register assignment is optimal.
                                    334 ;	Stack space usage: 0 bytes.
      008A95                        335 _GPIO_WriteReverse:
                                    336 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
                                    337 ; genAssign
      008A95 1E 03            [ 2]  338 	ldw	x, (0x03, sp)
                                    339 ; genPointerGet
      008A97 F6               [ 1]  340 	ld	a, (x)
                                    341 ; genXor
      008A98 18 05            [ 1]  342 	xor	a, (0x05, sp)
                                    343 ; genPointerSet
      008A9A F7               [ 1]  344 	ld	(x), a
                                    345 ; genLabel
      008A9B                        346 00101$:
                                    347 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
                                    348 ; genEndFunction
      008A9B 81               [ 4]  349 	ret
                                    350 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    351 ; genLabel
                                    352 ;	-----------------------------------------
                                    353 ;	 function GPIO_ReadOutputData
                                    354 ;	-----------------------------------------
                                    355 ;	Register assignment is optimal.
                                    356 ;	Stack space usage: 0 bytes.
      008A9C                        357 _GPIO_ReadOutputData:
                                    358 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
                                    359 ; genAssign
      008A9C 1E 03            [ 2]  360 	ldw	x, (0x03, sp)
                                    361 ; genPointerGet
      008A9E F6               [ 1]  362 	ld	a, (x)
                                    363 ; genReturn
                                    364 ; genLabel
      008A9F                        365 00101$:
                                    366 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
                                    367 ; genEndFunction
      008A9F 81               [ 4]  368 	ret
                                    369 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    370 ; genLabel
                                    371 ;	-----------------------------------------
                                    372 ;	 function GPIO_ReadInputData
                                    373 ;	-----------------------------------------
                                    374 ;	Register assignment might be sub-optimal.
                                    375 ;	Stack space usage: 0 bytes.
      008AA0                        376 _GPIO_ReadInputData:
                                    377 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
                                    378 ; genAssign
      008AA0 1E 03            [ 2]  379 	ldw	x, (0x03, sp)
                                    380 ; genAssign
                                    381 ; genPointerGet
      008AA2 E6 01            [ 1]  382 	ld	a, (0x1, x)
                                    383 ; genReturn
                                    384 ; genLabel
      008AA4                        385 00101$:
                                    386 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
                                    387 ; genEndFunction
      008AA4 81               [ 4]  388 	ret
                                    389 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    390 ; genLabel
                                    391 ;	-----------------------------------------
                                    392 ;	 function GPIO_ReadInputPin
                                    393 ;	-----------------------------------------
                                    394 ;	Register assignment might be sub-optimal.
                                    395 ;	Stack space usage: 0 bytes.
      008AA5                        396 _GPIO_ReadInputPin:
                                    397 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
                                    398 ; genAssign
      008AA5 1E 03            [ 2]  399 	ldw	x, (0x03, sp)
                                    400 ; genAssign
                                    401 ; genPointerGet
      008AA7 E6 01            [ 1]  402 	ld	a, (0x1, x)
                                    403 ; genAnd
      008AA9 14 05            [ 1]  404 	and	a, (0x05, sp)
                                    405 ; genReturn
                                    406 ; genLabel
      008AAB                        407 00101$:
                                    408 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
                                    409 ; genEndFunction
      008AAB 81               [ 4]  410 	ret
                                    411 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    412 ; genLabel
                                    413 ;	-----------------------------------------
                                    414 ;	 function GPIO_ExternalPullUpConfig
                                    415 ;	-----------------------------------------
                                    416 ;	Register assignment might be sub-optimal.
                                    417 ;	Stack space usage: 1 bytes.
      008AAC                        418 _GPIO_ExternalPullUpConfig:
      008AAC 88               [ 1]  419 	push	a
                                    420 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    421 ; genAssign
      008AAD 1E 04            [ 2]  422 	ldw	x, (0x04, sp)
                                    423 ; genPlus
      008AAF 1C 00 03         [ 2]  424 	addw	x, #0x0003
                                    425 ; genPointerGet
      008AB2 F6               [ 1]  426 	ld	a, (x)
                                    427 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
                                    428 ; genIfx
      008AB3 0D 07            [ 1]  429 	tnz	(0x07, sp)
      008AB5 26 03            [ 1]  430 	jrne	00111$
      008AB7 CC 8A C0         [ 2]  431 	jp	00102$
      008ABA                        432 00111$:
                                    433 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
                                    434 ; genOr
      008ABA 1A 06            [ 1]  435 	or	a, (0x06, sp)
                                    436 ; genPointerSet
      008ABC F7               [ 1]  437 	ld	(x), a
                                    438 ; genGoto
      008ABD CC 8A CA         [ 2]  439 	jp	00104$
                                    440 ; genLabel
      008AC0                        441 00102$:
                                    442 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
                                    443 ; genCpl
      008AC0 88               [ 1]  444 	push	a
      008AC1 7B 07            [ 1]  445 	ld	a, (0x07, sp)
      008AC3 43               [ 1]  446 	cpl	a
      008AC4 6B 02            [ 1]  447 	ld	(0x02, sp), a
      008AC6 84               [ 1]  448 	pop	a
                                    449 ; genAnd
      008AC7 14 01            [ 1]  450 	and	a, (0x01, sp)
                                    451 ; genPointerSet
      008AC9 F7               [ 1]  452 	ld	(x), a
                                    453 ; genLabel
      008ACA                        454 00104$:
                                    455 ;	./STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
                                    456 ; genEndFunction
      008ACA 84               [ 1]  457 	pop	a
      008ACB 81               [ 4]  458 	ret
                                    459 	.area CODE
                                    460 	.area CONST
                                    461 	.area INITIALIZER
                                    462 	.area CABS (ABS)
