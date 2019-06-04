#include "main.h"


//переменные
//unsigned char   status = 0;                 //регистр статуса порта
//unsigned char status_2=0;
//int             iterations, times, repeat /*i*/;
//long        /*debug_period*/, latency;
//bool            start = 0;

typedef struct {
  bool sel1             : 1;
  bool sel2             : 1;
  bool func1            : 1;
  bool func2            : 1;
  bool shadow_state     : 1;
  bool debug            : 1;
} Status;
  
volatile Status status = { 1, 1, 1, 1, 0, 1 };

int count = 70;

// Прототипы прерываний 
//__interrupt void TIMR4_ISR(void);
//__interrupt void CLK_CSS_handler(void);
   
int main() {

  clock_setup();
  GPIO_setup();
  SPI_setup();
  ILI9341_setup();
  ILI9341_Init_Display();
  TIM4_setup();
  
  __asm
    RIM;
  __endasm;

  while(1)
  {
    if (GPIO_ReadInputPin(FUNCS_PORT, FUNC1_PIN)) {
      status.func1 = 1;
    } else { 
      status.func1 = 0;
    }
  
    if (GPIO_ReadInputPin(FUNCS_PORT, FUNC2_PIN)) {
      status.func2 = 1;
    } else { 
      status.func2 = 0;
    }
  
    if (GPIO_ReadInputPin(SELS_PORT, SEL1_PIN)) {
      status.sel1 = 1;
    } else { 
      status.sel1 = 0;
    }
  
    if (GPIO_ReadInputPin(SELS_PORT, SEL2_PIN)) {
      status.sel2 = 1;
    } else { 
      status.sel2 = 0;
    }

    delay(100000);
    GPIOD->ODR ^= GPIO_PIN_3;
    GPIO_WriteReverse(GPIOD, GPIO_PIN_3);
    ILI9341_Write_Command(0xFF);
    ILI9341_Write_Data(0xFF);
  }

}

void delay(long n) {
  while (n--> 0);
}

void clock_setup() {
  CLK_DeInit();
  CLK_HSECmd(DISABLE);
  CLK_LSICmd(DISABLE);
  CLK_HSICmd(ENABLE); 
  while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
  CLK_ClockSwitchCmd(ENABLE);
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
  CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
  CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
}

void GPIO_setup() {
  GPIO_DeInit(GPIOC);
  GPIO_DeInit(GPIOD);
  GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
  GPIO_Init(SPI_Port, ((GPIO_Pin_TypeDef) SPI_SCK_PIN | SPI_MOSI_PIN), GPIO_MODE_OUT_PP_HIGH_FAST);

  //PC3     датчик Холла                    вход
  GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_FL_NO_IT);
    
  //PC7     Comutator_Positive              выход
  //PC_DDR_DDR7 = 1;   // Ножка PD0 конфигурируется на вывод
  //PC_CR1_C17 = 1;   // Выход типа Push-pull
  //PC_CR2_C27 = 1;   // Скорость переключения - до 10 МГц
  //PC_ODR_ODR7=0;
  GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);

  //PD1     FUNC1                           вход
  //PD_DDR_DDR1 = 0;
  //PD_CR1_C11 = 0;
  //PD_CR2_C21 = 0;
  GPIO_Init(GPIOD, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);
  
  //PD2     FUNC2                           вход
  //PD_DDR_DDR2 = 0;
  //PD_CR1_C12 = 0;
  //PD_CR2_C22 = 0;
  GPIO_Init(GPIOD, GPIO_PIN_2, GPIO_MODE_IN_FL_NO_IT);
  
  //PD3     Светодиод положения шторки      выход
  //PD_DDR_DDR3 = 1;   // Ножка PD0 конфигурируется на вывод
  //PD_CR1_C13 = 1;   // Выход типа Push-pull
  //PD_CR2_C23 = 0;   // Скорость переключения - до 2 МГц
  //PD_ODR_ODR3=0;
  GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
  
  //PD4     BEEP                            выход
  //PD_DDR_DDR4 = 0;
  //PD_CR1_C14 = 0;
  //PD_CR2_C24 = 0;  
  GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
  
  //PD5     SEL1                            вход
  //PD_DDR_DDR5 = 0;
  //PD_CR1_C15 = 0;
  //PD_CR2_C25 = 0;
  GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_IN_FL_NO_IT);
  
  //PD6     SEL2                            вход
  //PD_DDR_DDR6 = 0;
  //PD_CR1_C16 = 0;
  //PD_CR2_C26 = 0;
  GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_FL_NO_IT);
  
}

void SPI_setup(void) {
    SPI_DeInit();
    SPI_Init(SPI_FIRSTBIT_MSB,
             SPI_BAUDRATEPRESCALER_8,
             SPI_MODE_MASTER,
             SPI_CLOCKPOLARITY_HIGH,
             SPI_CLOCKPHASE_1EDGE,
             SPI_DATADIRECTION_1LINE_TX,
             SPI_NSS_SOFT,
             0x00);
    SPI_Cmd(ENABLE);
}

void TIM4_setup() {
  TIM4_DeInit();
  TIM4_TimeBaseInit(TIM4_PRESCALER_128, 0xFF);
  TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
  TIM4_Cmd(ENABLE);
}

void TIM4_OVERLOAD(void) __interrupt(23) {
  TIM4_ClearITPendingBit(TIM4_FLAG_UPDATE);  

  if (!count) {
    GPIO_WriteReverse(GPIOD, GPIO_PIN_3);
    count=70;
  } else {
    count--;
  }
}