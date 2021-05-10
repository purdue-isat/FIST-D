/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_uart1.h"
#include "stm8s_spi.h"
#include "define.h"


// remaining work: uart, samplerate&shift
//NPLLAB_DPS310_STM8
int16_t c0[N_SENSORS];
int16_t c1[N_SENSORS];

int32_t c00[N_SENSORS];
int32_t c10[N_SENSORS];

int16_t c01[N_SENSORS];
int16_t c11[N_SENSORS];

int16_t c20[N_SENSORS];
int16_t c21[N_SENSORS];

int16_t c30[N_SENSORS];

int32_t raw_pressure[N_SENSORS];
int32_t raw_temperature[N_SENSORS];
float temperature[N_SENSORS];
float pressure[N_SENSORS];
	
static int32_t oversample_scalefactor[] = {524288, 1572864, 3670016, 7864320,
                                           253952, 516096,  1040384, 2088960};
																					 
void assert_failed(u8* file,u32 line)
{
  while(1)
  {
  }
}

#ifndef F_CPU
#warning "F_CPU not defined, using 16MHz by default"
#define F_CPU 16000000UL
#endif
void delay_ms(uint32_t ms) {
    uint32_t i;
    for (i = 0; i < ((F_CPU / 18 / 1000UL) * ms); i++) {
        _asm("nop");
    }
}

void Init_GPIOs(void)
{
	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOB);
	GPIO_DeInit(GPIOC);
	GPIO_DeInit(GPIOD);
	// PD2: CS1
	GPIO_Init (GPIOD, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_FAST); 
	GPIO_WriteHigh(GPIOD, GPIO_PIN_2);
	// PD3: CS2
	GPIO_Init (GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_FAST); 
	GPIO_WriteHigh(GPIOD, GPIO_PIN_3);
	// PA1: CS3
	GPIO_Init (GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_HIGH_FAST); 
	GPIO_WriteHigh(GPIOA, GPIO_PIN_1);
	// PA3: CS4
	GPIO_Init (GPIOA, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_FAST); 
	GPIO_WriteHigh(GPIOA, GPIO_PIN_3);
	// PC4: CS5
	GPIO_Init (GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_FAST); 
	GPIO_WriteHigh(GPIOC, GPIO_PIN_4);
	// PC5: SCK
	GPIO_Init (GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);
	// PC6: SDI
	GPIO_Init (GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_HIGH_FAST);
	// PC7: SDO
	GPIO_Init (GPIOC, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);

	// PD4: Rx/Tx selection (need to confirm the initial state to be rx)
	GPIO_Init (GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_WriteHigh(GPIOD, GPIO_PIN_4);
	// PD5: Tx
	GPIO_Init (GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);
	// PD6: Rx
	GPIO_Init (GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);
	
}

void HsiInit(void)
{ 
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
		CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
		CLK_CCOCmd(DISABLE);
		
}
//https://documentation.help/STM8S/group__SPI__Exported__Types.html
void Init_SPI(void)
{
     SPI_DeInit();
     SPI_Init(SPI_FIRSTBIT_MSB, 
              SPI_BAUDRATEPRESCALER_8, 
              SPI_MODE_MASTER, 
              SPI_CLOCKPOLARITY_HIGH, 
              SPI_CLOCKPHASE_2EDGE, 
              SPI_DATADIRECTION_2LINES_FULLDUPLEX , 
              SPI_NSS_SOFT, 
              0x07);
     SPI_Cmd(ENABLE);

}

