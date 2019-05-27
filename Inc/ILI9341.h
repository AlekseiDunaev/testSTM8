#ifndef ILI9341_H
#define ILI9341_H

#include "stm8s.h"

//PA3     ILI9341_CS                      выход
#define ILI9341_CS_Port         GPIOC
#define ILI9341_CS_PIN          GPIO_PIN_3
//#define ILI9341_CS      SPI_CR2_SSI     //Может определить вывод PC3 так?

//PB4     ILI9431_DS                      выход
#define ILI9341_DS_Port         GPIOB
#define ILI9341_DS_PIN          GPIO_PIN_4

//PB5     ILI9341_Reset                   выход
#define ILI9341_Reset_Port      GPIOB
#define ILI9341_Reset_PIN       GPIO_PIN_5

//PC4     ILI9341_LED                     выход
#define ILI9341_LED_Port        GPIOC
#define ILI9341_LED_PIN         GPIO_PIN_4

void ILI9341_setup(void);
extern void ILI9341_Init_Display();
extern void ILI9341_Write_Command(int);
extern void ILI9341_Write_Data(int);

#define ILI9341_RESET				0x01
#define ILI9341_SLEEP_OUT			0x11
#define ILI9341_GAMMA				0x26
#define ILI9341_DISPLAY_OFF			0x28
#define ILI9341_DISPLAY_ON			0x29
#define ILI9341_COLUMN_ADDR			0x2A
#define ILI9341_PAGE_ADDR			0x2B
#define ILI9341_GRAM				0x2C
#define ILI9341_MAC			        0x36
#define ILI9341_PIXEL_FORMAT        0x3A
#define ILI9341_WDB			    	0x51
#define ILI9341_WCD				    0x53
#define ILI9341_RGB_INTERFACE       0xB0
#define ILI9341_FRC				    0xB1
#define ILI9341_BPC				    0xB5
#define ILI9341_DFC				    0xB6
#define ILI9341_POWER1				0xC0
#define ILI9341_POWER2				0xC1
#define ILI9341_VCOM1				0xC5
#define ILI9341_VCOM2				0xC7
#define ILI9341_POWERA				0xCB
#define ILI9341_POWERB				0xCF
#define ILI9341_PGAMMA				0xE0
#define ILI9341_NGAMMA				0xE1
#define ILI9341_DTCA				0xE8
#define ILI9341_DTCB				0xEA
#define ILI9341_POWER_SEQ			0xED
#define ILI9341_3GAMMA_EN			0xF2
#define ILI9341_INTERFACE			0xF6
#define ILI9341_PRC 				0xF7

#endif /* ILI9341_H */