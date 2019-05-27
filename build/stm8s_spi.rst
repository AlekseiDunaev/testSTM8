                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_spi
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SPI_DeInit
                                     12 	.globl _SPI_Init
                                     13 	.globl _SPI_Cmd
                                     14 	.globl _SPI_ITConfig
                                     15 	.globl _SPI_SendData
                                     16 	.globl _SPI_ReceiveData
                                     17 	.globl _SPI_NSSInternalSoftwareCmd
                                     18 	.globl _SPI_TransmitCRC
                                     19 	.globl _SPI_CalculateCRCCmd
                                     20 	.globl _SPI_GetCRC
                                     21 	.globl _SPI_ResetCRC
                                     22 	.globl _SPI_GetCRCPolynomial
                                     23 	.globl _SPI_BiDirectionalLineConfig
                                     24 	.globl _SPI_GetFlagStatus
                                     25 	.globl _SPI_ClearFlag
                                     26 	.globl _SPI_GetITStatus
                                     27 	.globl _SPI_ClearITPendingBit
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DATA
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area INITIALIZED
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DABS (ABS)
                                     40 
                                     41 ; default segment ordering for linker
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area CONST
                                     46 	.area INITIALIZER
                                     47 	.area CODE
                                     48 
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area CODE
                                     65 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 50: void SPI_DeInit(void)
                                     66 ; genLabel
                                     67 ;	-----------------------------------------
                                     68 ;	 function SPI_DeInit
                                     69 ;	-----------------------------------------
                                     70 ;	Register assignment is optimal.
                                     71 ;	Stack space usage: 0 bytes.
      008ACC                         72 _SPI_DeInit:
                                     73 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
                                     74 ; genPointerSet
      008ACC 35 00 52 00      [ 1]   75 	mov	0x5200+0, #0x00
                                     76 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
                                     77 ; genPointerSet
      008AD0 35 00 52 01      [ 1]   78 	mov	0x5201+0, #0x00
                                     79 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
                                     80 ; genPointerSet
      008AD4 35 00 52 02      [ 1]   81 	mov	0x5202+0, #0x00
                                     82 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
                                     83 ; genPointerSet
      008AD8 35 02 52 03      [ 1]   84 	mov	0x5203+0, #0x02
                                     85 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
                                     86 ; genPointerSet
      008ADC 35 07 52 05      [ 1]   87 	mov	0x5205+0, #0x07
                                     88 ; genLabel
      008AE0                         89 00101$:
                                     90 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 57: }
                                     91 ; genEndFunction
      008AE0 81               [ 4]   92 	ret
                                     93 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
                                     94 ; genLabel
                                     95 ;	-----------------------------------------
                                     96 ;	 function SPI_Init
                                     97 ;	-----------------------------------------
                                     98 ;	Register assignment is optimal.
                                     99 ;	Stack space usage: 1 bytes.
      008AE1                        100 _SPI_Init:
      008AE1 88               [ 1]  101 	push	a
                                    102 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
                                    103 ; genOr
      008AE2 7B 04            [ 1]  104 	ld	a, (0x04, sp)
      008AE4 1A 05            [ 1]  105 	or	a, (0x05, sp)
      008AE6 6B 01            [ 1]  106 	ld	(0x01, sp), a
                                    107 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
                                    108 ; genOr
      008AE8 7B 07            [ 1]  109 	ld	a, (0x07, sp)
      008AEA 1A 08            [ 1]  110 	or	a, (0x08, sp)
                                    111 ; genOr
      008AEC 1A 01            [ 1]  112 	or	a, (0x01, sp)
                                    113 ; genPointerSet
      008AEE C7 52 00         [ 1]  114 	ld	0x5200, a
                                    115 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
                                    116 ; genOr
      008AF1 7B 09            [ 1]  117 	ld	a, (0x09, sp)
      008AF3 1A 0A            [ 1]  118 	or	a, (0x0a, sp)
                                    119 ; genPointerSet
      008AF5 C7 52 01         [ 1]  120 	ld	0x5201, a
                                    121 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
                                    122 ; genPointerGet
      008AF8 C6 52 01         [ 1]  123 	ld	a, 0x5201
                                    124 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
                                    125 ; genCmpEQorNE
      008AFB 88               [ 1]  126 	push	a
      008AFC 7B 07            [ 1]  127 	ld	a, (0x07, sp)
      008AFE A1 04            [ 1]  128 	cp	a, #0x04
      008B00 84               [ 1]  129 	pop	a
      008B01 26 03            [ 1]  130 	jrne	00112$
      008B03 CC 8B 09         [ 2]  131 	jp	00113$
      008B06                        132 00112$:
      008B06 CC 8B 11         [ 2]  133 	jp	00102$
      008B09                        134 00113$:
                                    135 ; skipping generated iCode
                                    136 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
                                    137 ; genOr
      008B09 AA 01            [ 1]  138 	or	a, #0x01
                                    139 ; genPointerSet
      008B0B C7 52 01         [ 1]  140 	ld	0x5201, a
                                    141 ; genGoto
      008B0E CC 8B 16         [ 2]  142 	jp	00103$
                                    143 ; genLabel
      008B11                        144 00102$:
                                    145 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
                                    146 ; genAnd
      008B11 A4 FE            [ 1]  147 	and	a, #0xfe
                                    148 ; genPointerSet
      008B13 C7 52 01         [ 1]  149 	ld	0x5201, a
                                    150 ; genLabel
      008B16                        151 00103$:
                                    152 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
                                    153 ; genPointerGet
      008B16 C6 52 00         [ 1]  154 	ld	a, 0x5200
                                    155 ; genOr
      008B19 1A 06            [ 1]  156 	or	a, (0x06, sp)
                                    157 ; genPointerSet
      008B1B C7 52 00         [ 1]  158 	ld	0x5200, a
                                    159 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
                                    160 ; genPointerSet
      008B1E AE 52 05         [ 2]  161 	ldw	x, #0x5205
      008B21 7B 0B            [ 1]  162 	ld	a, (0x0b, sp)
      008B23 F7               [ 1]  163 	ld	(x), a
                                    164 ; genLabel
      008B24                        165 00104$:
                                    166 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 111: }
                                    167 ; genEndFunction
      008B24 84               [ 1]  168 	pop	a
      008B25 81               [ 4]  169 	ret
                                    170 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
                                    171 ; genLabel
                                    172 ;	-----------------------------------------
                                    173 ;	 function SPI_Cmd
                                    174 ;	-----------------------------------------
                                    175 ;	Register assignment is optimal.
                                    176 ;	Stack space usage: 0 bytes.
      008B26                        177 _SPI_Cmd:
                                    178 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
                                    179 ; genPointerGet
      008B26 C6 52 00         [ 1]  180 	ld	a, 0x5200
                                    181 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 124: if (NewState != DISABLE)
                                    182 ; genIfx
      008B29 0D 03            [ 1]  183 	tnz	(0x03, sp)
      008B2B 26 03            [ 1]  184 	jrne	00111$
      008B2D CC 8B 38         [ 2]  185 	jp	00102$
      008B30                        186 00111$:
                                    187 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
                                    188 ; genOr
      008B30 AA 40            [ 1]  189 	or	a, #0x40
                                    190 ; genPointerSet
      008B32 C7 52 00         [ 1]  191 	ld	0x5200, a
                                    192 ; genGoto
      008B35 CC 8B 3D         [ 2]  193 	jp	00104$
                                    194 ; genLabel
      008B38                        195 00102$:
                                    196 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
                                    197 ; genAnd
      008B38 A4 BF            [ 1]  198 	and	a, #0xbf
                                    199 ; genPointerSet
      008B3A C7 52 00         [ 1]  200 	ld	0x5200, a
                                    201 ; genLabel
      008B3D                        202 00104$:
                                    203 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 132: }
                                    204 ; genEndFunction
      008B3D 81               [ 4]  205 	ret
                                    206 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 141: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
                                    207 ; genLabel
                                    208 ;	-----------------------------------------
                                    209 ;	 function SPI_ITConfig
                                    210 ;	-----------------------------------------
                                    211 ;	Register assignment is optimal.
                                    212 ;	Stack space usage: 1 bytes.
      008B3E                        213 _SPI_ITConfig:
      008B3E 88               [ 1]  214 	push	a
                                    215 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 149: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
                                    216 ; genAnd
      008B3F 7B 04            [ 1]  217 	ld	a, (0x04, sp)
      008B41 A4 0F            [ 1]  218 	and	a, #0x0f
      008B43 97               [ 1]  219 	ld	xl, a
                                    220 ; genLeftShift
      008B44 A6 01            [ 1]  221 	ld	a, #0x01
      008B46 88               [ 1]  222 	push	a
      008B47 9F               [ 1]  223 	ld	a, xl
      008B48 4D               [ 1]  224 	tnz	a
      008B49 27 05            [ 1]  225 	jreq	00112$
      008B4B                        226 00111$:
      008B4B 08 01            [ 1]  227 	sll	(1, sp)
      008B4D 4A               [ 1]  228 	dec	a
      008B4E 26 FB            [ 1]  229 	jrne	00111$
      008B50                        230 00112$:
      008B50 84               [ 1]  231 	pop	a
                                    232 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
                                    233 ; genPointerGet
      008B51 AE 52 02         [ 2]  234 	ldw	x, #0x5202
      008B54 88               [ 1]  235 	push	a
      008B55 F6               [ 1]  236 	ld	a, (x)
      008B56 6B 02            [ 1]  237 	ld	(0x02, sp), a
      008B58 84               [ 1]  238 	pop	a
                                    239 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 151: if (NewState != DISABLE)
                                    240 ; genIfx
      008B59 0D 05            [ 1]  241 	tnz	(0x05, sp)
      008B5B 26 03            [ 1]  242 	jrne	00113$
      008B5D CC 8B 68         [ 2]  243 	jp	00102$
      008B60                        244 00113$:
                                    245 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
                                    246 ; genOr
      008B60 1A 01            [ 1]  247 	or	a, (0x01, sp)
                                    248 ; genPointerSet
      008B62 C7 52 02         [ 1]  249 	ld	0x5202, a
                                    250 ; genGoto
      008B65 CC 8B 6E         [ 2]  251 	jp	00104$
                                    252 ; genLabel
      008B68                        253 00102$:
                                    254 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 157: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
                                    255 ; genCpl
      008B68 43               [ 1]  256 	cpl	a
                                    257 ; genAnd
      008B69 14 01            [ 1]  258 	and	a, (0x01, sp)
                                    259 ; genPointerSet
      008B6B C7 52 02         [ 1]  260 	ld	0x5202, a
                                    261 ; genLabel
      008B6E                        262 00104$:
                                    263 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 159: }
                                    264 ; genEndFunction
      008B6E 84               [ 1]  265 	pop	a
      008B6F 81               [ 4]  266 	ret
                                    267 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
                                    268 ; genLabel
                                    269 ;	-----------------------------------------
                                    270 ;	 function SPI_SendData
                                    271 ;	-----------------------------------------
                                    272 ;	Register assignment is optimal.
                                    273 ;	Stack space usage: 0 bytes.
      008B70                        274 _SPI_SendData:
                                    275 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
                                    276 ; genPointerSet
      008B70 AE 52 04         [ 2]  277 	ldw	x, #0x5204
      008B73 7B 03            [ 1]  278 	ld	a, (0x03, sp)
      008B75 F7               [ 1]  279 	ld	(x), a
                                    280 ; genLabel
      008B76                        281 00101$:
                                    282 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 169: }
                                    283 ; genEndFunction
      008B76 81               [ 4]  284 	ret
                                    285 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 176: uint8_t SPI_ReceiveData(void)
                                    286 ; genLabel
                                    287 ;	-----------------------------------------
                                    288 ;	 function SPI_ReceiveData
                                    289 ;	-----------------------------------------
                                    290 ;	Register assignment is optimal.
                                    291 ;	Stack space usage: 0 bytes.
      008B77                        292 _SPI_ReceiveData:
                                    293 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 178: return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
                                    294 ; genPointerGet
      008B77 C6 52 04         [ 1]  295 	ld	a, 0x5204
                                    296 ; genReturn
                                    297 ; genLabel
      008B7A                        298 00101$:
                                    299 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 179: }
                                    300 ; genEndFunction
      008B7A 81               [ 4]  301 	ret
                                    302 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 187: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
                                    303 ; genLabel
                                    304 ;	-----------------------------------------
                                    305 ;	 function SPI_NSSInternalSoftwareCmd
                                    306 ;	-----------------------------------------
                                    307 ;	Register assignment is optimal.
                                    308 ;	Stack space usage: 0 bytes.
      008B7B                        309 _SPI_NSSInternalSoftwareCmd:
                                    310 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
                                    311 ; genPointerGet
      008B7B C6 52 01         [ 1]  312 	ld	a, 0x5201
                                    313 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 192: if (NewState != DISABLE)
                                    314 ; genIfx
      008B7E 0D 03            [ 1]  315 	tnz	(0x03, sp)
      008B80 26 03            [ 1]  316 	jrne	00111$
      008B82 CC 8B 8D         [ 2]  317 	jp	00102$
      008B85                        318 00111$:
                                    319 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
                                    320 ; genOr
      008B85 AA 01            [ 1]  321 	or	a, #0x01
                                    322 ; genPointerSet
      008B87 C7 52 01         [ 1]  323 	ld	0x5201, a
                                    324 ; genGoto
      008B8A CC 8B 92         [ 2]  325 	jp	00104$
                                    326 ; genLabel
      008B8D                        327 00102$:
                                    328 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 198: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
                                    329 ; genAnd
      008B8D A4 FE            [ 1]  330 	and	a, #0xfe
                                    331 ; genPointerSet
      008B8F C7 52 01         [ 1]  332 	ld	0x5201, a
                                    333 ; genLabel
      008B92                        334 00104$:
                                    335 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 200: }
                                    336 ; genEndFunction
      008B92 81               [ 4]  337 	ret
                                    338 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 207: void SPI_TransmitCRC(void)
                                    339 ; genLabel
                                    340 ;	-----------------------------------------
                                    341 ;	 function SPI_TransmitCRC
                                    342 ;	-----------------------------------------
                                    343 ;	Register assignment is optimal.
                                    344 ;	Stack space usage: 0 bytes.
      008B93                        345 _SPI_TransmitCRC:
                                    346 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 209: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
                                    347 ; genPointerGet
      008B93 C6 52 01         [ 1]  348 	ld	a, 0x5201
                                    349 ; genOr
      008B96 AA 10            [ 1]  350 	or	a, #0x10
                                    351 ; genPointerSet
      008B98 C7 52 01         [ 1]  352 	ld	0x5201, a
                                    353 ; genLabel
      008B9B                        354 00101$:
                                    355 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 210: }
                                    356 ; genEndFunction
      008B9B 81               [ 4]  357 	ret
                                    358 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 218: void SPI_CalculateCRCCmd(FunctionalState NewState)
                                    359 ; genLabel
                                    360 ;	-----------------------------------------
                                    361 ;	 function SPI_CalculateCRCCmd
                                    362 ;	-----------------------------------------
                                    363 ;	Register assignment is optimal.
                                    364 ;	Stack space usage: 0 bytes.
      008B9C                        365 _SPI_CalculateCRCCmd:
                                    366 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
                                    367 ; genPointerGet
      008B9C C6 52 01         [ 1]  368 	ld	a, 0x5201
                                    369 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 223: if (NewState != DISABLE)
                                    370 ; genIfx
      008B9F 0D 03            [ 1]  371 	tnz	(0x03, sp)
      008BA1 26 03            [ 1]  372 	jrne	00111$
      008BA3 CC 8B AE         [ 2]  373 	jp	00102$
      008BA6                        374 00111$:
                                    375 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
                                    376 ; genOr
      008BA6 AA 20            [ 1]  377 	or	a, #0x20
                                    378 ; genPointerSet
      008BA8 C7 52 01         [ 1]  379 	ld	0x5201, a
                                    380 ; genGoto
      008BAB CC 8B B3         [ 2]  381 	jp	00104$
                                    382 ; genLabel
      008BAE                        383 00102$:
                                    384 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 229: SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
                                    385 ; genAnd
      008BAE A4 DF            [ 1]  386 	and	a, #0xdf
                                    387 ; genPointerSet
      008BB0 C7 52 01         [ 1]  388 	ld	0x5201, a
                                    389 ; genLabel
      008BB3                        390 00104$:
                                    391 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 231: }
                                    392 ; genEndFunction
      008BB3 81               [ 4]  393 	ret
                                    394 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 238: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
                                    395 ; genLabel
                                    396 ;	-----------------------------------------
                                    397 ;	 function SPI_GetCRC
                                    398 ;	-----------------------------------------
                                    399 ;	Register assignment is optimal.
                                    400 ;	Stack space usage: 0 bytes.
      008BB4                        401 _SPI_GetCRC:
                                    402 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 245: if (SPI_CRC != SPI_CRC_RX)
                                    403 ; genIfx
      008BB4 0D 03            [ 1]  404 	tnz	(0x03, sp)
      008BB6 26 03            [ 1]  405 	jrne	00111$
      008BB8 CC 8B C1         [ 2]  406 	jp	00102$
      008BBB                        407 00111$:
                                    408 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 247: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
                                    409 ; genPointerGet
      008BBB C6 52 07         [ 1]  410 	ld	a, 0x5207
                                    411 ; genGoto
      008BBE CC 8B C4         [ 2]  412 	jp	00103$
                                    413 ; genLabel
      008BC1                        414 00102$:
                                    415 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 251: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
                                    416 ; genPointerGet
      008BC1 C6 52 06         [ 1]  417 	ld	a, 0x5206
                                    418 ; genLabel
      008BC4                        419 00103$:
                                    420 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 255: return crcreg;
                                    421 ; genReturn
                                    422 ; genLabel
      008BC4                        423 00104$:
                                    424 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 256: }
                                    425 ; genEndFunction
      008BC4 81               [ 4]  426 	ret
                                    427 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 263: void SPI_ResetCRC(void)
                                    428 ; genLabel
                                    429 ;	-----------------------------------------
                                    430 ;	 function SPI_ResetCRC
                                    431 ;	-----------------------------------------
                                    432 ;	Register assignment is optimal.
                                    433 ;	Stack space usage: 0 bytes.
      008BC5                        434 _SPI_ResetCRC:
                                    435 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 267: SPI_CalculateCRCCmd(ENABLE);
                                    436 ; genIPush
      008BC5 4B 01            [ 1]  437 	push	#0x01
                                    438 ; genCall
      008BC7 CD 8B 9C         [ 4]  439 	call	_SPI_CalculateCRCCmd
      008BCA 84               [ 1]  440 	pop	a
                                    441 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 270: SPI_Cmd(ENABLE);
                                    442 ; genIPush
      008BCB 4B 01            [ 1]  443 	push	#0x01
                                    444 ; genCall
      008BCD CD 8B 26         [ 4]  445 	call	_SPI_Cmd
      008BD0 84               [ 1]  446 	pop	a
                                    447 ; genLabel
      008BD1                        448 00101$:
                                    449 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 271: }
                                    450 ; genEndFunction
      008BD1 81               [ 4]  451 	ret
                                    452 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 278: uint8_t SPI_GetCRCPolynomial(void)
                                    453 ; genLabel
                                    454 ;	-----------------------------------------
                                    455 ;	 function SPI_GetCRCPolynomial
                                    456 ;	-----------------------------------------
                                    457 ;	Register assignment is optimal.
                                    458 ;	Stack space usage: 0 bytes.
      008BD2                        459 _SPI_GetCRCPolynomial:
                                    460 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 280: return SPI->CRCPR; /* Return the CRC polynomial register */
                                    461 ; genPointerGet
      008BD2 C6 52 05         [ 1]  462 	ld	a, 0x5205
                                    463 ; genReturn
                                    464 ; genLabel
      008BD5                        465 00101$:
                                    466 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 281: }
                                    467 ; genEndFunction
      008BD5 81               [ 4]  468 	ret
                                    469 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 288: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
                                    470 ; genLabel
                                    471 ;	-----------------------------------------
                                    472 ;	 function SPI_BiDirectionalLineConfig
                                    473 ;	-----------------------------------------
                                    474 ;	Register assignment is optimal.
                                    475 ;	Stack space usage: 0 bytes.
      008BD6                        476 _SPI_BiDirectionalLineConfig:
                                    477 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
                                    478 ; genPointerGet
      008BD6 C6 52 01         [ 1]  479 	ld	a, 0x5201
                                    480 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 293: if (SPI_Direction != SPI_DIRECTION_RX)
                                    481 ; genIfx
      008BD9 0D 03            [ 1]  482 	tnz	(0x03, sp)
      008BDB 26 03            [ 1]  483 	jrne	00111$
      008BDD CC 8B E8         [ 2]  484 	jp	00102$
      008BE0                        485 00111$:
                                    486 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
                                    487 ; genOr
      008BE0 AA 40            [ 1]  488 	or	a, #0x40
                                    489 ; genPointerSet
      008BE2 C7 52 01         [ 1]  490 	ld	0x5201, a
                                    491 ; genGoto
      008BE5 CC 8B ED         [ 2]  492 	jp	00104$
                                    493 ; genLabel
      008BE8                        494 00102$:
                                    495 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 299: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
                                    496 ; genAnd
      008BE8 A4 BF            [ 1]  497 	and	a, #0xbf
                                    498 ; genPointerSet
      008BEA C7 52 01         [ 1]  499 	ld	0x5201, a
                                    500 ; genLabel
      008BED                        501 00104$:
                                    502 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 301: }
                                    503 ; genEndFunction
      008BED 81               [ 4]  504 	ret
                                    505 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
                                    506 ; genLabel
                                    507 ;	-----------------------------------------
                                    508 ;	 function SPI_GetFlagStatus
                                    509 ;	-----------------------------------------
                                    510 ;	Register assignment is optimal.
                                    511 ;	Stack space usage: 0 bytes.
      008BEE                        512 _SPI_GetFlagStatus:
                                    513 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
                                    514 ; genPointerGet
      008BEE C6 52 03         [ 1]  515 	ld	a, 0x5203
                                    516 ; genAnd
      008BF1 14 03            [ 1]  517 	and	a, (0x03, sp)
                                    518 ; genIfx
      008BF3 4D               [ 1]  519 	tnz	a
      008BF4 26 03            [ 1]  520 	jrne	00111$
      008BF6 CC 8B FE         [ 2]  521 	jp	00102$
      008BF9                        522 00111$:
                                    523 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
                                    524 ; genAssign
      008BF9 A6 01            [ 1]  525 	ld	a, #0x01
                                    526 ; genGoto
      008BFB CC 8B FF         [ 2]  527 	jp	00103$
                                    528 ; genLabel
      008BFE                        529 00102$:
                                    530 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
                                    531 ; genAssign
      008BFE 4F               [ 1]  532 	clr	a
                                    533 ; genLabel
      008BFF                        534 00103$:
                                    535 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 328: return status;
                                    536 ; genReturn
                                    537 ; genLabel
      008BFF                        538 00104$:
                                    539 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 329: }
                                    540 ; genEndFunction
      008BFF 81               [ 4]  541 	ret
                                    542 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
                                    543 ; genLabel
                                    544 ;	-----------------------------------------
                                    545 ;	 function SPI_ClearFlag
                                    546 ;	-----------------------------------------
                                    547 ;	Register assignment is optimal.
                                    548 ;	Stack space usage: 0 bytes.
      008C00                        549 _SPI_ClearFlag:
                                    550 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
                                    551 ; genCpl
      008C00 7B 03            [ 1]  552 	ld	a, (0x03, sp)
      008C02 43               [ 1]  553 	cpl	a
                                    554 ; genPointerSet
      008C03 C7 52 03         [ 1]  555 	ld	0x5203, a
                                    556 ; genLabel
      008C06                        557 00101$:
                                    558 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 351: }
                                    559 ; genEndFunction
      008C06 81               [ 4]  560 	ret
                                    561 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 366: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
                                    562 ; genLabel
                                    563 ;	-----------------------------------------
                                    564 ;	 function SPI_GetITStatus
                                    565 ;	-----------------------------------------
                                    566 ;	Register assignment might be sub-optimal.
                                    567 ;	Stack space usage: 2 bytes.
      008C07                        568 _SPI_GetITStatus:
      008C07 89               [ 2]  569 	pushw	x
                                    570 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 375: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
                                    571 ; genAnd
      008C08 7B 05            [ 1]  572 	ld	a, (0x05, sp)
      008C0A A4 0F            [ 1]  573 	and	a, #0x0f
                                    574 ; genLeftShift
      008C0C 88               [ 1]  575 	push	a
      008C0D A6 01            [ 1]  576 	ld	a, #0x01
      008C0F 6B 03            [ 1]  577 	ld	(0x03, sp), a
      008C11 84               [ 1]  578 	pop	a
      008C12 4D               [ 1]  579 	tnz	a
      008C13 27 05            [ 1]  580 	jreq	00118$
      008C15                        581 00117$:
      008C15 08 02            [ 1]  582 	sll	(0x02, sp)
      008C17 4A               [ 1]  583 	dec	a
      008C18 26 FB            [ 1]  584 	jrne	00117$
      008C1A                        585 00118$:
                                    586 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 378: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
                                    587 ; genRightShiftLiteral
      008C1A 7B 05            [ 1]  588 	ld	a, (0x05, sp)
      008C1C 4E               [ 1]  589 	swap	a
      008C1D A4 0F            [ 1]  590 	and	a, #0x0f
                                    591 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 380: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
                                    592 ; genLeftShift
      008C1F 88               [ 1]  593 	push	a
      008C20 A6 01            [ 1]  594 	ld	a, #0x01
      008C22 6B 02            [ 1]  595 	ld	(0x02, sp), a
      008C24 84               [ 1]  596 	pop	a
      008C25 4D               [ 1]  597 	tnz	a
      008C26 27 05            [ 1]  598 	jreq	00120$
      008C28                        599 00119$:
      008C28 08 01            [ 1]  600 	sll	(0x01, sp)
      008C2A 4A               [ 1]  601 	dec	a
      008C2B 26 FB            [ 1]  602 	jrne	00119$
      008C2D                        603 00120$:
                                    604 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 382: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
                                    605 ; genPointerGet
      008C2D C6 52 03         [ 1]  606 	ld	a, 0x5203
                                    607 ; genAnd
      008C30 14 01            [ 1]  608 	and	a, (0x01, sp)
                                    609 ; genAssign
      008C32 97               [ 1]  610 	ld	xl, a
                                    611 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 384: if (((SPI->ICR & itpos) != RESET) && enablestatus)
                                    612 ; genPointerGet
      008C33 C6 52 02         [ 1]  613 	ld	a, 0x5202
                                    614 ; genAnd
      008C36 14 02            [ 1]  615 	and	a, (0x02, sp)
                                    616 ; genIfx
      008C38 4D               [ 1]  617 	tnz	a
      008C39 26 03            [ 1]  618 	jrne	00121$
      008C3B CC 8C 4A         [ 2]  619 	jp	00102$
      008C3E                        620 00121$:
                                    621 ; genIfx
      008C3E 9F               [ 1]  622 	ld	a, xl
      008C3F 4D               [ 1]  623 	tnz	a
      008C40 26 03            [ 1]  624 	jrne	00122$
      008C42 CC 8C 4A         [ 2]  625 	jp	00102$
      008C45                        626 00122$:
                                    627 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 387: pendingbitstatus = SET;
                                    628 ; genAssign
      008C45 A6 01            [ 1]  629 	ld	a, #0x01
                                    630 ; genGoto
      008C47 CC 8C 4B         [ 2]  631 	jp	00103$
                                    632 ; genLabel
      008C4A                        633 00102$:
                                    634 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 392: pendingbitstatus = RESET;
                                    635 ; genAssign
      008C4A 4F               [ 1]  636 	clr	a
                                    637 ; genLabel
      008C4B                        638 00103$:
                                    639 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 395: return  pendingbitstatus;
                                    640 ; genReturn
                                    641 ; genLabel
      008C4B                        642 00105$:
                                    643 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 396: }
                                    644 ; genEndFunction
      008C4B 85               [ 2]  645 	popw	x
      008C4C 81               [ 4]  646 	ret
                                    647 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 412: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
                                    648 ; genLabel
                                    649 ;	-----------------------------------------
                                    650 ;	 function SPI_ClearITPendingBit
                                    651 ;	-----------------------------------------
                                    652 ;	Register assignment is optimal.
                                    653 ;	Stack space usage: 0 bytes.
      008C4D                        654 _SPI_ClearITPendingBit:
                                    655 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 420: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
                                    656 ; genAnd
      008C4D 7B 03            [ 1]  657 	ld	a, (0x03, sp)
      008C4F A4 F0            [ 1]  658 	and	a, #0xf0
                                    659 ; genRightShiftLiteral
      008C51 4E               [ 1]  660 	swap	a
      008C52 A4 0F            [ 1]  661 	and	a, #0x0f
      008C54 97               [ 1]  662 	ld	xl, a
                                    663 ; genLeftShift
      008C55 A6 01            [ 1]  664 	ld	a, #0x01
      008C57 88               [ 1]  665 	push	a
      008C58 9F               [ 1]  666 	ld	a, xl
      008C59 4D               [ 1]  667 	tnz	a
      008C5A 27 05            [ 1]  668 	jreq	00104$
      008C5C                        669 00103$:
      008C5C 08 01            [ 1]  670 	sll	(1, sp)
      008C5E 4A               [ 1]  671 	dec	a
      008C5F 26 FB            [ 1]  672 	jrne	00103$
      008C61                        673 00104$:
      008C61 84               [ 1]  674 	pop	a
                                    675 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 422: SPI->SR = (uint8_t)(~itpos);
                                    676 ; genCpl
      008C62 43               [ 1]  677 	cpl	a
                                    678 ; genPointerSet
      008C63 C7 52 03         [ 1]  679 	ld	0x5203, a
                                    680 ; genLabel
      008C66                        681 00101$:
                                    682 ;	./STM8S_StdPeriph_Driver/src/stm8s_spi.c: 424: }
                                    683 ; genEndFunction
      008C66 81               [ 4]  684 	ret
                                    685 	.area CODE
                                    686 	.area CONST
                                    687 	.area INITIALIZER
                                    688 	.area CABS (ABS)
