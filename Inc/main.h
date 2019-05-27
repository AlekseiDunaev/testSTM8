#ifndef MAIN_H
#define MAIN_H

#include "stm8s.h"
#include "ILI9341.h"

//PA1 кварцевый резонатор 16 MHz вход
#define HSE_PORT                GPIOA
#define HSE_IN1_PIN             GPIO_PIN_1 
#define HSE_IN2_PIN             GPIO_PIN_2 

//PC3 датчик Холла вход
#define HS_PORT                 GPIOC
#define HSE_PIN                 GPIO_PIN_3

//PC5 SPI_CLK выход
#define SPI_Port                GPIOC
#define SPI_CLK_PIN             GPIO_PIN_5

//PC6 SPI_MOSI_PIN выход
#define SPI_MOSI_PIN            GPIO_PIN_6

//PC7 Comutator_Positive выход
#define Comutator_Port          GPIOC
#define Comutator_PIN           GPIO_PIN_7

//PD1 FUNC1 вход
#define FUNCS_PORT              GPIOD
#define FUNC1_PIN               GPIO_PIN_1

//PD2 FUNC2 вход
#define FUNC2_PIN              GPIO_PIN_2

//PD3 Cветодиод положения шторки выход
#define HS_POS_LED_PORT         GPIOD
#define HS_POS_LED_PIN          GPIO_PIN_3

//PD4 BEEP выход
#define BEEP_PORT               GPIOD
#define BEEP_PIN                GPIO_PIN_4

//PD5 SEL1 вход
#define SELS_PORT               GPIOD
#define SEL1_PIN                GPIO_PIN_5

//PD6 SEL2 вход
#define SEL2_PIN                GPIO_PIN_6

#define SPI_Port                GPIOC
#define SPI_SCK_PIN             GPIO_PIN_5
#define SPI_MOSI_PIN            GPIO_PIN_6

void delay(long n);
void clock_setup(void);
void GPIO_setup(void);
void SPI_setup(void);
void TIM4_setup(void);
//void TIM4_OVERLOAD(void) __interrupt(23);

#endif /* MAIN_H */