   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  45                     ; 12 @far @interrupt void NonHandledInterrupt (void)
  45                     ; 13 {
  46                     .text:	section	.text,new
  47  0000               f_NonHandledInterrupt:
  51                     ; 17 	return;
  54  0000 80            	iret
  56                     .const:	section	.text
  57  0000               __vectab:
  58  0000 82            	dc.b	130
  60  0001 00            	dc.b	page(__stext)
  61  0002 0000          	dc.w	__stext
  62  0004 82            	dc.b	130
  64  0005 00            	dc.b	page(f_TRAP_IRQHandler)
  65  0006 0000          	dc.w	f_TRAP_IRQHandler
  66  0008 82            	dc.b	130
  68  0009 00            	dc.b	page(f_TLI_IRQHandler)
  69  000a 0000          	dc.w	f_TLI_IRQHandler
  70  000c 82            	dc.b	130
  72  000d 00            	dc.b	page(f_AWU_IRQHandler)
  73  000e 0000          	dc.w	f_AWU_IRQHandler
  74  0010 82            	dc.b	130
  76  0011 00            	dc.b	page(f_CLK_IRQHandler)
  77  0012 0000          	dc.w	f_CLK_IRQHandler
  78  0014 82            	dc.b	130
  80  0015 00            	dc.b	page(f_EXTI_PORTA_IRQHandler)
  81  0016 0000          	dc.w	f_EXTI_PORTA_IRQHandler
  82  0018 82            	dc.b	130
  84  0019 00            	dc.b	page(f_EXTI_PORTB_IRQHandler)
  85  001a 0000          	dc.w	f_EXTI_PORTB_IRQHandler
  86  001c 82            	dc.b	130
  88  001d 00            	dc.b	page(f_EXTI_PORTC_IRQHandler)
  89  001e 0000          	dc.w	f_EXTI_PORTC_IRQHandler
  90  0020 82            	dc.b	130
  92  0021 00            	dc.b	page(f_EXTI_PORTD_IRQHandler)
  93  0022 0000          	dc.w	f_EXTI_PORTD_IRQHandler
  94  0024 82            	dc.b	130
  96  0025 00            	dc.b	page(f_EXTI_PORTE_IRQHandler)
  97  0026 0000          	dc.w	f_EXTI_PORTE_IRQHandler
  98  0028 82            	dc.b	130
 100  0029 00            	dc.b	page(f_NonHandledInterrupt)
 101  002a 0000          	dc.w	f_NonHandledInterrupt
 102  002c 82            	dc.b	130
 104  002d 00            	dc.b	page(f_NonHandledInterrupt)
 105  002e 0000          	dc.w	f_NonHandledInterrupt
 106  0030 82            	dc.b	130
 108  0031 00            	dc.b	page(f_SPI_IRQHandler)
 109  0032 0000          	dc.w	f_SPI_IRQHandler
 110  0034 82            	dc.b	130
 112  0035 00            	dc.b	page(f_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
 113  0036 0000          	dc.w	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 114  0038 82            	dc.b	130
 116  0039 00            	dc.b	page(f_NonHandledInterrupt)
 117  003a 0000          	dc.w	f_NonHandledInterrupt
 118  003c 82            	dc.b	130
 120  003d 00            	dc.b	page(f_TIM2_UPD_OVF_BRK_IRQHandler)
 121  003e 0000          	dc.w	f_TIM2_UPD_OVF_BRK_IRQHandler
 122  0040 82            	dc.b	130
 124  0041 00            	dc.b	page(f_TIM2_CAP_COM_IRQHandler)
 125  0042 0000          	dc.w	f_TIM2_CAP_COM_IRQHandler
 126  0044 82            	dc.b	130
 128  0045 00            	dc.b	page(f_NonHandledInterrupt)
 129  0046 0000          	dc.w	f_NonHandledInterrupt
 130  0048 82            	dc.b	130
 132  0049 00            	dc.b	page(f_NonHandledInterrupt)
 133  004a 0000          	dc.w	f_NonHandledInterrupt
 134  004c 82            	dc.b	130
 136  004d 00            	dc.b	page(f_UART1_TX_IRQHandler)
 137  004e 0000          	dc.w	f_UART1_TX_IRQHandler
 138  0050 82            	dc.b	130
 140  0051 00            	dc.b	page(f_UART1_RX_IRQHandler)
 141  0052 0000          	dc.w	f_UART1_RX_IRQHandler
 142  0054 82            	dc.b	130
 144  0055 00            	dc.b	page(f_I2C_IRQHandler)
 145  0056 0000          	dc.w	f_I2C_IRQHandler
 146  0058 82            	dc.b	130
 148  0059 00            	dc.b	page(f_NonHandledInterrupt)
 149  005a 0000          	dc.w	f_NonHandledInterrupt
 150  005c 82            	dc.b	130
 152  005d 00            	dc.b	page(f_NonHandledInterrupt)
 153  005e 0000          	dc.w	f_NonHandledInterrupt
 154  0060 82            	dc.b	130
 156  0061 00            	dc.b	page(f_ADC1_IRQHandler)
 157  0062 0000          	dc.w	f_ADC1_IRQHandler
 158  0064 82            	dc.b	130
 160  0065 00            	dc.b	page(f_TIM4_UPD_OVF_IRQHandler)
 161  0066 0000          	dc.w	f_TIM4_UPD_OVF_IRQHandler
 162  0068 82            	dc.b	130
 164  0069 00            	dc.b	page(f_EEPROM_EEC_IRQHandler)
 165  006a 0000          	dc.w	f_EEPROM_EEC_IRQHandler
 166  006c 82            	dc.b	130
 168  006d 00            	dc.b	page(f_NonHandledInterrupt)
 169  006e 0000          	dc.w	f_NonHandledInterrupt
 170  0070 82            	dc.b	130
 172  0071 00            	dc.b	page(f_NonHandledInterrupt)
 173  0072 0000          	dc.w	f_NonHandledInterrupt
 174  0074 82            	dc.b	130
 176  0075 00            	dc.b	page(f_NonHandledInterrupt)
 177  0076 0000          	dc.w	f_NonHandledInterrupt
 178  0078 82            	dc.b	130
 180  0079 00            	dc.b	page(f_NonHandledInterrupt)
 181  007a 0000          	dc.w	f_NonHandledInterrupt
 182  007c 82            	dc.b	130
 184  007d 00            	dc.b	page(f_NonHandledInterrupt)
 185  007e 0000          	dc.w	f_NonHandledInterrupt
 236                     	xdef	__vectab
 237                     	xref	f_EEPROM_EEC_IRQHandler
 238                     	xref	f_TIM4_UPD_OVF_IRQHandler
 239                     	xref	f_ADC1_IRQHandler
 240                     	xref	f_I2C_IRQHandler
 241                     	xref	f_UART1_RX_IRQHandler
 242                     	xref	f_UART1_TX_IRQHandler
 243                     	xref	f_TIM2_CAP_COM_IRQHandler
 244                     	xref	f_TIM2_UPD_OVF_BRK_IRQHandler
 245                     	xref	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 246                     	xref	f_SPI_IRQHandler
 247                     	xref	f_EXTI_PORTE_IRQHandler
 248                     	xref	f_EXTI_PORTD_IRQHandler
 249                     	xref	f_EXTI_PORTC_IRQHandler
 250                     	xref	f_EXTI_PORTB_IRQHandler
 251                     	xref	f_EXTI_PORTA_IRQHandler
 252                     	xref	f_CLK_IRQHandler
 253                     	xref	f_AWU_IRQHandler
 254                     	xref	f_TLI_IRQHandler
 255                     	xref	f_TRAP_IRQHandler
 256                     	xdef	f_NonHandledInterrupt
 257                     	xref	__stext
 276                     	end
