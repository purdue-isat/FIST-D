   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 50 uint8_t ITC_GetCPUCC(void)
  43                     ; 51 {
  45                     .text:	section	.text,new
  46  0000               _ITC_GetCPUCC:
  50                     ; 53   _asm("push cc");
  53  0000 8a            push cc
  55                     ; 54   _asm("pop a");
  58  0001 84            pop a
  60                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  63  0002 81            	ret
  86                     ; 80 void ITC_DeInit(void)
  86                     ; 81 {
  87                     .text:	section	.text,new
  88  0000               _ITC_DeInit:
  92                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  94  0000 35ff7f70      	mov	32624,#255
  95                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  97  0004 35ff7f71      	mov	32625,#255
  98                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 100  0008 35ff7f72      	mov	32626,#255
 101                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 103  000c 35ff7f73      	mov	32627,#255
 104                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 106  0010 35ff7f74      	mov	32628,#255
 107                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 109  0014 35ff7f75      	mov	32629,#255
 110                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 112  0018 35ff7f76      	mov	32630,#255
 113                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 115  001c 35ff7f77      	mov	32631,#255
 116                     ; 90 }
 119  0020 81            	ret
 144                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 144                     ; 98 {
 145                     .text:	section	.text,new
 146  0000               _ITC_GetSoftIntStatus:
 150                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 152  0000 cd0000        	call	_ITC_GetCPUCC
 154  0003 a428          	and	a,#40
 157  0005 81            	ret
 407                     .const:	section	.text
 408  0000               L62:
 409  0000 003c          	dc.w	L14
 410  0002 003c          	dc.w	L14
 411  0004 003c          	dc.w	L14
 412  0006 003c          	dc.w	L14
 413  0008 0045          	dc.w	L34
 414  000a 0045          	dc.w	L34
 415  000c 0045          	dc.w	L34
 416  000e 0045          	dc.w	L34
 417  0010 0079          	dc.w	L502
 418  0012 0079          	dc.w	L502
 419  0014 004e          	dc.w	L54
 420  0016 004e          	dc.w	L54
 421  0018 0057          	dc.w	L74
 422  001a 0057          	dc.w	L74
 423  001c 0057          	dc.w	L74
 424  001e 0057          	dc.w	L74
 425  0020 0060          	dc.w	L15
 426  0022 0060          	dc.w	L15
 427  0024 0060          	dc.w	L15
 428  0026 0060          	dc.w	L15
 429  0028 0079          	dc.w	L502
 430  002a 0079          	dc.w	L502
 431  002c 0069          	dc.w	L35
 432  002e 0069          	dc.w	L35
 433  0030 0072          	dc.w	L55
 434                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 434                     ; 108 {
 435                     .text:	section	.text,new
 436  0000               _ITC_GetSoftwarePriority:
 438  0000 88            	push	a
 439  0001 89            	pushw	x
 440       00000002      OFST:	set	2
 443                     ; 109   uint8_t Value = 0;
 445  0002 0f02          	clr	(OFST+0,sp)
 447                     ; 110   uint8_t Mask = 0;
 449                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 451  0004 a119          	cp	a,#25
 452  0006 2403          	jruge	L41
 453  0008 4f            	clr	a
 454  0009 2010          	jra	L61
 455  000b               L41:
 456  000b ae0071        	ldw	x,#113
 457  000e 89            	pushw	x
 458  000f ae0000        	ldw	x,#0
 459  0012 89            	pushw	x
 460  0013 ae0064        	ldw	x,#L102
 461  0016 cd0000        	call	_assert_failed
 463  0019 5b04          	addw	sp,#4
 464  001b               L61:
 465                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 467  001b 7b03          	ld	a,(OFST+1,sp)
 468  001d a403          	and	a,#3
 469  001f 48            	sll	a
 470  0020 5f            	clrw	x
 471  0021 97            	ld	xl,a
 472  0022 a603          	ld	a,#3
 473  0024 5d            	tnzw	x
 474  0025 2704          	jreq	L02
 475  0027               L22:
 476  0027 48            	sll	a
 477  0028 5a            	decw	x
 478  0029 26fc          	jrne	L22
 479  002b               L02:
 480  002b 6b01          	ld	(OFST-1,sp),a
 482                     ; 118   switch (IrqNum)
 484  002d 7b03          	ld	a,(OFST+1,sp)
 486                     ; 198   default:
 486                     ; 199     break;
 487  002f a119          	cp	a,#25
 488  0031 2407          	jruge	L42
 489  0033 5f            	clrw	x
 490  0034 97            	ld	xl,a
 491  0035 58            	sllw	x
 492  0036 de0000        	ldw	x,(L62,x)
 493  0039 fc            	jp	(x)
 494  003a               L42:
 495  003a 203d          	jra	L502
 496  003c               L14:
 497                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 497                     ; 121   case ITC_IRQ_AWU:
 497                     ; 122   case ITC_IRQ_CLK:
 497                     ; 123   case ITC_IRQ_PORTA:
 497                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 499  003c c67f70        	ld	a,32624
 500  003f 1401          	and	a,(OFST-1,sp)
 501  0041 6b02          	ld	(OFST+0,sp),a
 503                     ; 125     break;
 505  0043 2034          	jra	L502
 506  0045               L34:
 507                     ; 127   case ITC_IRQ_PORTB:
 507                     ; 128   case ITC_IRQ_PORTC:
 507                     ; 129   case ITC_IRQ_PORTD:
 507                     ; 130   case ITC_IRQ_PORTE:
 507                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 509  0045 c67f71        	ld	a,32625
 510  0048 1401          	and	a,(OFST-1,sp)
 511  004a 6b02          	ld	(OFST+0,sp),a
 513                     ; 132     break;
 515  004c 202b          	jra	L502
 516  004e               L54:
 517                     ; 141   case ITC_IRQ_SPI:
 517                     ; 142   case ITC_IRQ_TIM1_OVF:
 517                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 519  004e c67f72        	ld	a,32626
 520  0051 1401          	and	a,(OFST-1,sp)
 521  0053 6b02          	ld	(OFST+0,sp),a
 523                     ; 144     break;
 525  0055 2022          	jra	L502
 526  0057               L74:
 527                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 527                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 527                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 527                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 527                     ; 150 #else
 527                     ; 151   case ITC_IRQ_TIM2_OVF:
 527                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 527                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 527                     ; 154   case ITC_IRQ_TIM3_OVF:
 527                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 529  0057 c67f73        	ld	a,32627
 530  005a 1401          	and	a,(OFST-1,sp)
 531  005c 6b02          	ld	(OFST+0,sp),a
 533                     ; 156     break;
 535  005e 2019          	jra	L502
 536  0060               L15:
 537                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 537                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 537                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 537                     ; 161   case ITC_IRQ_UART1_TX:
 537                     ; 162   case ITC_IRQ_UART1_RX:
 537                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 537                     ; 164 #if defined(STM8AF622x)
 537                     ; 165   case ITC_IRQ_UART4_TX:
 537                     ; 166   case ITC_IRQ_UART4_RX:
 537                     ; 167 #endif /*STM8AF622x */
 537                     ; 168   case ITC_IRQ_I2C:
 537                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 539  0060 c67f74        	ld	a,32628
 540  0063 1401          	and	a,(OFST-1,sp)
 541  0065 6b02          	ld	(OFST+0,sp),a
 543                     ; 170     break;
 545  0067 2010          	jra	L502
 546  0069               L35:
 547                     ; 184   case ITC_IRQ_ADC1:
 547                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 547                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 547                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 547                     ; 188 #else
 547                     ; 189   case ITC_IRQ_TIM4_OVF:
 547                     ; 190 #endif /*STM8S903 or STM8AF622x */
 547                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 549  0069 c67f75        	ld	a,32629
 550  006c 1401          	and	a,(OFST-1,sp)
 551  006e 6b02          	ld	(OFST+0,sp),a
 553                     ; 192     break;
 555  0070 2007          	jra	L502
 556  0072               L55:
 557                     ; 194   case ITC_IRQ_EEPROM_EEC:
 557                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 559  0072 c67f76        	ld	a,32630
 560  0075 1401          	and	a,(OFST-1,sp)
 561  0077 6b02          	ld	(OFST+0,sp),a
 563                     ; 196     break;
 565  0079               L75:
 566                     ; 198   default:
 566                     ; 199     break;
 568  0079               L502:
 569                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 571  0079 7b03          	ld	a,(OFST+1,sp)
 572  007b a403          	and	a,#3
 573  007d 48            	sll	a
 574  007e 5f            	clrw	x
 575  007f 97            	ld	xl,a
 576  0080 7b02          	ld	a,(OFST+0,sp)
 577  0082 5d            	tnzw	x
 578  0083 2704          	jreq	L03
 579  0085               L23:
 580  0085 44            	srl	a
 581  0086 5a            	decw	x
 582  0087 26fc          	jrne	L23
 583  0089               L03:
 584  0089 6b02          	ld	(OFST+0,sp),a
 586                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 588  008b 7b02          	ld	a,(OFST+0,sp)
 591  008d 5b03          	addw	sp,#3
 592  008f 81            	ret
 658                     	switch	.const
 659  0032               L66:
 660  0032 0091          	dc.w	L702
 661  0034 0091          	dc.w	L702
 662  0036 0091          	dc.w	L702
 663  0038 0091          	dc.w	L702
 664  003a 00a3          	dc.w	L112
 665  003c 00a3          	dc.w	L112
 666  003e 00a3          	dc.w	L112
 667  0040 00a3          	dc.w	L112
 668  0042 010d          	dc.w	L362
 669  0044 010d          	dc.w	L362
 670  0046 00b5          	dc.w	L312
 671  0048 00b5          	dc.w	L312
 672  004a 00c7          	dc.w	L512
 673  004c 00c7          	dc.w	L512
 674  004e 00c7          	dc.w	L512
 675  0050 00c7          	dc.w	L512
 676  0052 00d9          	dc.w	L712
 677  0054 00d9          	dc.w	L712
 678  0056 00d9          	dc.w	L712
 679  0058 00d9          	dc.w	L712
 680  005a 010d          	dc.w	L362
 681  005c 010d          	dc.w	L362
 682  005e 00eb          	dc.w	L122
 683  0060 00eb          	dc.w	L122
 684  0062 00fd          	dc.w	L322
 685                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 685                     ; 221 {
 686                     .text:	section	.text,new
 687  0000               _ITC_SetSoftwarePriority:
 689  0000 89            	pushw	x
 690  0001 89            	pushw	x
 691       00000002      OFST:	set	2
 694                     ; 222   uint8_t Mask = 0;
 696                     ; 223   uint8_t NewPriority = 0;
 698                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 700  0002 9e            	ld	a,xh
 701  0003 a119          	cp	a,#25
 702  0005 2403          	jruge	L63
 703  0007 4f            	clr	a
 704  0008 2010          	jra	L04
 705  000a               L63:
 706  000a ae00e2        	ldw	x,#226
 707  000d 89            	pushw	x
 708  000e ae0000        	ldw	x,#0
 709  0011 89            	pushw	x
 710  0012 ae0064        	ldw	x,#L102
 711  0015 cd0000        	call	_assert_failed
 713  0018 5b04          	addw	sp,#4
 714  001a               L04:
 715                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 717  001a 7b04          	ld	a,(OFST+2,sp)
 718  001c a102          	cp	a,#2
 719  001e 2710          	jreq	L44
 720  0020 7b04          	ld	a,(OFST+2,sp)
 721  0022 a101          	cp	a,#1
 722  0024 270a          	jreq	L44
 723  0026 0d04          	tnz	(OFST+2,sp)
 724  0028 2706          	jreq	L44
 725  002a 7b04          	ld	a,(OFST+2,sp)
 726  002c a103          	cp	a,#3
 727  002e 2603          	jrne	L24
 728  0030               L44:
 729  0030 4f            	clr	a
 730  0031 2010          	jra	L64
 731  0033               L24:
 732  0033 ae00e3        	ldw	x,#227
 733  0036 89            	pushw	x
 734  0037 ae0000        	ldw	x,#0
 735  003a 89            	pushw	x
 736  003b ae0064        	ldw	x,#L102
 737  003e cd0000        	call	_assert_failed
 739  0041 5b04          	addw	sp,#4
 740  0043               L64:
 741                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 743  0043 cd0000        	call	_ITC_GetSoftIntStatus
 745  0046 a128          	cp	a,#40
 746  0048 2603          	jrne	L05
 747  004a 4f            	clr	a
 748  004b 2010          	jra	L25
 749  004d               L05:
 750  004d ae00e6        	ldw	x,#230
 751  0050 89            	pushw	x
 752  0051 ae0000        	ldw	x,#0
 753  0054 89            	pushw	x
 754  0055 ae0064        	ldw	x,#L102
 755  0058 cd0000        	call	_assert_failed
 757  005b 5b04          	addw	sp,#4
 758  005d               L25:
 759                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 761  005d 7b03          	ld	a,(OFST+1,sp)
 762  005f a403          	and	a,#3
 763  0061 48            	sll	a
 764  0062 5f            	clrw	x
 765  0063 97            	ld	xl,a
 766  0064 a603          	ld	a,#3
 767  0066 5d            	tnzw	x
 768  0067 2704          	jreq	L45
 769  0069               L65:
 770  0069 48            	sll	a
 771  006a 5a            	decw	x
 772  006b 26fc          	jrne	L65
 773  006d               L45:
 774  006d 43            	cpl	a
 775  006e 6b01          	ld	(OFST-1,sp),a
 777                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 779  0070 7b03          	ld	a,(OFST+1,sp)
 780  0072 a403          	and	a,#3
 781  0074 48            	sll	a
 782  0075 5f            	clrw	x
 783  0076 97            	ld	xl,a
 784  0077 7b04          	ld	a,(OFST+2,sp)
 785  0079 5d            	tnzw	x
 786  007a 2704          	jreq	L06
 787  007c               L26:
 788  007c 48            	sll	a
 789  007d 5a            	decw	x
 790  007e 26fc          	jrne	L26
 791  0080               L06:
 792  0080 6b02          	ld	(OFST+0,sp),a
 794                     ; 239   switch (IrqNum)
 796  0082 7b03          	ld	a,(OFST+1,sp)
 798                     ; 329   default:
 798                     ; 330     break;
 799  0084 a119          	cp	a,#25
 800  0086 2407          	jruge	L46
 801  0088 5f            	clrw	x
 802  0089 97            	ld	xl,a
 803  008a 58            	sllw	x
 804  008b de0032        	ldw	x,(L66,x)
 805  008e fc            	jp	(x)
 806  008f               L46:
 807  008f 207c          	jra	L362
 808  0091               L702:
 809                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 809                     ; 242   case ITC_IRQ_AWU:
 809                     ; 243   case ITC_IRQ_CLK:
 809                     ; 244   case ITC_IRQ_PORTA:
 809                     ; 245     ITC->ISPR1 &= Mask;
 811  0091 c67f70        	ld	a,32624
 812  0094 1401          	and	a,(OFST-1,sp)
 813  0096 c77f70        	ld	32624,a
 814                     ; 246     ITC->ISPR1 |= NewPriority;
 816  0099 c67f70        	ld	a,32624
 817  009c 1a02          	or	a,(OFST+0,sp)
 818  009e c77f70        	ld	32624,a
 819                     ; 247     break;
 821  00a1 206a          	jra	L362
 822  00a3               L112:
 823                     ; 249   case ITC_IRQ_PORTB:
 823                     ; 250   case ITC_IRQ_PORTC:
 823                     ; 251   case ITC_IRQ_PORTD:
 823                     ; 252   case ITC_IRQ_PORTE:
 823                     ; 253     ITC->ISPR2 &= Mask;
 825  00a3 c67f71        	ld	a,32625
 826  00a6 1401          	and	a,(OFST-1,sp)
 827  00a8 c77f71        	ld	32625,a
 828                     ; 254     ITC->ISPR2 |= NewPriority;
 830  00ab c67f71        	ld	a,32625
 831  00ae 1a02          	or	a,(OFST+0,sp)
 832  00b0 c77f71        	ld	32625,a
 833                     ; 255     break;
 835  00b3 2058          	jra	L362
 836  00b5               L312:
 837                     ; 264   case ITC_IRQ_SPI:
 837                     ; 265   case ITC_IRQ_TIM1_OVF:
 837                     ; 266     ITC->ISPR3 &= Mask;
 839  00b5 c67f72        	ld	a,32626
 840  00b8 1401          	and	a,(OFST-1,sp)
 841  00ba c77f72        	ld	32626,a
 842                     ; 267     ITC->ISPR3 |= NewPriority;
 844  00bd c67f72        	ld	a,32626
 845  00c0 1a02          	or	a,(OFST+0,sp)
 846  00c2 c77f72        	ld	32626,a
 847                     ; 268     break;
 849  00c5 2046          	jra	L362
 850  00c7               L512:
 851                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 851                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 851                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 851                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 851                     ; 274 #else
 851                     ; 275   case ITC_IRQ_TIM2_OVF:
 851                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 851                     ; 277 #endif /*STM8S903 or STM8AF622x */
 851                     ; 278   case ITC_IRQ_TIM3_OVF:
 851                     ; 279     ITC->ISPR4 &= Mask;
 853  00c7 c67f73        	ld	a,32627
 854  00ca 1401          	and	a,(OFST-1,sp)
 855  00cc c77f73        	ld	32627,a
 856                     ; 280     ITC->ISPR4 |= NewPriority;
 858  00cf c67f73        	ld	a,32627
 859  00d2 1a02          	or	a,(OFST+0,sp)
 860  00d4 c77f73        	ld	32627,a
 861                     ; 281     break;
 863  00d7 2034          	jra	L362
 864  00d9               L712:
 865                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 865                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 865                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 865                     ; 286   case ITC_IRQ_UART1_TX:
 865                     ; 287   case ITC_IRQ_UART1_RX:
 865                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 865                     ; 289 #if defined(STM8AF622x)
 865                     ; 290   case ITC_IRQ_UART4_TX:
 865                     ; 291   case ITC_IRQ_UART4_RX:
 865                     ; 292 #endif /*STM8AF622x */
 865                     ; 293   case ITC_IRQ_I2C:
 865                     ; 294     ITC->ISPR5 &= Mask;
 867  00d9 c67f74        	ld	a,32628
 868  00dc 1401          	and	a,(OFST-1,sp)
 869  00de c77f74        	ld	32628,a
 870                     ; 295     ITC->ISPR5 |= NewPriority;
 872  00e1 c67f74        	ld	a,32628
 873  00e4 1a02          	or	a,(OFST+0,sp)
 874  00e6 c77f74        	ld	32628,a
 875                     ; 296     break;
 877  00e9 2022          	jra	L362
 878  00eb               L122:
 879                     ; 312   case ITC_IRQ_ADC1:
 879                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 879                     ; 314     
 879                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 879                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 879                     ; 317 #else
 879                     ; 318   case ITC_IRQ_TIM4_OVF:
 879                     ; 319 #endif /* STM8S903 or STM8AF622x */
 879                     ; 320     ITC->ISPR6 &= Mask;
 881  00eb c67f75        	ld	a,32629
 882  00ee 1401          	and	a,(OFST-1,sp)
 883  00f0 c77f75        	ld	32629,a
 884                     ; 321     ITC->ISPR6 |= NewPriority;
 886  00f3 c67f75        	ld	a,32629
 887  00f6 1a02          	or	a,(OFST+0,sp)
 888  00f8 c77f75        	ld	32629,a
 889                     ; 322     break;
 891  00fb 2010          	jra	L362
 892  00fd               L322:
 893                     ; 324   case ITC_IRQ_EEPROM_EEC:
 893                     ; 325     ITC->ISPR7 &= Mask;
 895  00fd c67f76        	ld	a,32630
 896  0100 1401          	and	a,(OFST-1,sp)
 897  0102 c77f76        	ld	32630,a
 898                     ; 326     ITC->ISPR7 |= NewPriority;
 900  0105 c67f76        	ld	a,32630
 901  0108 1a02          	or	a,(OFST+0,sp)
 902  010a c77f76        	ld	32630,a
 903                     ; 327     break;
 905  010d               L522:
 906                     ; 329   default:
 906                     ; 330     break;
 908  010d               L362:
 909                     ; 332 }
 912  010d 5b04          	addw	sp,#4
 913  010f 81            	ret
 926                     	xdef	_ITC_GetSoftwarePriority
 927                     	xdef	_ITC_SetSoftwarePriority
 928                     	xdef	_ITC_GetSoftIntStatus
 929                     	xdef	_ITC_DeInit
 930                     	xdef	_ITC_GetCPUCC
 931                     	xref	_assert_failed
 932                     	switch	.const
 933  0064               L102:
 934  0064 7372635c7374  	dc.b	"src\stm8s_itc.c",0
 954                     	end