//https://github.com/VincentYChen/STM8teach/blob/474e6b24695ebe94e83eaa4b4e545c9192b36e62/code/Project/STM8S_StdPeriph_Examples/UART1/UART1_HalfDuplex/main.c
void Uart1_Init(u32 Baudrate)
{
    UART1_DeInit(); 
    UART1_Init((u32)Baudrate, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
		UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
		//UART1_HalfDuplexCmd(ENABLE);
    UART1_Cmd(ENABLE );  
		enableInterrupts();
}




void CS_DPS310(u8 ch, u8 mode) {
	if(ch==1){
		if (mode == 1) 
			GPIO_WriteHigh(GPIOD, GPIO_PIN_2);
		if (mode == 0) 
			GPIO_WriteLow(GPIOD, GPIO_PIN_2);
	} 
	if(ch==2){
		if (mode == 1) 
			GPIO_WriteHigh(GPIOD, GPIO_PIN_3);
		if (mode == 0) 
			GPIO_WriteLow(GPIOD, GPIO_PIN_3);
	} 
	if(ch==3){
		if (mode == 1) 
			GPIO_WriteHigh(GPIOA, GPIO_PIN_1);
		if (mode == 0) 
			GPIO_WriteLow(GPIOA, GPIO_PIN_1);
	} 
	if(ch==4){
		if (mode == 1) 
			GPIO_WriteHigh(GPIOA, GPIO_PIN_3);
		if (mode == 0) 
			GPIO_WriteLow(GPIOA, GPIO_PIN_3);
	} 
	if(ch==5){
		if (mode == 1) 
			GPIO_WriteHigh(GPIOC, GPIO_PIN_4);
		if (mode == 0) 
			GPIO_WriteLow(GPIOC, GPIO_PIN_4);
	} 
}

u8 DPS310_Write(u8 ch, u8 addr, u8 data)
{
	u8 recvdata;
	CS_DPS310(ch, 0);
	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
	SPI_SendData(addr);
	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
	recvdata = SPI_ReceiveData();
	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
	SPI_SendData(data);
	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
	recvdata= SPI_ReceiveData();
	CS_DPS310(ch, 1);
	return recvdata;
}
u8 DPS310_Read(u8 ch, u8 addr)
{
	u8 recvdata;
	addr = addr | 0x80;
	CS_DPS310(ch, 0);
	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
	SPI_SendData(addr);
	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
	recvdata = SPI_ReceiveData();
	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
	SPI_SendData(0x0);
	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
	recvdata = SPI_ReceiveData();
	CS_DPS310(ch, 1);
	return recvdata;
}
u8 test_bit(u8 val, u8 i) {
	u8 res =0;
	res = ((val>>i) & 0x1);
	return res;
}

static int32_t twosComplement(int32_t val, uint8_t bits) {
  if (val & ((uint32_t)1 << (bits - 1))) {
    val -= (uint32_t)1 << bits;
  }
  return val;
}


u8 DPS310_init(u8 ch)
{
	//=============step 1: read chip id================
	u8 val;
	u8 val2;
	u8 meas_cfg;
	u8 i;
	u8 coeffs[18];
  int16_t _c0, _c1, _c01, _c11, _c20, _c21, _c30;
  int32_t _c00, _c10;
	val = DPS310_Read(ch,(u8)DPS310_PRODREVID );
	if(val!=0x10) return 0;
	//=============step 2: reset chip================
	DPS310_Write(ch,DPS310_RESET,0x89 );
	delay_ms(10);
	while(1){
		meas_cfg = DPS310_Read(ch,(u8)DPS310_MEASCFG );
		if (test_bit(meas_cfg, 6)) break;
		delay_ms(1);
	}
	//=============step 2: calibrate sensor================
	while(1){ // if calibration parameters are ready
		meas_cfg = DPS310_Read(ch,(u8)DPS310_MEASCFG );
		if (test_bit(meas_cfg, 7)) break;
		delay_ms(1);
	}
	
	for (i = 0; i < 18; i++) {
		coeffs[i] = DPS310_Read(ch,(u8)(0x10+i) );
	}
  _c0 = ((uint16_t)coeffs[0] << 4) | (((uint16_t)coeffs[1] >> 4) & 0x0F);
  _c0 = twosComplement(_c0, 12);

  _c1 = twosComplement((((uint16_t)coeffs[1] & 0x0F) << 8) | coeffs[2], 12);

  _c00 = ((uint32_t)coeffs[3] << 12) | ((uint32_t)coeffs[4] << 4) |
         (((uint32_t)coeffs[5] >> 4) & 0x0F);
  _c00 = twosComplement(_c00, 20);

  _c10 = (((uint32_t)coeffs[5] & 0x0F) << 16) | ((uint32_t)coeffs[6] << 8) |
         (uint32_t)coeffs[7];
  _c10 = twosComplement(_c10, 20);

  _c01 = twosComplement(((uint16_t)coeffs[8] << 8) | (uint16_t)coeffs[9], 16);
  _c11 = twosComplement(((uint16_t)coeffs[10] << 8) | (uint16_t)coeffs[11], 16);
  _c20 = twosComplement(((uint16_t)coeffs[12] << 8) | (uint16_t)coeffs[13], 16);
  _c21 = twosComplement(((uint16_t)coeffs[14] << 8) | (uint16_t)coeffs[15], 16);
  _c30 = twosComplement(((uint16_t)coeffs[16] << 8) | (uint16_t)coeffs[17], 16);
	//	c00 = 81507;//
	//	c10 = -66011;//
	//	c20 = -13579;//
	//	c30 = -2154;//
	//	c01 = -2115;//
	//	c11 = 1585;//
	//	c21 = 117;//
	//	c0 = 205;//
	//	c1 = -258;//
	c0[ch-1]=_c0;
	c1[ch-1]=_c1;
	c00[ch-1]=_c00;
	c10[ch-1]=_c10;
	c01[ch-1]=_c01;
	c11[ch-1]=_c11;
	c20[ch-1]=_c20;
	c21[ch-1]=_c21;
	c30[ch-1]=_c30;
	//checked. All values have been read correctly.
	//==============================configurePressure======================
	val = (SAMPLE_RATE_PRESSURE<<4) + OVERSAMPLE_PRESSURE;
	DPS310_Write(ch,(u8)DPS310_PRSCFG, val );
	// Set shiftbits to 1
	val = DPS310_Read(ch,(u8)DPS310_CFGREG );
	if(OVERSAMPLE_TEMP>DPS310_8SAMPLES)
		val |= 0x8;
	if(OVERSAMPLE_PRESSURE>DPS310_8SAMPLES)
		val |= 0x4; 
	DPS310_Write(ch,(u8)DPS310_CFGREG, val );
	
//==============================configureTemperature======================
	val = (SAMPLE_RATE_TEMP<<4) + OVERSAMPLE_TEMP;
	DPS310_Write(ch,(u8)DPS310_TMPCFG, val );
	//write srcbit to extbit
	val2 = DPS310_Read(ch,(u8)DPS310_TMPCFG );
	val = DPS310_Read(ch,(u8)DPS310_TMPCOEFSRCE );
	val2 = val2 | (val & 0x80);
	DPS310_Write(ch,(u8)DPS310_TMPCFG, val2 );
//==============================Set Mode======================
	val = DPS310_Read(ch,(u8)DPS310_MEASCFG );
	val = val & 0xF8;
	val = val + DPS310_CONT_PRESTEMP;
	DPS310_Write(ch, (u8)DPS310_MEASCFG, val);
	//val=0;
	//val = DPS310_Read(ch,(u8)DPS310_MEASCFG );
	return 1;
	
}
u8 DPS310_readPressureAvail(u8 ch){
	u8 val;
	u8 res;
	val = DPS310_Read(ch, (u8)DPS310_MEASCFG); // why val will be cleared in the debug window?
	res =  test_bit(val, 4);
	return res;
}
u8 DPS310_readTemperatureAvail(u8 ch){
	u8 val;
	u8 res;
	val = DPS310_Read(ch, DPS310_MEASCFG);
	res =  test_bit(val, 5);
	return res;
}
void DPS310_readSensor(u8 ch)
{
	u32 PRS_B0, PRS_B1, PRS_B2;
	u32 TMP_B0, TMP_B1, TMP_B2;
  int16_t _c0, _c1, _c01, _c11, _c20, _c21, _c30;
  int32_t _c00, _c10;
	float _scaled_rawtemp;
	float _temperature, _pressure;
	u8 val;

	u32 temp_scale, pressure_scale;
	_c0 = c0[ch-1];
	_c1 = c1[ch-1];
	_c01 = c01[ch-1];
	_c11 = c11[ch-1];
	_c20 = c20[ch-1];
	_c21 = c21[ch-1];
	_c30 = c30[ch-1];
	_c00 = c00[ch-1];
	_c10 = c10[ch-1];
	
	//val = DPS310_Read(ch, (u8)DPS310_MEASCFG); 
	
	PRS_B2 = DPS310_Read(ch, DPS310_PRSB2);
	PRS_B1 = DPS310_Read(ch, DPS310_PRSB1);
	PRS_B0 = DPS310_Read(ch, DPS310_PRSB0);

	TMP_B2 = DPS310_Read(ch, DPS310_TMPB2);
	TMP_B1 = DPS310_Read(ch, DPS310_TMPB1);
	TMP_B0 = DPS310_Read(ch, DPS310_TMPB0);
	
	// https://www.infineon.com/dgdl/Infineon-DPS310-DataSheet-v01_02-EN.pdf?fileId=5546d462576f34750157750826c42242
	//p14 4.9.1
	//different from the arduino code
	raw_pressure[ch-1] = (PRS_B2<<16) + (PRS_B1<<8) + (PRS_B0);
	if(raw_pressure[ch-1]>8388607u) raw_pressure[ch-1]-=16777216u;
	raw_temperature[ch-1] = (TMP_B2<<16) + (TMP_B1<<8) + (TMP_B0);
	if(raw_temperature[ch-1]>8388607u) raw_temperature[ch-1]-=16777216u;
	temp_scale = oversample_scalefactor[OVERSAMPLE_TEMP]; //must higher than 16 since Kp and KT is related to shift register.
	pressure_scale = oversample_scalefactor[OVERSAMPLE_PRESSURE];
  _scaled_rawtemp = (float)(raw_temperature[ch-1]) / temp_scale;
  _temperature = _scaled_rawtemp * _c1 + _c0 / 2.0;
	_pressure = (float)(raw_pressure[ch-1]) / pressure_scale; //65.6
	
  _pressure =
      (int32_t)_c00 +
      _pressure * ((int32_t)_c10 +
                   _pressure * ((int32_t)_c20 + _pressure * (int32_t)_c30)) +
      _scaled_rawtemp *
          ((int32_t)_c01 +
           _pressure * ((int32_t)_c11 + _pressure * (int32_t)_c21));
	temperature[ch-1]=_temperature;
	pressure[ch-1] = _pressure;
}

char Serial_read_char(void)
 {
                 while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
                 UART1_ClearFlag(UART1_FLAG_RXNE);
                 return (UART1_ReceiveData8());
 }
 
 void Serial_print_char (char value)
 {
                 UART1_SendData8(value);
                 while (UART1_GetFlagStatus(UART1_FLAG_TC) == RESET); //wait for sending
 }

void serial_send(void){
	GPIO_WriteHigh(GPIOD, GPIO_PIN_4);
}
void serial_recv(void){
	GPIO_WriteLow(GPIOD, GPIO_PIN_4);
}

void serial_send_pressure(char i){
		u32 press = (u32)(pressure[i-1]*10);// 2000000 at maximum
		Serial_print_char(press/10000);
		Serial_print_char((press%10000)/100);
		Serial_print_char(press%100);
}


char uartstate=0;
char loop_sensor=0;
void uart_statemachine(void){
	u8 i=0,data ;
	if(uartstate==0){
		serial_recv();
	}
	if(uartstate==1){
		serial_send();
		for(i=1;i<=5;i++)
			serial_send_pressure(i);
		if (loop_sensor==0)
			Serial_print_char(BOARD_ID+1);
		else
			if (BOARD_ID+1 >= BOARD_FIRST_ID+loop_sensor) Serial_print_char(BOARD_FIRST_ID);
			else Serial_print_char(BOARD_ID+1);
		serial_recv();
		uartstate=0;
	}
	if(uartstate==2){
		serial_send();
		for(i=1;i<=5;i++)
			serial_send_pressure(i);
		Serial_print_char(255);
		serial_recv();
		uartstate=0;
	}

}
//open coolterm 
main()
{
	  //////////////////////////////////////
	u8 i, tmp, val, data;
	u32 cnt=0;
	HsiInit();
	
	Init_GPIOs();
	Init_SPI();
	Uart1_Init(115200);
	delay_ms(100);
	delay_ms(100);
  ///////////////////////////////////////////////////
	for(i=1;i<=5;i++)
		DPS310_init(i);
	while (1) {
		for(i=1;i<=5;i+=1){
			if (DPS310_readPressureAvail(i) && DPS310_readTemperatureAvail(i)){
				DPS310_readSensor(i);
			}		
		}
		uart_statemachine();
	}
}