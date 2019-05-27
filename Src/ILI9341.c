#include "ILI9341.h"
#include "main.h"


void ILI9341_setup(void) {

    GPIO_Init(ILI9341_DS_Port, ILI9341_DS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(ILI9341_CS_Port, ILI9341_CS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(ILI9341_Reset_Port, ILI9341_Reset_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(ILI9341_CS_Port, ILI9341_CS_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(ILI9341_LED_Port, ILI9341_LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    
}

void ILI9341_Write_Command(int command) {
    while(SPI_GetFlagStatus(SPI_FLAG_BSY));
    GPIO_WriteLow(ILI9341_CS_Port, ILI9341_CS_PIN);
    GPIO_WriteLow(ILI9341_DS_Port, ILI9341_DS_PIN);
    
    SPI_SendData(command);
    while(!SPI_GetFlagStatus(SPI_FLAG_TXE));

    GPIO_WriteHigh(ILI9341_CS_Port, ILI9341_CS_PIN);
    GPIO_WriteHigh(ILI9341_DS_Port, ILI9341_DS_PIN);
}

void ILI9341_Write_Data(int data) {
    while(SPI_GetFlagStatus(SPI_FLAG_BSY));
    GPIO_WriteLow(ILI9341_CS_Port, ILI9341_CS_PIN);
    GPIO_WriteHigh(ILI9341_DS_Port, ILI9341_DS_PIN);
    
    SPI_SendData(data);
    while(!SPI_GetFlagStatus(SPI_FLAG_TXE));

    GPIO_WriteHigh(ILI9341_CS_Port, ILI9341_CS_PIN);
}

void ILI9341_Init_Display() {
    GPIO_WriteHigh(ILI9341_CS_Port, ILI9341_CS_PIN);
    GPIO_WriteLow(ILI9341_Reset_Port, ILI9341_Reset_PIN);
    delay(100000);

    GPIO_WriteHigh(ILI9341_Reset_Port, ILI9341_Reset_PIN);
    GPIO_WriteHigh(ILI9341_LED_Port, ILI9341_LED_PIN);
    delay(100000);

    ILI9341_Write_Command(ILI9341_RESET);
    delay(100000);


    ILI9341_Write_Command(ILI9341_POWERA);
    ILI9341_Write_Data(0x39);
    ILI9341_Write_Data(0x2C);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x34);
    ILI9341_Write_Data(0x02);
    ILI9341_Write_Command(ILI9341_POWERB);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0xC1);
    ILI9341_Write_Data(0x30);
    ILI9341_Write_Command(ILI9341_DTCA);
    ILI9341_Write_Data(0x85);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x78);
    ILI9341_Write_Command(ILI9341_DTCB);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Command(ILI9341_POWER_SEQ);
    ILI9341_Write_Data(0x64);
    ILI9341_Write_Data(0x03);
    ILI9341_Write_Data(0x12);
    ILI9341_Write_Data(0x81);
    ILI9341_Write_Command(ILI9341_PRC);
    ILI9341_Write_Data(0x20);
    ILI9341_Write_Command(ILI9341_POWER1);
    ILI9341_Write_Data(0x23);
    ILI9341_Write_Command(ILI9341_POWER2);
    ILI9341_Write_Data(0x10);
    ILI9341_Write_Command(ILI9341_VCOM1);
    ILI9341_Write_Data(0x3E);
    ILI9341_Write_Data(0x28);
    ILI9341_Write_Command(ILI9341_VCOM2);
    ILI9341_Write_Data(0x86);
    ILI9341_Write_Command(ILI9341_MAC);
    ILI9341_Write_Data(0x48);
    ILI9341_Write_Command(ILI9341_PIXEL_FORMAT);
    ILI9341_Write_Data(0x55);
    ILI9341_Write_Command(ILI9341_FRC);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x18);
    ILI9341_Write_Command(ILI9341_DFC);
    ILI9341_Write_Data(0x08);
    ILI9341_Write_Data(0x82);
    ILI9341_Write_Data(0x27);
    ILI9341_Write_Command(ILI9341_3GAMMA_EN);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Command(ILI9341_COLUMN_ADDR);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0xEF);
    ILI9341_Write_Command(ILI9341_PAGE_ADDR);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x01);
    ILI9341_Write_Data(0x3F);
    ILI9341_Write_Command(ILI9341_GAMMA);
    ILI9341_Write_Data(0x01);
    ILI9341_Write_Command(ILI9341_PGAMMA);
    ILI9341_Write_Data(0x0F);
    ILI9341_Write_Data(0x31);
    ILI9341_Write_Data(0x2B);
    ILI9341_Write_Data(0x0C);
    ILI9341_Write_Data(0x0E);
    ILI9341_Write_Data(0x08);
    ILI9341_Write_Data(0x4E);
    ILI9341_Write_Data(0xF1);
    ILI9341_Write_Data(0x37);
    ILI9341_Write_Data(0x07);
    ILI9341_Write_Data(0x10);
    ILI9341_Write_Data(0x03);
    ILI9341_Write_Data(0x0E);
    ILI9341_Write_Data(0x09);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Command(ILI9341_NGAMMA);
    ILI9341_Write_Data(0x00);
    ILI9341_Write_Data(0x0E);
    ILI9341_Write_Data(0x14);
    ILI9341_Write_Data(0x03);
    ILI9341_Write_Data(0x11);
    ILI9341_Write_Data(0x07);
    ILI9341_Write_Data(0x31);
    ILI9341_Write_Data(0xC1);
    ILI9341_Write_Data(0x48);
    ILI9341_Write_Data(0x08);
    ILI9341_Write_Data(0x0F);
    ILI9341_Write_Data(0x0C);
    ILI9341_Write_Data(0x31);
    ILI9341_Write_Data(0x36);
    ILI9341_Write_Data(0x0F);
    
    ILI9341_Write_Command(ILI9341_SLEEP_OUT);
    
    delay(100000);
    
    ILI9341_Write_Command(ILI9341_DISPLAY_ON);
    ILI9341_Write_Command(ILI9341_GRAM);

}
