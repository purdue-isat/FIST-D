   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  15                     .const:	section	.text
  16  0000               _HSIDivFactor:
  17  0000 01            	dc.b	1
  18  0001 02            	dc.b	2
  19  0002 04            	dc.b	4
  20  0003 08            	dc.b	8
  21  0004               _CLKPrescTable:
  22  0004 01            	dc.b	1
  23  0005 02            	dc.b	2
  24  0006 04            	dc.b	4
  25  0007 08            	dc.b	8
  26  0008 0a            	dc.b	10
  27  0009 10            	dc.b	16
  28  000a 14            	dc.b	20
  29  000b 28            	dc.b	40
  58                     ; 72 void CLK_DeInit(void)
  58                     ; 73 {
  60                     .text:	section	.text,new
  61  0000               _CLK_DeInit:
  65                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  67  0000 350150c0      	mov	20672,#1
  68                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  70  0004 725f50c1      	clr	20673
  71                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  73  0008 35e150c4      	mov	20676,#225
  74                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  76  000c 725f50c5      	clr	20677
  77                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  79  0010 351850c6      	mov	20678,#24
  80                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  82  0014 35ff50c7      	mov	20679,#255
  83                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  85  0018 35ff50ca      	mov	20682,#255
  86                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  88  001c 725f50c8      	clr	20680
  89                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  91  0020 725f50c9      	clr	20681
  93  0024               L52:
  94                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  96  0024 c650c9        	ld	a,20681
  97  0027 a501          	bcp	a,#1
  98  0029 26f9          	jrne	L52
  99                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 101  002b 725f50c9      	clr	20681
 102                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 104  002f 725f50cc      	clr	20684
 105                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 107  0033 725f50cd      	clr	20685
 108                     ; 88 }
 111  0037 81            	ret
 168                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 168                     ; 100 {
 169                     .text:	section	.text,new
 170  0000               _CLK_FastHaltWakeUpCmd:
 172  0000 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 178  0001 4d            	tnz	a
 179  0002 2704          	jreq	L21
 180  0004 a101          	cp	a,#1
 181  0006 2603          	jrne	L01
 182  0008               L21:
 183  0008 4f            	clr	a
 184  0009 2010          	jra	L41
 185  000b               L01:
 186  000b ae0066        	ldw	x,#102
 187  000e 89            	pushw	x
 188  000f ae0000        	ldw	x,#0
 189  0012 89            	pushw	x
 190  0013 ae000c        	ldw	x,#L75
 191  0016 cd0000        	call	_assert_failed
 193  0019 5b04          	addw	sp,#4
 194  001b               L41:
 195                     ; 104   if (NewState != DISABLE)
 197  001b 0d01          	tnz	(OFST+1,sp)
 198  001d 2706          	jreq	L16
 199                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 201  001f 721450c0      	bset	20672,#2
 203  0023 2004          	jra	L36
 204  0025               L16:
 205                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 207  0025 721550c0      	bres	20672,#2
 208  0029               L36:
 209                     ; 114 }
 212  0029 84            	pop	a
 213  002a 81            	ret
 249                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 249                     ; 122 {
 250                     .text:	section	.text,new
 251  0000               _CLK_HSECmd:
 253  0000 88            	push	a
 254       00000000      OFST:	set	0
 257                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 259  0001 4d            	tnz	a
 260  0002 2704          	jreq	L22
 261  0004 a101          	cp	a,#1
 262  0006 2603          	jrne	L02
 263  0008               L22:
 264  0008 4f            	clr	a
 265  0009 2010          	jra	L42
 266  000b               L02:
 267  000b ae007c        	ldw	x,#124
 268  000e 89            	pushw	x
 269  000f ae0000        	ldw	x,#0
 270  0012 89            	pushw	x
 271  0013 ae000c        	ldw	x,#L75
 272  0016 cd0000        	call	_assert_failed
 274  0019 5b04          	addw	sp,#4
 275  001b               L42:
 276                     ; 126   if (NewState != DISABLE)
 278  001b 0d01          	tnz	(OFST+1,sp)
 279  001d 2706          	jreq	L301
 280                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 282  001f 721050c1      	bset	20673,#0
 284  0023 2004          	jra	L501
 285  0025               L301:
 286                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 288  0025 721150c1      	bres	20673,#0
 289  0029               L501:
 290                     ; 136 }
 293  0029 84            	pop	a
 294  002a 81            	ret
 330                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 330                     ; 144 {
 331                     .text:	section	.text,new
 332  0000               _CLK_HSICmd:
 334  0000 88            	push	a
 335       00000000      OFST:	set	0
 338                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 340  0001 4d            	tnz	a
 341  0002 2704          	jreq	L23
 342  0004 a101          	cp	a,#1
 343  0006 2603          	jrne	L03
 344  0008               L23:
 345  0008 4f            	clr	a
 346  0009 2010          	jra	L43
 347  000b               L03:
 348  000b ae0092        	ldw	x,#146
 349  000e 89            	pushw	x
 350  000f ae0000        	ldw	x,#0
 351  0012 89            	pushw	x
 352  0013 ae000c        	ldw	x,#L75
 353  0016 cd0000        	call	_assert_failed
 355  0019 5b04          	addw	sp,#4
 356  001b               L43:
 357                     ; 148   if (NewState != DISABLE)
 359  001b 0d01          	tnz	(OFST+1,sp)
 360  001d 2706          	jreq	L521
 361                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 363  001f 721050c0      	bset	20672,#0
 365  0023 2004          	jra	L721
 366  0025               L521:
 367                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 369  0025 721150c0      	bres	20672,#0
 370  0029               L721:
 371                     ; 158 }
 374  0029 84            	pop	a
 375  002a 81            	ret
 411                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 411                     ; 167 {
 412                     .text:	section	.text,new
 413  0000               _CLK_LSICmd:
 415  0000 88            	push	a
 416       00000000      OFST:	set	0
 419                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 421  0001 4d            	tnz	a
 422  0002 2704          	jreq	L24
 423  0004 a101          	cp	a,#1
 424  0006 2603          	jrne	L04
 425  0008               L24:
 426  0008 4f            	clr	a
 427  0009 2010          	jra	L44
 428  000b               L04:
 429  000b ae00a9        	ldw	x,#169
 430  000e 89            	pushw	x
 431  000f ae0000        	ldw	x,#0
 432  0012 89            	pushw	x
 433  0013 ae000c        	ldw	x,#L75
 434  0016 cd0000        	call	_assert_failed
 436  0019 5b04          	addw	sp,#4
 437  001b               L44:
 438                     ; 171   if (NewState != DISABLE)
 440  001b 0d01          	tnz	(OFST+1,sp)
 441  001d 2706          	jreq	L741
 442                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 444  001f 721650c0      	bset	20672,#3
 446  0023 2004          	jra	L151
 447  0025               L741:
 448                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 450  0025 721750c0      	bres	20672,#3
 451  0029               L151:
 452                     ; 181 }
 455  0029 84            	pop	a
 456  002a 81            	ret
 492                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 492                     ; 190 {
 493                     .text:	section	.text,new
 494  0000               _CLK_CCOCmd:
 496  0000 88            	push	a
 497       00000000      OFST:	set	0
 500                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 502  0001 4d            	tnz	a
 503  0002 2704          	jreq	L25
 504  0004 a101          	cp	a,#1
 505  0006 2603          	jrne	L05
 506  0008               L25:
 507  0008 4f            	clr	a
 508  0009 2010          	jra	L45
 509  000b               L05:
 510  000b ae00c0        	ldw	x,#192
 511  000e 89            	pushw	x
 512  000f ae0000        	ldw	x,#0
 513  0012 89            	pushw	x
 514  0013 ae000c        	ldw	x,#L75
 515  0016 cd0000        	call	_assert_failed
 517  0019 5b04          	addw	sp,#4
 518  001b               L45:
 519                     ; 194   if (NewState != DISABLE)
 521  001b 0d01          	tnz	(OFST+1,sp)
 522  001d 2706          	jreq	L171
 523                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 525  001f 721050c9      	bset	20681,#0
 527  0023 2004          	jra	L371
 528  0025               L171:
 529                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 531  0025 721150c9      	bres	20681,#0
 532  0029               L371:
 533                     ; 204 }
 536  0029 84            	pop	a
 537  002a 81            	ret
 573                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 573                     ; 214 {
 574                     .text:	section	.text,new
 575  0000               _CLK_ClockSwitchCmd:
 577  0000 88            	push	a
 578       00000000      OFST:	set	0
 581                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 583  0001 4d            	tnz	a
 584  0002 2704          	jreq	L26
 585  0004 a101          	cp	a,#1
 586  0006 2603          	jrne	L06
 587  0008               L26:
 588  0008 4f            	clr	a
 589  0009 2010          	jra	L46
 590  000b               L06:
 591  000b ae00d8        	ldw	x,#216
 592  000e 89            	pushw	x
 593  000f ae0000        	ldw	x,#0
 594  0012 89            	pushw	x
 595  0013 ae000c        	ldw	x,#L75
 596  0016 cd0000        	call	_assert_failed
 598  0019 5b04          	addw	sp,#4
 599  001b               L46:
 600                     ; 218   if (NewState != DISABLE )
 602  001b 0d01          	tnz	(OFST+1,sp)
 603  001d 2706          	jreq	L312
 604                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 606  001f 721250c5      	bset	20677,#1
 608  0023 2004          	jra	L512
 609  0025               L312:
 610                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 612  0025 721350c5      	bres	20677,#1
 613  0029               L512:
 614                     ; 228 }
 617  0029 84            	pop	a
 618  002a 81            	ret
 655                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 655                     ; 239 {
 656                     .text:	section	.text,new
 657  0000               _CLK_SlowActiveHaltWakeUpCmd:
 659  0000 88            	push	a
 660       00000000      OFST:	set	0
 663                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 665  0001 4d            	tnz	a
 666  0002 2704          	jreq	L27
 667  0004 a101          	cp	a,#1
 668  0006 2603          	jrne	L07
 669  0008               L27:
 670  0008 4f            	clr	a
 671  0009 2010          	jra	L47
 672  000b               L07:
 673  000b ae00f1        	ldw	x,#241
 674  000e 89            	pushw	x
 675  000f ae0000        	ldw	x,#0
 676  0012 89            	pushw	x
 677  0013 ae000c        	ldw	x,#L75
 678  0016 cd0000        	call	_assert_failed
 680  0019 5b04          	addw	sp,#4
 681  001b               L47:
 682                     ; 243   if (NewState != DISABLE)
 684  001b 0d01          	tnz	(OFST+1,sp)
 685  001d 2706          	jreq	L532
 686                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 688  001f 721a50c0      	bset	20672,#5
 690  0023 2004          	jra	L732
 691  0025               L532:
 692                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 694  0025 721b50c0      	bres	20672,#5
 695  0029               L732:
 696                     ; 253 }
 699  0029 84            	pop	a
 700  002a 81            	ret
 860                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 860                     ; 264 {
 861                     .text:	section	.text,new
 862  0000               _CLK_PeripheralClockConfig:
 864  0000 89            	pushw	x
 865       00000000      OFST:	set	0
 868                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0001 9f            	ld	a,xl
 871  0002 4d            	tnz	a
 872  0003 2705          	jreq	L201
 873  0005 9f            	ld	a,xl
 874  0006 a101          	cp	a,#1
 875  0008 2603          	jrne	L001
 876  000a               L201:
 877  000a 4f            	clr	a
 878  000b 2010          	jra	L401
 879  000d               L001:
 880  000d ae010a        	ldw	x,#266
 881  0010 89            	pushw	x
 882  0011 ae0000        	ldw	x,#0
 883  0014 89            	pushw	x
 884  0015 ae000c        	ldw	x,#L75
 885  0018 cd0000        	call	_assert_failed
 887  001b 5b04          	addw	sp,#4
 888  001d               L401:
 889                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 891  001d 0d01          	tnz	(OFST+1,sp)
 892  001f 274e          	jreq	L011
 893  0021 7b01          	ld	a,(OFST+1,sp)
 894  0023 a101          	cp	a,#1
 895  0025 2748          	jreq	L011
 896  0027 7b01          	ld	a,(OFST+1,sp)
 897  0029 a103          	cp	a,#3
 898  002b 2742          	jreq	L011
 899  002d 7b01          	ld	a,(OFST+1,sp)
 900  002f a103          	cp	a,#3
 901  0031 273c          	jreq	L011
 902  0033 7b01          	ld	a,(OFST+1,sp)
 903  0035 a103          	cp	a,#3
 904  0037 2736          	jreq	L011
 905  0039 7b01          	ld	a,(OFST+1,sp)
 906  003b a104          	cp	a,#4
 907  003d 2730          	jreq	L011
 908  003f 7b01          	ld	a,(OFST+1,sp)
 909  0041 a105          	cp	a,#5
 910  0043 272a          	jreq	L011
 911  0045 7b01          	ld	a,(OFST+1,sp)
 912  0047 a105          	cp	a,#5
 913  0049 2724          	jreq	L011
 914  004b 7b01          	ld	a,(OFST+1,sp)
 915  004d a104          	cp	a,#4
 916  004f 271e          	jreq	L011
 917  0051 7b01          	ld	a,(OFST+1,sp)
 918  0053 a106          	cp	a,#6
 919  0055 2718          	jreq	L011
 920  0057 7b01          	ld	a,(OFST+1,sp)
 921  0059 a107          	cp	a,#7
 922  005b 2712          	jreq	L011
 923  005d 7b01          	ld	a,(OFST+1,sp)
 924  005f a117          	cp	a,#23
 925  0061 270c          	jreq	L011
 926  0063 7b01          	ld	a,(OFST+1,sp)
 927  0065 a113          	cp	a,#19
 928  0067 2706          	jreq	L011
 929  0069 7b01          	ld	a,(OFST+1,sp)
 930  006b a112          	cp	a,#18
 931  006d 2603          	jrne	L601
 932  006f               L011:
 933  006f 4f            	clr	a
 934  0070 2010          	jra	L211
 935  0072               L601:
 936  0072 ae010b        	ldw	x,#267
 937  0075 89            	pushw	x
 938  0076 ae0000        	ldw	x,#0
 939  0079 89            	pushw	x
 940  007a ae000c        	ldw	x,#L75
 941  007d cd0000        	call	_assert_failed
 943  0080 5b04          	addw	sp,#4
 944  0082               L211:
 945                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 947  0082 7b01          	ld	a,(OFST+1,sp)
 948  0084 a510          	bcp	a,#16
 949  0086 2633          	jrne	L323
 950                     ; 271     if (NewState != DISABLE)
 952  0088 0d02          	tnz	(OFST+2,sp)
 953  008a 2717          	jreq	L523
 954                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 956  008c 7b01          	ld	a,(OFST+1,sp)
 957  008e a40f          	and	a,#15
 958  0090 5f            	clrw	x
 959  0091 97            	ld	xl,a
 960  0092 a601          	ld	a,#1
 961  0094 5d            	tnzw	x
 962  0095 2704          	jreq	L411
 963  0097               L611:
 964  0097 48            	sll	a
 965  0098 5a            	decw	x
 966  0099 26fc          	jrne	L611
 967  009b               L411:
 968  009b ca50c7        	or	a,20679
 969  009e c750c7        	ld	20679,a
 971  00a1 2049          	jra	L133
 972  00a3               L523:
 973                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 975  00a3 7b01          	ld	a,(OFST+1,sp)
 976  00a5 a40f          	and	a,#15
 977  00a7 5f            	clrw	x
 978  00a8 97            	ld	xl,a
 979  00a9 a601          	ld	a,#1
 980  00ab 5d            	tnzw	x
 981  00ac 2704          	jreq	L021
 982  00ae               L221:
 983  00ae 48            	sll	a
 984  00af 5a            	decw	x
 985  00b0 26fc          	jrne	L221
 986  00b2               L021:
 987  00b2 43            	cpl	a
 988  00b3 c450c7        	and	a,20679
 989  00b6 c750c7        	ld	20679,a
 990  00b9 2031          	jra	L133
 991  00bb               L323:
 992                     ; 284     if (NewState != DISABLE)
 994  00bb 0d02          	tnz	(OFST+2,sp)
 995  00bd 2717          	jreq	L333
 996                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 998  00bf 7b01          	ld	a,(OFST+1,sp)
 999  00c1 a40f          	and	a,#15
1000  00c3 5f            	clrw	x
1001  00c4 97            	ld	xl,a
1002  00c5 a601          	ld	a,#1
1003  00c7 5d            	tnzw	x
1004  00c8 2704          	jreq	L421
1005  00ca               L621:
1006  00ca 48            	sll	a
1007  00cb 5a            	decw	x
1008  00cc 26fc          	jrne	L621
1009  00ce               L421:
1010  00ce ca50ca        	or	a,20682
1011  00d1 c750ca        	ld	20682,a
1013  00d4 2016          	jra	L133
1014  00d6               L333:
1015                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1017  00d6 7b01          	ld	a,(OFST+1,sp)
1018  00d8 a40f          	and	a,#15
1019  00da 5f            	clrw	x
1020  00db 97            	ld	xl,a
1021  00dc a601          	ld	a,#1
1022  00de 5d            	tnzw	x
1023  00df 2704          	jreq	L031
1024  00e1               L231:
1025  00e1 48            	sll	a
1026  00e2 5a            	decw	x
1027  00e3 26fc          	jrne	L231
1028  00e5               L031:
1029  00e5 43            	cpl	a
1030  00e6 c450ca        	and	a,20682
1031  00e9 c750ca        	ld	20682,a
1032  00ec               L133:
1033                     ; 295 }
1036  00ec 85            	popw	x
1037  00ed 81            	ret
1226                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1226                     ; 310 {
1227                     .text:	section	.text,new
1228  0000               _CLK_ClockSwitchConfig:
1230  0000 89            	pushw	x
1231  0001 5204          	subw	sp,#4
1232       00000004      OFST:	set	4
1235                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1237  0003 aeffff        	ldw	x,#65535
1238  0006 1f03          	ldw	(OFST-1,sp),x
1240                     ; 313   ErrorStatus Swif = ERROR;
1242                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1244  0008 7b06          	ld	a,(OFST+2,sp)
1245  000a a1e1          	cp	a,#225
1246  000c 270c          	jreq	L041
1247  000e 7b06          	ld	a,(OFST+2,sp)
1248  0010 a1d2          	cp	a,#210
1249  0012 2706          	jreq	L041
1250  0014 7b06          	ld	a,(OFST+2,sp)
1251  0016 a1b4          	cp	a,#180
1252  0018 2603          	jrne	L631
1253  001a               L041:
1254  001a 4f            	clr	a
1255  001b 2010          	jra	L241
1256  001d               L631:
1257  001d ae013c        	ldw	x,#316
1258  0020 89            	pushw	x
1259  0021 ae0000        	ldw	x,#0
1260  0024 89            	pushw	x
1261  0025 ae000c        	ldw	x,#L75
1262  0028 cd0000        	call	_assert_failed
1264  002b 5b04          	addw	sp,#4
1265  002d               L241:
1266                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1268  002d 0d05          	tnz	(OFST+1,sp)
1269  002f 2706          	jreq	L641
1270  0031 7b05          	ld	a,(OFST+1,sp)
1271  0033 a101          	cp	a,#1
1272  0035 2603          	jrne	L441
1273  0037               L641:
1274  0037 4f            	clr	a
1275  0038 2010          	jra	L051
1276  003a               L441:
1277  003a ae013d        	ldw	x,#317
1278  003d 89            	pushw	x
1279  003e ae0000        	ldw	x,#0
1280  0041 89            	pushw	x
1281  0042 ae000c        	ldw	x,#L75
1282  0045 cd0000        	call	_assert_failed
1284  0048 5b04          	addw	sp,#4
1285  004a               L051:
1286                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1288  004a 0d09          	tnz	(OFST+5,sp)
1289  004c 2706          	jreq	L451
1290  004e 7b09          	ld	a,(OFST+5,sp)
1291  0050 a101          	cp	a,#1
1292  0052 2603          	jrne	L251
1293  0054               L451:
1294  0054 4f            	clr	a
1295  0055 2010          	jra	L651
1296  0057               L251:
1297  0057 ae013e        	ldw	x,#318
1298  005a 89            	pushw	x
1299  005b ae0000        	ldw	x,#0
1300  005e 89            	pushw	x
1301  005f ae000c        	ldw	x,#L75
1302  0062 cd0000        	call	_assert_failed
1304  0065 5b04          	addw	sp,#4
1305  0067               L651:
1306                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1308  0067 0d0a          	tnz	(OFST+6,sp)
1309  0069 2706          	jreq	L261
1310  006b 7b0a          	ld	a,(OFST+6,sp)
1311  006d a101          	cp	a,#1
1312  006f 2603          	jrne	L061
1313  0071               L261:
1314  0071 4f            	clr	a
1315  0072 2010          	jra	L461
1316  0074               L061:
1317  0074 ae013f        	ldw	x,#319
1318  0077 89            	pushw	x
1319  0078 ae0000        	ldw	x,#0
1320  007b 89            	pushw	x
1321  007c ae000c        	ldw	x,#L75
1322  007f cd0000        	call	_assert_failed
1324  0082 5b04          	addw	sp,#4
1325  0084               L461:
1326                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1328  0084 c650c3        	ld	a,20675
1329  0087 6b01          	ld	(OFST-3,sp),a
1331                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1333  0089 7b05          	ld	a,(OFST+1,sp)
1334  008b a101          	cp	a,#1
1335  008d 264b          	jrne	L744
1336                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1338  008f 721250c5      	bset	20677,#1
1339                     ; 331     if (ITState != DISABLE)
1341  0093 0d09          	tnz	(OFST+5,sp)
1342  0095 2706          	jreq	L154
1343                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1345  0097 721450c5      	bset	20677,#2
1347  009b 2004          	jra	L354
1348  009d               L154:
1349                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1351  009d 721550c5      	bres	20677,#2
1352  00a1               L354:
1353                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1355  00a1 7b06          	ld	a,(OFST+2,sp)
1356  00a3 c750c4        	ld	20676,a
1358  00a6 2007          	jra	L164
1359  00a8               L554:
1360                     ; 346       DownCounter--;
1362  00a8 1e03          	ldw	x,(OFST-1,sp)
1363  00aa 1d0001        	subw	x,#1
1364  00ad 1f03          	ldw	(OFST-1,sp),x
1366  00af               L164:
1367                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1369  00af c650c5        	ld	a,20677
1370  00b2 a501          	bcp	a,#1
1371  00b4 2704          	jreq	L564
1373  00b6 1e03          	ldw	x,(OFST-1,sp)
1374  00b8 26ee          	jrne	L554
1375  00ba               L564:
1376                     ; 349     if(DownCounter != 0)
1378  00ba 1e03          	ldw	x,(OFST-1,sp)
1379  00bc 2706          	jreq	L764
1380                     ; 351       Swif = SUCCESS;
1382  00be a601          	ld	a,#1
1383  00c0 6b02          	ld	(OFST-2,sp),a
1386  00c2 2002          	jra	L374
1387  00c4               L764:
1388                     ; 355       Swif = ERROR;
1390  00c4 0f02          	clr	(OFST-2,sp)
1392  00c6               L374:
1393                     ; 390   if(Swif != ERROR)
1395  00c6 0d02          	tnz	(OFST-2,sp)
1396  00c8 2767          	jreq	L715
1397                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1399  00ca 0d0a          	tnz	(OFST+6,sp)
1400  00cc 2645          	jrne	L125
1402  00ce 7b01          	ld	a,(OFST-3,sp)
1403  00d0 a1e1          	cp	a,#225
1404  00d2 263f          	jrne	L125
1405                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1407  00d4 721150c0      	bres	20672,#0
1409  00d8 2057          	jra	L715
1410  00da               L744:
1411                     ; 361     if (ITState != DISABLE)
1413  00da 0d09          	tnz	(OFST+5,sp)
1414  00dc 2706          	jreq	L574
1415                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1417  00de 721450c5      	bset	20677,#2
1419  00e2 2004          	jra	L774
1420  00e4               L574:
1421                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1423  00e4 721550c5      	bres	20677,#2
1424  00e8               L774:
1425                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1427  00e8 7b06          	ld	a,(OFST+2,sp)
1428  00ea c750c4        	ld	20676,a
1430  00ed 2007          	jra	L505
1431  00ef               L105:
1432                     ; 376       DownCounter--;
1434  00ef 1e03          	ldw	x,(OFST-1,sp)
1435  00f1 1d0001        	subw	x,#1
1436  00f4 1f03          	ldw	(OFST-1,sp),x
1438  00f6               L505:
1439                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1441  00f6 c650c5        	ld	a,20677
1442  00f9 a508          	bcp	a,#8
1443  00fb 2704          	jreq	L115
1445  00fd 1e03          	ldw	x,(OFST-1,sp)
1446  00ff 26ee          	jrne	L105
1447  0101               L115:
1448                     ; 379     if(DownCounter != 0)
1450  0101 1e03          	ldw	x,(OFST-1,sp)
1451  0103 270a          	jreq	L315
1452                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1454  0105 721250c5      	bset	20677,#1
1455                     ; 383       Swif = SUCCESS;
1457  0109 a601          	ld	a,#1
1458  010b 6b02          	ld	(OFST-2,sp),a
1461  010d 20b7          	jra	L374
1462  010f               L315:
1463                     ; 387       Swif = ERROR;
1465  010f 0f02          	clr	(OFST-2,sp)
1467  0111 20b3          	jra	L374
1468  0113               L125:
1469                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1471  0113 0d0a          	tnz	(OFST+6,sp)
1472  0115 260c          	jrne	L525
1474  0117 7b01          	ld	a,(OFST-3,sp)
1475  0119 a1d2          	cp	a,#210
1476  011b 2606          	jrne	L525
1477                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1479  011d 721750c0      	bres	20672,#3
1481  0121 200e          	jra	L715
1482  0123               L525:
1483                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1485  0123 0d0a          	tnz	(OFST+6,sp)
1486  0125 260a          	jrne	L715
1488  0127 7b01          	ld	a,(OFST-3,sp)
1489  0129 a1b4          	cp	a,#180
1490  012b 2604          	jrne	L715
1491                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1493  012d 721150c1      	bres	20673,#0
1494  0131               L715:
1495                     ; 406   return(Swif);
1497  0131 7b02          	ld	a,(OFST-2,sp)
1500  0133 5b06          	addw	sp,#6
1501  0135 81            	ret
1640                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1640                     ; 416 {
1641                     .text:	section	.text,new
1642  0000               _CLK_HSIPrescalerConfig:
1644  0000 88            	push	a
1645       00000000      OFST:	set	0
1648                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1650  0001 4d            	tnz	a
1651  0002 270c          	jreq	L271
1652  0004 a108          	cp	a,#8
1653  0006 2708          	jreq	L271
1654  0008 a110          	cp	a,#16
1655  000a 2704          	jreq	L271
1656  000c a118          	cp	a,#24
1657  000e 2603          	jrne	L071
1658  0010               L271:
1659  0010 4f            	clr	a
1660  0011 2010          	jra	L471
1661  0013               L071:
1662  0013 ae01a2        	ldw	x,#418
1663  0016 89            	pushw	x
1664  0017 ae0000        	ldw	x,#0
1665  001a 89            	pushw	x
1666  001b ae000c        	ldw	x,#L75
1667  001e cd0000        	call	_assert_failed
1669  0021 5b04          	addw	sp,#4
1670  0023               L471:
1671                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1673  0023 c650c6        	ld	a,20678
1674  0026 a4e7          	and	a,#231
1675  0028 c750c6        	ld	20678,a
1676                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1678  002b c650c6        	ld	a,20678
1679  002e 1a01          	or	a,(OFST+1,sp)
1680  0030 c750c6        	ld	20678,a
1681                     ; 425 }
1684  0033 84            	pop	a
1685  0034 81            	ret
1821                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1821                     ; 437 {
1822                     .text:	section	.text,new
1823  0000               _CLK_CCOConfig:
1825  0000 88            	push	a
1826       00000000      OFST:	set	0
1829                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1831  0001 4d            	tnz	a
1832  0002 2730          	jreq	L202
1833  0004 a104          	cp	a,#4
1834  0006 272c          	jreq	L202
1835  0008 a102          	cp	a,#2
1836  000a 2728          	jreq	L202
1837  000c a108          	cp	a,#8
1838  000e 2724          	jreq	L202
1839  0010 a10a          	cp	a,#10
1840  0012 2720          	jreq	L202
1841  0014 a10c          	cp	a,#12
1842  0016 271c          	jreq	L202
1843  0018 a10e          	cp	a,#14
1844  001a 2718          	jreq	L202
1845  001c a110          	cp	a,#16
1846  001e 2714          	jreq	L202
1847  0020 a112          	cp	a,#18
1848  0022 2710          	jreq	L202
1849  0024 a114          	cp	a,#20
1850  0026 270c          	jreq	L202
1851  0028 a116          	cp	a,#22
1852  002a 2708          	jreq	L202
1853  002c a118          	cp	a,#24
1854  002e 2704          	jreq	L202
1855  0030 a11a          	cp	a,#26
1856  0032 2603          	jrne	L002
1857  0034               L202:
1858  0034 4f            	clr	a
1859  0035 2010          	jra	L402
1860  0037               L002:
1861  0037 ae01b7        	ldw	x,#439
1862  003a 89            	pushw	x
1863  003b ae0000        	ldw	x,#0
1864  003e 89            	pushw	x
1865  003f ae000c        	ldw	x,#L75
1866  0042 cd0000        	call	_assert_failed
1868  0045 5b04          	addw	sp,#4
1869  0047               L402:
1870                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1872  0047 c650c9        	ld	a,20681
1873  004a a4e1          	and	a,#225
1874  004c c750c9        	ld	20681,a
1875                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1877  004f c650c9        	ld	a,20681
1878  0052 1a01          	or	a,(OFST+1,sp)
1879  0054 c750c9        	ld	20681,a
1880                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1882  0057 721050c9      	bset	20681,#0
1883                     ; 449 }
1886  005b 84            	pop	a
1887  005c 81            	ret
1953                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1953                     ; 460 {
1954                     .text:	section	.text,new
1955  0000               _CLK_ITConfig:
1957  0000 89            	pushw	x
1958       00000000      OFST:	set	0
1961                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1963  0001 9f            	ld	a,xl
1964  0002 4d            	tnz	a
1965  0003 2705          	jreq	L212
1966  0005 9f            	ld	a,xl
1967  0006 a101          	cp	a,#1
1968  0008 2603          	jrne	L012
1969  000a               L212:
1970  000a 4f            	clr	a
1971  000b 2010          	jra	L412
1972  000d               L012:
1973  000d ae01ce        	ldw	x,#462
1974  0010 89            	pushw	x
1975  0011 ae0000        	ldw	x,#0
1976  0014 89            	pushw	x
1977  0015 ae000c        	ldw	x,#L75
1978  0018 cd0000        	call	_assert_failed
1980  001b 5b04          	addw	sp,#4
1981  001d               L412:
1982                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1984  001d 7b01          	ld	a,(OFST+1,sp)
1985  001f a10c          	cp	a,#12
1986  0021 2706          	jreq	L022
1987  0023 7b01          	ld	a,(OFST+1,sp)
1988  0025 a11c          	cp	a,#28
1989  0027 2603          	jrne	L612
1990  0029               L022:
1991  0029 4f            	clr	a
1992  002a 2010          	jra	L222
1993  002c               L612:
1994  002c ae01cf        	ldw	x,#463
1995  002f 89            	pushw	x
1996  0030 ae0000        	ldw	x,#0
1997  0033 89            	pushw	x
1998  0034 ae000c        	ldw	x,#L75
1999  0037 cd0000        	call	_assert_failed
2001  003a 5b04          	addw	sp,#4
2002  003c               L222:
2003                     ; 465   if (NewState != DISABLE)
2005  003c 0d02          	tnz	(OFST+2,sp)
2006  003e 271a          	jreq	L727
2007                     ; 467     switch (CLK_IT)
2009  0040 7b01          	ld	a,(OFST+1,sp)
2011                     ; 475     default:
2011                     ; 476       break;
2012  0042 a00c          	sub	a,#12
2013  0044 270a          	jreq	L366
2014  0046 a010          	sub	a,#16
2015  0048 2624          	jrne	L537
2016                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2016                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2018  004a 721450c5      	bset	20677,#2
2019                     ; 471       break;
2021  004e 201e          	jra	L537
2022  0050               L366:
2023                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2023                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2025  0050 721450c8      	bset	20680,#2
2026                     ; 474       break;
2028  0054 2018          	jra	L537
2029  0056               L566:
2030                     ; 475     default:
2030                     ; 476       break;
2032  0056 2016          	jra	L537
2033  0058               L337:
2035  0058 2014          	jra	L537
2036  005a               L727:
2037                     ; 481     switch (CLK_IT)
2039  005a 7b01          	ld	a,(OFST+1,sp)
2041                     ; 489     default:
2041                     ; 490       break;
2042  005c a00c          	sub	a,#12
2043  005e 270a          	jreq	L176
2044  0060 a010          	sub	a,#16
2045  0062 260a          	jrne	L537
2046                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2046                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2048  0064 721550c5      	bres	20677,#2
2049                     ; 485       break;
2051  0068 2004          	jra	L537
2052  006a               L176:
2053                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2053                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2055  006a 721550c8      	bres	20680,#2
2056                     ; 488       break;
2057  006e               L537:
2058                     ; 493 }
2061  006e 85            	popw	x
2062  006f 81            	ret
2063  0070               L376:
2064                     ; 489     default:
2064                     ; 490       break;
2066  0070 20fc          	jra	L537
2067  0072               L147:
2068  0072 20fa          	jra	L537
2104                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2104                     ; 501 {
2105                     .text:	section	.text,new
2106  0000               _CLK_SYSCLKConfig:
2108  0000 88            	push	a
2109       00000000      OFST:	set	0
2112                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2114  0001 4d            	tnz	a
2115  0002 272c          	jreq	L032
2116  0004 a108          	cp	a,#8
2117  0006 2728          	jreq	L032
2118  0008 a110          	cp	a,#16
2119  000a 2724          	jreq	L032
2120  000c a118          	cp	a,#24
2121  000e 2720          	jreq	L032
2122  0010 a180          	cp	a,#128
2123  0012 271c          	jreq	L032
2124  0014 a181          	cp	a,#129
2125  0016 2718          	jreq	L032
2126  0018 a182          	cp	a,#130
2127  001a 2714          	jreq	L032
2128  001c a183          	cp	a,#131
2129  001e 2710          	jreq	L032
2130  0020 a184          	cp	a,#132
2131  0022 270c          	jreq	L032
2132  0024 a185          	cp	a,#133
2133  0026 2708          	jreq	L032
2134  0028 a186          	cp	a,#134
2135  002a 2704          	jreq	L032
2136  002c a187          	cp	a,#135
2137  002e 2603          	jrne	L622
2138  0030               L032:
2139  0030 4f            	clr	a
2140  0031 2010          	jra	L232
2141  0033               L622:
2142  0033 ae01f7        	ldw	x,#503
2143  0036 89            	pushw	x
2144  0037 ae0000        	ldw	x,#0
2145  003a 89            	pushw	x
2146  003b ae000c        	ldw	x,#L75
2147  003e cd0000        	call	_assert_failed
2149  0041 5b04          	addw	sp,#4
2150  0043               L232:
2151                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2153  0043 7b01          	ld	a,(OFST+1,sp)
2154  0045 a580          	bcp	a,#128
2155  0047 2614          	jrne	L167
2156                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2158  0049 c650c6        	ld	a,20678
2159  004c a4e7          	and	a,#231
2160  004e c750c6        	ld	20678,a
2161                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2163  0051 7b01          	ld	a,(OFST+1,sp)
2164  0053 a418          	and	a,#24
2165  0055 ca50c6        	or	a,20678
2166  0058 c750c6        	ld	20678,a
2168  005b 2012          	jra	L367
2169  005d               L167:
2170                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2172  005d c650c6        	ld	a,20678
2173  0060 a4f8          	and	a,#248
2174  0062 c750c6        	ld	20678,a
2175                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2177  0065 7b01          	ld	a,(OFST+1,sp)
2178  0067 a407          	and	a,#7
2179  0069 ca50c6        	or	a,20678
2180  006c c750c6        	ld	20678,a
2181  006f               L367:
2182                     ; 515 }
2185  006f 84            	pop	a
2186  0070 81            	ret
2243                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2243                     ; 524 {
2244                     .text:	section	.text,new
2245  0000               _CLK_SWIMConfig:
2247  0000 88            	push	a
2248       00000000      OFST:	set	0
2251                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2253  0001 4d            	tnz	a
2254  0002 2704          	jreq	L042
2255  0004 a101          	cp	a,#1
2256  0006 2603          	jrne	L632
2257  0008               L042:
2258  0008 4f            	clr	a
2259  0009 2010          	jra	L242
2260  000b               L632:
2261  000b ae020e        	ldw	x,#526
2262  000e 89            	pushw	x
2263  000f ae0000        	ldw	x,#0
2264  0012 89            	pushw	x
2265  0013 ae000c        	ldw	x,#L75
2266  0016 cd0000        	call	_assert_failed
2268  0019 5b04          	addw	sp,#4
2269  001b               L242:
2270                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2272  001b 0d01          	tnz	(OFST+1,sp)
2273  001d 2706          	jreq	L3101
2274                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2276  001f 721050cd      	bset	20685,#0
2278  0023 2004          	jra	L5101
2279  0025               L3101:
2280                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2282  0025 721150cd      	bres	20685,#0
2283  0029               L5101:
2284                     ; 538 }
2287  0029 84            	pop	a
2288  002a 81            	ret
2312                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2312                     ; 548 {
2313                     .text:	section	.text,new
2314  0000               _CLK_ClockSecuritySystemEnable:
2318                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2320  0000 721050c8      	bset	20680,#0
2321                     ; 551 }
2324  0004 81            	ret
2349                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2349                     ; 560 {
2350                     .text:	section	.text,new
2351  0000               _CLK_GetSYSCLKSource:
2355                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2357  0000 c650c3        	ld	a,20675
2360  0003 81            	ret
2423                     ; 569 uint32_t CLK_GetClockFreq(void)
2423                     ; 570 {
2424                     .text:	section	.text,new
2425  0000               _CLK_GetClockFreq:
2427  0000 5209          	subw	sp,#9
2428       00000009      OFST:	set	9
2431                     ; 571   uint32_t clockfrequency = 0;
2433                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2435                     ; 573   uint8_t tmp = 0, presc = 0;
2439                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2441  0002 c650c3        	ld	a,20675
2442  0005 6b09          	ld	(OFST+0,sp),a
2444                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2446  0007 7b09          	ld	a,(OFST+0,sp)
2447  0009 a1e1          	cp	a,#225
2448  000b 2641          	jrne	L1701
2449                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2451  000d c650c6        	ld	a,20678
2452  0010 a418          	and	a,#24
2453  0012 6b09          	ld	(OFST+0,sp),a
2455                     ; 581     tmp = (uint8_t)(tmp >> 3);
2457  0014 0409          	srl	(OFST+0,sp)
2458  0016 0409          	srl	(OFST+0,sp)
2459  0018 0409          	srl	(OFST+0,sp)
2461                     ; 582     presc = HSIDivFactor[tmp];
2463  001a 7b09          	ld	a,(OFST+0,sp)
2464  001c 5f            	clrw	x
2465  001d 97            	ld	xl,a
2466  001e d60000        	ld	a,(_HSIDivFactor,x)
2467  0021 6b09          	ld	(OFST+0,sp),a
2469                     ; 583     clockfrequency = HSI_VALUE / presc;
2471  0023 7b09          	ld	a,(OFST+0,sp)
2472  0025 b703          	ld	c_lreg+3,a
2473  0027 3f02          	clr	c_lreg+2
2474  0029 3f01          	clr	c_lreg+1
2475  002b 3f00          	clr	c_lreg
2476  002d 96            	ldw	x,sp
2477  002e 1c0001        	addw	x,#OFST-8
2478  0031 cd0000        	call	c_rtol
2481  0034 ae2400        	ldw	x,#9216
2482  0037 bf02          	ldw	c_lreg+2,x
2483  0039 ae00f4        	ldw	x,#244
2484  003c bf00          	ldw	c_lreg,x
2485  003e 96            	ldw	x,sp
2486  003f 1c0001        	addw	x,#OFST-8
2487  0042 cd0000        	call	c_ludv
2489  0045 96            	ldw	x,sp
2490  0046 1c0005        	addw	x,#OFST-4
2491  0049 cd0000        	call	c_rtol
2495  004c 201c          	jra	L3701
2496  004e               L1701:
2497                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2499  004e 7b09          	ld	a,(OFST+0,sp)
2500  0050 a1d2          	cp	a,#210
2501  0052 260c          	jrne	L5701
2502                     ; 587     clockfrequency = LSI_VALUE;
2504  0054 aef400        	ldw	x,#62464
2505  0057 1f07          	ldw	(OFST-2,sp),x
2506  0059 ae0001        	ldw	x,#1
2507  005c 1f05          	ldw	(OFST-4,sp),x
2510  005e 200a          	jra	L3701
2511  0060               L5701:
2512                     ; 591     clockfrequency = HSE_VALUE;
2514  0060 ae2400        	ldw	x,#9216
2515  0063 1f07          	ldw	(OFST-2,sp),x
2516  0065 ae00f4        	ldw	x,#244
2517  0068 1f05          	ldw	(OFST-4,sp),x
2519  006a               L3701:
2520                     ; 594   return((uint32_t)clockfrequency);
2522  006a 96            	ldw	x,sp
2523  006b 1c0005        	addw	x,#OFST-4
2524  006e cd0000        	call	c_ltor
2528  0071 5b09          	addw	sp,#9
2529  0073 81            	ret
2629                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2629                     ; 605 {
2630                     .text:	section	.text,new
2631  0000               _CLK_AdjustHSICalibrationValue:
2633  0000 88            	push	a
2634       00000000      OFST:	set	0
2637                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2639  0001 4d            	tnz	a
2640  0002 271c          	jreq	L652
2641  0004 a101          	cp	a,#1
2642  0006 2718          	jreq	L652
2643  0008 a102          	cp	a,#2
2644  000a 2714          	jreq	L652
2645  000c a103          	cp	a,#3
2646  000e 2710          	jreq	L652
2647  0010 a104          	cp	a,#4
2648  0012 270c          	jreq	L652
2649  0014 a105          	cp	a,#5
2650  0016 2708          	jreq	L652
2651  0018 a106          	cp	a,#6
2652  001a 2704          	jreq	L652
2653  001c a107          	cp	a,#7
2654  001e 2603          	jrne	L452
2655  0020               L652:
2656  0020 4f            	clr	a
2657  0021 2010          	jra	L062
2658  0023               L452:
2659  0023 ae025f        	ldw	x,#607
2660  0026 89            	pushw	x
2661  0027 ae0000        	ldw	x,#0
2662  002a 89            	pushw	x
2663  002b ae000c        	ldw	x,#L75
2664  002e cd0000        	call	_assert_failed
2666  0031 5b04          	addw	sp,#4
2667  0033               L062:
2668                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2670  0033 c650cc        	ld	a,20684
2671  0036 a4f8          	and	a,#248
2672  0038 1a01          	or	a,(OFST+1,sp)
2673  003a c750cc        	ld	20684,a
2674                     ; 611 }
2677  003d 84            	pop	a
2678  003e 81            	ret
2702                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2702                     ; 623 {
2703                     .text:	section	.text,new
2704  0000               _CLK_SYSCLKEmergencyClear:
2708                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2710  0000 721150c5      	bres	20677,#0
2711                     ; 625 }
2714  0004 81            	ret
2868                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2868                     ; 635 {
2869                     .text:	section	.text,new
2870  0000               _CLK_GetFlagStatus:
2872  0000 89            	pushw	x
2873  0001 5203          	subw	sp,#3
2874       00000003      OFST:	set	3
2877                     ; 636   uint16_t statusreg = 0;
2879                     ; 637   uint8_t tmpreg = 0;
2881                     ; 638   FlagStatus bitstatus = RESET;
2883                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2885  0003 a30110        	cpw	x,#272
2886  0006 2728          	jreq	L072
2887  0008 a30102        	cpw	x,#258
2888  000b 2723          	jreq	L072
2889  000d a30202        	cpw	x,#514
2890  0010 271e          	jreq	L072
2891  0012 a30308        	cpw	x,#776
2892  0015 2719          	jreq	L072
2893  0017 a30301        	cpw	x,#769
2894  001a 2714          	jreq	L072
2895  001c a30408        	cpw	x,#1032
2896  001f 270f          	jreq	L072
2897  0021 a30402        	cpw	x,#1026
2898  0024 270a          	jreq	L072
2899  0026 a30504        	cpw	x,#1284
2900  0029 2705          	jreq	L072
2901  002b a30502        	cpw	x,#1282
2902  002e 2603          	jrne	L662
2903  0030               L072:
2904  0030 4f            	clr	a
2905  0031 2010          	jra	L272
2906  0033               L662:
2907  0033 ae0281        	ldw	x,#641
2908  0036 89            	pushw	x
2909  0037 ae0000        	ldw	x,#0
2910  003a 89            	pushw	x
2911  003b ae000c        	ldw	x,#L75
2912  003e cd0000        	call	_assert_failed
2914  0041 5b04          	addw	sp,#4
2915  0043               L272:
2916                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2918  0043 7b04          	ld	a,(OFST+1,sp)
2919  0045 97            	ld	xl,a
2920  0046 7b05          	ld	a,(OFST+2,sp)
2921  0048 9f            	ld	a,xl
2922  0049 a4ff          	and	a,#255
2923  004b 97            	ld	xl,a
2924  004c 4f            	clr	a
2925  004d 02            	rlwa	x,a
2926  004e 1f01          	ldw	(OFST-2,sp),x
2927  0050 01            	rrwa	x,a
2929                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2931  0051 1e01          	ldw	x,(OFST-2,sp)
2932  0053 a30100        	cpw	x,#256
2933  0056 2607          	jrne	L3421
2934                     ; 649     tmpreg = CLK->ICKR;
2936  0058 c650c0        	ld	a,20672
2937  005b 6b03          	ld	(OFST+0,sp),a
2940  005d 202f          	jra	L5421
2941  005f               L3421:
2942                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2944  005f 1e01          	ldw	x,(OFST-2,sp)
2945  0061 a30200        	cpw	x,#512
2946  0064 2607          	jrne	L7421
2947                     ; 653     tmpreg = CLK->ECKR;
2949  0066 c650c1        	ld	a,20673
2950  0069 6b03          	ld	(OFST+0,sp),a
2953  006b 2021          	jra	L5421
2954  006d               L7421:
2955                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2957  006d 1e01          	ldw	x,(OFST-2,sp)
2958  006f a30300        	cpw	x,#768
2959  0072 2607          	jrne	L3521
2960                     ; 657     tmpreg = CLK->SWCR;
2962  0074 c650c5        	ld	a,20677
2963  0077 6b03          	ld	(OFST+0,sp),a
2966  0079 2013          	jra	L5421
2967  007b               L3521:
2968                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2970  007b 1e01          	ldw	x,(OFST-2,sp)
2971  007d a30400        	cpw	x,#1024
2972  0080 2607          	jrne	L7521
2973                     ; 661     tmpreg = CLK->CSSR;
2975  0082 c650c8        	ld	a,20680
2976  0085 6b03          	ld	(OFST+0,sp),a
2979  0087 2005          	jra	L5421
2980  0089               L7521:
2981                     ; 665     tmpreg = CLK->CCOR;
2983  0089 c650c9        	ld	a,20681
2984  008c 6b03          	ld	(OFST+0,sp),a
2986  008e               L5421:
2987                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2989  008e 7b05          	ld	a,(OFST+2,sp)
2990  0090 1503          	bcp	a,(OFST+0,sp)
2991  0092 2706          	jreq	L3621
2992                     ; 670     bitstatus = SET;
2994  0094 a601          	ld	a,#1
2995  0096 6b03          	ld	(OFST+0,sp),a
2998  0098 2002          	jra	L5621
2999  009a               L3621:
3000                     ; 674     bitstatus = RESET;
3002  009a 0f03          	clr	(OFST+0,sp)
3004  009c               L5621:
3005                     ; 678   return((FlagStatus)bitstatus);
3007  009c 7b03          	ld	a,(OFST+0,sp)
3010  009e 5b05          	addw	sp,#5
3011  00a0 81            	ret
3058                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3058                     ; 688 {
3059                     .text:	section	.text,new
3060  0000               _CLK_GetITStatus:
3062  0000 88            	push	a
3063  0001 88            	push	a
3064       00000001      OFST:	set	1
3067                     ; 689   ITStatus bitstatus = RESET;
3069                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3071  0002 a10c          	cp	a,#12
3072  0004 2704          	jreq	L003
3073  0006 a11c          	cp	a,#28
3074  0008 2603          	jrne	L672
3075  000a               L003:
3076  000a 4f            	clr	a
3077  000b 2010          	jra	L203
3078  000d               L672:
3079  000d ae02b4        	ldw	x,#692
3080  0010 89            	pushw	x
3081  0011 ae0000        	ldw	x,#0
3082  0014 89            	pushw	x
3083  0015 ae000c        	ldw	x,#L75
3084  0018 cd0000        	call	_assert_failed
3086  001b 5b04          	addw	sp,#4
3087  001d               L203:
3088                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3090  001d 7b02          	ld	a,(OFST+1,sp)
3091  001f a11c          	cp	a,#28
3092  0021 2613          	jrne	L1131
3093                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3095  0023 c650c5        	ld	a,20677
3096  0026 1402          	and	a,(OFST+1,sp)
3097  0028 a10c          	cp	a,#12
3098  002a 2606          	jrne	L3131
3099                     ; 699       bitstatus = SET;
3101  002c a601          	ld	a,#1
3102  002e 6b01          	ld	(OFST+0,sp),a
3105  0030 2015          	jra	L7131
3106  0032               L3131:
3107                     ; 703       bitstatus = RESET;
3109  0032 0f01          	clr	(OFST+0,sp)
3111  0034 2011          	jra	L7131
3112  0036               L1131:
3113                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3115  0036 c650c8        	ld	a,20680
3116  0039 1402          	and	a,(OFST+1,sp)
3117  003b a10c          	cp	a,#12
3118  003d 2606          	jrne	L1231
3119                     ; 711       bitstatus = SET;
3121  003f a601          	ld	a,#1
3122  0041 6b01          	ld	(OFST+0,sp),a
3125  0043 2002          	jra	L7131
3126  0045               L1231:
3127                     ; 715       bitstatus = RESET;
3129  0045 0f01          	clr	(OFST+0,sp)
3131  0047               L7131:
3132                     ; 720   return bitstatus;
3134  0047 7b01          	ld	a,(OFST+0,sp)
3137  0049 85            	popw	x
3138  004a 81            	ret
3175                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3175                     ; 730 {
3176                     .text:	section	.text,new
3177  0000               _CLK_ClearITPendingBit:
3179  0000 88            	push	a
3180       00000000      OFST:	set	0
3183                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3185  0001 a10c          	cp	a,#12
3186  0003 2704          	jreq	L013
3187  0005 a11c          	cp	a,#28
3188  0007 2603          	jrne	L603
3189  0009               L013:
3190  0009 4f            	clr	a
3191  000a 2010          	jra	L213
3192  000c               L603:
3193  000c ae02dc        	ldw	x,#732
3194  000f 89            	pushw	x
3195  0010 ae0000        	ldw	x,#0
3196  0013 89            	pushw	x
3197  0014 ae000c        	ldw	x,#L75
3198  0017 cd0000        	call	_assert_failed
3200  001a 5b04          	addw	sp,#4
3201  001c               L213:
3202                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3204  001c 7b01          	ld	a,(OFST+1,sp)
3205  001e a10c          	cp	a,#12
3206  0020 2606          	jrne	L3431
3207                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3209  0022 721750c8      	bres	20680,#3
3211  0026 2004          	jra	L5431
3212  0028               L3431:
3213                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3215  0028 721750c5      	bres	20677,#3
3216  002c               L5431:
3217                     ; 745 }
3220  002c 84            	pop	a
3221  002d 81            	ret
3256                     	xdef	_CLKPrescTable
3257                     	xdef	_HSIDivFactor
3258                     	xdef	_CLK_ClearITPendingBit
3259                     	xdef	_CLK_GetITStatus
3260                     	xdef	_CLK_GetFlagStatus
3261                     	xdef	_CLK_GetSYSCLKSource
3262                     	xdef	_CLK_GetClockFreq
3263                     	xdef	_CLK_AdjustHSICalibrationValue
3264                     	xdef	_CLK_SYSCLKEmergencyClear
3265                     	xdef	_CLK_ClockSecuritySystemEnable
3266                     	xdef	_CLK_SWIMConfig
3267                     	xdef	_CLK_SYSCLKConfig
3268                     	xdef	_CLK_ITConfig
3269                     	xdef	_CLK_CCOConfig
3270                     	xdef	_CLK_HSIPrescalerConfig
3271                     	xdef	_CLK_ClockSwitchConfig
3272                     	xdef	_CLK_PeripheralClockConfig
3273                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3274                     	xdef	_CLK_FastHaltWakeUpCmd
3275                     	xdef	_CLK_ClockSwitchCmd
3276                     	xdef	_CLK_CCOCmd
3277                     	xdef	_CLK_LSICmd
3278                     	xdef	_CLK_HSICmd
3279                     	xdef	_CLK_HSECmd
3280                     	xdef	_CLK_DeInit
3281                     	xref	_assert_failed
3282                     	switch	.const
3283  000c               L75:
3284  000c 7372635c7374  	dc.b	"src\stm8s_clk.c",0
3285                     	xref.b	c_lreg
3286                     	xref.b	c_x
3306                     	xref	c_ltor
3307                     	xref	c_ludv
3308                     	xref	c_rtol
3309                     	end
