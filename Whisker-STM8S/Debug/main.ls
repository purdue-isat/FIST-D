   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  15                     	bsct
  16  0000               L3_oversample_scalefactor:
  17  0000 00080000      	dc.l	524288
  18  0004 00180000      	dc.l	1572864
  19  0008 00380000      	dc.l	3670016
  20  000c 00780000      	dc.l	7864320
  21  0010 0003e000      	dc.l	253952
  22  0014 0007e000      	dc.l	516096
  23  0018 000fe000      	dc.l	1040384
  24  001c 001fe000      	dc.l	2088960
  65                     ; 37 void assert_failed(u8* file,u32 line)
  65                     ; 38 {
  67                     .text:	section	.text,new
  68  0000               _assert_failed:
  72  0000               L13:
  73  0000 20fe          	jra	L13
 117                     .const:	section	.text
 118  0000               L01:
 119  0000 00000378      	dc.l	888
 120                     ; 48 void delay_ms(uint32_t ms) {
 121                     .text:	section	.text,new
 122  0000               _delay_ms:
 124  0000 5204          	subw	sp,#4
 125       00000004      OFST:	set	4
 128                     ; 50     for (i = 0; i < ((F_CPU / 18 / 1000UL) * ms); i++) {
 130  0002 ae0000        	ldw	x,#0
 131  0005 1f03          	ldw	(OFST-1,sp),x
 132  0007 ae0000        	ldw	x,#0
 133  000a 1f01          	ldw	(OFST-3,sp),x
 136  000c 200a          	jra	L36
 137  000e               L75:
 138                     ; 51         _asm("nop");
 141  000e 9d            nop
 143                     ; 50     for (i = 0; i < ((F_CPU / 18 / 1000UL) * ms); i++) {
 145  000f 96            	ldw	x,sp
 146  0010 1c0001        	addw	x,#OFST-3
 147  0013 a601          	ld	a,#1
 148  0015 cd0000        	call	c_lgadc
 151  0018               L36:
 154  0018 96            	ldw	x,sp
 155  0019 1c0007        	addw	x,#OFST+3
 156  001c cd0000        	call	c_ltor
 158  001f ae0000        	ldw	x,#L01
 159  0022 cd0000        	call	c_lmul
 161  0025 96            	ldw	x,sp
 162  0026 1c0001        	addw	x,#OFST-3
 163  0029 cd0000        	call	c_lcmp
 165  002c 22e0          	jrugt	L75
 166                     ; 53 }
 169  002e 5b04          	addw	sp,#4
 170  0030 81            	ret
 196                     ; 55 void Init_GPIOs(void)
 196                     ; 56 {
 197                     .text:	section	.text,new
 198  0000               _Init_GPIOs:
 202                     ; 57 	GPIO_DeInit(GPIOA);
 204  0000 ae5000        	ldw	x,#20480
 205  0003 cd0000        	call	_GPIO_DeInit
 207                     ; 58 	GPIO_DeInit(GPIOB);
 209  0006 ae5005        	ldw	x,#20485
 210  0009 cd0000        	call	_GPIO_DeInit
 212                     ; 59 	GPIO_DeInit(GPIOC);
 214  000c ae500a        	ldw	x,#20490
 215  000f cd0000        	call	_GPIO_DeInit
 217                     ; 60 	GPIO_DeInit(GPIOD);
 219  0012 ae500f        	ldw	x,#20495
 220  0015 cd0000        	call	_GPIO_DeInit
 222                     ; 62 	GPIO_Init (GPIOD, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_FAST); 
 224  0018 4bf0          	push	#240
 225  001a 4b04          	push	#4
 226  001c ae500f        	ldw	x,#20495
 227  001f cd0000        	call	_GPIO_Init
 229  0022 85            	popw	x
 230                     ; 63 	GPIO_WriteHigh(GPIOD, GPIO_PIN_2);
 232  0023 4b04          	push	#4
 233  0025 ae500f        	ldw	x,#20495
 234  0028 cd0000        	call	_GPIO_WriteHigh
 236  002b 84            	pop	a
 237                     ; 65 	GPIO_Init (GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_FAST); 
 239  002c 4bf0          	push	#240
 240  002e 4b08          	push	#8
 241  0030 ae500f        	ldw	x,#20495
 242  0033 cd0000        	call	_GPIO_Init
 244  0036 85            	popw	x
 245                     ; 66 	GPIO_WriteHigh(GPIOD, GPIO_PIN_3);
 247  0037 4b08          	push	#8
 248  0039 ae500f        	ldw	x,#20495
 249  003c cd0000        	call	_GPIO_WriteHigh
 251  003f 84            	pop	a
 252                     ; 68 	GPIO_Init (GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_HIGH_FAST); 
 254  0040 4bf0          	push	#240
 255  0042 4b02          	push	#2
 256  0044 ae5000        	ldw	x,#20480
 257  0047 cd0000        	call	_GPIO_Init
 259  004a 85            	popw	x
 260                     ; 69 	GPIO_WriteHigh(GPIOA, GPIO_PIN_1);
 262  004b 4b02          	push	#2
 263  004d ae5000        	ldw	x,#20480
 264  0050 cd0000        	call	_GPIO_WriteHigh
 266  0053 84            	pop	a
 267                     ; 71 	GPIO_Init (GPIOA, GPIO_PIN_3, GPIO_MODE_OUT_PP_HIGH_FAST); 
 269  0054 4bf0          	push	#240
 270  0056 4b08          	push	#8
 271  0058 ae5000        	ldw	x,#20480
 272  005b cd0000        	call	_GPIO_Init
 274  005e 85            	popw	x
 275                     ; 72 	GPIO_WriteHigh(GPIOA, GPIO_PIN_3);
 277  005f 4b08          	push	#8
 278  0061 ae5000        	ldw	x,#20480
 279  0064 cd0000        	call	_GPIO_WriteHigh
 281  0067 84            	pop	a
 282                     ; 74 	GPIO_Init (GPIOC, GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_FAST); 
 284  0068 4bf0          	push	#240
 285  006a 4b10          	push	#16
 286  006c ae500a        	ldw	x,#20490
 287  006f cd0000        	call	_GPIO_Init
 289  0072 85            	popw	x
 290                     ; 75 	GPIO_WriteHigh(GPIOC, GPIO_PIN_4);
 292  0073 4b10          	push	#16
 293  0075 ae500a        	ldw	x,#20490
 294  0078 cd0000        	call	_GPIO_WriteHigh
 296  007b 84            	pop	a
 297                     ; 77 	GPIO_Init (GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);
 299  007c 4bf0          	push	#240
 300  007e 4b20          	push	#32
 301  0080 ae500a        	ldw	x,#20490
 302  0083 cd0000        	call	_GPIO_Init
 304  0086 85            	popw	x
 305                     ; 79 	GPIO_Init (GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_HIGH_FAST);
 307  0087 4bf0          	push	#240
 308  0089 4b40          	push	#64
 309  008b ae500a        	ldw	x,#20490
 310  008e cd0000        	call	_GPIO_Init
 312  0091 85            	popw	x
 313                     ; 81 	GPIO_Init (GPIOC, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);
 315  0092 4b40          	push	#64
 316  0094 4b80          	push	#128
 317  0096 ae500a        	ldw	x,#20490
 318  0099 cd0000        	call	_GPIO_Init
 320  009c 85            	popw	x
 321                     ; 84 	GPIO_Init (GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_SLOW);
 323  009d 4bc0          	push	#192
 324  009f 4b10          	push	#16
 325  00a1 ae500f        	ldw	x,#20495
 326  00a4 cd0000        	call	_GPIO_Init
 328  00a7 85            	popw	x
 329                     ; 85 	GPIO_WriteHigh(GPIOD, GPIO_PIN_4);
 331  00a8 4b10          	push	#16
 332  00aa ae500f        	ldw	x,#20495
 333  00ad cd0000        	call	_GPIO_WriteHigh
 335  00b0 84            	pop	a
 336                     ; 87 	GPIO_Init (GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);
 338  00b1 4bf0          	push	#240
 339  00b3 4b20          	push	#32
 340  00b5 ae500f        	ldw	x,#20495
 341  00b8 cd0000        	call	_GPIO_Init
 343  00bb 85            	popw	x
 344                     ; 89 	GPIO_Init (GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);
 346  00bc 4b40          	push	#64
 347  00be 4b40          	push	#64
 348  00c0 ae500f        	ldw	x,#20495
 349  00c3 cd0000        	call	_GPIO_Init
 351  00c6 85            	popw	x
 352                     ; 91 }
 355  00c7 81            	ret
 381                     ; 93 void HsiInit(void)
 381                     ; 94 { 
 382                     .text:	section	.text,new
 383  0000               _HsiInit:
 387                     ; 95     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 389  0000 4f            	clr	a
 390  0001 cd0000        	call	_CLK_HSIPrescalerConfig
 392                     ; 96 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
 394  0004 ae0101        	ldw	x,#257
 395  0007 cd0000        	call	_CLK_PeripheralClockConfig
 397                     ; 97 		CLK_CCOCmd(DISABLE);
 399  000a 4f            	clr	a
 400  000b cd0000        	call	_CLK_CCOCmd
 402                     ; 99 }
 405  000e 81            	ret
 431                     ; 101 void Init_SPI(void)
 431                     ; 102 {
 432                     .text:	section	.text,new
 433  0000               _Init_SPI:
 437                     ; 103      SPI_DeInit();
 439  0000 cd0000        	call	_SPI_DeInit
 441                     ; 104      SPI_Init(SPI_FIRSTBIT_MSB, 
 441                     ; 105               SPI_BAUDRATEPRESCALER_8, 
 441                     ; 106               SPI_MODE_MASTER, 
 441                     ; 107               SPI_CLOCKPOLARITY_HIGH, 
 441                     ; 108               SPI_CLOCKPHASE_2EDGE, 
 441                     ; 109               SPI_DATADIRECTION_2LINES_FULLDUPLEX , 
 441                     ; 110               SPI_NSS_SOFT, 
 441                     ; 111               0x07);
 443  0003 4b07          	push	#7
 444  0005 4b02          	push	#2
 445  0007 4b00          	push	#0
 446  0009 4b01          	push	#1
 447  000b 4b02          	push	#2
 448  000d 4b04          	push	#4
 449  000f ae0010        	ldw	x,#16
 450  0012 cd0000        	call	_SPI_Init
 452  0015 5b06          	addw	sp,#6
 453                     ; 112      SPI_Cmd(ENABLE);
 455  0017 a601          	ld	a,#1
 456  0019 cd0000        	call	_SPI_Cmd
 458                     ; 114 }
 461  001c 81            	ret
 500                     ; 117 void Uart1_Init(u32 Baudrate)
 500                     ; 118 {
 501                     .text:	section	.text,new
 502  0000               _Uart1_Init:
 504       00000000      OFST:	set	0
 507                     ; 119     UART1_DeInit(); 
 509  0000 cd0000        	call	_UART1_DeInit
 511                     ; 120     UART1_Init((u32)Baudrate, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 513  0003 4b0c          	push	#12
 514  0005 4b80          	push	#128
 515  0007 4b00          	push	#0
 516  0009 4b00          	push	#0
 517  000b 4b00          	push	#0
 518  000d 1e0a          	ldw	x,(OFST+10,sp)
 519  000f 89            	pushw	x
 520  0010 1e0a          	ldw	x,(OFST+10,sp)
 521  0012 89            	pushw	x
 522  0013 cd0000        	call	_UART1_Init
 524  0016 5b09          	addw	sp,#9
 525                     ; 121 		UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
 527  0018 4b01          	push	#1
 528  001a ae0205        	ldw	x,#517
 529  001d cd0000        	call	_UART1_ITConfig
 531  0020 84            	pop	a
 532                     ; 123     UART1_Cmd(ENABLE );  
 534  0021 a601          	ld	a,#1
 535  0023 cd0000        	call	_UART1_Cmd
 537                     ; 124 		enableInterrupts();
 540  0026 9a            rim
 542                     ; 125 }
 546  0027 81            	ret
 591                     ; 130 void CS_DPS310(u8 ch, u8 mode) {
 592                     .text:	section	.text,new
 593  0000               _CS_DPS310:
 595  0000 89            	pushw	x
 596       00000000      OFST:	set	0
 599                     ; 131 	if(ch==1){
 601  0001 9e            	ld	a,xh
 602  0002 a101          	cp	a,#1
 603  0004 261b          	jrne	L751
 604                     ; 132 		if (mode == 1) 
 606  0006 9f            	ld	a,xl
 607  0007 a101          	cp	a,#1
 608  0009 2609          	jrne	L161
 609                     ; 133 			GPIO_WriteHigh(GPIOD, GPIO_PIN_2);
 611  000b 4b04          	push	#4
 612  000d ae500f        	ldw	x,#20495
 613  0010 cd0000        	call	_GPIO_WriteHigh
 615  0013 84            	pop	a
 616  0014               L161:
 617                     ; 134 		if (mode == 0) 
 619  0014 0d02          	tnz	(OFST+2,sp)
 620  0016 2609          	jrne	L751
 621                     ; 135 			GPIO_WriteLow(GPIOD, GPIO_PIN_2);
 623  0018 4b04          	push	#4
 624  001a ae500f        	ldw	x,#20495
 625  001d cd0000        	call	_GPIO_WriteLow
 627  0020 84            	pop	a
 628  0021               L751:
 629                     ; 137 	if(ch==2){
 631  0021 7b01          	ld	a,(OFST+1,sp)
 632  0023 a102          	cp	a,#2
 633  0025 261c          	jrne	L561
 634                     ; 138 		if (mode == 1) 
 636  0027 7b02          	ld	a,(OFST+2,sp)
 637  0029 a101          	cp	a,#1
 638  002b 2609          	jrne	L761
 639                     ; 139 			GPIO_WriteHigh(GPIOD, GPIO_PIN_3);
 641  002d 4b08          	push	#8
 642  002f ae500f        	ldw	x,#20495
 643  0032 cd0000        	call	_GPIO_WriteHigh
 645  0035 84            	pop	a
 646  0036               L761:
 647                     ; 140 		if (mode == 0) 
 649  0036 0d02          	tnz	(OFST+2,sp)
 650  0038 2609          	jrne	L561
 651                     ; 141 			GPIO_WriteLow(GPIOD, GPIO_PIN_3);
 653  003a 4b08          	push	#8
 654  003c ae500f        	ldw	x,#20495
 655  003f cd0000        	call	_GPIO_WriteLow
 657  0042 84            	pop	a
 658  0043               L561:
 659                     ; 143 	if(ch==3){
 661  0043 7b01          	ld	a,(OFST+1,sp)
 662  0045 a103          	cp	a,#3
 663  0047 261c          	jrne	L371
 664                     ; 144 		if (mode == 1) 
 666  0049 7b02          	ld	a,(OFST+2,sp)
 667  004b a101          	cp	a,#1
 668  004d 2609          	jrne	L571
 669                     ; 145 			GPIO_WriteHigh(GPIOA, GPIO_PIN_1);
 671  004f 4b02          	push	#2
 672  0051 ae5000        	ldw	x,#20480
 673  0054 cd0000        	call	_GPIO_WriteHigh
 675  0057 84            	pop	a
 676  0058               L571:
 677                     ; 146 		if (mode == 0) 
 679  0058 0d02          	tnz	(OFST+2,sp)
 680  005a 2609          	jrne	L371
 681                     ; 147 			GPIO_WriteLow(GPIOA, GPIO_PIN_1);
 683  005c 4b02          	push	#2
 684  005e ae5000        	ldw	x,#20480
 685  0061 cd0000        	call	_GPIO_WriteLow
 687  0064 84            	pop	a
 688  0065               L371:
 689                     ; 149 	if(ch==4){
 691  0065 7b01          	ld	a,(OFST+1,sp)
 692  0067 a104          	cp	a,#4
 693  0069 261c          	jrne	L102
 694                     ; 150 		if (mode == 1) 
 696  006b 7b02          	ld	a,(OFST+2,sp)
 697  006d a101          	cp	a,#1
 698  006f 2609          	jrne	L302
 699                     ; 151 			GPIO_WriteHigh(GPIOA, GPIO_PIN_3);
 701  0071 4b08          	push	#8
 702  0073 ae5000        	ldw	x,#20480
 703  0076 cd0000        	call	_GPIO_WriteHigh
 705  0079 84            	pop	a
 706  007a               L302:
 707                     ; 152 		if (mode == 0) 
 709  007a 0d02          	tnz	(OFST+2,sp)
 710  007c 2609          	jrne	L102
 711                     ; 153 			GPIO_WriteLow(GPIOA, GPIO_PIN_3);
 713  007e 4b08          	push	#8
 714  0080 ae5000        	ldw	x,#20480
 715  0083 cd0000        	call	_GPIO_WriteLow
 717  0086 84            	pop	a
 718  0087               L102:
 719                     ; 155 	if(ch==5){
 721  0087 7b01          	ld	a,(OFST+1,sp)
 722  0089 a105          	cp	a,#5
 723  008b 261c          	jrne	L702
 724                     ; 156 		if (mode == 1) 
 726  008d 7b02          	ld	a,(OFST+2,sp)
 727  008f a101          	cp	a,#1
 728  0091 2609          	jrne	L112
 729                     ; 157 			GPIO_WriteHigh(GPIOC, GPIO_PIN_4);
 731  0093 4b10          	push	#16
 732  0095 ae500a        	ldw	x,#20490
 733  0098 cd0000        	call	_GPIO_WriteHigh
 735  009b 84            	pop	a
 736  009c               L112:
 737                     ; 158 		if (mode == 0) 
 739  009c 0d02          	tnz	(OFST+2,sp)
 740  009e 2609          	jrne	L702
 741                     ; 159 			GPIO_WriteLow(GPIOC, GPIO_PIN_4);
 743  00a0 4b10          	push	#16
 744  00a2 ae500a        	ldw	x,#20490
 745  00a5 cd0000        	call	_GPIO_WriteLow
 747  00a8 84            	pop	a
 748  00a9               L702:
 749                     ; 161 }
 752  00a9 85            	popw	x
 753  00aa 81            	ret
 818                     ; 163 u8 DPS310_Write(u8 ch, u8 addr, u8 data)
 818                     ; 164 {
 819                     .text:	section	.text,new
 820  0000               _DPS310_Write:
 822  0000 89            	pushw	x
 823  0001 88            	push	a
 824       00000001      OFST:	set	1
 827                     ; 166 	CS_DPS310(ch, 0);
 829  0002 9e            	ld	a,xh
 830  0003 5f            	clrw	x
 831  0004 95            	ld	xh,a
 832  0005 cd0000        	call	_CS_DPS310
 835  0008               L152:
 836                     ; 167 	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
 838  0008 a602          	ld	a,#2
 839  000a cd0000        	call	_SPI_GetFlagStatus
 841  000d 4d            	tnz	a
 842  000e 27f8          	jreq	L152
 843                     ; 168 	SPI_SendData(addr);
 845  0010 7b03          	ld	a,(OFST+2,sp)
 846  0012 cd0000        	call	_SPI_SendData
 849  0015               L752:
 850                     ; 169 	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
 852  0015 a601          	ld	a,#1
 853  0017 cd0000        	call	_SPI_GetFlagStatus
 855  001a 4d            	tnz	a
 856  001b 27f8          	jreq	L752
 857                     ; 170 	recvdata = SPI_ReceiveData();
 859  001d cd0000        	call	_SPI_ReceiveData
 862  0020               L562:
 863                     ; 171 	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
 865  0020 a602          	ld	a,#2
 866  0022 cd0000        	call	_SPI_GetFlagStatus
 868  0025 4d            	tnz	a
 869  0026 27f8          	jreq	L562
 870                     ; 172 	SPI_SendData(data);
 872  0028 7b06          	ld	a,(OFST+5,sp)
 873  002a cd0000        	call	_SPI_SendData
 876  002d               L372:
 877                     ; 173 	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
 879  002d a601          	ld	a,#1
 880  002f cd0000        	call	_SPI_GetFlagStatus
 882  0032 4d            	tnz	a
 883  0033 27f8          	jreq	L372
 884                     ; 174 	recvdata= SPI_ReceiveData();
 886  0035 cd0000        	call	_SPI_ReceiveData
 888  0038 6b01          	ld	(OFST+0,sp),a
 890                     ; 175 	CS_DPS310(ch, 1);
 892  003a 7b02          	ld	a,(OFST+1,sp)
 893  003c ae0001        	ldw	x,#1
 894  003f 95            	ld	xh,a
 895  0040 cd0000        	call	_CS_DPS310
 897                     ; 176 	return recvdata;
 899  0043 7b01          	ld	a,(OFST+0,sp)
 902  0045 5b03          	addw	sp,#3
 903  0047 81            	ret
 959                     ; 178 u8 DPS310_Read(u8 ch, u8 addr)
 959                     ; 179 {
 960                     .text:	section	.text,new
 961  0000               _DPS310_Read:
 963  0000 89            	pushw	x
 964  0001 88            	push	a
 965       00000001      OFST:	set	1
 968                     ; 181 	addr = addr | 0x80;
 970  0002 7b03          	ld	a,(OFST+2,sp)
 971  0004 aa80          	or	a,#128
 972  0006 6b03          	ld	(OFST+2,sp),a
 973                     ; 182 	CS_DPS310(ch, 0);
 975  0008 7b02          	ld	a,(OFST+1,sp)
 976  000a 5f            	clrw	x
 977  000b 95            	ld	xh,a
 978  000c cd0000        	call	_CS_DPS310
 981  000f               L723:
 982                     ; 183 	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
 984  000f a602          	ld	a,#2
 985  0011 cd0000        	call	_SPI_GetFlagStatus
 987  0014 4d            	tnz	a
 988  0015 27f8          	jreq	L723
 989                     ; 184 	SPI_SendData(addr);
 991  0017 7b03          	ld	a,(OFST+2,sp)
 992  0019 cd0000        	call	_SPI_SendData
 995  001c               L533:
 996                     ; 185 	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
 998  001c a601          	ld	a,#1
 999  001e cd0000        	call	_SPI_GetFlagStatus
1001  0021 4d            	tnz	a
1002  0022 27f8          	jreq	L533
1003                     ; 186 	recvdata = SPI_ReceiveData();
1005  0024 cd0000        	call	_SPI_ReceiveData
1008  0027               L343:
1009                     ; 187 	while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET);
1011  0027 a602          	ld	a,#2
1012  0029 cd0000        	call	_SPI_GetFlagStatus
1014  002c 4d            	tnz	a
1015  002d 27f8          	jreq	L343
1016                     ; 188 	SPI_SendData(0x0);
1018  002f 4f            	clr	a
1019  0030 cd0000        	call	_SPI_SendData
1022  0033               L153:
1023                     ; 189 	while (SPI_GetFlagStatus(SPI_FLAG_RXNE) == RESET);
1025  0033 a601          	ld	a,#1
1026  0035 cd0000        	call	_SPI_GetFlagStatus
1028  0038 4d            	tnz	a
1029  0039 27f8          	jreq	L153
1030                     ; 190 	recvdata = SPI_ReceiveData();
1032  003b cd0000        	call	_SPI_ReceiveData
1034  003e 6b01          	ld	(OFST+0,sp),a
1036                     ; 191 	CS_DPS310(ch, 1);
1038  0040 7b02          	ld	a,(OFST+1,sp)
1039  0042 ae0001        	ldw	x,#1
1040  0045 95            	ld	xh,a
1041  0046 cd0000        	call	_CS_DPS310
1043                     ; 192 	return recvdata;
1045  0049 7b01          	ld	a,(OFST+0,sp)
1048  004b 5b03          	addw	sp,#3
1049  004d 81            	ret
1101                     ; 194 u8 test_bit(u8 val, u8 i) {
1102                     .text:	section	.text,new
1103  0000               _test_bit:
1105  0000 89            	pushw	x
1106  0001 88            	push	a
1107       00000001      OFST:	set	1
1110                     ; 195 	u8 res =0;
1112                     ; 196 	res = ((val>>i) & 0x1);
1114  0002 9f            	ld	a,xl
1115  0003 5f            	clrw	x
1116  0004 97            	ld	xl,a
1117  0005 7b02          	ld	a,(OFST+1,sp)
1118  0007 5d            	tnzw	x
1119  0008 2704          	jreq	L23
1120  000a               L43:
1121  000a 44            	srl	a
1122  000b 5a            	decw	x
1123  000c 26fc          	jrne	L43
1124  000e               L23:
1125  000e a401          	and	a,#1
1126  0010 6b01          	ld	(OFST+0,sp),a
1128                     ; 197 	return res;
1130  0012 7b01          	ld	a,(OFST+0,sp)
1133  0014 5b03          	addw	sp,#3
1134  0016 81            	ret
1177                     ; 200 static int32_t twosComplement(int32_t val, uint8_t bits) {
1178                     .text:	section	.text,new
1179  0000               L304_twosComplement:
1181       00000000      OFST:	set	0
1184                     ; 201   if (val & ((uint32_t)1 << (bits - 1))) {
1186  0000 ae0001        	ldw	x,#1
1187  0003 bf02          	ldw	c_lreg+2,x
1188  0005 ae0000        	ldw	x,#0
1189  0008 bf00          	ldw	c_lreg,x
1190  000a 7b07          	ld	a,(OFST+7,sp)
1191  000c 4a            	dec	a
1192  000d cd0000        	call	c_llsh
1194  0010 96            	ldw	x,sp
1195  0011 1c0003        	addw	x,#OFST+3
1196  0014 cd0000        	call	c_land
1198  0017 cd0000        	call	c_lrzmp
1200  001a 2716          	jreq	L724
1201                     ; 202     val -= (uint32_t)1 << bits;
1203  001c ae0001        	ldw	x,#1
1204  001f bf02          	ldw	c_lreg+2,x
1205  0021 ae0000        	ldw	x,#0
1206  0024 bf00          	ldw	c_lreg,x
1207  0026 7b07          	ld	a,(OFST+7,sp)
1208  0028 cd0000        	call	c_llsh
1210  002b 96            	ldw	x,sp
1211  002c 1c0003        	addw	x,#OFST+3
1212  002f cd0000        	call	c_lgsub
1214  0032               L724:
1215                     ; 204   return val;
1217  0032 96            	ldw	x,sp
1218  0033 1c0003        	addw	x,#OFST+3
1219  0036 cd0000        	call	c_ltor
1223  0039 81            	ret
1398                     ; 208 u8 DPS310_init(u8 ch)
1398                     ; 209 {
1399                     .text:	section	.text,new
1400  0000               _DPS310_init:
1402  0000 88            	push	a
1403  0001 5232          	subw	sp,#50
1404       00000032      OFST:	set	50
1407                     ; 218 	val = DPS310_Read(ch,(u8)DPS310_PRODREVID );
1409  0003 ae000d        	ldw	x,#13
1410  0006 95            	ld	xh,a
1411  0007 cd0000        	call	_DPS310_Read
1413  000a 6b32          	ld	(OFST+0,sp),a
1415                     ; 219 	if(val!=0x10) return 0;
1417  000c 7b32          	ld	a,(OFST+0,sp)
1418  000e a110          	cp	a,#16
1419  0010 2705          	jreq	L735
1422  0012 4f            	clr	a
1424  0013 ac560356      	jpf	L44
1425  0017               L735:
1426                     ; 221 	DPS310_Write(ch,DPS310_RESET,0x89 );
1428  0017 4b89          	push	#137
1429  0019 7b34          	ld	a,(OFST+2,sp)
1430  001b ae000c        	ldw	x,#12
1431  001e 95            	ld	xh,a
1432  001f cd0000        	call	_DPS310_Write
1434  0022 84            	pop	a
1435                     ; 222 	delay_ms(10);
1437  0023 ae000a        	ldw	x,#10
1438  0026 89            	pushw	x
1439  0027 ae0000        	ldw	x,#0
1440  002a 89            	pushw	x
1441  002b cd0000        	call	_delay_ms
1443  002e 5b04          	addw	sp,#4
1444  0030               L145:
1445                     ; 224 		meas_cfg = DPS310_Read(ch,(u8)DPS310_MEASCFG );
1447  0030 7b33          	ld	a,(OFST+1,sp)
1448  0032 ae0008        	ldw	x,#8
1449  0035 95            	ld	xh,a
1450  0036 cd0000        	call	_DPS310_Read
1452  0039 6b32          	ld	(OFST+0,sp),a
1454                     ; 225 		if (test_bit(meas_cfg, 6)) break;
1456  003b 7b32          	ld	a,(OFST+0,sp)
1457  003d ae0006        	ldw	x,#6
1458  0040 95            	ld	xh,a
1459  0041 cd0000        	call	_test_bit
1461  0044 4d            	tnz	a
1462  0045 2603          	jrne	L64
1463  0047 cc0359        	jp	L545
1464  004a               L64:
1466  004a               L745:
1467                     ; 230 		meas_cfg = DPS310_Read(ch,(u8)DPS310_MEASCFG );
1469  004a 7b33          	ld	a,(OFST+1,sp)
1470  004c ae0008        	ldw	x,#8
1471  004f 95            	ld	xh,a
1472  0050 cd0000        	call	_DPS310_Read
1474  0053 6b32          	ld	(OFST+0,sp),a
1476                     ; 231 		if (test_bit(meas_cfg, 7)) break;
1478  0055 7b32          	ld	a,(OFST+0,sp)
1479  0057 ae0007        	ldw	x,#7
1480  005a 95            	ld	xh,a
1481  005b cd0000        	call	_test_bit
1483  005e 4d            	tnz	a
1484  005f 2603          	jrne	L05
1485  0061 cc036a        	jp	L355
1486  0064               L05:
1488                     ; 235 	for (i = 0; i < 18; i++) {
1490  0064 0f32          	clr	(OFST+0,sp)
1492  0066               L555:
1493                     ; 236 		coeffs[i] = DPS310_Read(ch,(u8)(0x10+i) );
1495  0066 96            	ldw	x,sp
1496  0067 1c0020        	addw	x,#OFST-18
1497  006a 9f            	ld	a,xl
1498  006b 5e            	swapw	x
1499  006c 1b32          	add	a,(OFST+0,sp)
1500  006e 2401          	jrnc	L24
1501  0070 5c            	incw	x
1502  0071               L24:
1503  0071 02            	rlwa	x,a
1504  0072 89            	pushw	x
1505  0073 7b34          	ld	a,(OFST+2,sp)
1506  0075 ab10          	add	a,#16
1507  0077 97            	ld	xl,a
1508  0078 7b35          	ld	a,(OFST+3,sp)
1509  007a 95            	ld	xh,a
1510  007b cd0000        	call	_DPS310_Read
1512  007e 85            	popw	x
1513  007f f7            	ld	(x),a
1514                     ; 235 	for (i = 0; i < 18; i++) {
1516  0080 0c32          	inc	(OFST+0,sp)
1520  0082 7b32          	ld	a,(OFST+0,sp)
1521  0084 a112          	cp	a,#18
1522  0086 25de          	jrult	L555
1523                     ; 238   _c0 = ((uint16_t)coeffs[0] << 4) | (((uint16_t)coeffs[1] >> 4) & 0x0F);
1525  0088 7b21          	ld	a,(OFST-17,sp)
1526  008a 4e            	swap	a
1527  008b a40f          	and	a,#15
1528  008d 5f            	clrw	x
1529  008e a40f          	and	a,#15
1530  0090 5f            	clrw	x
1531  0091 5f            	clrw	x
1532  0092 97            	ld	xl,a
1533  0093 1f07          	ldw	(OFST-43,sp),x
1535  0095 7b20          	ld	a,(OFST-18,sp)
1536  0097 5f            	clrw	x
1537  0098 97            	ld	xl,a
1538  0099 58            	sllw	x
1539  009a 58            	sllw	x
1540  009b 58            	sllw	x
1541  009c 58            	sllw	x
1542  009d 01            	rrwa	x,a
1543  009e 1a08          	or	a,(OFST-42,sp)
1544  00a0 01            	rrwa	x,a
1545  00a1 1a07          	or	a,(OFST-43,sp)
1546  00a3 01            	rrwa	x,a
1547  00a4 1f16          	ldw	(OFST-28,sp),x
1549                     ; 239   _c0 = twosComplement(_c0, 12);
1551  00a6 4b0c          	push	#12
1552  00a8 1e17          	ldw	x,(OFST-27,sp)
1553  00aa cd0000        	call	c_itolx
1555  00ad be02          	ldw	x,c_lreg+2
1556  00af 89            	pushw	x
1557  00b0 be00          	ldw	x,c_lreg
1558  00b2 89            	pushw	x
1559  00b3 cd0000        	call	L304_twosComplement
1561  00b6 5b05          	addw	sp,#5
1562  00b8 be02          	ldw	x,c_lreg+2
1563  00ba 1f16          	ldw	(OFST-28,sp),x
1565                     ; 241   _c1 = twosComplement((((uint16_t)coeffs[1] & 0x0F) << 8) | coeffs[2], 12);
1567  00bc 4b0c          	push	#12
1568  00be 7b22          	ld	a,(OFST-16,sp)
1569  00c0 a40f          	and	a,#15
1570  00c2 5f            	clrw	x
1571  00c3 97            	ld	xl,a
1572  00c4 7b23          	ld	a,(OFST-15,sp)
1573  00c6 02            	rlwa	x,a
1574  00c7 cd0000        	call	c_uitolx
1576  00ca be02          	ldw	x,c_lreg+2
1577  00cc 89            	pushw	x
1578  00cd be00          	ldw	x,c_lreg
1579  00cf 89            	pushw	x
1580  00d0 cd0000        	call	L304_twosComplement
1582  00d3 5b05          	addw	sp,#5
1583  00d5 be02          	ldw	x,c_lreg+2
1584  00d7 1f09          	ldw	(OFST-41,sp),x
1586                     ; 243   _c00 = ((uint32_t)coeffs[3] << 12) | ((uint32_t)coeffs[4] << 4) |
1586                     ; 244          (((uint32_t)coeffs[5] >> 4) & 0x0F);
1588  00d9 7b25          	ld	a,(OFST-13,sp)
1589  00db 4e            	swap	a
1590  00dc a40f          	and	a,#15
1591  00de a40f          	and	a,#15
1592  00e0 b703          	ld	c_lreg+3,a
1593  00e2 3f02          	clr	c_lreg+2
1594  00e4 3f01          	clr	c_lreg+1
1595  00e6 3f00          	clr	c_lreg
1596  00e8 96            	ldw	x,sp
1597  00e9 1c0005        	addw	x,#OFST-45
1598  00ec cd0000        	call	c_rtol
1601  00ef 7b24          	ld	a,(OFST-14,sp)
1602  00f1 5f            	clrw	x
1603  00f2 97            	ld	xl,a
1604  00f3 a610          	ld	a,#16
1605  00f5 42            	mul	x,a
1606  00f6 cd0000        	call	c_uitolx
1608  00f9 96            	ldw	x,sp
1609  00fa 1c0001        	addw	x,#OFST-49
1610  00fd cd0000        	call	c_rtol
1613  0100 7b23          	ld	a,(OFST-15,sp)
1614  0102 5f            	clrw	x
1615  0103 97            	ld	xl,a
1616  0104 90ae1000      	ldw	y,#4096
1617  0108 cd0000        	call	c_umul
1619  010b 96            	ldw	x,sp
1620  010c 1c0001        	addw	x,#OFST-49
1621  010f cd0000        	call	c_lor
1623  0112 96            	ldw	x,sp
1624  0113 1c0005        	addw	x,#OFST-45
1625  0116 cd0000        	call	c_lor
1627  0119 96            	ldw	x,sp
1628  011a 1c0018        	addw	x,#OFST-26
1629  011d cd0000        	call	c_rtol
1632                     ; 245   _c00 = twosComplement(_c00, 20);
1634  0120 4b14          	push	#20
1635  0122 1e1b          	ldw	x,(OFST-23,sp)
1636  0124 89            	pushw	x
1637  0125 1e1b          	ldw	x,(OFST-23,sp)
1638  0127 89            	pushw	x
1639  0128 cd0000        	call	L304_twosComplement
1641  012b 5b05          	addw	sp,#5
1642  012d 96            	ldw	x,sp
1643  012e 1c0018        	addw	x,#OFST-26
1644  0131 cd0000        	call	c_rtol
1647                     ; 247   _c10 = (((uint32_t)coeffs[5] & 0x0F) << 16) | ((uint32_t)coeffs[6] << 8) |
1647                     ; 248          (uint32_t)coeffs[7];
1649  0134 7b27          	ld	a,(OFST-11,sp)
1650  0136 b703          	ld	c_lreg+3,a
1651  0138 3f02          	clr	c_lreg+2
1652  013a 3f01          	clr	c_lreg+1
1653  013c 3f00          	clr	c_lreg
1654  013e 96            	ldw	x,sp
1655  013f 1c0005        	addw	x,#OFST-45
1656  0142 cd0000        	call	c_rtol
1659  0145 7b26          	ld	a,(OFST-12,sp)
1660  0147 5f            	clrw	x
1661  0148 97            	ld	xl,a
1662  0149 90ae0100      	ldw	y,#256
1663  014d cd0000        	call	c_umul
1665  0150 96            	ldw	x,sp
1666  0151 1c0001        	addw	x,#OFST-49
1667  0154 cd0000        	call	c_rtol
1670  0157 7b25          	ld	a,(OFST-13,sp)
1671  0159 a40f          	and	a,#15
1672  015b b703          	ld	c_lreg+3,a
1673  015d 3f02          	clr	c_lreg+2
1674  015f 3f01          	clr	c_lreg+1
1675  0161 3f00          	clr	c_lreg
1676  0163 be02          	ldw	x,c_lreg+2
1677  0165 bf00          	ldw	c_lreg,x
1678  0167 5f            	clrw	x
1679  0168 bf02          	ldw	c_lreg+2,x
1680  016a 96            	ldw	x,sp
1681  016b 1c0001        	addw	x,#OFST-49
1682  016e cd0000        	call	c_lor
1684  0171 96            	ldw	x,sp
1685  0172 1c0005        	addw	x,#OFST-45
1686  0175 cd0000        	call	c_lor
1688  0178 96            	ldw	x,sp
1689  0179 1c001c        	addw	x,#OFST-22
1690  017c cd0000        	call	c_rtol
1693                     ; 249   _c10 = twosComplement(_c10, 20);
1695  017f 4b14          	push	#20
1696  0181 1e1f          	ldw	x,(OFST-19,sp)
1697  0183 89            	pushw	x
1698  0184 1e1f          	ldw	x,(OFST-19,sp)
1699  0186 89            	pushw	x
1700  0187 cd0000        	call	L304_twosComplement
1702  018a 5b05          	addw	sp,#5
1703  018c 96            	ldw	x,sp
1704  018d 1c001c        	addw	x,#OFST-22
1705  0190 cd0000        	call	c_rtol
1708                     ; 251   _c01 = twosComplement(((uint16_t)coeffs[8] << 8) | (uint16_t)coeffs[9], 16);
1710  0193 4b10          	push	#16
1711  0195 7b2a          	ld	a,(OFST-8,sp)
1712  0197 5f            	clrw	x
1713  0198 97            	ld	xl,a
1714  0199 1f08          	ldw	(OFST-42,sp),x
1716  019b 7b29          	ld	a,(OFST-9,sp)
1717  019d 5f            	clrw	x
1718  019e 97            	ld	xl,a
1719  019f 4f            	clr	a
1720  01a0 02            	rlwa	x,a
1721  01a1 01            	rrwa	x,a
1722  01a2 1a09          	or	a,(OFST-41,sp)
1723  01a4 01            	rrwa	x,a
1724  01a5 1a08          	or	a,(OFST-42,sp)
1725  01a7 01            	rrwa	x,a
1726  01a8 cd0000        	call	c_uitolx
1728  01ab be02          	ldw	x,c_lreg+2
1729  01ad 89            	pushw	x
1730  01ae be00          	ldw	x,c_lreg
1731  01b0 89            	pushw	x
1732  01b1 cd0000        	call	L304_twosComplement
1734  01b4 5b05          	addw	sp,#5
1735  01b6 be02          	ldw	x,c_lreg+2
1736  01b8 1f0b          	ldw	(OFST-39,sp),x
1738                     ; 252   _c11 = twosComplement(((uint16_t)coeffs[10] << 8) | (uint16_t)coeffs[11], 16);
1740  01ba 4b10          	push	#16
1741  01bc 7b2c          	ld	a,(OFST-6,sp)
1742  01be 5f            	clrw	x
1743  01bf 97            	ld	xl,a
1744  01c0 1f08          	ldw	(OFST-42,sp),x
1746  01c2 7b2b          	ld	a,(OFST-7,sp)
1747  01c4 5f            	clrw	x
1748  01c5 97            	ld	xl,a
1749  01c6 4f            	clr	a
1750  01c7 02            	rlwa	x,a
1751  01c8 01            	rrwa	x,a
1752  01c9 1a09          	or	a,(OFST-41,sp)
1753  01cb 01            	rrwa	x,a
1754  01cc 1a08          	or	a,(OFST-42,sp)
1755  01ce 01            	rrwa	x,a
1756  01cf cd0000        	call	c_uitolx
1758  01d2 be02          	ldw	x,c_lreg+2
1759  01d4 89            	pushw	x
1760  01d5 be00          	ldw	x,c_lreg
1761  01d7 89            	pushw	x
1762  01d8 cd0000        	call	L304_twosComplement
1764  01db 5b05          	addw	sp,#5
1765  01dd be02          	ldw	x,c_lreg+2
1766  01df 1f0d          	ldw	(OFST-37,sp),x
1768                     ; 253   _c20 = twosComplement(((uint16_t)coeffs[12] << 8) | (uint16_t)coeffs[13], 16);
1770  01e1 4b10          	push	#16
1771  01e3 7b2e          	ld	a,(OFST-4,sp)
1772  01e5 5f            	clrw	x
1773  01e6 97            	ld	xl,a
1774  01e7 1f08          	ldw	(OFST-42,sp),x
1776  01e9 7b2d          	ld	a,(OFST-5,sp)
1777  01eb 5f            	clrw	x
1778  01ec 97            	ld	xl,a
1779  01ed 4f            	clr	a
1780  01ee 02            	rlwa	x,a
1781  01ef 01            	rrwa	x,a
1782  01f0 1a09          	or	a,(OFST-41,sp)
1783  01f2 01            	rrwa	x,a
1784  01f3 1a08          	or	a,(OFST-42,sp)
1785  01f5 01            	rrwa	x,a
1786  01f6 cd0000        	call	c_uitolx
1788  01f9 be02          	ldw	x,c_lreg+2
1789  01fb 89            	pushw	x
1790  01fc be00          	ldw	x,c_lreg
1791  01fe 89            	pushw	x
1792  01ff cd0000        	call	L304_twosComplement
1794  0202 5b05          	addw	sp,#5
1795  0204 be02          	ldw	x,c_lreg+2
1796  0206 1f0f          	ldw	(OFST-35,sp),x
1798                     ; 254   _c21 = twosComplement(((uint16_t)coeffs[14] << 8) | (uint16_t)coeffs[15], 16);
1800  0208 4b10          	push	#16
1801  020a 7b30          	ld	a,(OFST-2,sp)
1802  020c 5f            	clrw	x
1803  020d 97            	ld	xl,a
1804  020e 1f08          	ldw	(OFST-42,sp),x
1806  0210 7b2f          	ld	a,(OFST-3,sp)
1807  0212 5f            	clrw	x
1808  0213 97            	ld	xl,a
1809  0214 4f            	clr	a
1810  0215 02            	rlwa	x,a
1811  0216 01            	rrwa	x,a
1812  0217 1a09          	or	a,(OFST-41,sp)
1813  0219 01            	rrwa	x,a
1814  021a 1a08          	or	a,(OFST-42,sp)
1815  021c 01            	rrwa	x,a
1816  021d cd0000        	call	c_uitolx
1818  0220 be02          	ldw	x,c_lreg+2
1819  0222 89            	pushw	x
1820  0223 be00          	ldw	x,c_lreg
1821  0225 89            	pushw	x
1822  0226 cd0000        	call	L304_twosComplement
1824  0229 5b05          	addw	sp,#5
1825  022b be02          	ldw	x,c_lreg+2
1826  022d 1f11          	ldw	(OFST-33,sp),x
1828                     ; 255   _c30 = twosComplement(((uint16_t)coeffs[16] << 8) | (uint16_t)coeffs[17], 16);
1830  022f 4b10          	push	#16
1831  0231 7b32          	ld	a,(OFST+0,sp)
1832  0233 5f            	clrw	x
1833  0234 97            	ld	xl,a
1834  0235 1f08          	ldw	(OFST-42,sp),x
1836  0237 7b31          	ld	a,(OFST-1,sp)
1837  0239 5f            	clrw	x
1838  023a 97            	ld	xl,a
1839  023b 4f            	clr	a
1840  023c 02            	rlwa	x,a
1841  023d 01            	rrwa	x,a
1842  023e 1a09          	or	a,(OFST-41,sp)
1843  0240 01            	rrwa	x,a
1844  0241 1a08          	or	a,(OFST-42,sp)
1845  0243 01            	rrwa	x,a
1846  0244 cd0000        	call	c_uitolx
1848  0247 be02          	ldw	x,c_lreg+2
1849  0249 89            	pushw	x
1850  024a be00          	ldw	x,c_lreg
1851  024c 89            	pushw	x
1852  024d cd0000        	call	L304_twosComplement
1854  0250 5b05          	addw	sp,#5
1855  0252 be02          	ldw	x,c_lreg+2
1856  0254 1f13          	ldw	(OFST-31,sp),x
1858                     ; 265 	c0[ch-1]=_c0;
1860  0256 7b33          	ld	a,(OFST+1,sp)
1861  0258 5f            	clrw	x
1862  0259 97            	ld	xl,a
1863  025a 58            	sllw	x
1864  025b 5a            	decw	x
1865  025c 5a            	decw	x
1866  025d 1616          	ldw	y,(OFST-28,sp)
1867  025f efb4          	ldw	(_c0,x),y
1868                     ; 266 	c1[ch-1]=_c1;
1870  0261 7b33          	ld	a,(OFST+1,sp)
1871  0263 5f            	clrw	x
1872  0264 97            	ld	xl,a
1873  0265 58            	sllw	x
1874  0266 5a            	decw	x
1875  0267 5a            	decw	x
1876  0268 1609          	ldw	y,(OFST-41,sp)
1877  026a efaa          	ldw	(_c1,x),y
1878                     ; 267 	c00[ch-1]=_c00;
1880  026c 7b33          	ld	a,(OFST+1,sp)
1881  026e 97            	ld	xl,a
1882  026f a604          	ld	a,#4
1883  0271 42            	mul	x,a
1884  0272 1d0004        	subw	x,#4
1885  0275 7b1b          	ld	a,(OFST-23,sp)
1886  0277 e799          	ld	(_c00+3,x),a
1887  0279 7b1a          	ld	a,(OFST-24,sp)
1888  027b e798          	ld	(_c00+2,x),a
1889  027d 7b19          	ld	a,(OFST-25,sp)
1890  027f e797          	ld	(_c00+1,x),a
1891  0281 7b18          	ld	a,(OFST-26,sp)
1892  0283 e796          	ld	(_c00,x),a
1893                     ; 268 	c10[ch-1]=_c10;
1895  0285 7b33          	ld	a,(OFST+1,sp)
1896  0287 97            	ld	xl,a
1897  0288 a604          	ld	a,#4
1898  028a 42            	mul	x,a
1899  028b 1d0004        	subw	x,#4
1900  028e 7b1f          	ld	a,(OFST-19,sp)
1901  0290 e785          	ld	(_c10+3,x),a
1902  0292 7b1e          	ld	a,(OFST-20,sp)
1903  0294 e784          	ld	(_c10+2,x),a
1904  0296 7b1d          	ld	a,(OFST-21,sp)
1905  0298 e783          	ld	(_c10+1,x),a
1906  029a 7b1c          	ld	a,(OFST-22,sp)
1907  029c e782          	ld	(_c10,x),a
1908                     ; 269 	c01[ch-1]=_c01;
1910  029e 7b33          	ld	a,(OFST+1,sp)
1911  02a0 5f            	clrw	x
1912  02a1 97            	ld	xl,a
1913  02a2 58            	sllw	x
1914  02a3 5a            	decw	x
1915  02a4 5a            	decw	x
1916  02a5 160b          	ldw	y,(OFST-39,sp)
1917  02a7 ef78          	ldw	(_c01,x),y
1918                     ; 270 	c11[ch-1]=_c11;
1920  02a9 7b33          	ld	a,(OFST+1,sp)
1921  02ab 5f            	clrw	x
1922  02ac 97            	ld	xl,a
1923  02ad 58            	sllw	x
1924  02ae 5a            	decw	x
1925  02af 5a            	decw	x
1926  02b0 160d          	ldw	y,(OFST-37,sp)
1927  02b2 ef6e          	ldw	(_c11,x),y
1928                     ; 271 	c20[ch-1]=_c20;
1930  02b4 7b33          	ld	a,(OFST+1,sp)
1931  02b6 5f            	clrw	x
1932  02b7 97            	ld	xl,a
1933  02b8 58            	sllw	x
1934  02b9 5a            	decw	x
1935  02ba 5a            	decw	x
1936  02bb 160f          	ldw	y,(OFST-35,sp)
1937  02bd ef64          	ldw	(_c20,x),y
1938                     ; 272 	c21[ch-1]=_c21;
1940  02bf 7b33          	ld	a,(OFST+1,sp)
1941  02c1 5f            	clrw	x
1942  02c2 97            	ld	xl,a
1943  02c3 58            	sllw	x
1944  02c4 5a            	decw	x
1945  02c5 5a            	decw	x
1946  02c6 1611          	ldw	y,(OFST-33,sp)
1947  02c8 ef5a          	ldw	(_c21,x),y
1948                     ; 273 	c30[ch-1]=_c30;
1950  02ca 7b33          	ld	a,(OFST+1,sp)
1951  02cc 5f            	clrw	x
1952  02cd 97            	ld	xl,a
1953  02ce 58            	sllw	x
1954  02cf 5a            	decw	x
1955  02d0 5a            	decw	x
1956  02d1 1613          	ldw	y,(OFST-31,sp)
1957  02d3 ef50          	ldw	(_c30,x),y
1958                     ; 276 	val = (SAMPLE_RATE_PRESSURE<<4) + OVERSAMPLE_PRESSURE;
1960                     ; 277 	DPS310_Write(ch,(u8)DPS310_PRSCFG, val );
1962  02d5 4b63          	push	#99
1963  02d7 7b34          	ld	a,(OFST+2,sp)
1964  02d9 ae0006        	ldw	x,#6
1965  02dc 95            	ld	xh,a
1966  02dd cd0000        	call	_DPS310_Write
1968  02e0 84            	pop	a
1969                     ; 279 	val = DPS310_Read(ch,(u8)DPS310_CFGREG );
1971  02e1 7b33          	ld	a,(OFST+1,sp)
1972  02e3 ae0009        	ldw	x,#9
1973  02e6 95            	ld	xh,a
1974  02e7 cd0000        	call	_DPS310_Read
1976  02ea 6b32          	ld	(OFST+0,sp),a
1978                     ; 284 	DPS310_Write(ch,(u8)DPS310_CFGREG, val );
1980  02ec 7b32          	ld	a,(OFST+0,sp)
1981  02ee 88            	push	a
1982  02ef 7b34          	ld	a,(OFST+2,sp)
1983  02f1 ae0009        	ldw	x,#9
1984  02f4 95            	ld	xh,a
1985  02f5 cd0000        	call	_DPS310_Write
1987  02f8 84            	pop	a
1988                     ; 287 	val = (SAMPLE_RATE_TEMP<<4) + OVERSAMPLE_TEMP;
1990                     ; 288 	DPS310_Write(ch,(u8)DPS310_TMPCFG, val );
1992  02f9 4b63          	push	#99
1993  02fb 7b34          	ld	a,(OFST+2,sp)
1994  02fd ae0007        	ldw	x,#7
1995  0300 95            	ld	xh,a
1996  0301 cd0000        	call	_DPS310_Write
1998  0304 84            	pop	a
1999                     ; 290 	val2 = DPS310_Read(ch,(u8)DPS310_TMPCFG );
2001  0305 7b33          	ld	a,(OFST+1,sp)
2002  0307 ae0007        	ldw	x,#7
2003  030a 95            	ld	xh,a
2004  030b cd0000        	call	_DPS310_Read
2006  030e 6b15          	ld	(OFST-29,sp),a
2008                     ; 291 	val = DPS310_Read(ch,(u8)DPS310_TMPCOEFSRCE );
2010  0310 7b33          	ld	a,(OFST+1,sp)
2011  0312 ae0028        	ldw	x,#40
2012  0315 95            	ld	xh,a
2013  0316 cd0000        	call	_DPS310_Read
2015  0319 6b32          	ld	(OFST+0,sp),a
2017                     ; 292 	val2 = val2 | (val & 0x80);
2019  031b 7b32          	ld	a,(OFST+0,sp)
2020  031d a480          	and	a,#128
2021  031f 1a15          	or	a,(OFST-29,sp)
2022  0321 6b15          	ld	(OFST-29,sp),a
2024                     ; 293 	DPS310_Write(ch,(u8)DPS310_TMPCFG, val2 );
2026  0323 7b15          	ld	a,(OFST-29,sp)
2027  0325 88            	push	a
2028  0326 7b34          	ld	a,(OFST+2,sp)
2029  0328 ae0007        	ldw	x,#7
2030  032b 95            	ld	xh,a
2031  032c cd0000        	call	_DPS310_Write
2033  032f 84            	pop	a
2034                     ; 295 	val = DPS310_Read(ch,(u8)DPS310_MEASCFG );
2036  0330 7b33          	ld	a,(OFST+1,sp)
2037  0332 ae0008        	ldw	x,#8
2038  0335 95            	ld	xh,a
2039  0336 cd0000        	call	_DPS310_Read
2041  0339 6b32          	ld	(OFST+0,sp),a
2043                     ; 296 	val = val & 0xF8;
2045  033b 7b32          	ld	a,(OFST+0,sp)
2046  033d a4f8          	and	a,#248
2047  033f 6b32          	ld	(OFST+0,sp),a
2049                     ; 297 	val = val + DPS310_CONT_PRESTEMP;
2051  0341 7b32          	ld	a,(OFST+0,sp)
2052  0343 ab07          	add	a,#7
2053  0345 6b32          	ld	(OFST+0,sp),a
2055                     ; 298 	DPS310_Write(ch, (u8)DPS310_MEASCFG, val);
2057  0347 7b32          	ld	a,(OFST+0,sp)
2058  0349 88            	push	a
2059  034a 7b34          	ld	a,(OFST+2,sp)
2060  034c ae0008        	ldw	x,#8
2061  034f 95            	ld	xh,a
2062  0350 cd0000        	call	_DPS310_Write
2064  0353 84            	pop	a
2065                     ; 301 	return 1;
2067  0354 a601          	ld	a,#1
2069  0356               L44:
2071  0356 5b33          	addw	sp,#51
2072  0358 81            	ret
2073  0359               L545:
2074                     ; 226 		delay_ms(1);
2076  0359 ae0001        	ldw	x,#1
2077  035c 89            	pushw	x
2078  035d ae0000        	ldw	x,#0
2079  0360 89            	pushw	x
2080  0361 cd0000        	call	_delay_ms
2082  0364 5b04          	addw	sp,#4
2084  0366 ac300030      	jpf	L145
2085  036a               L355:
2086                     ; 232 		delay_ms(1);
2088  036a ae0001        	ldw	x,#1
2089  036d 89            	pushw	x
2090  036e ae0000        	ldw	x,#0
2091  0371 89            	pushw	x
2092  0372 cd0000        	call	_delay_ms
2094  0375 5b04          	addw	sp,#4
2096  0377 ac4a004a      	jpf	L745
2151                     ; 304 u8 DPS310_readPressureAvail(u8 ch){
2152                     .text:	section	.text,new
2153  0000               _DPS310_readPressureAvail:
2155  0000 88            	push	a
2156       00000001      OFST:	set	1
2159                     ; 307 	val = DPS310_Read(ch, (u8)DPS310_MEASCFG); // why val will be cleared in the debug window?
2161  0001 ae0008        	ldw	x,#8
2162  0004 95            	ld	xh,a
2163  0005 cd0000        	call	_DPS310_Read
2165  0008 6b01          	ld	(OFST+0,sp),a
2167                     ; 308 	res =  test_bit(val, 4);
2169  000a 7b01          	ld	a,(OFST+0,sp)
2170  000c ae0004        	ldw	x,#4
2171  000f 95            	ld	xh,a
2172  0010 cd0000        	call	_test_bit
2174  0013 6b01          	ld	(OFST+0,sp),a
2176                     ; 309 	return res;
2178  0015 7b01          	ld	a,(OFST+0,sp)
2181  0017 5b01          	addw	sp,#1
2182  0019 81            	ret
2237                     ; 311 u8 DPS310_readTemperatureAvail(u8 ch){
2238                     .text:	section	.text,new
2239  0000               _DPS310_readTemperatureAvail:
2241  0000 88            	push	a
2242       00000001      OFST:	set	1
2245                     ; 314 	val = DPS310_Read(ch, DPS310_MEASCFG);
2247  0001 ae0008        	ldw	x,#8
2248  0004 95            	ld	xh,a
2249  0005 cd0000        	call	_DPS310_Read
2251  0008 6b01          	ld	(OFST+0,sp),a
2253                     ; 315 	res =  test_bit(val, 5);
2255  000a 7b01          	ld	a,(OFST+0,sp)
2256  000c ae0005        	ldw	x,#5
2257  000f 95            	ld	xh,a
2258  0010 cd0000        	call	_test_bit
2260  0013 6b01          	ld	(OFST+0,sp),a
2262                     ; 316 	return res;
2264  0015 7b01          	ld	a,(OFST+0,sp)
2267  0017 5b01          	addw	sp,#1
2268  0019 81            	ret
2497                     	switch	.const
2498  0004               L06:
2499  0004 00800000      	dc.l	8388608
2500                     ; 318 void DPS310_readSensor(u8 ch)
2500                     ; 319 {
2501                     .text:	section	.text,new
2502  0000               _DPS310_readSensor:
2504  0000 88            	push	a
2505  0001 5246          	subw	sp,#70
2506       00000046      OFST:	set	70
2509                     ; 329 	_c0 = c0[ch-1];
2511  0003 5f            	clrw	x
2512  0004 97            	ld	xl,a
2513  0005 58            	sllw	x
2514  0006 5a            	decw	x
2515  0007 5a            	decw	x
2516  0008 eeb4          	ldw	x,(_c0,x)
2517  000a 1f25          	ldw	(OFST-33,sp),x
2519                     ; 330 	_c1 = c1[ch-1];
2521  000c 7b47          	ld	a,(OFST+1,sp)
2522  000e 5f            	clrw	x
2523  000f 97            	ld	xl,a
2524  0010 58            	sllw	x
2525  0011 5a            	decw	x
2526  0012 5a            	decw	x
2527  0013 eeaa          	ldw	x,(_c1,x)
2528  0015 1f27          	ldw	(OFST-31,sp),x
2530                     ; 331 	_c01 = c01[ch-1];
2532  0017 7b47          	ld	a,(OFST+1,sp)
2533  0019 5f            	clrw	x
2534  001a 97            	ld	xl,a
2535  001b 58            	sllw	x
2536  001c 5a            	decw	x
2537  001d 5a            	decw	x
2538  001e ee78          	ldw	x,(_c01,x)
2539  0020 1f29          	ldw	(OFST-29,sp),x
2541                     ; 332 	_c11 = c11[ch-1];
2543  0022 7b47          	ld	a,(OFST+1,sp)
2544  0024 5f            	clrw	x
2545  0025 97            	ld	xl,a
2546  0026 58            	sllw	x
2547  0027 5a            	decw	x
2548  0028 5a            	decw	x
2549  0029 ee6e          	ldw	x,(_c11,x)
2550  002b 1f2b          	ldw	(OFST-27,sp),x
2552                     ; 333 	_c20 = c20[ch-1];
2554  002d 7b47          	ld	a,(OFST+1,sp)
2555  002f 5f            	clrw	x
2556  0030 97            	ld	xl,a
2557  0031 58            	sllw	x
2558  0032 5a            	decw	x
2559  0033 5a            	decw	x
2560  0034 ee64          	ldw	x,(_c20,x)
2561  0036 1f2d          	ldw	(OFST-25,sp),x
2563                     ; 334 	_c21 = c21[ch-1];
2565  0038 7b47          	ld	a,(OFST+1,sp)
2566  003a 5f            	clrw	x
2567  003b 97            	ld	xl,a
2568  003c 58            	sllw	x
2569  003d 5a            	decw	x
2570  003e 5a            	decw	x
2571  003f ee5a          	ldw	x,(_c21,x)
2572  0041 1f2f          	ldw	(OFST-23,sp),x
2574                     ; 335 	_c30 = c30[ch-1];
2576  0043 7b47          	ld	a,(OFST+1,sp)
2577  0045 5f            	clrw	x
2578  0046 97            	ld	xl,a
2579  0047 58            	sllw	x
2580  0048 5a            	decw	x
2581  0049 5a            	decw	x
2582  004a ee50          	ldw	x,(_c30,x)
2583  004c 1f31          	ldw	(OFST-21,sp),x
2585                     ; 336 	_c00 = c00[ch-1];
2587  004e 7b47          	ld	a,(OFST+1,sp)
2588  0050 97            	ld	xl,a
2589  0051 a604          	ld	a,#4
2590  0053 42            	mul	x,a
2591  0054 1d0004        	subw	x,#4
2592  0057 9093          	ldw	y,x
2593  0059 ee98          	ldw	x,(_c00+2,x)
2594  005b 1f35          	ldw	(OFST-17,sp),x
2595  005d 93            	ldw	x,y
2596  005e ee96          	ldw	x,(_c00,x)
2597  0060 1f33          	ldw	(OFST-19,sp),x
2599                     ; 337 	_c10 = c10[ch-1];
2601  0062 7b47          	ld	a,(OFST+1,sp)
2602  0064 97            	ld	xl,a
2603  0065 a604          	ld	a,#4
2604  0067 42            	mul	x,a
2605  0068 1d0004        	subw	x,#4
2606  006b 9093          	ldw	y,x
2607  006d ee84          	ldw	x,(_c10+2,x)
2608  006f 1f39          	ldw	(OFST-13,sp),x
2609  0071 93            	ldw	x,y
2610  0072 ee82          	ldw	x,(_c10,x)
2611  0074 1f37          	ldw	(OFST-15,sp),x
2613                     ; 341 	PRS_B2 = DPS310_Read(ch, DPS310_PRSB2);
2615  0076 7b47          	ld	a,(OFST+1,sp)
2616  0078 5f            	clrw	x
2617  0079 95            	ld	xh,a
2618  007a cd0000        	call	_DPS310_Read
2620  007d 6b24          	ld	(OFST-34,sp),a
2621  007f 4f            	clr	a
2622  0080 6b23          	ld	(OFST-35,sp),a
2623  0082 6b22          	ld	(OFST-36,sp),a
2624  0084 6b21          	ld	(OFST-37,sp),a
2626                     ; 342 	PRS_B1 = DPS310_Read(ch, DPS310_PRSB1);
2628  0086 7b47          	ld	a,(OFST+1,sp)
2629  0088 ae0001        	ldw	x,#1
2630  008b 95            	ld	xh,a
2631  008c cd0000        	call	_DPS310_Read
2633  008f 6b20          	ld	(OFST-38,sp),a
2634  0091 4f            	clr	a
2635  0092 6b1f          	ld	(OFST-39,sp),a
2636  0094 6b1e          	ld	(OFST-40,sp),a
2637  0096 6b1d          	ld	(OFST-41,sp),a
2639                     ; 343 	PRS_B0 = DPS310_Read(ch, DPS310_PRSB0);
2641  0098 7b47          	ld	a,(OFST+1,sp)
2642  009a ae0002        	ldw	x,#2
2643  009d 95            	ld	xh,a
2644  009e cd0000        	call	_DPS310_Read
2646  00a1 6b1c          	ld	(OFST-42,sp),a
2647  00a3 4f            	clr	a
2648  00a4 6b1b          	ld	(OFST-43,sp),a
2649  00a6 6b1a          	ld	(OFST-44,sp),a
2650  00a8 6b19          	ld	(OFST-45,sp),a
2652                     ; 345 	TMP_B2 = DPS310_Read(ch, DPS310_TMPB2);
2654  00aa 7b47          	ld	a,(OFST+1,sp)
2655  00ac ae0003        	ldw	x,#3
2656  00af 95            	ld	xh,a
2657  00b0 cd0000        	call	_DPS310_Read
2659  00b3 6b3e          	ld	(OFST-8,sp),a
2660  00b5 4f            	clr	a
2661  00b6 6b3d          	ld	(OFST-9,sp),a
2662  00b8 6b3c          	ld	(OFST-10,sp),a
2663  00ba 6b3b          	ld	(OFST-11,sp),a
2665                     ; 346 	TMP_B1 = DPS310_Read(ch, DPS310_TMPB1);
2667  00bc 7b47          	ld	a,(OFST+1,sp)
2668  00be ae0004        	ldw	x,#4
2669  00c1 95            	ld	xh,a
2670  00c2 cd0000        	call	_DPS310_Read
2672  00c5 6b42          	ld	(OFST-4,sp),a
2673  00c7 4f            	clr	a
2674  00c8 6b41          	ld	(OFST-5,sp),a
2675  00ca 6b40          	ld	(OFST-6,sp),a
2676  00cc 6b3f          	ld	(OFST-7,sp),a
2678                     ; 347 	TMP_B0 = DPS310_Read(ch, DPS310_TMPB0);
2680  00ce 7b47          	ld	a,(OFST+1,sp)
2681  00d0 ae0005        	ldw	x,#5
2682  00d3 95            	ld	xh,a
2683  00d4 cd0000        	call	_DPS310_Read
2685  00d7 6b46          	ld	(OFST+0,sp),a
2686  00d9 4f            	clr	a
2687  00da 6b45          	ld	(OFST-1,sp),a
2688  00dc 6b44          	ld	(OFST-2,sp),a
2689  00de 6b43          	ld	(OFST-3,sp),a
2691                     ; 352 	raw_pressure[ch-1] = (PRS_B2<<16) + (PRS_B1<<8) + (PRS_B0);
2693  00e0 96            	ldw	x,sp
2694  00e1 1c001d        	addw	x,#OFST-41
2695  00e4 cd0000        	call	c_ltor
2697  00e7 a608          	ld	a,#8
2698  00e9 cd0000        	call	c_llsh
2700  00ec 96            	ldw	x,sp
2701  00ed 1c0015        	addw	x,#OFST-49
2702  00f0 cd0000        	call	c_rtol
2705  00f3 96            	ldw	x,sp
2706  00f4 1c0021        	addw	x,#OFST-37
2707  00f7 cd0000        	call	c_ltor
2709  00fa be02          	ldw	x,c_lreg+2
2710  00fc bf00          	ldw	c_lreg,x
2711  00fe 5f            	clrw	x
2712  00ff bf02          	ldw	c_lreg+2,x
2713  0101 96            	ldw	x,sp
2714  0102 1c0015        	addw	x,#OFST-49
2715  0105 cd0000        	call	c_ladd
2717  0108 96            	ldw	x,sp
2718  0109 1c0019        	addw	x,#OFST-45
2719  010c cd0000        	call	c_ladd
2721  010f 7b47          	ld	a,(OFST+1,sp)
2722  0111 97            	ld	xl,a
2723  0112 a604          	ld	a,#4
2724  0114 42            	mul	x,a
2725  0115 1d0004        	subw	x,#4
2726  0118 1c003c        	addw	x,#_raw_pressure
2727  011b cd0000        	call	c_rtol
2729                     ; 353 	if(raw_pressure[ch-1]>8388607u) raw_pressure[ch-1]-=16777216u;
2731  011e 7b47          	ld	a,(OFST+1,sp)
2732  0120 97            	ld	xl,a
2733  0121 a604          	ld	a,#4
2734  0123 42            	mul	x,a
2735  0124 1d0004        	subw	x,#4
2736  0127 1c003c        	addw	x,#_raw_pressure
2737  012a cd0000        	call	c_ltor
2739  012d ae0004        	ldw	x,#L06
2740  0130 cd0000        	call	c_lcmp
2742  0133 251f          	jrult	L577
2745  0135 7b47          	ld	a,(OFST+1,sp)
2746  0137 97            	ld	xl,a
2747  0138 a604          	ld	a,#4
2748  013a 42            	mul	x,a
2749  013b 1d0004        	subw	x,#4
2750  013e a600          	ld	a,#0
2751  0140 b703          	ld	c_lreg+3,a
2752  0142 a600          	ld	a,#0
2753  0144 b702          	ld	c_lreg+2,a
2754  0146 a600          	ld	a,#0
2755  0148 b701          	ld	c_lreg+1,a
2756  014a a601          	ld	a,#1
2757  014c b700          	ld	c_lreg,a
2758  014e 1c003c        	addw	x,#_raw_pressure
2759  0151 cd0000        	call	c_lgsub
2761  0154               L577:
2762                     ; 354 	raw_temperature[ch-1] = (TMP_B2<<16) + (TMP_B1<<8) + (TMP_B0);
2764  0154 96            	ldw	x,sp
2765  0155 1c003f        	addw	x,#OFST-7
2766  0158 cd0000        	call	c_ltor
2768  015b a608          	ld	a,#8
2769  015d cd0000        	call	c_llsh
2771  0160 96            	ldw	x,sp
2772  0161 1c0015        	addw	x,#OFST-49
2773  0164 cd0000        	call	c_rtol
2776  0167 96            	ldw	x,sp
2777  0168 1c003b        	addw	x,#OFST-11
2778  016b cd0000        	call	c_ltor
2780  016e be02          	ldw	x,c_lreg+2
2781  0170 bf00          	ldw	c_lreg,x
2782  0172 5f            	clrw	x
2783  0173 bf02          	ldw	c_lreg+2,x
2784  0175 96            	ldw	x,sp
2785  0176 1c0015        	addw	x,#OFST-49
2786  0179 cd0000        	call	c_ladd
2788  017c 96            	ldw	x,sp
2789  017d 1c0043        	addw	x,#OFST-3
2790  0180 cd0000        	call	c_ladd
2792  0183 7b47          	ld	a,(OFST+1,sp)
2793  0185 97            	ld	xl,a
2794  0186 a604          	ld	a,#4
2795  0188 42            	mul	x,a
2796  0189 1d0004        	subw	x,#4
2797  018c 1c0028        	addw	x,#_raw_temperature
2798  018f cd0000        	call	c_rtol
2800                     ; 355 	if(raw_temperature[ch-1]>8388607u) raw_temperature[ch-1]-=16777216u;
2802  0192 7b47          	ld	a,(OFST+1,sp)
2803  0194 97            	ld	xl,a
2804  0195 a604          	ld	a,#4
2805  0197 42            	mul	x,a
2806  0198 1d0004        	subw	x,#4
2807  019b 1c0028        	addw	x,#_raw_temperature
2808  019e cd0000        	call	c_ltor
2810  01a1 ae0004        	ldw	x,#L06
2811  01a4 cd0000        	call	c_lcmp
2813  01a7 251f          	jrult	L777
2816  01a9 7b47          	ld	a,(OFST+1,sp)
2817  01ab 97            	ld	xl,a
2818  01ac a604          	ld	a,#4
2819  01ae 42            	mul	x,a
2820  01af 1d0004        	subw	x,#4
2821  01b2 a600          	ld	a,#0
2822  01b4 b703          	ld	c_lreg+3,a
2823  01b6 a600          	ld	a,#0
2824  01b8 b702          	ld	c_lreg+2,a
2825  01ba a600          	ld	a,#0
2826  01bc b701          	ld	c_lreg+1,a
2827  01be a601          	ld	a,#1
2828  01c0 b700          	ld	c_lreg,a
2829  01c2 1c0028        	addw	x,#_raw_temperature
2830  01c5 cd0000        	call	c_lgsub
2832  01c8               L777:
2833                     ; 356 	temp_scale = oversample_scalefactor[OVERSAMPLE_TEMP]; //must higher than 16 since Kp and KT is related to shift register.
2835  01c8 be0e          	ldw	x,L3_oversample_scalefactor+14
2836  01ca 1f41          	ldw	(OFST-5,sp),x
2837  01cc be0c          	ldw	x,L3_oversample_scalefactor+12
2838  01ce 1f3f          	ldw	(OFST-7,sp),x
2840                     ; 357 	pressure_scale = oversample_scalefactor[OVERSAMPLE_PRESSURE];
2842  01d0 be0e          	ldw	x,L3_oversample_scalefactor+14
2843  01d2 1f45          	ldw	(OFST-1,sp),x
2844  01d4 be0c          	ldw	x,L3_oversample_scalefactor+12
2845  01d6 1f43          	ldw	(OFST-3,sp),x
2847                     ; 358   _scaled_rawtemp = (float)(raw_temperature[ch-1]) / temp_scale;
2849  01d8 96            	ldw	x,sp
2850  01d9 1c003f        	addw	x,#OFST-7
2851  01dc cd0000        	call	c_ltor
2853  01df cd0000        	call	c_ultof
2855  01e2 96            	ldw	x,sp
2856  01e3 1c0015        	addw	x,#OFST-49
2857  01e6 cd0000        	call	c_rtol
2860  01e9 7b47          	ld	a,(OFST+1,sp)
2861  01eb 97            	ld	xl,a
2862  01ec a604          	ld	a,#4
2863  01ee 42            	mul	x,a
2864  01ef 1d0004        	subw	x,#4
2865  01f2 1c0028        	addw	x,#_raw_temperature
2866  01f5 cd0000        	call	c_ltor
2868  01f8 cd0000        	call	c_ltof
2870  01fb 96            	ldw	x,sp
2871  01fc 1c0015        	addw	x,#OFST-49
2872  01ff cd0000        	call	c_fdiv
2874  0202 96            	ldw	x,sp
2875  0203 1c003f        	addw	x,#OFST-7
2876  0206 cd0000        	call	c_rtol
2879                     ; 359   _temperature = _scaled_rawtemp * _c1 + _c0 / 2.0;
2881  0209 1e25          	ldw	x,(OFST-33,sp)
2882  020b cd0000        	call	c_itof
2884  020e ae0014        	ldw	x,#L5001
2885  0211 cd0000        	call	c_fdiv
2887  0214 96            	ldw	x,sp
2888  0215 1c0015        	addw	x,#OFST-49
2889  0218 cd0000        	call	c_rtol
2892  021b 1e27          	ldw	x,(OFST-31,sp)
2893  021d cd0000        	call	c_itof
2895  0220 96            	ldw	x,sp
2896  0221 1c0011        	addw	x,#OFST-53
2897  0224 cd0000        	call	c_rtol
2900  0227 96            	ldw	x,sp
2901  0228 1c003f        	addw	x,#OFST-7
2902  022b cd0000        	call	c_ltor
2904  022e 96            	ldw	x,sp
2905  022f 1c0011        	addw	x,#OFST-53
2906  0232 cd0000        	call	c_fmul
2908  0235 96            	ldw	x,sp
2909  0236 1c0015        	addw	x,#OFST-49
2910  0239 cd0000        	call	c_fadd
2912  023c 96            	ldw	x,sp
2913  023d 1c003b        	addw	x,#OFST-11
2914  0240 cd0000        	call	c_rtol
2917                     ; 360 	_pressure = (float)(raw_pressure[ch-1]) / pressure_scale; //65.6
2919  0243 96            	ldw	x,sp
2920  0244 1c0043        	addw	x,#OFST-3
2921  0247 cd0000        	call	c_ltor
2923  024a cd0000        	call	c_ultof
2925  024d 96            	ldw	x,sp
2926  024e 1c0015        	addw	x,#OFST-49
2927  0251 cd0000        	call	c_rtol
2930  0254 7b47          	ld	a,(OFST+1,sp)
2931  0256 97            	ld	xl,a
2932  0257 a604          	ld	a,#4
2933  0259 42            	mul	x,a
2934  025a 1d0004        	subw	x,#4
2935  025d 1c003c        	addw	x,#_raw_pressure
2936  0260 cd0000        	call	c_ltor
2938  0263 cd0000        	call	c_ltof
2940  0266 96            	ldw	x,sp
2941  0267 1c0015        	addw	x,#OFST-49
2942  026a cd0000        	call	c_fdiv
2944  026d 96            	ldw	x,sp
2945  026e 1c0043        	addw	x,#OFST-3
2946  0271 cd0000        	call	c_rtol
2949                     ; 362   _pressure =
2949                     ; 363       (int32_t)_c00 +
2949                     ; 364       _pressure * ((int32_t)_c10 +
2949                     ; 365                    _pressure * ((int32_t)_c20 + _pressure * (int32_t)_c30)) +
2949                     ; 366       _scaled_rawtemp *
2949                     ; 367           ((int32_t)_c01 +
2949                     ; 368            _pressure * ((int32_t)_c11 + _pressure * (int32_t)_c21));
2951  0274 1e2f          	ldw	x,(OFST-23,sp)
2952  0276 cd0000        	call	c_itof
2954  0279 96            	ldw	x,sp
2955  027a 1c0043        	addw	x,#OFST-3
2956  027d cd0000        	call	c_fmul
2958  0280 96            	ldw	x,sp
2959  0281 1c0015        	addw	x,#OFST-49
2960  0284 cd0000        	call	c_rtol
2963  0287 1e2b          	ldw	x,(OFST-27,sp)
2964  0289 cd0000        	call	c_itof
2966  028c 96            	ldw	x,sp
2967  028d 1c0015        	addw	x,#OFST-49
2968  0290 cd0000        	call	c_fadd
2970  0293 96            	ldw	x,sp
2971  0294 1c0043        	addw	x,#OFST-3
2972  0297 cd0000        	call	c_fmul
2974  029a 96            	ldw	x,sp
2975  029b 1c0011        	addw	x,#OFST-53
2976  029e cd0000        	call	c_rtol
2979  02a1 1e29          	ldw	x,(OFST-29,sp)
2980  02a3 cd0000        	call	c_itof
2982  02a6 96            	ldw	x,sp
2983  02a7 1c0011        	addw	x,#OFST-53
2984  02aa cd0000        	call	c_fadd
2986  02ad 96            	ldw	x,sp
2987  02ae 1c003f        	addw	x,#OFST-7
2988  02b1 cd0000        	call	c_fmul
2990  02b4 96            	ldw	x,sp
2991  02b5 1c000d        	addw	x,#OFST-57
2992  02b8 cd0000        	call	c_rtol
2995  02bb 96            	ldw	x,sp
2996  02bc 1c0033        	addw	x,#OFST-19
2997  02bf cd0000        	call	c_ltor
2999  02c2 cd0000        	call	c_ltof
3001  02c5 96            	ldw	x,sp
3002  02c6 1c0009        	addw	x,#OFST-61
3003  02c9 cd0000        	call	c_rtol
3006  02cc 96            	ldw	x,sp
3007  02cd 1c0037        	addw	x,#OFST-15
3008  02d0 cd0000        	call	c_ltor
3010  02d3 cd0000        	call	c_ltof
3012  02d6 96            	ldw	x,sp
3013  02d7 1c0005        	addw	x,#OFST-65
3014  02da cd0000        	call	c_rtol
3017  02dd 1e31          	ldw	x,(OFST-21,sp)
3018  02df cd0000        	call	c_itof
3020  02e2 96            	ldw	x,sp
3021  02e3 1c0043        	addw	x,#OFST-3
3022  02e6 cd0000        	call	c_fmul
3024  02e9 96            	ldw	x,sp
3025  02ea 1c0001        	addw	x,#OFST-69
3026  02ed cd0000        	call	c_rtol
3029  02f0 1e2d          	ldw	x,(OFST-25,sp)
3030  02f2 cd0000        	call	c_itof
3032  02f5 96            	ldw	x,sp
3033  02f6 1c0001        	addw	x,#OFST-69
3034  02f9 cd0000        	call	c_fadd
3036  02fc 96            	ldw	x,sp
3037  02fd 1c0043        	addw	x,#OFST-3
3038  0300 cd0000        	call	c_fmul
3040  0303 96            	ldw	x,sp
3041  0304 1c0005        	addw	x,#OFST-65
3042  0307 cd0000        	call	c_fadd
3044  030a 96            	ldw	x,sp
3045  030b 1c0043        	addw	x,#OFST-3
3046  030e cd0000        	call	c_fmul
3048  0311 96            	ldw	x,sp
3049  0312 1c0009        	addw	x,#OFST-61
3050  0315 cd0000        	call	c_fadd
3052  0318 96            	ldw	x,sp
3053  0319 1c000d        	addw	x,#OFST-57
3054  031c cd0000        	call	c_fadd
3056  031f 96            	ldw	x,sp
3057  0320 1c0043        	addw	x,#OFST-3
3058  0323 cd0000        	call	c_rtol
3061                     ; 369 	temperature[ch-1]=_temperature;
3063  0326 7b47          	ld	a,(OFST+1,sp)
3064  0328 97            	ld	xl,a
3065  0329 a604          	ld	a,#4
3066  032b 42            	mul	x,a
3067  032c 1d0004        	subw	x,#4
3068  032f 7b3e          	ld	a,(OFST-8,sp)
3069  0331 e717          	ld	(_temperature+3,x),a
3070  0333 7b3d          	ld	a,(OFST-9,sp)
3071  0335 e716          	ld	(_temperature+2,x),a
3072  0337 7b3c          	ld	a,(OFST-10,sp)
3073  0339 e715          	ld	(_temperature+1,x),a
3074  033b 7b3b          	ld	a,(OFST-11,sp)
3075  033d e714          	ld	(_temperature,x),a
3076                     ; 370 	pressure[ch-1] = _pressure;
3078  033f 7b47          	ld	a,(OFST+1,sp)
3079  0341 97            	ld	xl,a
3080  0342 a604          	ld	a,#4
3081  0344 42            	mul	x,a
3082  0345 1d0004        	subw	x,#4
3083  0348 7b46          	ld	a,(OFST+0,sp)
3084  034a e703          	ld	(_pressure+3,x),a
3085  034c 7b45          	ld	a,(OFST-1,sp)
3086  034e e702          	ld	(_pressure+2,x),a
3087  0350 7b44          	ld	a,(OFST-2,sp)
3088  0352 e701          	ld	(_pressure+1,x),a
3089  0354 7b43          	ld	a,(OFST-3,sp)
3090  0356 e700          	ld	(_pressure,x),a
3091                     ; 371 }
3094  0358 5b47          	addw	sp,#71
3095  035a 81            	ret
3121                     ; 373 char Serial_read_char(void)
3121                     ; 374  {
3122                     .text:	section	.text,new
3123  0000               _Serial_read_char:
3127  0000               L3201:
3128                     ; 375                  while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
3130  0000 ae0020        	ldw	x,#32
3131  0003 cd0000        	call	_UART1_GetFlagStatus
3133  0006 4d            	tnz	a
3134  0007 27f7          	jreq	L3201
3135                     ; 376                  UART1_ClearFlag(UART1_FLAG_RXNE);
3137  0009 ae0020        	ldw	x,#32
3138  000c cd0000        	call	_UART1_ClearFlag
3140                     ; 377                  return (UART1_ReceiveData8());
3142  000f cd0000        	call	_UART1_ReceiveData8
3146  0012 81            	ret
3182                     ; 380  void Serial_print_char (char value)
3182                     ; 381  {
3183                     .text:	section	.text,new
3184  0000               _Serial_print_char:
3188                     ; 382                  UART1_SendData8(value);
3190  0000 cd0000        	call	_UART1_SendData8
3193  0003               L7401:
3194                     ; 383                  while (UART1_GetFlagStatus(UART1_FLAG_TC) == RESET); //wait for sending
3196  0003 ae0040        	ldw	x,#64
3197  0006 cd0000        	call	_UART1_GetFlagStatus
3199  0009 4d            	tnz	a
3200  000a 27f7          	jreq	L7401
3201                     ; 384  }
3204  000c 81            	ret
3228                     ; 386 void serial_send(void){
3229                     .text:	section	.text,new
3230  0000               _serial_send:
3234                     ; 387 	GPIO_WriteHigh(GPIOD, GPIO_PIN_4);
3236  0000 4b10          	push	#16
3237  0002 ae500f        	ldw	x,#20495
3238  0005 cd0000        	call	_GPIO_WriteHigh
3240  0008 84            	pop	a
3241                     ; 388 }
3244  0009 81            	ret
3268                     ; 389 void serial_recv(void){
3269                     .text:	section	.text,new
3270  0000               _serial_recv:
3274                     ; 390 	GPIO_WriteLow(GPIOD, GPIO_PIN_4);
3276  0000 4b10          	push	#16
3277  0002 ae500f        	ldw	x,#20495
3278  0005 cd0000        	call	_GPIO_WriteLow
3280  0008 84            	pop	a
3281                     ; 391 }
3284  0009 81            	ret
3330                     	switch	.const
3331  0008               L47:
3332  0008 00002710      	dc.l	10000
3333  000c               L67:
3334  000c 00000064      	dc.l	100
3335                     ; 393 void serial_send_pressure(char i){
3336                     .text:	section	.text,new
3337  0000               _serial_send_pressure:
3339  0000 5204          	subw	sp,#4
3340       00000004      OFST:	set	4
3343                     ; 394 		u32 press = (u32)(pressure[i-1]*10);// 2000000 at maximum
3345  0002 97            	ld	xl,a
3346  0003 a604          	ld	a,#4
3347  0005 42            	mul	x,a
3348  0006 1d0004        	subw	x,#4
3349  0009 1c0000        	addw	x,#_pressure
3350  000c cd0000        	call	c_ltor
3352  000f ae0010        	ldw	x,#L1211
3353  0012 cd0000        	call	c_fmul
3355  0015 cd0000        	call	c_ftol
3357  0018 96            	ldw	x,sp
3358  0019 1c0001        	addw	x,#OFST-3
3359  001c cd0000        	call	c_rtol
3362                     ; 395 		Serial_print_char(press/10000);
3364  001f 96            	ldw	x,sp
3365  0020 1c0001        	addw	x,#OFST-3
3366  0023 cd0000        	call	c_ltor
3368  0026 ae0008        	ldw	x,#L47
3369  0029 cd0000        	call	c_ludv
3371  002c b603          	ld	a,c_lreg+3
3372  002e cd0000        	call	_Serial_print_char
3374                     ; 396 		Serial_print_char((press%10000)/100);
3376  0031 96            	ldw	x,sp
3377  0032 1c0001        	addw	x,#OFST-3
3378  0035 cd0000        	call	c_ltor
3380  0038 ae0008        	ldw	x,#L47
3381  003b cd0000        	call	c_lumd
3383  003e ae000c        	ldw	x,#L67
3384  0041 cd0000        	call	c_ludv
3386  0044 b603          	ld	a,c_lreg+3
3387  0046 cd0000        	call	_Serial_print_char
3389                     ; 397 		Serial_print_char(press%100);
3391  0049 96            	ldw	x,sp
3392  004a 1c0001        	addw	x,#OFST-3
3393  004d cd0000        	call	c_ltor
3395  0050 ae000c        	ldw	x,#L67
3396  0053 cd0000        	call	c_lumd
3398  0056 b603          	ld	a,c_lreg+3
3399  0058 cd0000        	call	_Serial_print_char
3401                     ; 398 }
3404  005b 5b04          	addw	sp,#4
3405  005d 81            	ret
3408                     	bsct
3409  0020               _uartstate:
3410  0020 00            	dc.b	0
3411  0021               _loop_sensor:
3412  0021 00            	dc.b	0
3450                     ; 403 void uart_statemachine(void){
3451                     .text:	section	.text,new
3452  0000               _uart_statemachine:
3454  0000 88            	push	a
3455       00000001      OFST:	set	1
3458                     ; 404 	u8 i=0,data ;
3460                     ; 405 	if(uartstate==0){
3462  0001 3d20          	tnz	_uartstate
3463  0003 2603          	jrne	L3411
3464                     ; 406 		serial_recv();
3466  0005 cd0000        	call	_serial_recv
3468  0008               L3411:
3469                     ; 408 	if(uartstate==1){
3471  0008 b620          	ld	a,_uartstate
3472  000a a101          	cp	a,#1
3473  000c 263d          	jrne	L5411
3474                     ; 409 		serial_send();
3476  000e cd0000        	call	_serial_send
3478                     ; 410 		for(i=1;i<=5;i++)
3480  0011 a601          	ld	a,#1
3481  0013 6b01          	ld	(OFST+0,sp),a
3483  0015               L7411:
3484                     ; 411 			serial_send_pressure(i);
3486  0015 7b01          	ld	a,(OFST+0,sp)
3487  0017 cd0000        	call	_serial_send_pressure
3489                     ; 410 		for(i=1;i<=5;i++)
3491  001a 0c01          	inc	(OFST+0,sp)
3495  001c 7b01          	ld	a,(OFST+0,sp)
3496  001e a106          	cp	a,#6
3497  0020 25f3          	jrult	L7411
3498                     ; 412 		if (loop_sensor==0)
3500  0022 3d21          	tnz	_loop_sensor
3501  0024 2607          	jrne	L5511
3502                     ; 413 			Serial_print_char(BOARD_ID+1);
3504  0026 a6f6          	ld	a,#246
3505  0028 cd0000        	call	_Serial_print_char
3508  002b 2019          	jra	L7511
3509  002d               L5511:
3510                     ; 415 			if (BOARD_ID+1 >= BOARD_FIRST_ID+loop_sensor) Serial_print_char(BOARD_FIRST_ID);
3512  002d 9c            	rvf
3513  002e b621          	ld	a,_loop_sensor
3514  0030 5f            	clrw	x
3515  0031 97            	ld	xl,a
3516  0032 1c00f0        	addw	x,#240
3517  0035 a300f7        	cpw	x,#247
3518  0038 2e07          	jrsge	L1611
3521  003a a6f0          	ld	a,#240
3522  003c cd0000        	call	_Serial_print_char
3525  003f 2005          	jra	L7511
3526  0041               L1611:
3527                     ; 416 			else Serial_print_char(BOARD_ID+1);
3529  0041 a6f6          	ld	a,#246
3530  0043 cd0000        	call	_Serial_print_char
3532  0046               L7511:
3533                     ; 417 		serial_recv();
3535  0046 cd0000        	call	_serial_recv
3537                     ; 418 		uartstate=0;
3539  0049 3f20          	clr	_uartstate
3540  004b               L5411:
3541                     ; 420 	if(uartstate==2){
3543  004b b620          	ld	a,_uartstate
3544  004d a102          	cp	a,#2
3545  004f 261e          	jrne	L5611
3546                     ; 421 		serial_send();
3548  0051 cd0000        	call	_serial_send
3550                     ; 422 		for(i=1;i<=5;i++)
3552  0054 a601          	ld	a,#1
3553  0056 6b01          	ld	(OFST+0,sp),a
3555  0058               L7611:
3556                     ; 423 			serial_send_pressure(i);
3558  0058 7b01          	ld	a,(OFST+0,sp)
3559  005a cd0000        	call	_serial_send_pressure
3561                     ; 422 		for(i=1;i<=5;i++)
3563  005d 0c01          	inc	(OFST+0,sp)
3567  005f 7b01          	ld	a,(OFST+0,sp)
3568  0061 a106          	cp	a,#6
3569  0063 25f3          	jrult	L7611
3570                     ; 424 		Serial_print_char(255);
3572  0065 a6ff          	ld	a,#255
3573  0067 cd0000        	call	_Serial_print_char
3575                     ; 425 		serial_recv();
3577  006a cd0000        	call	_serial_recv
3579                     ; 426 		uartstate=0;
3581  006d 3f20          	clr	_uartstate
3582  006f               L5611:
3583                     ; 429 }
3586  006f 84            	pop	a
3587  0070 81            	ret
3640                     ; 431 main()
3640                     ; 432 {
3641                     .text:	section	.text,new
3642  0000               _main:
3644  0000 5205          	subw	sp,#5
3645       00000005      OFST:	set	5
3648                     ; 435 	u32 cnt=0;
3650                     ; 436 	HsiInit();
3652  0002 cd0000        	call	_HsiInit
3654                     ; 438 	Init_GPIOs();
3656  0005 cd0000        	call	_Init_GPIOs
3658                     ; 439 	Init_SPI();
3660  0008 cd0000        	call	_Init_SPI
3662                     ; 440 	Uart1_Init(115200);
3664  000b aec200        	ldw	x,#49664
3665  000e 89            	pushw	x
3666  000f ae0001        	ldw	x,#1
3667  0012 89            	pushw	x
3668  0013 cd0000        	call	_Uart1_Init
3670  0016 5b04          	addw	sp,#4
3671                     ; 441 	delay_ms(100);
3673  0018 ae0064        	ldw	x,#100
3674  001b 89            	pushw	x
3675  001c ae0000        	ldw	x,#0
3676  001f 89            	pushw	x
3677  0020 cd0000        	call	_delay_ms
3679  0023 5b04          	addw	sp,#4
3680                     ; 442 	delay_ms(100);
3682  0025 ae0064        	ldw	x,#100
3683  0028 89            	pushw	x
3684  0029 ae0000        	ldw	x,#0
3685  002c 89            	pushw	x
3686  002d cd0000        	call	_delay_ms
3688  0030 5b04          	addw	sp,#4
3689                     ; 444 	for(i=1;i<=5;i++)
3691  0032 a601          	ld	a,#1
3692  0034 6b05          	ld	(OFST+0,sp),a
3694  0036               L7121:
3695                     ; 445 		DPS310_init(i);
3697  0036 7b05          	ld	a,(OFST+0,sp)
3698  0038 cd0000        	call	_DPS310_init
3700                     ; 444 	for(i=1;i<=5;i++)
3702  003b 0c05          	inc	(OFST+0,sp)
3706  003d 7b05          	ld	a,(OFST+0,sp)
3707  003f a106          	cp	a,#6
3708  0041 25f3          	jrult	L7121
3709  0043               L5221:
3710                     ; 447 		for(i=1;i<=5;i+=1){
3712  0043 a601          	ld	a,#1
3713  0045 6b05          	ld	(OFST+0,sp),a
3715  0047               L1321:
3716                     ; 448 			if (DPS310_readPressureAvail(i) && DPS310_readTemperatureAvail(i)){
3718  0047 7b05          	ld	a,(OFST+0,sp)
3719  0049 cd0000        	call	_DPS310_readPressureAvail
3721  004c 4d            	tnz	a
3722  004d 270d          	jreq	L7321
3724  004f 7b05          	ld	a,(OFST+0,sp)
3725  0051 cd0000        	call	_DPS310_readTemperatureAvail
3727  0054 4d            	tnz	a
3728  0055 2705          	jreq	L7321
3729                     ; 449 				DPS310_readSensor(i);
3731  0057 7b05          	ld	a,(OFST+0,sp)
3732  0059 cd0000        	call	_DPS310_readSensor
3734  005c               L7321:
3735                     ; 447 		for(i=1;i<=5;i+=1){
3737  005c 0c05          	inc	(OFST+0,sp)
3741  005e 7b05          	ld	a,(OFST+0,sp)
3742  0060 a106          	cp	a,#6
3743  0062 25e3          	jrult	L1321
3744                     ; 452 		uart_statemachine();
3746  0064 cd0000        	call	_uart_statemachine
3749  0067 20da          	jra	L5221
3923                     	xdef	_main
3924                     	xdef	_uart_statemachine
3925                     	xdef	_loop_sensor
3926                     	xdef	_uartstate
3927                     	xdef	_serial_send_pressure
3928                     	xdef	_serial_recv
3929                     	xdef	_serial_send
3930                     	xdef	_Serial_print_char
3931                     	xdef	_Serial_read_char
3932                     	xdef	_DPS310_readSensor
3933                     	xdef	_DPS310_readTemperatureAvail
3934                     	xdef	_DPS310_readPressureAvail
3935                     	xdef	_DPS310_init
3936                     	xdef	_test_bit
3937                     	xdef	_DPS310_Read
3938                     	xdef	_DPS310_Write
3939                     	xdef	_CS_DPS310
3940                     	xdef	_Uart1_Init
3941                     	xdef	_Init_SPI
3942                     	xdef	_HsiInit
3943                     	xdef	_Init_GPIOs
3944                     	xdef	_delay_ms
3945                     	switch	.ubsct
3946  0000               _pressure:
3947  0000 000000000000  	ds.b	20
3948                     	xdef	_pressure
3949  0014               _temperature:
3950  0014 000000000000  	ds.b	20
3951                     	xdef	_temperature
3952  0028               _raw_temperature:
3953  0028 000000000000  	ds.b	20
3954                     	xdef	_raw_temperature
3955  003c               _raw_pressure:
3956  003c 000000000000  	ds.b	20
3957                     	xdef	_raw_pressure
3958  0050               _c30:
3959  0050 000000000000  	ds.b	10
3960                     	xdef	_c30
3961  005a               _c21:
3962  005a 000000000000  	ds.b	10
3963                     	xdef	_c21
3964  0064               _c20:
3965  0064 000000000000  	ds.b	10
3966                     	xdef	_c20
3967  006e               _c11:
3968  006e 000000000000  	ds.b	10
3969                     	xdef	_c11
3970  0078               _c01:
3971  0078 000000000000  	ds.b	10
3972                     	xdef	_c01
3973  0082               _c10:
3974  0082 000000000000  	ds.b	20
3975                     	xdef	_c10
3976  0096               _c00:
3977  0096 000000000000  	ds.b	20
3978                     	xdef	_c00
3979  00aa               _c1:
3980  00aa 000000000000  	ds.b	10
3981                     	xdef	_c1
3982  00b4               _c0:
3983  00b4 000000000000  	ds.b	10
3984                     	xdef	_c0
3985                     	xdef	_assert_failed
3986                     	xref	_UART1_ClearFlag
3987                     	xref	_UART1_GetFlagStatus
3988                     	xref	_UART1_SendData8
3989                     	xref	_UART1_ReceiveData8
3990                     	xref	_UART1_ITConfig
3991                     	xref	_UART1_Cmd
3992                     	xref	_UART1_Init
3993                     	xref	_UART1_DeInit
3994                     	xref	_SPI_GetFlagStatus
3995                     	xref	_SPI_ReceiveData
3996                     	xref	_SPI_SendData
3997                     	xref	_SPI_Cmd
3998                     	xref	_SPI_Init
3999                     	xref	_SPI_DeInit
4000                     	xref	_GPIO_WriteLow
4001                     	xref	_GPIO_WriteHigh
4002                     	xref	_GPIO_Init
4003                     	xref	_GPIO_DeInit
4004                     	xref	_CLK_HSIPrescalerConfig
4005                     	xref	_CLK_PeripheralClockConfig
4006                     	xref	_CLK_CCOCmd
4007                     	switch	.const
4008  0010               L1211:
4009  0010 41200000      	dc.w	16672,0
4010  0014               L5001:
4011  0014 40000000      	dc.w	16384,0
4012                     	xref.b	c_lreg
4013                     	xref.b	c_x
4014                     	xref.b	c_y
4034                     	xref	c_lumd
4035                     	xref	c_ludv
4036                     	xref	c_ftol
4037                     	xref	c_fadd
4038                     	xref	c_fmul
4039                     	xref	c_itof
4040                     	xref	c_fdiv
4041                     	xref	c_ultof
4042                     	xref	c_ltof
4043                     	xref	c_ladd
4044                     	xref	c_lor
4045                     	xref	c_rtol
4046                     	xref	c_umul
4047                     	xref	c_uitolx
4048                     	xref	c_itolx
4049                     	xref	c_lgsub
4050                     	xref	c_lrzmp
4051                     	xref	c_land
4052                     	xref	c_llsh
4053                     	xref	c_lcmp
4054                     	xref	c_lmul
4055                     	xref	c_ltor
4056                     	xref	c_lgadc
4057                     	end
