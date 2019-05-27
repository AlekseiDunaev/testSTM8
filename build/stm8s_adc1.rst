                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_DeInit
                                     12 	.globl _ADC1_Init
                                     13 	.globl _ADC1_Cmd
                                     14 	.globl _ADC1_ScanModeCmd
                                     15 	.globl _ADC1_DataBufferCmd
                                     16 	.globl _ADC1_ITConfig
                                     17 	.globl _ADC1_PrescalerConfig
                                     18 	.globl _ADC1_SchmittTriggerConfig
                                     19 	.globl _ADC1_ConversionConfig
                                     20 	.globl _ADC1_ExternalTriggerConfig
                                     21 	.globl _ADC1_StartConversion
                                     22 	.globl _ADC1_GetConversionValue
                                     23 	.globl _ADC1_AWDChannelConfig
                                     24 	.globl _ADC1_SetHighThreshold
                                     25 	.globl _ADC1_SetLowThreshold
                                     26 	.globl _ADC1_GetBufferValue
                                     27 	.globl _ADC1_GetAWDChannelStatus
                                     28 	.globl _ADC1_GetFlagStatus
                                     29 	.globl _ADC1_ClearFlag
                                     30 	.globl _ADC1_GetITStatus
                                     31 	.globl _ADC1_ClearITPendingBit
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
                                     70 ; genLabel
                                     71 ;	-----------------------------------------
                                     72 ;	 function ADC1_DeInit
                                     73 ;	-----------------------------------------
                                     74 ;	Register assignment is optimal.
                                     75 ;	Stack space usage: 0 bytes.
      00808F                         76 _ADC1_DeInit:
                                     77 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
                                     78 ; genPointerSet
      00808F 35 00 54 00      [ 1]   79 	mov	0x5400+0, #0x00
                                     80 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
                                     81 ; genPointerSet
      008093 35 00 54 01      [ 1]   82 	mov	0x5401+0, #0x00
                                     83 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
                                     84 ; genPointerSet
      008097 35 00 54 02      [ 1]   85 	mov	0x5402+0, #0x00
                                     86 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
                                     87 ; genPointerSet
      00809B 35 00 54 03      [ 1]   88 	mov	0x5403+0, #0x00
                                     89 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
                                     90 ; genPointerSet
      00809F 35 00 54 06      [ 1]   91 	mov	0x5406+0, #0x00
                                     92 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
                                     93 ; genPointerSet
      0080A3 35 00 54 07      [ 1]   94 	mov	0x5407+0, #0x00
                                     95 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
                                     96 ; genPointerSet
      0080A7 35 FF 54 08      [ 1]   97 	mov	0x5408+0, #0xff
                                     98 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
                                     99 ; genPointerSet
      0080AB 35 03 54 09      [ 1]  100 	mov	0x5409+0, #0x03
                                    101 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
                                    102 ; genPointerSet
      0080AF 35 00 54 0A      [ 1]  103 	mov	0x540a+0, #0x00
                                    104 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
                                    105 ; genPointerSet
      0080B3 35 00 54 0B      [ 1]  106 	mov	0x540b+0, #0x00
                                    107 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
                                    108 ; genPointerSet
      0080B7 35 00 54 0E      [ 1]  109 	mov	0x540e+0, #0x00
                                    110 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
                                    111 ; genPointerSet
      0080BB 35 00 54 0F      [ 1]  112 	mov	0x540f+0, #0x00
                                    113 ; genLabel
      0080BF                        114 00101$:
                                    115 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 66: }
                                    116 ; genEndFunction
      0080BF 81               [ 4]  117 	ret
                                    118 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    119 ; genLabel
                                    120 ;	-----------------------------------------
                                    121 ;	 function ADC1_Init
                                    122 ;	-----------------------------------------
                                    123 ;	Register assignment is optimal.
                                    124 ;	Stack space usage: 0 bytes.
      0080C0                        125 _ADC1_Init:
                                    126 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 103: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
                                    127 ; genIPush
      0080C0 7B 08            [ 1]  128 	ld	a, (0x08, sp)
      0080C2 88               [ 1]  129 	push	a
                                    130 ; genIPush
      0080C3 7B 05            [ 1]  131 	ld	a, (0x05, sp)
      0080C5 88               [ 1]  132 	push	a
                                    133 ; genIPush
      0080C6 7B 05            [ 1]  134 	ld	a, (0x05, sp)
      0080C8 88               [ 1]  135 	push	a
                                    136 ; genCall
      0080C9 CD 82 00         [ 4]  137 	call	_ADC1_ConversionConfig
      0080CC 5B 03            [ 2]  138 	addw	sp, #3
                                    139 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 105: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
                                    140 ; genIPush
      0080CE 7B 05            [ 1]  141 	ld	a, (0x05, sp)
      0080D0 88               [ 1]  142 	push	a
                                    143 ; genCall
      0080D1 CD 81 5C         [ 4]  144 	call	_ADC1_PrescalerConfig
      0080D4 84               [ 1]  145 	pop	a
                                    146 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 110: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
                                    147 ; genIPush
      0080D5 7B 07            [ 1]  148 	ld	a, (0x07, sp)
      0080D7 88               [ 1]  149 	push	a
                                    150 ; genIPush
      0080D8 7B 07            [ 1]  151 	ld	a, (0x07, sp)
      0080DA 88               [ 1]  152 	push	a
                                    153 ; genCall
      0080DB CD 82 3E         [ 4]  154 	call	_ADC1_ExternalTriggerConfig
      0080DE 85               [ 2]  155 	popw	x
                                    156 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 115: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
                                    157 ; genIPush
      0080DF 7B 0A            [ 1]  158 	ld	a, (0x0a, sp)
      0080E1 88               [ 1]  159 	push	a
                                    160 ; genIPush
      0080E2 7B 0A            [ 1]  161 	ld	a, (0x0a, sp)
      0080E4 88               [ 1]  162 	push	a
                                    163 ; genCall
      0080E5 CD 81 6D         [ 4]  164 	call	_ADC1_SchmittTriggerConfig
      0080E8 85               [ 2]  165 	popw	x
                                    166 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 118: ADC1->CR1 |= ADC1_CR1_ADON;
                                    167 ; genPointerGet
      0080E9 C6 54 01         [ 1]  168 	ld	a, 0x5401
                                    169 ; genOr
      0080EC AA 01            [ 1]  170 	or	a, #0x01
                                    171 ; genPointerSet
      0080EE C7 54 01         [ 1]  172 	ld	0x5401, a
                                    173 ; genLabel
      0080F1                        174 00101$:
                                    175 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 119: }
                                    176 ; genEndFunction
      0080F1 81               [ 4]  177 	ret
                                    178 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 126: void ADC1_Cmd(FunctionalState NewState)
                                    179 ; genLabel
                                    180 ;	-----------------------------------------
                                    181 ;	 function ADC1_Cmd
                                    182 ;	-----------------------------------------
                                    183 ;	Register assignment is optimal.
                                    184 ;	Stack space usage: 0 bytes.
      0080F2                        185 _ADC1_Cmd:
                                    186 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
                                    187 ; genPointerGet
      0080F2 C6 54 01         [ 1]  188 	ld	a, 0x5401
                                    189 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 131: if (NewState != DISABLE)
                                    190 ; genIfx
      0080F5 0D 03            [ 1]  191 	tnz	(0x03, sp)
      0080F7 26 03            [ 1]  192 	jrne	00111$
      0080F9 CC 81 04         [ 2]  193 	jp	00102$
      0080FC                        194 00111$:
                                    195 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
                                    196 ; genOr
      0080FC AA 01            [ 1]  197 	or	a, #0x01
                                    198 ; genPointerSet
      0080FE C7 54 01         [ 1]  199 	ld	0x5401, a
                                    200 ; genGoto
      008101 CC 81 09         [ 2]  201 	jp	00104$
                                    202 ; genLabel
      008104                        203 00102$:
                                    204 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 137: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
                                    205 ; genAnd
      008104 A4 FE            [ 1]  206 	and	a, #0xfe
                                    207 ; genPointerSet
      008106 C7 54 01         [ 1]  208 	ld	0x5401, a
                                    209 ; genLabel
      008109                        210 00104$:
                                    211 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 139: }
                                    212 ; genEndFunction
      008109 81               [ 4]  213 	ret
                                    214 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 146: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    215 ; genLabel
                                    216 ;	-----------------------------------------
                                    217 ;	 function ADC1_ScanModeCmd
                                    218 ;	-----------------------------------------
                                    219 ;	Register assignment is optimal.
                                    220 ;	Stack space usage: 0 bytes.
      00810A                        221 _ADC1_ScanModeCmd:
                                    222 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
                                    223 ; genPointerGet
      00810A C6 54 02         [ 1]  224 	ld	a, 0x5402
                                    225 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 151: if (NewState != DISABLE)
                                    226 ; genIfx
      00810D 0D 03            [ 1]  227 	tnz	(0x03, sp)
      00810F 26 03            [ 1]  228 	jrne	00111$
      008111 CC 81 1C         [ 2]  229 	jp	00102$
      008114                        230 00111$:
                                    231 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
                                    232 ; genOr
      008114 AA 02            [ 1]  233 	or	a, #0x02
                                    234 ; genPointerSet
      008116 C7 54 02         [ 1]  235 	ld	0x5402, a
                                    236 ; genGoto
      008119 CC 81 21         [ 2]  237 	jp	00104$
                                    238 ; genLabel
      00811C                        239 00102$:
                                    240 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 157: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
                                    241 ; genAnd
      00811C A4 FD            [ 1]  242 	and	a, #0xfd
                                    243 ; genPointerSet
      00811E C7 54 02         [ 1]  244 	ld	0x5402, a
                                    245 ; genLabel
      008121                        246 00104$:
                                    247 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 159: }
                                    248 ; genEndFunction
      008121 81               [ 4]  249 	ret
                                    250 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 166: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    251 ; genLabel
                                    252 ;	-----------------------------------------
                                    253 ;	 function ADC1_DataBufferCmd
                                    254 ;	-----------------------------------------
                                    255 ;	Register assignment is optimal.
                                    256 ;	Stack space usage: 0 bytes.
      008122                        257 _ADC1_DataBufferCmd:
                                    258 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
                                    259 ; genPointerGet
      008122 C6 54 03         [ 1]  260 	ld	a, 0x5403
                                    261 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 171: if (NewState != DISABLE)
                                    262 ; genIfx
      008125 0D 03            [ 1]  263 	tnz	(0x03, sp)
      008127 26 03            [ 1]  264 	jrne	00111$
      008129 CC 81 34         [ 2]  265 	jp	00102$
      00812C                        266 00111$:
                                    267 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
                                    268 ; genOr
      00812C AA 80            [ 1]  269 	or	a, #0x80
                                    270 ; genPointerSet
      00812E C7 54 03         [ 1]  271 	ld	0x5403, a
                                    272 ; genGoto
      008131 CC 81 39         [ 2]  273 	jp	00104$
                                    274 ; genLabel
      008134                        275 00102$:
                                    276 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 177: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
                                    277 ; genAnd
      008134 A4 7F            [ 1]  278 	and	a, #0x7f
                                    279 ; genPointerSet
      008136 C7 54 03         [ 1]  280 	ld	0x5403, a
                                    281 ; genLabel
      008139                        282 00104$:
                                    283 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 179: }
                                    284 ; genEndFunction
      008139 81               [ 4]  285 	ret
                                    286 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 190: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    287 ; genLabel
                                    288 ;	-----------------------------------------
                                    289 ;	 function ADC1_ITConfig
                                    290 ;	-----------------------------------------
                                    291 ;	Register assignment might be sub-optimal.
                                    292 ;	Stack space usage: 1 bytes.
      00813A                        293 _ADC1_ITConfig:
      00813A 88               [ 1]  294 	push	a
                                    295 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
                                    296 ; genPointerGet
      00813B C6 54 00         [ 1]  297 	ld	a, 0x5400
      00813E 6B 01            [ 1]  298 	ld	(0x01, sp), a
                                    299 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 196: if (NewState != DISABLE)
                                    300 ; genIfx
      008140 0D 06            [ 1]  301 	tnz	(0x06, sp)
      008142 26 03            [ 1]  302 	jrne	00111$
      008144 CC 81 51         [ 2]  303 	jp	00102$
      008147                        304 00111$:
                                    305 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
                                    306 ; genCast
                                    307 ; genAssign
      008147 7B 05            [ 1]  308 	ld	a, (0x05, sp)
                                    309 ; genOr
      008149 1A 01            [ 1]  310 	or	a, (0x01, sp)
                                    311 ; genPointerSet
      00814B C7 54 00         [ 1]  312 	ld	0x5400, a
                                    313 ; genGoto
      00814E CC 81 5A         [ 2]  314 	jp	00104$
                                    315 ; genLabel
      008151                        316 00102$:
                                    317 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 204: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
                                    318 ; genCpl
      008151 1E 04            [ 2]  319 	ldw	x, (0x04, sp)
      008153 53               [ 2]  320 	cplw	x
                                    321 ; genCast
                                    322 ; genAssign
      008154 9F               [ 1]  323 	ld	a, xl
                                    324 ; genAnd
      008155 14 01            [ 1]  325 	and	a, (0x01, sp)
                                    326 ; genPointerSet
      008157 C7 54 00         [ 1]  327 	ld	0x5400, a
                                    328 ; genLabel
      00815A                        329 00104$:
                                    330 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 206: }
                                    331 ; genEndFunction
      00815A 84               [ 1]  332 	pop	a
      00815B 81               [ 4]  333 	ret
                                    334 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 214: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    335 ; genLabel
                                    336 ;	-----------------------------------------
                                    337 ;	 function ADC1_PrescalerConfig
                                    338 ;	-----------------------------------------
                                    339 ;	Register assignment is optimal.
                                    340 ;	Stack space usage: 0 bytes.
      00815C                        341 _ADC1_PrescalerConfig:
                                    342 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 220: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
                                    343 ; genPointerGet
      00815C C6 54 01         [ 1]  344 	ld	a, 0x5401
                                    345 ; genAnd
      00815F A4 8F            [ 1]  346 	and	a, #0x8f
                                    347 ; genPointerSet
      008161 C7 54 01         [ 1]  348 	ld	0x5401, a
                                    349 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 222: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
                                    350 ; genPointerGet
      008164 C6 54 01         [ 1]  351 	ld	a, 0x5401
                                    352 ; genOr
      008167 1A 03            [ 1]  353 	or	a, (0x03, sp)
                                    354 ; genPointerSet
      008169 C7 54 01         [ 1]  355 	ld	0x5401, a
                                    356 ; genLabel
      00816C                        357 00101$:
                                    358 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 223: }
                                    359 ; genEndFunction
      00816C 81               [ 4]  360 	ret
                                    361 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 233: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    362 ; genLabel
                                    363 ;	-----------------------------------------
                                    364 ;	 function ADC1_SchmittTriggerConfig
                                    365 ;	-----------------------------------------
                                    366 ;	Register assignment is optimal.
                                    367 ;	Stack space usage: 2 bytes.
      00816D                        368 _ADC1_SchmittTriggerConfig:
      00816D 89               [ 2]  369 	pushw	x
                                    370 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 239: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
                                    371 ; genCmpEQorNE
      00816E 7B 05            [ 1]  372 	ld	a, (0x05, sp)
      008170 4C               [ 1]  373 	inc	a
      008171 26 03            [ 1]  374 	jrne	00144$
      008173 CC 81 79         [ 2]  375 	jp	00145$
      008176                        376 00144$:
      008176 CC 81 9F         [ 2]  377 	jp	00114$
      008179                        378 00145$:
                                    379 ; skipping generated iCode
                                    380 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
                                    381 ; genPointerGet
                                    382 ; Dummy read
      008179 C6 54 07         [ 1]  383 	ld	a, 0x5407
                                    384 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 241: if (NewState != DISABLE)
                                    385 ; genIfx
      00817C 0D 06            [ 1]  386 	tnz	(0x06, sp)
      00817E 26 03            [ 1]  387 	jrne	00146$
      008180 CC 81 91         [ 2]  388 	jp	00102$
      008183                        389 00146$:
                                    390 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
                                    391 ; genPointerSet
      008183 35 00 54 07      [ 1]  392 	mov	0x5407+0, #0x00
                                    393 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
                                    394 ; genPointerGet
                                    395 ; Dummy read
      008187 C6 54 06         [ 1]  396 	ld	a, 0x5406
                                    397 ; genPointerSet
      00818A 35 00 54 06      [ 1]  398 	mov	0x5406+0, #0x00
                                    399 ; genGoto
      00818E CC 81 FE         [ 2]  400 	jp	00116$
                                    401 ; genLabel
      008191                        402 00102$:
                                    403 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 248: ADC1->TDRL |= (uint8_t)0xFF;
                                    404 ; genPointerSet
      008191 35 FF 54 07      [ 1]  405 	mov	0x5407+0, #0xff
                                    406 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 249: ADC1->TDRH |= (uint8_t)0xFF;
                                    407 ; genPointerGet
                                    408 ; Dummy read
      008195 C6 54 06         [ 1]  409 	ld	a, 0x5406
                                    410 ; genPointerSet
      008198 35 FF 54 06      [ 1]  411 	mov	0x5406+0, #0xff
                                    412 ; genGoto
      00819C CC 81 FE         [ 2]  413 	jp	00116$
                                    414 ; genLabel
      00819F                        415 00114$:
                                    416 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 252: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
                                    417 ; genCmp
                                    418 ; genCmpTop
      00819F 7B 05            [ 1]  419 	ld	a, (0x05, sp)
      0081A1 A1 08            [ 1]  420 	cp	a, #0x08
      0081A3 25 03            [ 1]  421 	jrc	00147$
      0081A5 CC 81 D2         [ 2]  422 	jp	00111$
      0081A8                        423 00147$:
                                    424 ; skipping generated iCode
                                    425 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
                                    426 ; genPointerGet
      0081A8 C6 54 07         [ 1]  427 	ld	a, 0x5407
      0081AB 6B 02            [ 1]  428 	ld	(0x02, sp), a
                                    429 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
                                    430 ; genLeftShift
      0081AD A6 01            [ 1]  431 	ld	a, #0x01
      0081AF 88               [ 1]  432 	push	a
      0081B0 7B 06            [ 1]  433 	ld	a, (0x06, sp)
      0081B2 27 05            [ 1]  434 	jreq	00149$
      0081B4                        435 00148$:
      0081B4 08 01            [ 1]  436 	sll	(1, sp)
      0081B6 4A               [ 1]  437 	dec	a
      0081B7 26 FB            [ 1]  438 	jrne	00148$
      0081B9                        439 00149$:
      0081B9 84               [ 1]  440 	pop	a
                                    441 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 254: if (NewState != DISABLE)
                                    442 ; genIfx
      0081BA 0D 06            [ 1]  443 	tnz	(0x06, sp)
      0081BC 26 03            [ 1]  444 	jrne	00150$
      0081BE CC 81 CA         [ 2]  445 	jp	00105$
      0081C1                        446 00150$:
                                    447 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
                                    448 ; genCpl
      0081C1 43               [ 1]  449 	cpl	a
                                    450 ; genAnd
      0081C2 14 02            [ 1]  451 	and	a, (0x02, sp)
                                    452 ; genPointerSet
      0081C4 C7 54 07         [ 1]  453 	ld	0x5407, a
                                    454 ; genGoto
      0081C7 CC 81 FE         [ 2]  455 	jp	00116$
                                    456 ; genLabel
      0081CA                        457 00105$:
                                    458 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 260: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
                                    459 ; genOr
      0081CA 1A 02            [ 1]  460 	or	a, (0x02, sp)
                                    461 ; genPointerSet
      0081CC C7 54 07         [ 1]  462 	ld	0x5407, a
                                    463 ; genGoto
      0081CF CC 81 FE         [ 2]  464 	jp	00116$
                                    465 ; genLabel
      0081D2                        466 00111$:
                                    467 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
                                    468 ; genPointerGet
      0081D2 C6 54 06         [ 1]  469 	ld	a, 0x5406
      0081D5 6B 01            [ 1]  470 	ld	(0x01, sp), a
                                    471 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
                                    472 ; genMinus
      0081D7 7B 05            [ 1]  473 	ld	a, (0x05, sp)
      0081D9 A0 08            [ 1]  474 	sub	a, #0x08
      0081DB 97               [ 1]  475 	ld	xl, a
                                    476 ; genLeftShift
      0081DC A6 01            [ 1]  477 	ld	a, #0x01
      0081DE 88               [ 1]  478 	push	a
      0081DF 9F               [ 1]  479 	ld	a, xl
      0081E0 4D               [ 1]  480 	tnz	a
      0081E1 27 05            [ 1]  481 	jreq	00152$
      0081E3                        482 00151$:
      0081E3 08 01            [ 1]  483 	sll	(1, sp)
      0081E5 4A               [ 1]  484 	dec	a
      0081E6 26 FB            [ 1]  485 	jrne	00151$
      0081E8                        486 00152$:
      0081E8 84               [ 1]  487 	pop	a
                                    488 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 265: if (NewState != DISABLE)
                                    489 ; genIfx
      0081E9 0D 06            [ 1]  490 	tnz	(0x06, sp)
      0081EB 26 03            [ 1]  491 	jrne	00153$
      0081ED CC 81 F9         [ 2]  492 	jp	00108$
      0081F0                        493 00153$:
                                    494 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
                                    495 ; genCpl
      0081F0 43               [ 1]  496 	cpl	a
                                    497 ; genAnd
      0081F1 14 01            [ 1]  498 	and	a, (0x01, sp)
                                    499 ; genPointerSet
      0081F3 C7 54 06         [ 1]  500 	ld	0x5406, a
                                    501 ; genGoto
      0081F6 CC 81 FE         [ 2]  502 	jp	00116$
                                    503 ; genLabel
      0081F9                        504 00108$:
                                    505 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 271: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
                                    506 ; genOr
      0081F9 1A 01            [ 1]  507 	or	a, (0x01, sp)
                                    508 ; genPointerSet
      0081FB C7 54 06         [ 1]  509 	ld	0x5406, a
                                    510 ; genLabel
      0081FE                        511 00116$:
                                    512 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 274: }
                                    513 ; genEndFunction
      0081FE 85               [ 2]  514 	popw	x
      0081FF 81               [ 4]  515 	ret
                                    516 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 286: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    517 ; genLabel
                                    518 ;	-----------------------------------------
                                    519 ;	 function ADC1_ConversionConfig
                                    520 ;	-----------------------------------------
                                    521 ;	Register assignment is optimal.
                                    522 ;	Stack space usage: 0 bytes.
      008200                        523 _ADC1_ConversionConfig:
                                    524 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 294: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
                                    525 ; genPointerGet
      008200 C6 54 02         [ 1]  526 	ld	a, 0x5402
                                    527 ; genAnd
      008203 A4 F7            [ 1]  528 	and	a, #0xf7
                                    529 ; genPointerSet
      008205 C7 54 02         [ 1]  530 	ld	0x5402, a
                                    531 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 296: ADC1->CR2 |= (uint8_t)(ADC1_Align);
                                    532 ; genPointerGet
      008208 C6 54 02         [ 1]  533 	ld	a, 0x5402
                                    534 ; genOr
      00820B 1A 05            [ 1]  535 	or	a, (0x05, sp)
                                    536 ; genPointerSet
      00820D C7 54 02         [ 1]  537 	ld	0x5402, a
                                    538 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
                                    539 ; genPointerGet
      008210 C6 54 01         [ 1]  540 	ld	a, 0x5401
                                    541 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 298: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
                                    542 ; genCmpEQorNE
      008213 88               [ 1]  543 	push	a
      008214 7B 04            [ 1]  544 	ld	a, (0x04, sp)
      008216 4A               [ 1]  545 	dec	a
      008217 84               [ 1]  546 	pop	a
      008218 26 03            [ 1]  547 	jrne	00112$
      00821A CC 82 20         [ 2]  548 	jp	00113$
      00821D                        549 00112$:
      00821D CC 82 28         [ 2]  550 	jp	00102$
      008220                        551 00113$:
                                    552 ; skipping generated iCode
                                    553 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
                                    554 ; genOr
      008220 AA 02            [ 1]  555 	or	a, #0x02
                                    556 ; genPointerSet
      008222 C7 54 01         [ 1]  557 	ld	0x5401, a
                                    558 ; genGoto
      008225 CC 82 2D         [ 2]  559 	jp	00103$
                                    560 ; genLabel
      008228                        561 00102$:
                                    562 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 306: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
                                    563 ; genAnd
      008228 A4 FD            [ 1]  564 	and	a, #0xfd
                                    565 ; genPointerSet
      00822A C7 54 01         [ 1]  566 	ld	0x5401, a
                                    567 ; genLabel
      00822D                        568 00103$:
                                    569 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 310: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
                                    570 ; genPointerGet
      00822D C6 54 00         [ 1]  571 	ld	a, 0x5400
                                    572 ; genAnd
      008230 A4 F0            [ 1]  573 	and	a, #0xf0
                                    574 ; genPointerSet
      008232 C7 54 00         [ 1]  575 	ld	0x5400, a
                                    576 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 312: ADC1->CSR |= (uint8_t)(ADC1_Channel);
                                    577 ; genPointerGet
      008235 C6 54 00         [ 1]  578 	ld	a, 0x5400
                                    579 ; genOr
      008238 1A 04            [ 1]  580 	or	a, (0x04, sp)
                                    581 ; genPointerSet
      00823A C7 54 00         [ 1]  582 	ld	0x5400, a
                                    583 ; genLabel
      00823D                        584 00104$:
                                    585 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 313: }
                                    586 ; genEndFunction
      00823D 81               [ 4]  587 	ret
                                    588 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 325: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    589 ; genLabel
                                    590 ;	-----------------------------------------
                                    591 ;	 function ADC1_ExternalTriggerConfig
                                    592 ;	-----------------------------------------
                                    593 ;	Register assignment is optimal.
                                    594 ;	Stack space usage: 0 bytes.
      00823E                        595 _ADC1_ExternalTriggerConfig:
                                    596 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 332: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
                                    597 ; genPointerGet
      00823E C6 54 02         [ 1]  598 	ld	a, 0x5402
                                    599 ; genAnd
      008241 A4 CF            [ 1]  600 	and	a, #0xcf
                                    601 ; genPointerSet
      008243 C7 54 02         [ 1]  602 	ld	0x5402, a
                                    603 ; genPointerGet
      008246 C6 54 02         [ 1]  604 	ld	a, 0x5402
                                    605 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 334: if (NewState != DISABLE)
                                    606 ; genIfx
      008249 0D 04            [ 1]  607 	tnz	(0x04, sp)
      00824B 26 03            [ 1]  608 	jrne	00111$
      00824D CC 82 58         [ 2]  609 	jp	00102$
      008250                        610 00111$:
                                    611 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 337: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
                                    612 ; genOr
      008250 AA 40            [ 1]  613 	or	a, #0x40
                                    614 ; genPointerSet
      008252 C7 54 02         [ 1]  615 	ld	0x5402, a
                                    616 ; genGoto
      008255 CC 82 5D         [ 2]  617 	jp	00103$
                                    618 ; genLabel
      008258                        619 00102$:
                                    620 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 342: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
                                    621 ; genAnd
      008258 A4 BF            [ 1]  622 	and	a, #0xbf
                                    623 ; genPointerSet
      00825A C7 54 02         [ 1]  624 	ld	0x5402, a
                                    625 ; genLabel
      00825D                        626 00103$:
                                    627 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 346: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
                                    628 ; genPointerGet
      00825D C6 54 02         [ 1]  629 	ld	a, 0x5402
                                    630 ; genOr
      008260 1A 03            [ 1]  631 	or	a, (0x03, sp)
                                    632 ; genPointerSet
      008262 C7 54 02         [ 1]  633 	ld	0x5402, a
                                    634 ; genLabel
      008265                        635 00104$:
                                    636 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 347: }
                                    637 ; genEndFunction
      008265 81               [ 4]  638 	ret
                                    639 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 358: void ADC1_StartConversion(void)
                                    640 ; genLabel
                                    641 ;	-----------------------------------------
                                    642 ;	 function ADC1_StartConversion
                                    643 ;	-----------------------------------------
                                    644 ;	Register assignment is optimal.
                                    645 ;	Stack space usage: 0 bytes.
      008266                        646 _ADC1_StartConversion:
                                    647 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 360: ADC1->CR1 |= ADC1_CR1_ADON;
                                    648 ; genPointerGet
      008266 C6 54 01         [ 1]  649 	ld	a, 0x5401
                                    650 ; genOr
      008269 AA 01            [ 1]  651 	or	a, #0x01
                                    652 ; genPointerSet
      00826B C7 54 01         [ 1]  653 	ld	0x5401, a
                                    654 ; genLabel
      00826E                        655 00101$:
                                    656 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 361: }
                                    657 ; genEndFunction
      00826E 81               [ 4]  658 	ret
                                    659 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 370: uint16_t ADC1_GetConversionValue(void)
                                    660 ; genLabel
                                    661 ;	-----------------------------------------
                                    662 ;	 function ADC1_GetConversionValue
                                    663 ;	-----------------------------------------
                                    664 ;	Register assignment might be sub-optimal.
                                    665 ;	Stack space usage: 8 bytes.
      00826F                        666 _ADC1_GetConversionValue:
      00826F 52 08            [ 2]  667 	sub	sp, #8
                                    668 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 375: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
                                    669 ; genPointerGet
      008271 C6 54 02         [ 1]  670 	ld	a, 0x5402
                                    671 ; genAnd
      008274 A5 08            [ 1]  672 	bcp	a, #0x08
      008276 26 03            [ 1]  673 	jrne	00111$
      008278 CC 82 94         [ 2]  674 	jp	00102$
      00827B                        675 00111$:
                                    676 ; skipping generated iCode
                                    677 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 378: templ = ADC1->DRL;
                                    678 ; genPointerGet
      00827B C6 54 05         [ 1]  679 	ld	a, 0x5405
      00827E 97               [ 1]  680 	ld	xl, a
                                    681 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 380: temph = ADC1->DRH;
                                    682 ; genPointerGet
      00827F C6 54 04         [ 1]  683 	ld	a, 0x5404
                                    684 ; genCast
                                    685 ; genAssign
      008282 90 5F            [ 1]  686 	clrw	y
                                    687 ; genAssign
                                    688 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 382: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
                                    689 ; genLeftShiftLiteral
      008284 0F 08            [ 1]  690 	clr	(0x08, sp)
                                    691 ; genCast
                                    692 ; genAssign
      008286 0F 05            [ 1]  693 	clr	(0x05, sp)
                                    694 ; genOr
      008288 1A 05            [ 1]  695 	or	a, (0x05, sp)
      00828A 95               [ 1]  696 	ld	xh, a
      00828B 9F               [ 1]  697 	ld	a, xl
      00828C 1A 08            [ 1]  698 	or	a, (0x08, sp)
      00828E 97               [ 1]  699 	ld	xl, a
                                    700 ; genAssign
      00828F 1F 03            [ 2]  701 	ldw	(0x03, sp), x
                                    702 ; genGoto
      008291 CC 82 B2         [ 2]  703 	jp	00103$
                                    704 ; genLabel
      008294                        705 00102$:
                                    706 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 387: temph = ADC1->DRH;
                                    707 ; genPointerGet
      008294 C6 54 04         [ 1]  708 	ld	a, 0x5404
                                    709 ; genCast
                                    710 ; genAssign
      008297 5F               [ 1]  711 	clrw	x
      008298 97               [ 1]  712 	ld	xl, a
                                    713 ; genAssign
      008299 51               [ 1]  714 	exgw	x, y
                                    715 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 389: templ = ADC1->DRL;
                                    716 ; genPointerGet
      00829A C6 54 05         [ 1]  717 	ld	a, 0x5405
                                    718 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 391: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
                                    719 ; genCast
                                    720 ; genAssign
      00829D 5F               [ 1]  721 	clrw	x
      00829E 97               [ 1]  722 	ld	xl, a
                                    723 ; genLeftShiftLiteral
      00829F 58               [ 2]  724 	sllw	x
      0082A0 58               [ 2]  725 	sllw	x
      0082A1 58               [ 2]  726 	sllw	x
      0082A2 58               [ 2]  727 	sllw	x
      0082A3 58               [ 2]  728 	sllw	x
      0082A4 58               [ 2]  729 	sllw	x
      0082A5 1F 01            [ 2]  730 	ldw	(0x01, sp), x
                                    731 ; genLeftShiftLiteral
      0082A7 4F               [ 1]  732 	clr	a
                                    733 ; genOr
      0082A8 1A 02            [ 1]  734 	or	a, (0x02, sp)
      0082AA 97               [ 1]  735 	ld	xl, a
      0082AB 90 9F            [ 1]  736 	ld	a, yl
      0082AD 1A 01            [ 1]  737 	or	a, (0x01, sp)
      0082AF 95               [ 1]  738 	ld	xh, a
                                    739 ; genAssign
      0082B0 1F 03            [ 2]  740 	ldw	(0x03, sp), x
                                    741 ; genLabel
      0082B2                        742 00103$:
                                    743 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 394: return ((uint16_t)temph);
                                    744 ; genReturn
      0082B2 1E 03            [ 2]  745 	ldw	x, (0x03, sp)
                                    746 ; genLabel
      0082B4                        747 00104$:
                                    748 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 395: }
                                    749 ; genEndFunction
      0082B4 5B 08            [ 2]  750 	addw	sp, #8
      0082B6 81               [ 4]  751 	ret
                                    752 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 405: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    753 ; genLabel
                                    754 ;	-----------------------------------------
                                    755 ;	 function ADC1_AWDChannelConfig
                                    756 ;	-----------------------------------------
                                    757 ;	Register assignment is optimal.
                                    758 ;	Stack space usage: 2 bytes.
      0082B7                        759 _ADC1_AWDChannelConfig:
      0082B7 89               [ 2]  760 	pushw	x
                                    761 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 411: if (Channel < (uint8_t)8)
                                    762 ; genCmp
                                    763 ; genCmpTop
      0082B8 7B 05            [ 1]  764 	ld	a, (0x05, sp)
      0082BA A1 08            [ 1]  765 	cp	a, #0x08
      0082BC 25 03            [ 1]  766 	jrc	00127$
      0082BE CC 82 EB         [ 2]  767 	jp	00108$
      0082C1                        768 00127$:
                                    769 ; skipping generated iCode
                                    770 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
                                    771 ; genPointerGet
      0082C1 C6 54 0F         [ 1]  772 	ld	a, 0x540f
      0082C4 6B 02            [ 1]  773 	ld	(0x02, sp), a
                                    774 ; genLeftShift
      0082C6 A6 01            [ 1]  775 	ld	a, #0x01
      0082C8 88               [ 1]  776 	push	a
      0082C9 7B 06            [ 1]  777 	ld	a, (0x06, sp)
      0082CB 27 05            [ 1]  778 	jreq	00129$
      0082CD                        779 00128$:
      0082CD 08 01            [ 1]  780 	sll	(1, sp)
      0082CF 4A               [ 1]  781 	dec	a
      0082D0 26 FB            [ 1]  782 	jrne	00128$
      0082D2                        783 00129$:
      0082D2 84               [ 1]  784 	pop	a
                                    785 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 413: if (NewState != DISABLE)
                                    786 ; genIfx
      0082D3 0D 06            [ 1]  787 	tnz	(0x06, sp)
      0082D5 26 03            [ 1]  788 	jrne	00130$
      0082D7 CC 82 E2         [ 2]  789 	jp	00102$
      0082DA                        790 00130$:
                                    791 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
                                    792 ; genOr
      0082DA 1A 02            [ 1]  793 	or	a, (0x02, sp)
                                    794 ; genPointerSet
      0082DC C7 54 0F         [ 1]  795 	ld	0x540f, a
                                    796 ; genGoto
      0082DF CC 83 17         [ 2]  797 	jp	00110$
                                    798 ; genLabel
      0082E2                        799 00102$:
                                    800 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 419: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
                                    801 ; genCpl
      0082E2 43               [ 1]  802 	cpl	a
                                    803 ; genAnd
      0082E3 14 02            [ 1]  804 	and	a, (0x02, sp)
                                    805 ; genPointerSet
      0082E5 C7 54 0F         [ 1]  806 	ld	0x540f, a
                                    807 ; genGoto
      0082E8 CC 83 17         [ 2]  808 	jp	00110$
                                    809 ; genLabel
      0082EB                        810 00108$:
                                    811 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
                                    812 ; genPointerGet
      0082EB C6 54 0E         [ 1]  813 	ld	a, 0x540e
      0082EE 6B 01            [ 1]  814 	ld	(0x01, sp), a
                                    815 ; genMinus
      0082F0 7B 05            [ 1]  816 	ld	a, (0x05, sp)
      0082F2 A0 08            [ 1]  817 	sub	a, #0x08
      0082F4 97               [ 1]  818 	ld	xl, a
                                    819 ; genLeftShift
      0082F5 A6 01            [ 1]  820 	ld	a, #0x01
      0082F7 88               [ 1]  821 	push	a
      0082F8 9F               [ 1]  822 	ld	a, xl
      0082F9 4D               [ 1]  823 	tnz	a
      0082FA 27 05            [ 1]  824 	jreq	00132$
      0082FC                        825 00131$:
      0082FC 08 01            [ 1]  826 	sll	(1, sp)
      0082FE 4A               [ 1]  827 	dec	a
      0082FF 26 FB            [ 1]  828 	jrne	00131$
      008301                        829 00132$:
      008301 84               [ 1]  830 	pop	a
                                    831 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 424: if (NewState != DISABLE)
                                    832 ; genIfx
      008302 0D 06            [ 1]  833 	tnz	(0x06, sp)
      008304 26 03            [ 1]  834 	jrne	00133$
      008306 CC 83 11         [ 2]  835 	jp	00105$
      008309                        836 00133$:
                                    837 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
                                    838 ; genOr
      008309 1A 01            [ 1]  839 	or	a, (0x01, sp)
                                    840 ; genPointerSet
      00830B C7 54 0E         [ 1]  841 	ld	0x540e, a
                                    842 ; genGoto
      00830E CC 83 17         [ 2]  843 	jp	00110$
                                    844 ; genLabel
      008311                        845 00105$:
                                    846 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 430: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
                                    847 ; genCpl
      008311 43               [ 1]  848 	cpl	a
                                    849 ; genAnd
      008312 14 01            [ 1]  850 	and	a, (0x01, sp)
                                    851 ; genPointerSet
      008314 C7 54 0E         [ 1]  852 	ld	0x540e, a
                                    853 ; genLabel
      008317                        854 00110$:
                                    855 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 433: }
                                    856 ; genEndFunction
      008317 85               [ 2]  857 	popw	x
      008318 81               [ 4]  858 	ret
                                    859 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 441: void ADC1_SetHighThreshold(uint16_t Threshold)
                                    860 ; genLabel
                                    861 ;	-----------------------------------------
                                    862 ;	 function ADC1_SetHighThreshold
                                    863 ;	-----------------------------------------
                                    864 ;	Register assignment is optimal.
                                    865 ;	Stack space usage: 0 bytes.
      008319                        866 _ADC1_SetHighThreshold:
                                    867 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 443: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
                                    868 ; genRightShiftLiteral
      008319 1E 03            [ 2]  869 	ldw	x, (0x03, sp)
      00831B 54               [ 2]  870 	srlw	x
      00831C 54               [ 2]  871 	srlw	x
                                    872 ; genCast
                                    873 ; genAssign
      00831D 9F               [ 1]  874 	ld	a, xl
                                    875 ; genPointerSet
      00831E C7 54 08         [ 1]  876 	ld	0x5408, a
                                    877 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 444: ADC1->HTRL = (uint8_t)Threshold;
                                    878 ; genCast
                                    879 ; genAssign
      008321 7B 04            [ 1]  880 	ld	a, (0x04, sp)
                                    881 ; genPointerSet
      008323 C7 54 09         [ 1]  882 	ld	0x5409, a
                                    883 ; genLabel
      008326                        884 00101$:
                                    885 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 445: }
                                    886 ; genEndFunction
      008326 81               [ 4]  887 	ret
                                    888 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 453: void ADC1_SetLowThreshold(uint16_t Threshold)
                                    889 ; genLabel
                                    890 ;	-----------------------------------------
                                    891 ;	 function ADC1_SetLowThreshold
                                    892 ;	-----------------------------------------
                                    893 ;	Register assignment is optimal.
                                    894 ;	Stack space usage: 0 bytes.
      008327                        895 _ADC1_SetLowThreshold:
                                    896 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 455: ADC1->LTRL = (uint8_t)Threshold;
                                    897 ; genCast
                                    898 ; genAssign
      008327 7B 04            [ 1]  899 	ld	a, (0x04, sp)
                                    900 ; genPointerSet
      008329 C7 54 0B         [ 1]  901 	ld	0x540b, a
                                    902 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 456: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
                                    903 ; genRightShiftLiteral
      00832C 1E 03            [ 2]  904 	ldw	x, (0x03, sp)
      00832E 54               [ 2]  905 	srlw	x
      00832F 54               [ 2]  906 	srlw	x
                                    907 ; genCast
                                    908 ; genAssign
      008330 9F               [ 1]  909 	ld	a, xl
                                    910 ; genPointerSet
      008331 C7 54 0A         [ 1]  911 	ld	0x540a, a
                                    912 ; genLabel
      008334                        913 00101$:
                                    914 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 457: }
                                    915 ; genEndFunction
      008334 81               [ 4]  916 	ret
                                    917 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 466: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                    918 ; genLabel
                                    919 ;	-----------------------------------------
                                    920 ;	 function ADC1_GetBufferValue
                                    921 ;	-----------------------------------------
                                    922 ;	Register assignment might be sub-optimal.
                                    923 ;	Stack space usage: 11 bytes.
      008335                        924 _ADC1_GetBufferValue:
      008335 52 0B            [ 2]  925 	sub	sp, #11
                                    926 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
                                    927 ; genPointerGet
      008337 C6 54 02         [ 1]  928 	ld	a, 0x5402
      00833A 6B 01            [ 1]  929 	ld	(0x01, sp), a
                                    930 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    931 ; genCast
                                    932 ; genAssign
      00833C 7B 0E            [ 1]  933 	ld	a, (0x0e, sp)
                                    934 ; genLeftShiftLiteral
      00833E 48               [ 1]  935 	sll	a
                                    936 ; genCast
                                    937 ; genAssign
                                    938 ; genCast
                                    939 ; genAssign
      00833F 5F               [ 1]  940 	clrw	x
      008340 97               [ 1]  941 	ld	xl, a
                                    942 ; genCast
                                    943 ; genAssign
      008341 51               [ 1]  944 	exgw	x, y
                                    945 ; genPlus
      008342 93               [ 1]  946 	ldw	x, y
      008343 1C 53 E1         [ 2]  947 	addw	x, #0x53e1
                                    948 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    949 ; genPlus
      008346 72 A9 53 E0      [ 2]  950 	addw	y, #0x53e0
                                    951 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    952 ; genCast
                                    953 ; genAssign
                                    954 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    955 ; genCast
                                    956 ; genAssign
                                    957 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    958 ; genPointerGet
      00834A F6               [ 1]  959 	ld	a, (x)
      00834B 97               [ 1]  960 	ld	xl, a
                                    961 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    962 ; genPointerGet
      00834C 90 F6            [ 1]  963 	ld	a, (y)
                                    964 ; genCast
                                    965 ; genAssign
      00834E 90 5F            [ 1]  966 	clrw	y
                                    967 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
                                    968 ; genAnd
      008350 88               [ 1]  969 	push	a
      008351 7B 02            [ 1]  970 	ld	a, (0x02, sp)
      008353 A5 08            [ 1]  971 	bcp	a, #0x08
      008355 84               [ 1]  972 	pop	a
      008356 26 03            [ 1]  973 	jrne	00111$
      008358 CC 83 6B         [ 2]  974 	jp	00102$
      00835B                        975 00111$:
                                    976 ; skipping generated iCode
                                    977 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    978 ; genAssign
                                    979 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    980 ; genAssign
                                    981 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 481: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
                                    982 ; genLeftShiftLiteral
      00835B 0F 0B            [ 1]  983 	clr	(0x0b, sp)
                                    984 ; genCast
                                    985 ; genAssign
      00835D 0F 08            [ 1]  986 	clr	(0x08, sp)
                                    987 ; genOr
      00835F 1A 08            [ 1]  988 	or	a, (0x08, sp)
      008361 95               [ 1]  989 	ld	xh, a
      008362 9F               [ 1]  990 	ld	a, xl
      008363 1A 0B            [ 1]  991 	or	a, (0x0b, sp)
      008365 97               [ 1]  992 	ld	xl, a
                                    993 ; genAssign
      008366 1F 06            [ 2]  994 	ldw	(0x06, sp), x
                                    995 ; genGoto
      008368 CC 83 85         [ 2]  996 	jp	00103$
                                    997 ; genLabel
      00836B                        998 00102$:
                                    999 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 486: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                   1000 ; genAssign
                                   1001 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 488: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                   1002 ; genAssign
                                   1003 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 490: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
                                   1004 ; genCast
                                   1005 ; genAssign
      00836B 02               [ 1] 1006 	rlwa	x
      00836C 4F               [ 1] 1007 	clr	a
      00836D 01               [ 1] 1008 	rrwa	x
                                   1009 ; genLeftShiftLiteral
      00836E 58               [ 2] 1010 	sllw	x
      00836F 58               [ 2] 1011 	sllw	x
      008370 58               [ 2] 1012 	sllw	x
      008371 58               [ 2] 1013 	sllw	x
      008372 58               [ 2] 1014 	sllw	x
      008373 58               [ 2] 1015 	sllw	x
      008374 1F 04            [ 2] 1016 	ldw	(0x04, sp), x
                                   1017 ; genLeftShiftLiteral
      008376 97               [ 1] 1018 	ld	xl, a
      008377 4F               [ 1] 1019 	clr	a
                                   1020 ; genOr
      008378 1A 05            [ 1] 1021 	or	a, (0x05, sp)
      00837A 6B 03            [ 1] 1022 	ld	(0x03, sp), a
      00837C 9F               [ 1] 1023 	ld	a, xl
      00837D 1A 04            [ 1] 1024 	or	a, (0x04, sp)
                                   1025 ; genAssign
      00837F 6B 06            [ 1] 1026 	ld	(0x06, sp), a
      008381 7B 03            [ 1] 1027 	ld	a, (0x03, sp)
      008383 6B 07            [ 1] 1028 	ld	(0x07, sp), a
                                   1029 ; genLabel
      008385                       1030 00103$:
                                   1031 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 493: return ((uint16_t)temph);
                                   1032 ; genReturn
      008385 1E 06            [ 2] 1033 	ldw	x, (0x06, sp)
                                   1034 ; genLabel
      008387                       1035 00104$:
                                   1036 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 494: }
                                   1037 ; genEndFunction
      008387 5B 0B            [ 2] 1038 	addw	sp, #11
      008389 81               [ 4] 1039 	ret
                                   1040 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 502: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                   1041 ; genLabel
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function ADC1_GetAWDChannelStatus
                                   1044 ;	-----------------------------------------
                                   1045 ;	Register assignment is optimal.
                                   1046 ;	Stack space usage: 2 bytes.
      00838A                       1047 _ADC1_GetAWDChannelStatus:
      00838A 89               [ 2] 1048 	pushw	x
                                   1049 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 509: if (Channel < (uint8_t)8)
                                   1050 ; genCmp
                                   1051 ; genCmpTop
      00838B 7B 05            [ 1] 1052 	ld	a, (0x05, sp)
      00838D A1 08            [ 1] 1053 	cp	a, #0x08
      00838F 25 03            [ 1] 1054 	jrc	00111$
      008391 CC 83 AB         [ 2] 1055 	jp	00102$
      008394                       1056 00111$:
                                   1057 ; skipping generated iCode
                                   1058 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 511: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
                                   1059 ; genPointerGet
      008394 C6 54 0D         [ 1] 1060 	ld	a, 0x540d
                                   1061 ; genLeftShift
      008397 88               [ 1] 1062 	push	a
      008398 A6 01            [ 1] 1063 	ld	a, #0x01
      00839A 6B 02            [ 1] 1064 	ld	(0x02, sp), a
      00839C 7B 06            [ 1] 1065 	ld	a, (0x06, sp)
      00839E 27 05            [ 1] 1066 	jreq	00113$
      0083A0                       1067 00112$:
      0083A0 08 02            [ 1] 1068 	sll	(0x02, sp)
      0083A2 4A               [ 1] 1069 	dec	a
      0083A3 26 FB            [ 1] 1070 	jrne	00112$
      0083A5                       1071 00113$:
      0083A5 84               [ 1] 1072 	pop	a
                                   1073 ; genAnd
      0083A6 14 01            [ 1] 1074 	and	a, (0x01, sp)
                                   1075 ; genAssign
                                   1076 ; genGoto
      0083A8 CC 83 C4         [ 2] 1077 	jp	00103$
                                   1078 ; genLabel
      0083AB                       1079 00102$:
                                   1080 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 515: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
                                   1081 ; genPointerGet
      0083AB C6 54 0C         [ 1] 1082 	ld	a, 0x540c
      0083AE 97               [ 1] 1083 	ld	xl, a
                                   1084 ; genMinus
      0083AF 7B 05            [ 1] 1085 	ld	a, (0x05, sp)
      0083B1 A0 08            [ 1] 1086 	sub	a, #0x08
                                   1087 ; genLeftShift
      0083B3 88               [ 1] 1088 	push	a
      0083B4 A6 01            [ 1] 1089 	ld	a, #0x01
      0083B6 6B 03            [ 1] 1090 	ld	(0x03, sp), a
      0083B8 84               [ 1] 1091 	pop	a
      0083B9 4D               [ 1] 1092 	tnz	a
      0083BA 27 05            [ 1] 1093 	jreq	00115$
      0083BC                       1094 00114$:
      0083BC 08 02            [ 1] 1095 	sll	(0x02, sp)
      0083BE 4A               [ 1] 1096 	dec	a
      0083BF 26 FB            [ 1] 1097 	jrne	00114$
      0083C1                       1098 00115$:
                                   1099 ; genAnd
      0083C1 9F               [ 1] 1100 	ld	a, xl
      0083C2 14 02            [ 1] 1101 	and	a, (0x02, sp)
                                   1102 ; genAssign
                                   1103 ; genLabel
      0083C4                       1104 00103$:
                                   1105 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 518: return ((FlagStatus)status);
                                   1106 ; genReturn
                                   1107 ; genLabel
      0083C4                       1108 00104$:
                                   1109 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 519: }
                                   1110 ; genEndFunction
      0083C4 85               [ 2] 1111 	popw	x
      0083C5 81               [ 4] 1112 	ret
                                   1113 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 527: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                   1114 ; genLabel
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function ADC1_GetFlagStatus
                                   1117 ;	-----------------------------------------
                                   1118 ;	Register assignment might be sub-optimal.
                                   1119 ;	Stack space usage: 4 bytes.
      0083C6                       1120 _ADC1_GetFlagStatus:
      0083C6 52 04            [ 2] 1121 	sub	sp, #4
                                   1122 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 535: if ((Flag & 0x0F) == 0x01)
                                   1123 ; genCast
                                   1124 ; genAssign
      0083C8 7B 07            [ 1] 1125 	ld	a, (0x07, sp)
      0083CA 0F 03            [ 1] 1126 	clr	(0x03, sp)
                                   1127 ; genAnd
      0083CC 88               [ 1] 1128 	push	a
      0083CD A4 0F            [ 1] 1129 	and	a, #0x0f
      0083CF 97               [ 1] 1130 	ld	xl, a
      0083D0 4F               [ 1] 1131 	clr	a
      0083D1 95               [ 1] 1132 	ld	xh, a
      0083D2 84               [ 1] 1133 	pop	a
                                   1134 ; genCmpEQorNE
      0083D3 5A               [ 2] 1135 	decw	x
      0083D4 26 03            [ 1] 1136 	jrne	00128$
      0083D6 CC 83 DC         [ 2] 1137 	jp	00129$
      0083D9                       1138 00128$:
      0083D9 CC 83 E4         [ 2] 1139 	jp	00108$
      0083DC                       1140 00129$:
                                   1141 ; skipping generated iCode
                                   1142 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 538: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
                                   1143 ; genPointerGet
      0083DC C6 54 03         [ 1] 1144 	ld	a, 0x5403
                                   1145 ; genAnd
      0083DF A4 40            [ 1] 1146 	and	a, #0x40
                                   1147 ; genGoto
      0083E1 CC 84 37         [ 2] 1148 	jp	00109$
                                   1149 ; genLabel
      0083E4                       1150 00108$:
                                   1151 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 540: else if ((Flag & 0xF0) == 0x10)
                                   1152 ; genAnd
      0083E4 A4 F0            [ 1] 1153 	and	a, #0xf0
      0083E6 97               [ 1] 1154 	ld	xl, a
      0083E7 4F               [ 1] 1155 	clr	a
                                   1156 ; genCmpEQorNE
      0083E8 95               [ 1] 1157 	ld	xh, a
      0083E9 A3 00 10         [ 2] 1158 	cpw	x, #0x0010
      0083EC 26 03            [ 1] 1159 	jrne	00131$
      0083EE CC 83 F4         [ 2] 1160 	jp	00132$
      0083F1                       1161 00131$:
      0083F1 CC 84 32         [ 2] 1162 	jp	00105$
      0083F4                       1163 00132$:
                                   1164 ; skipping generated iCode
                                   1165 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 543: temp = (uint8_t)(Flag & (uint8_t)0x0F);
                                   1166 ; genAnd
      0083F4 7B 07            [ 1] 1167 	ld	a, (0x07, sp)
      0083F6 A4 0F            [ 1] 1168 	and	a, #0x0f
      0083F8 97               [ 1] 1169 	ld	xl, a
                                   1170 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 544: if (temp < 8)
                                   1171 ; genCmp
                                   1172 ; genCmpTop
      0083F9 9F               [ 1] 1173 	ld	a, xl
      0083FA A1 08            [ 1] 1174 	cp	a, #0x08
      0083FC 25 03            [ 1] 1175 	jrc	00133$
      0083FE CC 84 18         [ 2] 1176 	jp	00102$
      008401                       1177 00133$:
                                   1178 ; skipping generated iCode
                                   1179 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 546: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
                                   1180 ; genPointerGet
      008401 C6 54 0D         [ 1] 1181 	ld	a, 0x540d
      008404 6B 02            [ 1] 1182 	ld	(0x02, sp), a
                                   1183 ; genLeftShift
      008406 A6 01            [ 1] 1184 	ld	a, #0x01
      008408 88               [ 1] 1185 	push	a
      008409 9F               [ 1] 1186 	ld	a, xl
      00840A 4D               [ 1] 1187 	tnz	a
      00840B 27 05            [ 1] 1188 	jreq	00135$
      00840D                       1189 00134$:
      00840D 08 01            [ 1] 1190 	sll	(1, sp)
      00840F 4A               [ 1] 1191 	dec	a
      008410 26 FB            [ 1] 1192 	jrne	00134$
      008412                       1193 00135$:
      008412 84               [ 1] 1194 	pop	a
                                   1195 ; genAnd
      008413 14 02            [ 1] 1196 	and	a, (0x02, sp)
                                   1197 ; genAssign
                                   1198 ; genGoto
      008415 CC 84 37         [ 2] 1199 	jp	00109$
                                   1200 ; genLabel
      008418                       1201 00102$:
                                   1202 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 550: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
                                   1203 ; genPointerGet
      008418 C6 54 0C         [ 1] 1204 	ld	a, 0x540c
      00841B 6B 01            [ 1] 1205 	ld	(0x01, sp), a
                                   1206 ; genCast
                                   1207 ; genAssign
                                   1208 ; genMinus
      00841D 1D 00 08         [ 2] 1209 	subw	x, #8
                                   1210 ; genLeftShift
      008420 A6 01            [ 1] 1211 	ld	a, #0x01
      008422 88               [ 1] 1212 	push	a
      008423 9F               [ 1] 1213 	ld	a, xl
      008424 4D               [ 1] 1214 	tnz	a
      008425 27 05            [ 1] 1215 	jreq	00137$
      008427                       1216 00136$:
      008427 08 01            [ 1] 1217 	sll	(1, sp)
      008429 4A               [ 1] 1218 	dec	a
      00842A 26 FB            [ 1] 1219 	jrne	00136$
      00842C                       1220 00137$:
      00842C 84               [ 1] 1221 	pop	a
                                   1222 ; genCast
                                   1223 ; genAssign
                                   1224 ; genAnd
      00842D 14 01            [ 1] 1225 	and	a, (0x01, sp)
                                   1226 ; genAssign
                                   1227 ; genGoto
      00842F CC 84 37         [ 2] 1228 	jp	00109$
                                   1229 ; genLabel
      008432                       1230 00105$:
                                   1231 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 555: flagstatus = (uint8_t)(ADC1->CSR & Flag);
                                   1232 ; genPointerGet
      008432 C6 54 00         [ 1] 1233 	ld	a, 0x5400
                                   1234 ; genAnd
      008435 14 07            [ 1] 1235 	and	a, (0x07, sp)
                                   1236 ; genAssign
                                   1237 ; genLabel
      008437                       1238 00109$:
                                   1239 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 557: return ((FlagStatus)flagstatus);
                                   1240 ; genReturn
                                   1241 ; genLabel
      008437                       1242 00110$:
                                   1243 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 559: }
                                   1244 ; genEndFunction
      008437 5B 04            [ 2] 1245 	addw	sp, #4
      008439 81               [ 4] 1246 	ret
                                   1247 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 567: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                   1248 ; genLabel
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function ADC1_ClearFlag
                                   1251 ;	-----------------------------------------
                                   1252 ;	Register assignment might be sub-optimal.
                                   1253 ;	Stack space usage: 5 bytes.
      00843A                       1254 _ADC1_ClearFlag:
      00843A 52 05            [ 2] 1255 	sub	sp, #5
                                   1256 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 574: if ((Flag & 0x0F) == 0x01)
                                   1257 ; genCast
                                   1258 ; genAssign
      00843C 7B 08            [ 1] 1259 	ld	a, (0x08, sp)
      00843E 0F 04            [ 1] 1260 	clr	(0x04, sp)
                                   1261 ; genAnd
      008440 88               [ 1] 1262 	push	a
      008441 A4 0F            [ 1] 1263 	and	a, #0x0f
      008443 97               [ 1] 1264 	ld	xl, a
      008444 4F               [ 1] 1265 	clr	a
      008445 95               [ 1] 1266 	ld	xh, a
      008446 84               [ 1] 1267 	pop	a
                                   1268 ; genCmpEQorNE
      008447 5A               [ 2] 1269 	decw	x
      008448 26 03            [ 1] 1270 	jrne	00128$
      00844A CC 84 50         [ 2] 1271 	jp	00129$
      00844D                       1272 00128$:
      00844D CC 84 5B         [ 2] 1273 	jp	00108$
      008450                       1274 00129$:
                                   1275 ; skipping generated iCode
                                   1276 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 577: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
                                   1277 ; genPointerGet
      008450 C6 54 03         [ 1] 1278 	ld	a, 0x5403
                                   1279 ; genAnd
      008453 A4 BF            [ 1] 1280 	and	a, #0xbf
                                   1281 ; genPointerSet
      008455 C7 54 03         [ 1] 1282 	ld	0x5403, a
                                   1283 ; genGoto
      008458 CC 84 BE         [ 2] 1284 	jp	00110$
                                   1285 ; genLabel
      00845B                       1286 00108$:
                                   1287 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 579: else if ((Flag & 0xF0) == 0x10)
                                   1288 ; genAnd
      00845B A4 F0            [ 1] 1289 	and	a, #0xf0
      00845D 97               [ 1] 1290 	ld	xl, a
      00845E 4F               [ 1] 1291 	clr	a
                                   1292 ; genCmpEQorNE
      00845F 95               [ 1] 1293 	ld	xh, a
      008460 A3 00 10         [ 2] 1294 	cpw	x, #0x0010
      008463 26 03            [ 1] 1295 	jrne	00131$
      008465 CC 84 6B         [ 2] 1296 	jp	00132$
      008468                       1297 00131$:
      008468 CC 84 B1         [ 2] 1298 	jp	00105$
      00846B                       1299 00132$:
                                   1300 ; skipping generated iCode
                                   1301 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 582: temp = (uint8_t)(Flag & (uint8_t)0x0F);
                                   1302 ; genAnd
      00846B 7B 08            [ 1] 1303 	ld	a, (0x08, sp)
      00846D A4 0F            [ 1] 1304 	and	a, #0x0f
      00846F 97               [ 1] 1305 	ld	xl, a
                                   1306 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 583: if (temp < 8)
                                   1307 ; genCmp
                                   1308 ; genCmpTop
      008470 9F               [ 1] 1309 	ld	a, xl
      008471 A1 08            [ 1] 1310 	cp	a, #0x08
      008473 25 03            [ 1] 1311 	jrc	00133$
      008475 CC 84 93         [ 2] 1312 	jp	00102$
      008478                       1313 00133$:
                                   1314 ; skipping generated iCode
                                   1315 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 585: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
                                   1316 ; genPointerGet
      008478 C6 54 0D         [ 1] 1317 	ld	a, 0x540d
      00847B 6B 03            [ 1] 1318 	ld	(0x03, sp), a
                                   1319 ; genLeftShift
      00847D A6 01            [ 1] 1320 	ld	a, #0x01
      00847F 88               [ 1] 1321 	push	a
      008480 9F               [ 1] 1322 	ld	a, xl
      008481 4D               [ 1] 1323 	tnz	a
      008482 27 05            [ 1] 1324 	jreq	00135$
      008484                       1325 00134$:
      008484 08 01            [ 1] 1326 	sll	(1, sp)
      008486 4A               [ 1] 1327 	dec	a
      008487 26 FB            [ 1] 1328 	jrne	00134$
      008489                       1329 00135$:
      008489 84               [ 1] 1330 	pop	a
                                   1331 ; genCpl
      00848A 43               [ 1] 1332 	cpl	a
                                   1333 ; genAnd
      00848B 14 03            [ 1] 1334 	and	a, (0x03, sp)
                                   1335 ; genPointerSet
      00848D C7 54 0D         [ 1] 1336 	ld	0x540d, a
                                   1337 ; genGoto
      008490 CC 84 BE         [ 2] 1338 	jp	00110$
                                   1339 ; genLabel
      008493                       1340 00102$:
                                   1341 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 589: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
                                   1342 ; genPointerGet
      008493 C6 54 0C         [ 1] 1343 	ld	a, 0x540c
      008496 6B 02            [ 1] 1344 	ld	(0x02, sp), a
                                   1345 ; genCast
                                   1346 ; genAssign
                                   1347 ; genMinus
      008498 1D 00 08         [ 2] 1348 	subw	x, #8
                                   1349 ; genLeftShift
      00849B A6 01            [ 1] 1350 	ld	a, #0x01
      00849D 88               [ 1] 1351 	push	a
      00849E 9F               [ 1] 1352 	ld	a, xl
      00849F 4D               [ 1] 1353 	tnz	a
      0084A0 27 05            [ 1] 1354 	jreq	00137$
      0084A2                       1355 00136$:
      0084A2 08 01            [ 1] 1356 	sll	(1, sp)
      0084A4 4A               [ 1] 1357 	dec	a
      0084A5 26 FB            [ 1] 1358 	jrne	00136$
      0084A7                       1359 00137$:
      0084A7 84               [ 1] 1360 	pop	a
                                   1361 ; genCast
                                   1362 ; genAssign
                                   1363 ; genCpl
      0084A8 43               [ 1] 1364 	cpl	a
                                   1365 ; genAnd
      0084A9 14 02            [ 1] 1366 	and	a, (0x02, sp)
                                   1367 ; genPointerSet
      0084AB C7 54 0C         [ 1] 1368 	ld	0x540c, a
                                   1369 ; genGoto
      0084AE CC 84 BE         [ 2] 1370 	jp	00110$
                                   1371 ; genLabel
      0084B1                       1372 00105$:
                                   1373 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 594: ADC1->CSR &= (uint8_t) (~Flag);
                                   1374 ; genPointerGet
      0084B1 C6 54 00         [ 1] 1375 	ld	a, 0x5400
      0084B4 6B 01            [ 1] 1376 	ld	(0x01, sp), a
                                   1377 ; genCpl
      0084B6 7B 08            [ 1] 1378 	ld	a, (0x08, sp)
      0084B8 43               [ 1] 1379 	cpl	a
                                   1380 ; genAnd
      0084B9 14 01            [ 1] 1381 	and	a, (0x01, sp)
                                   1382 ; genPointerSet
      0084BB C7 54 00         [ 1] 1383 	ld	0x5400, a
                                   1384 ; genLabel
      0084BE                       1385 00110$:
                                   1386 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 596: }
                                   1387 ; genEndFunction
      0084BE 5B 05            [ 2] 1388 	addw	sp, #5
      0084C0 81               [ 4] 1389 	ret
                                   1390 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 616: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                   1391 ; genLabel
                                   1392 ;	-----------------------------------------
                                   1393 ;	 function ADC1_GetITStatus
                                   1394 ;	-----------------------------------------
                                   1395 ;	Register assignment might be sub-optimal.
                                   1396 ;	Stack space usage: 3 bytes.
      0084C1                       1397 _ADC1_GetITStatus:
      0084C1 52 03            [ 2] 1398 	sub	sp, #3
                                   1399 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
                                   1400 ; genAnd
      0084C3 7B 07            [ 1] 1401 	ld	a, (0x07, sp)
      0084C5 A4 F0            [ 1] 1402 	and	a, #0xf0
      0084C7 97               [ 1] 1403 	ld	xl, a
      0084C8 4F               [ 1] 1404 	clr	a
      0084C9 95               [ 1] 1405 	ld	xh, a
                                   1406 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
                                   1407 ; genCast
                                   1408 ; genAssign
      0084CA 7B 07            [ 1] 1409 	ld	a, (0x07, sp)
                                   1410 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
                                   1411 ; genCmpEQorNE
      0084CC A3 00 10         [ 2] 1412 	cpw	x, #0x0010
      0084CF 26 03            [ 1] 1413 	jrne	00120$
      0084D1 CC 84 D7         [ 2] 1414 	jp	00121$
      0084D4                       1415 00120$:
      0084D4 CC 85 13         [ 2] 1416 	jp	00105$
      0084D7                       1417 00121$:
                                   1418 ; skipping generated iCode
                                   1419 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
                                   1420 ; genAnd
      0084D7 A4 0F            [ 1] 1421 	and	a, #0x0f
      0084D9 97               [ 1] 1422 	ld	xl, a
                                   1423 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 628: if (temp < 8)
                                   1424 ; genCmp
                                   1425 ; genCmpTop
      0084DA 9F               [ 1] 1426 	ld	a, xl
      0084DB A1 08            [ 1] 1427 	cp	a, #0x08
      0084DD 25 03            [ 1] 1428 	jrc	00122$
      0084DF CC 84 F9         [ 2] 1429 	jp	00102$
      0084E2                       1430 00122$:
                                   1431 ; skipping generated iCode
                                   1432 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 630: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
                                   1433 ; genPointerGet
      0084E2 C6 54 0D         [ 1] 1434 	ld	a, 0x540d
                                   1435 ; genLeftShift
      0084E5 88               [ 1] 1436 	push	a
      0084E6 A6 01            [ 1] 1437 	ld	a, #0x01
      0084E8 6B 04            [ 1] 1438 	ld	(0x04, sp), a
      0084EA 9F               [ 1] 1439 	ld	a, xl
      0084EB 4D               [ 1] 1440 	tnz	a
      0084EC 27 05            [ 1] 1441 	jreq	00124$
      0084EE                       1442 00123$:
      0084EE 08 04            [ 1] 1443 	sll	(0x04, sp)
      0084F0 4A               [ 1] 1444 	dec	a
      0084F1 26 FB            [ 1] 1445 	jrne	00123$
      0084F3                       1446 00124$:
      0084F3 84               [ 1] 1447 	pop	a
                                   1448 ; genAnd
      0084F4 14 03            [ 1] 1449 	and	a, (0x03, sp)
                                   1450 ; genAssign
                                   1451 ; genGoto
      0084F6 CC 85 1D         [ 2] 1452 	jp	00106$
                                   1453 ; genLabel
      0084F9                       1454 00102$:
                                   1455 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 634: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
                                   1456 ; genPointerGet
      0084F9 C6 54 0C         [ 1] 1457 	ld	a, 0x540c
      0084FC 6B 02            [ 1] 1458 	ld	(0x02, sp), a
                                   1459 ; genCast
                                   1460 ; genAssign
                                   1461 ; genMinus
      0084FE 1D 00 08         [ 2] 1462 	subw	x, #8
                                   1463 ; genLeftShift
      008501 A6 01            [ 1] 1464 	ld	a, #0x01
      008503 88               [ 1] 1465 	push	a
      008504 9F               [ 1] 1466 	ld	a, xl
      008505 4D               [ 1] 1467 	tnz	a
      008506 27 05            [ 1] 1468 	jreq	00126$
      008508                       1469 00125$:
      008508 08 01            [ 1] 1470 	sll	(1, sp)
      00850A 4A               [ 1] 1471 	dec	a
      00850B 26 FB            [ 1] 1472 	jrne	00125$
      00850D                       1473 00126$:
      00850D 84               [ 1] 1474 	pop	a
                                   1475 ; genCast
                                   1476 ; genAssign
                                   1477 ; genAnd
      00850E 14 02            [ 1] 1478 	and	a, (0x02, sp)
                                   1479 ; genAssign
                                   1480 ; genGoto
      008510 CC 85 1D         [ 2] 1481 	jp	00106$
                                   1482 ; genLabel
      008513                       1483 00105$:
                                   1484 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 639: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
                                   1485 ; genPointerGet
      008513 AE 54 00         [ 2] 1486 	ldw	x, #0x5400
      008516 88               [ 1] 1487 	push	a
      008517 F6               [ 1] 1488 	ld	a, (x)
      008518 6B 02            [ 1] 1489 	ld	(0x02, sp), a
      00851A 84               [ 1] 1490 	pop	a
                                   1491 ; genAnd
      00851B 14 01            [ 1] 1492 	and	a, (0x01, sp)
                                   1493 ; genAssign
                                   1494 ; genLabel
      00851D                       1495 00106$:
                                   1496 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 641: return ((ITStatus)itstatus);
                                   1497 ; genReturn
                                   1498 ; genLabel
      00851D                       1499 00107$:
                                   1500 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 642: }
                                   1501 ; genEndFunction
      00851D 5B 03            [ 2] 1502 	addw	sp, #3
      00851F 81               [ 4] 1503 	ret
                                   1504 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 662: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                   1505 ; genLabel
                                   1506 ;	-----------------------------------------
                                   1507 ;	 function ADC1_ClearITPendingBit
                                   1508 ;	-----------------------------------------
                                   1509 ;	Register assignment might be sub-optimal.
                                   1510 ;	Stack space usage: 2 bytes.
      008520                       1511 _ADC1_ClearITPendingBit:
      008520 89               [ 2] 1512 	pushw	x
                                   1513 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 669: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
                                   1514 ; genAnd
      008521 7B 06            [ 1] 1515 	ld	a, (0x06, sp)
      008523 A4 F0            [ 1] 1516 	and	a, #0xf0
      008525 97               [ 1] 1517 	ld	xl, a
      008526 4F               [ 1] 1518 	clr	a
                                   1519 ; genCmpEQorNE
      008527 95               [ 1] 1520 	ld	xh, a
      008528 A3 00 10         [ 2] 1521 	cpw	x, #0x0010
      00852B 26 03            [ 1] 1522 	jrne	00120$
      00852D CC 85 33         [ 2] 1523 	jp	00121$
      008530                       1524 00120$:
      008530 CC 85 79         [ 2] 1525 	jp	00105$
      008533                       1526 00121$:
                                   1527 ; skipping generated iCode
                                   1528 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 672: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
                                   1529 ; genCast
                                   1530 ; genAssign
      008533 7B 06            [ 1] 1531 	ld	a, (0x06, sp)
                                   1532 ; genAnd
      008535 A4 0F            [ 1] 1533 	and	a, #0x0f
      008537 97               [ 1] 1534 	ld	xl, a
                                   1535 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 673: if (temp < 8)
                                   1536 ; genCmp
                                   1537 ; genCmpTop
      008538 9F               [ 1] 1538 	ld	a, xl
      008539 A1 08            [ 1] 1539 	cp	a, #0x08
      00853B 25 03            [ 1] 1540 	jrc	00122$
      00853D CC 85 5B         [ 2] 1541 	jp	00102$
      008540                       1542 00122$:
                                   1543 ; skipping generated iCode
                                   1544 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 675: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
                                   1545 ; genPointerGet
      008540 C6 54 0D         [ 1] 1546 	ld	a, 0x540d
      008543 6B 02            [ 1] 1547 	ld	(0x02, sp), a
                                   1548 ; genLeftShift
      008545 A6 01            [ 1] 1549 	ld	a, #0x01
      008547 88               [ 1] 1550 	push	a
      008548 9F               [ 1] 1551 	ld	a, xl
      008549 4D               [ 1] 1552 	tnz	a
      00854A 27 05            [ 1] 1553 	jreq	00124$
      00854C                       1554 00123$:
      00854C 08 01            [ 1] 1555 	sll	(1, sp)
      00854E 4A               [ 1] 1556 	dec	a
      00854F 26 FB            [ 1] 1557 	jrne	00123$
      008551                       1558 00124$:
      008551 84               [ 1] 1559 	pop	a
                                   1560 ; genCpl
      008552 43               [ 1] 1561 	cpl	a
                                   1562 ; genAnd
      008553 14 02            [ 1] 1563 	and	a, (0x02, sp)
                                   1564 ; genPointerSet
      008555 C7 54 0D         [ 1] 1565 	ld	0x540d, a
                                   1566 ; genGoto
      008558 CC 85 86         [ 2] 1567 	jp	00107$
                                   1568 ; genLabel
      00855B                       1569 00102$:
                                   1570 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 679: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
                                   1571 ; genPointerGet
      00855B C6 54 0C         [ 1] 1572 	ld	a, 0x540c
      00855E 6B 01            [ 1] 1573 	ld	(0x01, sp), a
                                   1574 ; genCast
                                   1575 ; genAssign
                                   1576 ; genMinus
      008560 1D 00 08         [ 2] 1577 	subw	x, #8
                                   1578 ; genLeftShift
      008563 A6 01            [ 1] 1579 	ld	a, #0x01
      008565 88               [ 1] 1580 	push	a
      008566 9F               [ 1] 1581 	ld	a, xl
      008567 4D               [ 1] 1582 	tnz	a
      008568 27 05            [ 1] 1583 	jreq	00126$
      00856A                       1584 00125$:
      00856A 08 01            [ 1] 1585 	sll	(1, sp)
      00856C 4A               [ 1] 1586 	dec	a
      00856D 26 FB            [ 1] 1587 	jrne	00125$
      00856F                       1588 00126$:
      00856F 84               [ 1] 1589 	pop	a
                                   1590 ; genCast
                                   1591 ; genAssign
                                   1592 ; genCpl
      008570 43               [ 1] 1593 	cpl	a
                                   1594 ; genAnd
      008571 14 01            [ 1] 1595 	and	a, (0x01, sp)
                                   1596 ; genPointerSet
      008573 C7 54 0C         [ 1] 1597 	ld	0x540c, a
                                   1598 ; genGoto
      008576 CC 85 86         [ 2] 1599 	jp	00107$
                                   1600 ; genLabel
      008579                       1601 00105$:
                                   1602 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 684: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
                                   1603 ; genPointerGet
      008579 C6 54 00         [ 1] 1604 	ld	a, 0x5400
                                   1605 ; genCpl
      00857C 1E 05            [ 2] 1606 	ldw	x, (0x05, sp)
      00857E 53               [ 2] 1607 	cplw	x
                                   1608 ; genCast
                                   1609 ; genAssign
                                   1610 ; genAnd
      00857F 89               [ 2] 1611 	pushw	x
      008580 14 02            [ 1] 1612 	and	a, (2, sp)
      008582 85               [ 2] 1613 	popw	x
                                   1614 ; genPointerSet
      008583 C7 54 00         [ 1] 1615 	ld	0x5400, a
                                   1616 ; genLabel
      008586                       1617 00107$:
                                   1618 ;	./STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 686: }
                                   1619 ; genEndFunction
      008586 85               [ 2] 1620 	popw	x
      008587 81               [ 4] 1621 	ret
                                   1622 	.area CODE
                                   1623 	.area CONST
                                   1624 	.area INITIALIZER
                                   1625 	.area CABS (ABS)
