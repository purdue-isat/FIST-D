   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 50 void SPI_DeInit(void)
  43                     ; 51 {
  45                     .text:	section	.text,new
  46  0000               _SPI_DeInit:
  50                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  52  0000 725f5200      	clr	20992
  53                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  55  0004 725f5201      	clr	20993
  56                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  58  0008 725f5202      	clr	20994
  59                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  61  000c 35025203      	mov	20995,#2
  62                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  64  0010 35075205      	mov	20997,#7
  65                     ; 57 }
  68  0014 81            	ret
 385                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 385                     ; 79 {
 386                     .text:	section	.text,new
 387  0000               _SPI_Init:
 389  0000 89            	pushw	x
 390  0001 88            	push	a
 391       00000001      OFST:	set	1
 394                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 396  0002 9e            	ld	a,xh
 397  0003 4d            	tnz	a
 398  0004 2705          	jreq	L21
 399  0006 9e            	ld	a,xh
 400  0007 a180          	cp	a,#128
 401  0009 2603          	jrne	L01
 402  000b               L21:
 403  000b 4f            	clr	a
 404  000c 2010          	jra	L41
 405  000e               L01:
 406  000e ae0051        	ldw	x,#81
 407  0011 89            	pushw	x
 408  0012 ae0000        	ldw	x,#0
 409  0015 89            	pushw	x
 410  0016 ae0000        	ldw	x,#L302
 411  0019 cd0000        	call	_assert_failed
 413  001c 5b04          	addw	sp,#4
 414  001e               L41:
 415                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 417  001e 0d03          	tnz	(OFST+2,sp)
 418  0020 272a          	jreq	L02
 419  0022 7b03          	ld	a,(OFST+2,sp)
 420  0024 a108          	cp	a,#8
 421  0026 2724          	jreq	L02
 422  0028 7b03          	ld	a,(OFST+2,sp)
 423  002a a110          	cp	a,#16
 424  002c 271e          	jreq	L02
 425  002e 7b03          	ld	a,(OFST+2,sp)
 426  0030 a118          	cp	a,#24
 427  0032 2718          	jreq	L02
 428  0034 7b03          	ld	a,(OFST+2,sp)
 429  0036 a120          	cp	a,#32
 430  0038 2712          	jreq	L02
 431  003a 7b03          	ld	a,(OFST+2,sp)
 432  003c a128          	cp	a,#40
 433  003e 270c          	jreq	L02
 434  0040 7b03          	ld	a,(OFST+2,sp)
 435  0042 a130          	cp	a,#48
 436  0044 2706          	jreq	L02
 437  0046 7b03          	ld	a,(OFST+2,sp)
 438  0048 a138          	cp	a,#56
 439  004a 2603          	jrne	L61
 440  004c               L02:
 441  004c 4f            	clr	a
 442  004d 2010          	jra	L22
 443  004f               L61:
 444  004f ae0052        	ldw	x,#82
 445  0052 89            	pushw	x
 446  0053 ae0000        	ldw	x,#0
 447  0056 89            	pushw	x
 448  0057 ae0000        	ldw	x,#L302
 449  005a cd0000        	call	_assert_failed
 451  005d 5b04          	addw	sp,#4
 452  005f               L22:
 453                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 455  005f 7b06          	ld	a,(OFST+5,sp)
 456  0061 a104          	cp	a,#4
 457  0063 2704          	jreq	L62
 458  0065 0d06          	tnz	(OFST+5,sp)
 459  0067 2603          	jrne	L42
 460  0069               L62:
 461  0069 4f            	clr	a
 462  006a 2010          	jra	L03
 463  006c               L42:
 464  006c ae0053        	ldw	x,#83
 465  006f 89            	pushw	x
 466  0070 ae0000        	ldw	x,#0
 467  0073 89            	pushw	x
 468  0074 ae0000        	ldw	x,#L302
 469  0077 cd0000        	call	_assert_failed
 471  007a 5b04          	addw	sp,#4
 472  007c               L03:
 473                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 475  007c 0d07          	tnz	(OFST+6,sp)
 476  007e 2706          	jreq	L43
 477  0080 7b07          	ld	a,(OFST+6,sp)
 478  0082 a102          	cp	a,#2
 479  0084 2603          	jrne	L23
 480  0086               L43:
 481  0086 4f            	clr	a
 482  0087 2010          	jra	L63
 483  0089               L23:
 484  0089 ae0054        	ldw	x,#84
 485  008c 89            	pushw	x
 486  008d ae0000        	ldw	x,#0
 487  0090 89            	pushw	x
 488  0091 ae0000        	ldw	x,#L302
 489  0094 cd0000        	call	_assert_failed
 491  0097 5b04          	addw	sp,#4
 492  0099               L63:
 493                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 495  0099 0d08          	tnz	(OFST+7,sp)
 496  009b 2706          	jreq	L24
 497  009d 7b08          	ld	a,(OFST+7,sp)
 498  009f a101          	cp	a,#1
 499  00a1 2603          	jrne	L04
 500  00a3               L24:
 501  00a3 4f            	clr	a
 502  00a4 2010          	jra	L44
 503  00a6               L04:
 504  00a6 ae0055        	ldw	x,#85
 505  00a9 89            	pushw	x
 506  00aa ae0000        	ldw	x,#0
 507  00ad 89            	pushw	x
 508  00ae ae0000        	ldw	x,#L302
 509  00b1 cd0000        	call	_assert_failed
 511  00b4 5b04          	addw	sp,#4
 512  00b6               L44:
 513                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 515  00b6 0d09          	tnz	(OFST+8,sp)
 516  00b8 2712          	jreq	L05
 517  00ba 7b09          	ld	a,(OFST+8,sp)
 518  00bc a104          	cp	a,#4
 519  00be 270c          	jreq	L05
 520  00c0 7b09          	ld	a,(OFST+8,sp)
 521  00c2 a180          	cp	a,#128
 522  00c4 2706          	jreq	L05
 523  00c6 7b09          	ld	a,(OFST+8,sp)
 524  00c8 a1c0          	cp	a,#192
 525  00ca 2603          	jrne	L64
 526  00cc               L05:
 527  00cc 4f            	clr	a
 528  00cd 2010          	jra	L25
 529  00cf               L64:
 530  00cf ae0056        	ldw	x,#86
 531  00d2 89            	pushw	x
 532  00d3 ae0000        	ldw	x,#0
 533  00d6 89            	pushw	x
 534  00d7 ae0000        	ldw	x,#L302
 535  00da cd0000        	call	_assert_failed
 537  00dd 5b04          	addw	sp,#4
 538  00df               L25:
 539                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 541  00df 7b0a          	ld	a,(OFST+9,sp)
 542  00e1 a102          	cp	a,#2
 543  00e3 2704          	jreq	L65
 544  00e5 0d0a          	tnz	(OFST+9,sp)
 545  00e7 2603          	jrne	L45
 546  00e9               L65:
 547  00e9 4f            	clr	a
 548  00ea 2010          	jra	L06
 549  00ec               L45:
 550  00ec ae0057        	ldw	x,#87
 551  00ef 89            	pushw	x
 552  00f0 ae0000        	ldw	x,#0
 553  00f3 89            	pushw	x
 554  00f4 ae0000        	ldw	x,#L302
 555  00f7 cd0000        	call	_assert_failed
 557  00fa 5b04          	addw	sp,#4
 558  00fc               L06:
 559                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 561  00fc 0d0b          	tnz	(OFST+10,sp)
 562  00fe 2703          	jreq	L26
 563  0100 4f            	clr	a
 564  0101 2010          	jra	L46
 565  0103               L26:
 566  0103 ae0058        	ldw	x,#88
 567  0106 89            	pushw	x
 568  0107 ae0000        	ldw	x,#0
 569  010a 89            	pushw	x
 570  010b ae0000        	ldw	x,#L302
 571  010e cd0000        	call	_assert_failed
 573  0111 5b04          	addw	sp,#4
 574  0113               L46:
 575                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 575                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 577  0113 7b07          	ld	a,(OFST+6,sp)
 578  0115 1a08          	or	a,(OFST+7,sp)
 579  0117 6b01          	ld	(OFST+0,sp),a
 581  0119 7b02          	ld	a,(OFST+1,sp)
 582  011b 1a03          	or	a,(OFST+2,sp)
 583  011d 1a01          	or	a,(OFST+0,sp)
 584  011f c75200        	ld	20992,a
 585                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 587  0122 7b09          	ld	a,(OFST+8,sp)
 588  0124 1a0a          	or	a,(OFST+9,sp)
 589  0126 c75201        	ld	20993,a
 590                     ; 97   if (Mode == SPI_MODE_MASTER)
 592  0129 7b06          	ld	a,(OFST+5,sp)
 593  012b a104          	cp	a,#4
 594  012d 2606          	jrne	L502
 595                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 597  012f 72105201      	bset	20993,#0
 599  0133 2004          	jra	L702
 600  0135               L502:
 601                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 603  0135 72115201      	bres	20993,#0
 604  0139               L702:
 605                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 607  0139 c65200        	ld	a,20992
 608  013c 1a06          	or	a,(OFST+5,sp)
 609  013e c75200        	ld	20992,a
 610                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 612  0141 7b0b          	ld	a,(OFST+10,sp)
 613  0143 c75205        	ld	20997,a
 614                     ; 111 }
 617  0146 5b03          	addw	sp,#3
 618  0148 81            	ret
 674                     ; 119 void SPI_Cmd(FunctionalState NewState)
 674                     ; 120 {
 675                     .text:	section	.text,new
 676  0000               _SPI_Cmd:
 678  0000 88            	push	a
 679       00000000      OFST:	set	0
 682                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 684  0001 4d            	tnz	a
 685  0002 2704          	jreq	L27
 686  0004 a101          	cp	a,#1
 687  0006 2603          	jrne	L07
 688  0008               L27:
 689  0008 4f            	clr	a
 690  0009 2010          	jra	L47
 691  000b               L07:
 692  000b ae007a        	ldw	x,#122
 693  000e 89            	pushw	x
 694  000f ae0000        	ldw	x,#0
 695  0012 89            	pushw	x
 696  0013 ae0000        	ldw	x,#L302
 697  0016 cd0000        	call	_assert_failed
 699  0019 5b04          	addw	sp,#4
 700  001b               L47:
 701                     ; 124   if (NewState != DISABLE)
 703  001b 0d01          	tnz	(OFST+1,sp)
 704  001d 2706          	jreq	L732
 705                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 707  001f 721c5200      	bset	20992,#6
 709  0023 2004          	jra	L142
 710  0025               L732:
 711                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 713  0025 721d5200      	bres	20992,#6
 714  0029               L142:
 715                     ; 132 }
 718  0029 84            	pop	a
 719  002a 81            	ret
 829                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 829                     ; 142 {
 830                     .text:	section	.text,new
 831  0000               _SPI_ITConfig:
 833  0000 89            	pushw	x
 834  0001 88            	push	a
 835       00000001      OFST:	set	1
 838                     ; 143   uint8_t itpos = 0;
 840                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 842  0002 9e            	ld	a,xh
 843  0003 a117          	cp	a,#23
 844  0005 270f          	jreq	L201
 845  0007 9e            	ld	a,xh
 846  0008 a106          	cp	a,#6
 847  000a 270a          	jreq	L201
 848  000c 9e            	ld	a,xh
 849  000d a105          	cp	a,#5
 850  000f 2705          	jreq	L201
 851  0011 9e            	ld	a,xh
 852  0012 a134          	cp	a,#52
 853  0014 2603          	jrne	L001
 854  0016               L201:
 855  0016 4f            	clr	a
 856  0017 2010          	jra	L401
 857  0019               L001:
 858  0019 ae0091        	ldw	x,#145
 859  001c 89            	pushw	x
 860  001d ae0000        	ldw	x,#0
 861  0020 89            	pushw	x
 862  0021 ae0000        	ldw	x,#L302
 863  0024 cd0000        	call	_assert_failed
 865  0027 5b04          	addw	sp,#4
 866  0029               L401:
 867                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 869  0029 0d03          	tnz	(OFST+2,sp)
 870  002b 2706          	jreq	L011
 871  002d 7b03          	ld	a,(OFST+2,sp)
 872  002f a101          	cp	a,#1
 873  0031 2603          	jrne	L601
 874  0033               L011:
 875  0033 4f            	clr	a
 876  0034 2010          	jra	L211
 877  0036               L601:
 878  0036 ae0092        	ldw	x,#146
 879  0039 89            	pushw	x
 880  003a ae0000        	ldw	x,#0
 881  003d 89            	pushw	x
 882  003e ae0000        	ldw	x,#L302
 883  0041 cd0000        	call	_assert_failed
 885  0044 5b04          	addw	sp,#4
 886  0046               L211:
 887                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 889  0046 7b02          	ld	a,(OFST+1,sp)
 890  0048 a40f          	and	a,#15
 891  004a 5f            	clrw	x
 892  004b 97            	ld	xl,a
 893  004c a601          	ld	a,#1
 894  004e 5d            	tnzw	x
 895  004f 2704          	jreq	L411
 896  0051               L611:
 897  0051 48            	sll	a
 898  0052 5a            	decw	x
 899  0053 26fc          	jrne	L611
 900  0055               L411:
 901  0055 6b01          	ld	(OFST+0,sp),a
 903                     ; 151   if (NewState != DISABLE)
 905  0057 0d03          	tnz	(OFST+2,sp)
 906  0059 270a          	jreq	L313
 907                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 909  005b c65202        	ld	a,20994
 910  005e 1a01          	or	a,(OFST+0,sp)
 911  0060 c75202        	ld	20994,a
 913  0063 2009          	jra	L513
 914  0065               L313:
 915                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 917  0065 7b01          	ld	a,(OFST+0,sp)
 918  0067 43            	cpl	a
 919  0068 c45202        	and	a,20994
 920  006b c75202        	ld	20994,a
 921  006e               L513:
 922                     ; 159 }
 925  006e 5b03          	addw	sp,#3
 926  0070 81            	ret
 960                     ; 166 void SPI_SendData(uint8_t Data)
 960                     ; 167 {
 961                     .text:	section	.text,new
 962  0000               _SPI_SendData:
 966                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 968  0000 c75204        	ld	20996,a
 969                     ; 169 }
 972  0003 81            	ret
 995                     ; 176 uint8_t SPI_ReceiveData(void)
 995                     ; 177 {
 996                     .text:	section	.text,new
 997  0000               _SPI_ReceiveData:
1001                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
1003  0000 c65204        	ld	a,20996
1006  0003 81            	ret
1043                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1043                     ; 188 {
1044                     .text:	section	.text,new
1045  0000               _SPI_NSSInternalSoftwareCmd:
1047  0000 88            	push	a
1048       00000000      OFST:	set	0
1051                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1053  0001 4d            	tnz	a
1054  0002 2704          	jreq	L031
1055  0004 a101          	cp	a,#1
1056  0006 2603          	jrne	L621
1057  0008               L031:
1058  0008 4f            	clr	a
1059  0009 2010          	jra	L231
1060  000b               L621:
1061  000b ae00be        	ldw	x,#190
1062  000e 89            	pushw	x
1063  000f ae0000        	ldw	x,#0
1064  0012 89            	pushw	x
1065  0013 ae0000        	ldw	x,#L302
1066  0016 cd0000        	call	_assert_failed
1068  0019 5b04          	addw	sp,#4
1069  001b               L231:
1070                     ; 192   if (NewState != DISABLE)
1072  001b 0d01          	tnz	(OFST+1,sp)
1073  001d 2706          	jreq	L363
1074                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1076  001f 72105201      	bset	20993,#0
1078  0023 2004          	jra	L563
1079  0025               L363:
1080                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1082  0025 72115201      	bres	20993,#0
1083  0029               L563:
1084                     ; 200 }
1087  0029 84            	pop	a
1088  002a 81            	ret
1111                     ; 207 void SPI_TransmitCRC(void)
1111                     ; 208 {
1112                     .text:	section	.text,new
1113  0000               _SPI_TransmitCRC:
1117                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1119  0000 72185201      	bset	20993,#4
1120                     ; 210 }
1123  0004 81            	ret
1160                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1160                     ; 219 {
1161                     .text:	section	.text,new
1162  0000               _SPI_CalculateCRCCmd:
1164  0000 88            	push	a
1165       00000000      OFST:	set	0
1168                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1170  0001 4d            	tnz	a
1171  0002 2704          	jreq	L241
1172  0004 a101          	cp	a,#1
1173  0006 2603          	jrne	L041
1174  0008               L241:
1175  0008 4f            	clr	a
1176  0009 2010          	jra	L441
1177  000b               L041:
1178  000b ae00dd        	ldw	x,#221
1179  000e 89            	pushw	x
1180  000f ae0000        	ldw	x,#0
1181  0012 89            	pushw	x
1182  0013 ae0000        	ldw	x,#L302
1183  0016 cd0000        	call	_assert_failed
1185  0019 5b04          	addw	sp,#4
1186  001b               L441:
1187                     ; 223   if (NewState != DISABLE)
1189  001b 0d01          	tnz	(OFST+1,sp)
1190  001d 2706          	jreq	L514
1191                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1193  001f 721a5201      	bset	20993,#5
1195  0023 2004          	jra	L714
1196  0025               L514:
1197                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1199  0025 721b5201      	bres	20993,#5
1200  0029               L714:
1201                     ; 231 }
1204  0029 84            	pop	a
1205  002a 81            	ret
1270                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1270                     ; 239 {
1271                     .text:	section	.text,new
1272  0000               _SPI_GetCRC:
1274  0000 88            	push	a
1275  0001 88            	push	a
1276       00000001      OFST:	set	1
1279                     ; 240   uint8_t crcreg = 0;
1281                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1283  0002 a101          	cp	a,#1
1284  0004 2703          	jreq	L251
1285  0006 4d            	tnz	a
1286  0007 2603          	jrne	L051
1287  0009               L251:
1288  0009 4f            	clr	a
1289  000a 2010          	jra	L451
1290  000c               L051:
1291  000c ae00f3        	ldw	x,#243
1292  000f 89            	pushw	x
1293  0010 ae0000        	ldw	x,#0
1294  0013 89            	pushw	x
1295  0014 ae0000        	ldw	x,#L302
1296  0017 cd0000        	call	_assert_failed
1298  001a 5b04          	addw	sp,#4
1299  001c               L451:
1300                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1302  001c 0d02          	tnz	(OFST+1,sp)
1303  001e 2707          	jreq	L354
1304                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1306  0020 c65207        	ld	a,20999
1307  0023 6b01          	ld	(OFST+0,sp),a
1310  0025 2005          	jra	L554
1311  0027               L354:
1312                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1314  0027 c65206        	ld	a,20998
1315  002a 6b01          	ld	(OFST+0,sp),a
1317  002c               L554:
1318                     ; 255   return crcreg;
1320  002c 7b01          	ld	a,(OFST+0,sp)
1323  002e 85            	popw	x
1324  002f 81            	ret
1349                     ; 263 void SPI_ResetCRC(void)
1349                     ; 264 {
1350                     .text:	section	.text,new
1351  0000               _SPI_ResetCRC:
1355                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1357  0000 a601          	ld	a,#1
1358  0002 cd0000        	call	_SPI_CalculateCRCCmd
1360                     ; 270   SPI_Cmd(ENABLE);
1362  0005 a601          	ld	a,#1
1363  0007 cd0000        	call	_SPI_Cmd
1365                     ; 271 }
1368  000a 81            	ret
1392                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1392                     ; 279 {
1393                     .text:	section	.text,new
1394  0000               _SPI_GetCRCPolynomial:
1398                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1400  0000 c65205        	ld	a,20997
1403  0003 81            	ret
1460                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1460                     ; 289 {
1461                     .text:	section	.text,new
1462  0000               _SPI_BiDirectionalLineConfig:
1464  0000 88            	push	a
1465       00000000      OFST:	set	0
1468                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1470  0001 4d            	tnz	a
1471  0002 2704          	jreq	L661
1472  0004 a101          	cp	a,#1
1473  0006 2603          	jrne	L461
1474  0008               L661:
1475  0008 4f            	clr	a
1476  0009 2010          	jra	L071
1477  000b               L461:
1478  000b ae0123        	ldw	x,#291
1479  000e 89            	pushw	x
1480  000f ae0000        	ldw	x,#0
1481  0012 89            	pushw	x
1482  0013 ae0000        	ldw	x,#L302
1483  0016 cd0000        	call	_assert_failed
1485  0019 5b04          	addw	sp,#4
1486  001b               L071:
1487                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1489  001b 0d01          	tnz	(OFST+1,sp)
1490  001d 2706          	jreq	L525
1491                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1493  001f 721c5201      	bset	20993,#6
1495  0023 2004          	jra	L725
1496  0025               L525:
1497                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1499  0025 721d5201      	bres	20993,#6
1500  0029               L725:
1501                     ; 301 }
1504  0029 84            	pop	a
1505  002a 81            	ret
1627                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1627                     ; 312 {
1628                     .text:	section	.text,new
1629  0000               _SPI_GetFlagStatus:
1631  0000 88            	push	a
1632  0001 88            	push	a
1633       00000001      OFST:	set	1
1636                     ; 313   FlagStatus status = RESET;
1638                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1640  0002 a140          	cp	a,#64
1641  0004 2718          	jreq	L671
1642  0006 a120          	cp	a,#32
1643  0008 2714          	jreq	L671
1644  000a a110          	cp	a,#16
1645  000c 2710          	jreq	L671
1646  000e a108          	cp	a,#8
1647  0010 270c          	jreq	L671
1648  0012 a102          	cp	a,#2
1649  0014 2708          	jreq	L671
1650  0016 a101          	cp	a,#1
1651  0018 2704          	jreq	L671
1652  001a a180          	cp	a,#128
1653  001c 2603          	jrne	L471
1654  001e               L671:
1655  001e 4f            	clr	a
1656  001f 2010          	jra	L002
1657  0021               L471:
1658  0021 ae013b        	ldw	x,#315
1659  0024 89            	pushw	x
1660  0025 ae0000        	ldw	x,#0
1661  0028 89            	pushw	x
1662  0029 ae0000        	ldw	x,#L302
1663  002c cd0000        	call	_assert_failed
1665  002f 5b04          	addw	sp,#4
1666  0031               L002:
1667                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1669  0031 c65203        	ld	a,20995
1670  0034 1502          	bcp	a,(OFST+1,sp)
1671  0036 2706          	jreq	L506
1672                     ; 320     status = SET; /* SPI_FLAG is set */
1674  0038 a601          	ld	a,#1
1675  003a 6b01          	ld	(OFST+0,sp),a
1678  003c 2002          	jra	L706
1679  003e               L506:
1680                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1682  003e 0f01          	clr	(OFST+0,sp)
1684  0040               L706:
1685                     ; 328   return status;
1687  0040 7b01          	ld	a,(OFST+0,sp)
1690  0042 85            	popw	x
1691  0043 81            	ret
1727                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1727                     ; 347 {
1728                     .text:	section	.text,new
1729  0000               _SPI_ClearFlag:
1731  0000 88            	push	a
1732       00000000      OFST:	set	0
1735                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1737  0001 a110          	cp	a,#16
1738  0003 2704          	jreq	L602
1739  0005 a108          	cp	a,#8
1740  0007 2603          	jrne	L402
1741  0009               L602:
1742  0009 4f            	clr	a
1743  000a 2010          	jra	L012
1744  000c               L402:
1745  000c ae015c        	ldw	x,#348
1746  000f 89            	pushw	x
1747  0010 ae0000        	ldw	x,#0
1748  0013 89            	pushw	x
1749  0014 ae0000        	ldw	x,#L302
1750  0017 cd0000        	call	_assert_failed
1752  001a 5b04          	addw	sp,#4
1753  001c               L012:
1754                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1756  001c 7b01          	ld	a,(OFST+1,sp)
1757  001e 43            	cpl	a
1758  001f c75203        	ld	20995,a
1759                     ; 351 }
1762  0022 84            	pop	a
1763  0023 81            	ret
1846                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1846                     ; 367 {
1847                     .text:	section	.text,new
1848  0000               _SPI_GetITStatus:
1850  0000 88            	push	a
1851  0001 89            	pushw	x
1852       00000002      OFST:	set	2
1855                     ; 368   ITStatus pendingbitstatus = RESET;
1857                     ; 369   uint8_t itpos = 0;
1859                     ; 370   uint8_t itmask1 = 0;
1861                     ; 371   uint8_t itmask2 = 0;
1863                     ; 372   uint8_t enablestatus = 0;
1865                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1867  0002 a165          	cp	a,#101
1868  0004 2714          	jreq	L612
1869  0006 a155          	cp	a,#85
1870  0008 2710          	jreq	L612
1871  000a a145          	cp	a,#69
1872  000c 270c          	jreq	L612
1873  000e a134          	cp	a,#52
1874  0010 2708          	jreq	L612
1875  0012 a117          	cp	a,#23
1876  0014 2704          	jreq	L612
1877  0016 a106          	cp	a,#6
1878  0018 2603          	jrne	L412
1879  001a               L612:
1880  001a 4f            	clr	a
1881  001b 2010          	jra	L022
1882  001d               L412:
1883  001d ae0175        	ldw	x,#373
1884  0020 89            	pushw	x
1885  0021 ae0000        	ldw	x,#0
1886  0024 89            	pushw	x
1887  0025 ae0000        	ldw	x,#L302
1888  0028 cd0000        	call	_assert_failed
1890  002b 5b04          	addw	sp,#4
1891  002d               L022:
1892                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1894  002d 7b03          	ld	a,(OFST+1,sp)
1895  002f a40f          	and	a,#15
1896  0031 5f            	clrw	x
1897  0032 97            	ld	xl,a
1898  0033 a601          	ld	a,#1
1899  0035 5d            	tnzw	x
1900  0036 2704          	jreq	L222
1901  0038               L422:
1902  0038 48            	sll	a
1903  0039 5a            	decw	x
1904  003a 26fc          	jrne	L422
1905  003c               L222:
1906  003c 6b01          	ld	(OFST-1,sp),a
1908                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1910  003e 7b03          	ld	a,(OFST+1,sp)
1911  0040 4e            	swap	a
1912  0041 a40f          	and	a,#15
1913  0043 6b02          	ld	(OFST+0,sp),a
1915                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1917  0045 7b02          	ld	a,(OFST+0,sp)
1918  0047 5f            	clrw	x
1919  0048 97            	ld	xl,a
1920  0049 a601          	ld	a,#1
1921  004b 5d            	tnzw	x
1922  004c 2704          	jreq	L622
1923  004e               L032:
1924  004e 48            	sll	a
1925  004f 5a            	decw	x
1926  0050 26fc          	jrne	L032
1927  0052               L622:
1928  0052 6b02          	ld	(OFST+0,sp),a
1930                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1932  0054 c65203        	ld	a,20995
1933  0057 1402          	and	a,(OFST+0,sp)
1934  0059 6b02          	ld	(OFST+0,sp),a
1936                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1938  005b c65202        	ld	a,20994
1939  005e 1501          	bcp	a,(OFST-1,sp)
1940  0060 270a          	jreq	L176
1942  0062 0d02          	tnz	(OFST+0,sp)
1943  0064 2706          	jreq	L176
1944                     ; 387     pendingbitstatus = SET;
1946  0066 a601          	ld	a,#1
1947  0068 6b02          	ld	(OFST+0,sp),a
1950  006a 2002          	jra	L376
1951  006c               L176:
1952                     ; 392     pendingbitstatus = RESET;
1954  006c 0f02          	clr	(OFST+0,sp)
1956  006e               L376:
1957                     ; 395   return  pendingbitstatus;
1959  006e 7b02          	ld	a,(OFST+0,sp)
1962  0070 5b03          	addw	sp,#3
1963  0072 81            	ret
2009                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
2009                     ; 413 {
2010                     .text:	section	.text,new
2011  0000               _SPI_ClearITPendingBit:
2013  0000 88            	push	a
2014  0001 88            	push	a
2015       00000001      OFST:	set	1
2018                     ; 414   uint8_t itpos = 0;
2020                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
2022  0002 a145          	cp	a,#69
2023  0004 2704          	jreq	L632
2024  0006 a134          	cp	a,#52
2025  0008 2603          	jrne	L432
2026  000a               L632:
2027  000a 4f            	clr	a
2028  000b 2010          	jra	L042
2029  000d               L432:
2030  000d ae019f        	ldw	x,#415
2031  0010 89            	pushw	x
2032  0011 ae0000        	ldw	x,#0
2033  0014 89            	pushw	x
2034  0015 ae0000        	ldw	x,#L302
2035  0018 cd0000        	call	_assert_failed
2037  001b 5b04          	addw	sp,#4
2038  001d               L042:
2039                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2041  001d 7b02          	ld	a,(OFST+1,sp)
2042  001f a4f0          	and	a,#240
2043  0021 4e            	swap	a
2044  0022 a40f          	and	a,#15
2045  0024 5f            	clrw	x
2046  0025 97            	ld	xl,a
2047  0026 a601          	ld	a,#1
2048  0028 5d            	tnzw	x
2049  0029 2704          	jreq	L242
2050  002b               L442:
2051  002b 48            	sll	a
2052  002c 5a            	decw	x
2053  002d 26fc          	jrne	L442
2054  002f               L242:
2055  002f 6b01          	ld	(OFST+0,sp),a
2057                     ; 422   SPI->SR = (uint8_t)(~itpos);
2059  0031 7b01          	ld	a,(OFST+0,sp)
2060  0033 43            	cpl	a
2061  0034 c75203        	ld	20995,a
2062                     ; 424 }
2065  0037 85            	popw	x
2066  0038 81            	ret
2079                     	xdef	_SPI_ClearITPendingBit
2080                     	xdef	_SPI_GetITStatus
2081                     	xdef	_SPI_ClearFlag
2082                     	xdef	_SPI_GetFlagStatus
2083                     	xdef	_SPI_BiDirectionalLineConfig
2084                     	xdef	_SPI_GetCRCPolynomial
2085                     	xdef	_SPI_ResetCRC
2086                     	xdef	_SPI_GetCRC
2087                     	xdef	_SPI_CalculateCRCCmd
2088                     	xdef	_SPI_TransmitCRC
2089                     	xdef	_SPI_NSSInternalSoftwareCmd
2090                     	xdef	_SPI_ReceiveData
2091                     	xdef	_SPI_SendData
2092                     	xdef	_SPI_ITConfig
2093                     	xdef	_SPI_Cmd
2094                     	xdef	_SPI_Init
2095                     	xdef	_SPI_DeInit
2096                     	xref	_assert_failed
2097                     .const:	section	.text
2098  0000               L302:
2099  0000 7372635c7374  	dc.b	"src\stm8s_spi.c",0
2119                     	end
