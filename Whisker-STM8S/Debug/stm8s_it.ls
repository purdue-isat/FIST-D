   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 40 @far @interrupt void TRAP_IRQHandler(void)
  43                     ; 41 {
  44                     .text:	section	.text,new
  45  0000               f_TRAP_IRQHandler:
  49                     ; 45 }
  52  0000 80            	iret
  74                     ; 67 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  74                     ; 68 {
  75                     .text:	section	.text,new
  76  0000               f_TLI_IRQHandler:
  80                     ; 72 }
  83  0000 80            	iret
 105                     ; 80 INTERRUPT_HANDLER(AWU_IRQHandler, 1)	
 105                     ; 81 {
 106                     .text:	section	.text,new
 107  0000               f_AWU_IRQHandler:
 111                     ; 85 }
 114  0000 80            	iret
 136                     ; 93 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 136                     ; 94 {
 137                     .text:	section	.text,new
 138  0000               f_CLK_IRQHandler:
 142                     ; 98 }
 145  0000 80            	iret
 168                     ; 106 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 168                     ; 107 {
 169                     .text:	section	.text,new
 170  0000               f_EXTI_PORTA_IRQHandler:
 174                     ; 111 }
 177  0000 80            	iret
 200                     ; 118 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 200                     ; 119 {
 201                     .text:	section	.text,new
 202  0000               f_EXTI_PORTB_IRQHandler:
 206                     ; 123 }
 209  0000 80            	iret
 232                     ; 131 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 232                     ; 132 {
 233                     .text:	section	.text,new
 234  0000               f_EXTI_PORTC_IRQHandler:
 238                     ; 136 }
 241  0000 80            	iret
 264                     ; 144 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 264                     ; 145 {
 265                     .text:	section	.text,new
 266  0000               f_EXTI_PORTD_IRQHandler:
 270                     ; 149 }
 273  0000 80            	iret
 296                     ; 157 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 296                     ; 158 {
 297                     .text:	section	.text,new
 298  0000               f_EXTI_PORTE_IRQHandler:
 302                     ; 162 }
 305  0000 80            	iret
 327                     ; 212 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 327                     ; 213 {
 328                     .text:	section	.text,new
 329  0000               f_SPI_IRQHandler:
 333                     ; 217 }
 336  0000 80            	iret
 359                     ; 225 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 359                     ; 226 {
 360                     .text:	section	.text,new
 361  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 365                     ; 230 }
 368  0000 80            	iret
 391                     ; 238 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 391                     ; 239 {
 392                     .text:	section	.text,new
 393  0000               f_TIM1_CAP_COM_IRQHandler:
 397                     ; 243 }
 400  0000 80            	iret
 423                     ; 278  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 423                     ; 279 {
 424                     .text:	section	.text,new
 425  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 429                     ; 283 }
 432  0000 80            	iret
 455                     ; 291  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 455                     ; 292 {
 456                     .text:	section	.text,new
 457  0000               f_TIM2_CAP_COM_IRQHandler:
 461                     ; 296 }
 464  0000 80            	iret
 487                     ; 336  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 487                     ; 337 {
 488                     .text:	section	.text,new
 489  0000               f_UART1_TX_IRQHandler:
 493                     ; 339 }
 496  0000 80            	iret
 534                     ; 349  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 534                     ; 350 {
 535                     .text:	section	.text,new
 536  0000               f_UART1_RX_IRQHandler:
 538  0000 8a            	push	cc
 539  0001 84            	pop	a
 540  0002 a4bf          	and	a,#191
 541  0004 88            	push	a
 542  0005 86            	pop	cc
 543       00000001      OFST:	set	1
 544  0006 3b0002        	push	c_x+2
 545  0009 be00          	ldw	x,c_x
 546  000b 89            	pushw	x
 547  000c 3b0002        	push	c_y+2
 548  000f be00          	ldw	x,c_y
 549  0011 89            	pushw	x
 550  0012 88            	push	a
 553                     ; 352     u8 x = UART1_ReceiveData8();
 555  0013 cd0000        	call	_UART1_ReceiveData8
 557  0016 6b01          	ld	(OFST+0,sp),a
 559                     ; 353 		if(uartstate==0 && x== BOARD_ID) uartstate=1;
 561  0018 3d00          	tnz	_uartstate
 562  001a 260a          	jrne	L712
 564  001c 7b01          	ld	a,(OFST+0,sp)
 565  001e a1f5          	cp	a,#245
 566  0020 2604          	jrne	L712
 569  0022 35010000      	mov	_uartstate,#1
 570  0026               L712:
 571                     ; 354 		if(uartstate==0 && x>=AUTOSTART_ID && x<=AUTOSTART_ID+10) {
 573  0026 3d00          	tnz	_uartstate
 574  0028 2612          	jrne	L122
 576  002a 7b01          	ld	a,(OFST+0,sp)
 577  002c a1e0          	cp	a,#224
 578  002e 250c          	jrult	L122
 580  0030 7b01          	ld	a,(OFST+0,sp)
 581  0032 a1eb          	cp	a,#235
 582  0034 2406          	jruge	L122
 583                     ; 355 			loop_sensor=x-AUTOSTART_ID;
 585  0036 7b01          	ld	a,(OFST+0,sp)
 586  0038 a0e0          	sub	a,#224
 587  003a b700          	ld	_loop_sensor,a
 588  003c               L122:
 589                     ; 357 		if(uartstate==0 && x== BOARD_id) uartstate=2;
 591  003c 3d00          	tnz	_uartstate
 592  003e 260a          	jrne	L322
 594  0040 7b01          	ld	a,(OFST+0,sp)
 595  0042 a1fd          	cp	a,#253
 596  0044 2604          	jrne	L322
 599  0046 35020000      	mov	_uartstate,#2
 600  004a               L322:
 601                     ; 358 		UART1_ClearITPendingBit(UART1_IT_RXNE);
 603  004a ae0255        	ldw	x,#597
 604  004d cd0000        	call	_UART1_ClearITPendingBit
 606                     ; 359 }
 609  0050 84            	pop	a
 610  0051 85            	popw	x
 611  0052 bf00          	ldw	c_y,x
 612  0054 320002        	pop	c_y+2
 613  0057 85            	popw	x
 614  0058 bf00          	ldw	c_x,x
 615  005a 320002        	pop	c_x+2
 616  005d 80            	iret
 638                     ; 368 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 638                     ; 369 {
 639                     .text:	section	.text,new
 640  0000               f_I2C_IRQHandler:
 644                     ; 373 }
 647  0000 80            	iret
 669                     ; 460  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 669                     ; 461 {
 670                     .text:	section	.text,new
 671  0000               f_ADC1_IRQHandler:
 675                     ; 465 }
 678  0000 80            	iret
 701                     ; 488  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 701                     ; 489 {
 702                     .text:	section	.text,new
 703  0000               f_TIM4_UPD_OVF_IRQHandler:
 707                     ; 493 }
 710  0000 80            	iret
 733                     ; 502 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 733                     ; 503 {
 734                     .text:	section	.text,new
 735  0000               f_EEPROM_EEC_IRQHandler:
 739                     ; 507 }
 742  0000 80            	iret
 754                     	xref.b	_loop_sensor
 755                     	xref.b	_uartstate
 756                     	xdef	f_EEPROM_EEC_IRQHandler
 757                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 758                     	xdef	f_ADC1_IRQHandler
 759                     	xdef	f_I2C_IRQHandler
 760                     	xdef	f_UART1_RX_IRQHandler
 761                     	xdef	f_UART1_TX_IRQHandler
 762                     	xdef	f_TIM2_CAP_COM_IRQHandler
 763                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 764                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 765                     	xdef	f_TIM1_CAP_COM_IRQHandler
 766                     	xdef	f_SPI_IRQHandler
 767                     	xdef	f_EXTI_PORTE_IRQHandler
 768                     	xdef	f_EXTI_PORTD_IRQHandler
 769                     	xdef	f_EXTI_PORTC_IRQHandler
 770                     	xdef	f_EXTI_PORTB_IRQHandler
 771                     	xdef	f_EXTI_PORTA_IRQHandler
 772                     	xdef	f_CLK_IRQHandler
 773                     	xdef	f_AWU_IRQHandler
 774                     	xdef	f_TLI_IRQHandler
 775                     	xdef	f_TRAP_IRQHandler
 776                     	xref	_UART1_ClearITPendingBit
 777                     	xref	_UART1_ReceiveData8
 778                     	xref.b	c_x
 779                     	xref.b	c_y
 798                     	end
