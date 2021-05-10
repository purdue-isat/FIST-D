   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 52 void ADC1_DeInit(void)
  43                     ; 53 {
  45                     .text:	section	.text,new
  46  0000               _ADC1_DeInit:
  50                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  52  0000 725f5400      	clr	21504
  53                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  55  0004 725f5401      	clr	21505
  56                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  58  0008 725f5402      	clr	21506
  59                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  61  000c 725f5403      	clr	21507
  62                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  64  0010 725f5406      	clr	21510
  65                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  67  0014 725f5407      	clr	21511
  68                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  70  0018 35ff5408      	mov	21512,#255
  71                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  73  001c 35035409      	mov	21513,#3
  74                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  76  0020 725f540a      	clr	21514
  77                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  79  0024 725f540b      	clr	21515
  80                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  82  0028 725f540e      	clr	21518
  83                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  85  002c 725f540f      	clr	21519
  86                     ; 66 }
  89  0030 81            	ret
 541                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 541                     ; 89 {
 542                     .text:	section	.text,new
 543  0000               _ADC1_Init:
 545  0000 89            	pushw	x
 546       00000000      OFST:	set	0
 549                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 551  0001 9e            	ld	a,xh
 552  0002 4d            	tnz	a
 553  0003 2705          	jreq	L21
 554  0005 9e            	ld	a,xh
 555  0006 a101          	cp	a,#1
 556  0008 2603          	jrne	L01
 557  000a               L21:
 558  000a 4f            	clr	a
 559  000b 2010          	jra	L41
 560  000d               L01:
 561  000d ae005b        	ldw	x,#91
 562  0010 89            	pushw	x
 563  0011 ae0000        	ldw	x,#0
 564  0014 89            	pushw	x
 565  0015 ae0000        	ldw	x,#L542
 566  0018 cd0000        	call	_assert_failed
 568  001b 5b04          	addw	sp,#4
 569  001d               L41:
 570                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 572  001d 0d02          	tnz	(OFST+2,sp)
 573  001f 273c          	jreq	L02
 574  0021 7b02          	ld	a,(OFST+2,sp)
 575  0023 a101          	cp	a,#1
 576  0025 2736          	jreq	L02
 577  0027 7b02          	ld	a,(OFST+2,sp)
 578  0029 a102          	cp	a,#2
 579  002b 2730          	jreq	L02
 580  002d 7b02          	ld	a,(OFST+2,sp)
 581  002f a103          	cp	a,#3
 582  0031 272a          	jreq	L02
 583  0033 7b02          	ld	a,(OFST+2,sp)
 584  0035 a104          	cp	a,#4
 585  0037 2724          	jreq	L02
 586  0039 7b02          	ld	a,(OFST+2,sp)
 587  003b a105          	cp	a,#5
 588  003d 271e          	jreq	L02
 589  003f 7b02          	ld	a,(OFST+2,sp)
 590  0041 a106          	cp	a,#6
 591  0043 2718          	jreq	L02
 592  0045 7b02          	ld	a,(OFST+2,sp)
 593  0047 a107          	cp	a,#7
 594  0049 2712          	jreq	L02
 595  004b 7b02          	ld	a,(OFST+2,sp)
 596  004d a108          	cp	a,#8
 597  004f 270c          	jreq	L02
 598  0051 7b02          	ld	a,(OFST+2,sp)
 599  0053 a10c          	cp	a,#12
 600  0055 2706          	jreq	L02
 601  0057 7b02          	ld	a,(OFST+2,sp)
 602  0059 a109          	cp	a,#9
 603  005b 2603          	jrne	L61
 604  005d               L02:
 605  005d 4f            	clr	a
 606  005e 2010          	jra	L22
 607  0060               L61:
 608  0060 ae005c        	ldw	x,#92
 609  0063 89            	pushw	x
 610  0064 ae0000        	ldw	x,#0
 611  0067 89            	pushw	x
 612  0068 ae0000        	ldw	x,#L542
 613  006b cd0000        	call	_assert_failed
 615  006e 5b04          	addw	sp,#4
 616  0070               L22:
 617                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 619  0070 0d05          	tnz	(OFST+5,sp)
 620  0072 272a          	jreq	L62
 621  0074 7b05          	ld	a,(OFST+5,sp)
 622  0076 a110          	cp	a,#16
 623  0078 2724          	jreq	L62
 624  007a 7b05          	ld	a,(OFST+5,sp)
 625  007c a120          	cp	a,#32
 626  007e 271e          	jreq	L62
 627  0080 7b05          	ld	a,(OFST+5,sp)
 628  0082 a130          	cp	a,#48
 629  0084 2718          	jreq	L62
 630  0086 7b05          	ld	a,(OFST+5,sp)
 631  0088 a140          	cp	a,#64
 632  008a 2712          	jreq	L62
 633  008c 7b05          	ld	a,(OFST+5,sp)
 634  008e a150          	cp	a,#80
 635  0090 270c          	jreq	L62
 636  0092 7b05          	ld	a,(OFST+5,sp)
 637  0094 a160          	cp	a,#96
 638  0096 2706          	jreq	L62
 639  0098 7b05          	ld	a,(OFST+5,sp)
 640  009a a170          	cp	a,#112
 641  009c 2603          	jrne	L42
 642  009e               L62:
 643  009e 4f            	clr	a
 644  009f 2010          	jra	L03
 645  00a1               L42:
 646  00a1 ae005d        	ldw	x,#93
 647  00a4 89            	pushw	x
 648  00a5 ae0000        	ldw	x,#0
 649  00a8 89            	pushw	x
 650  00a9 ae0000        	ldw	x,#L542
 651  00ac cd0000        	call	_assert_failed
 653  00af 5b04          	addw	sp,#4
 654  00b1               L03:
 655                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 657  00b1 0d06          	tnz	(OFST+6,sp)
 658  00b3 2706          	jreq	L43
 659  00b5 7b06          	ld	a,(OFST+6,sp)
 660  00b7 a110          	cp	a,#16
 661  00b9 2603          	jrne	L23
 662  00bb               L43:
 663  00bb 4f            	clr	a
 664  00bc 2010          	jra	L63
 665  00be               L23:
 666  00be ae005e        	ldw	x,#94
 667  00c1 89            	pushw	x
 668  00c2 ae0000        	ldw	x,#0
 669  00c5 89            	pushw	x
 670  00c6 ae0000        	ldw	x,#L542
 671  00c9 cd0000        	call	_assert_failed
 673  00cc 5b04          	addw	sp,#4
 674  00ce               L63:
 675                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 677  00ce 0d07          	tnz	(OFST+7,sp)
 678  00d0 2706          	jreq	L24
 679  00d2 7b07          	ld	a,(OFST+7,sp)
 680  00d4 a101          	cp	a,#1
 681  00d6 2603          	jrne	L04
 682  00d8               L24:
 683  00d8 4f            	clr	a
 684  00d9 2010          	jra	L44
 685  00db               L04:
 686  00db ae005f        	ldw	x,#95
 687  00de 89            	pushw	x
 688  00df ae0000        	ldw	x,#0
 689  00e2 89            	pushw	x
 690  00e3 ae0000        	ldw	x,#L542
 691  00e6 cd0000        	call	_assert_failed
 693  00e9 5b04          	addw	sp,#4
 694  00eb               L44:
 695                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 697  00eb 0d08          	tnz	(OFST+8,sp)
 698  00ed 2706          	jreq	L05
 699  00ef 7b08          	ld	a,(OFST+8,sp)
 700  00f1 a108          	cp	a,#8
 701  00f3 2603          	jrne	L64
 702  00f5               L05:
 703  00f5 4f            	clr	a
 704  00f6 2010          	jra	L25
 705  00f8               L64:
 706  00f8 ae0060        	ldw	x,#96
 707  00fb 89            	pushw	x
 708  00fc ae0000        	ldw	x,#0
 709  00ff 89            	pushw	x
 710  0100 ae0000        	ldw	x,#L542
 711  0103 cd0000        	call	_assert_failed
 713  0106 5b04          	addw	sp,#4
 714  0108               L25:
 715                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 717  0108 0d09          	tnz	(OFST+9,sp)
 718  010a 2742          	jreq	L65
 719  010c 7b09          	ld	a,(OFST+9,sp)
 720  010e a101          	cp	a,#1
 721  0110 273c          	jreq	L65
 722  0112 7b09          	ld	a,(OFST+9,sp)
 723  0114 a102          	cp	a,#2
 724  0116 2736          	jreq	L65
 725  0118 7b09          	ld	a,(OFST+9,sp)
 726  011a a103          	cp	a,#3
 727  011c 2730          	jreq	L65
 728  011e 7b09          	ld	a,(OFST+9,sp)
 729  0120 a104          	cp	a,#4
 730  0122 272a          	jreq	L65
 731  0124 7b09          	ld	a,(OFST+9,sp)
 732  0126 a105          	cp	a,#5
 733  0128 2724          	jreq	L65
 734  012a 7b09          	ld	a,(OFST+9,sp)
 735  012c a106          	cp	a,#6
 736  012e 271e          	jreq	L65
 737  0130 7b09          	ld	a,(OFST+9,sp)
 738  0132 a107          	cp	a,#7
 739  0134 2718          	jreq	L65
 740  0136 7b09          	ld	a,(OFST+9,sp)
 741  0138 a108          	cp	a,#8
 742  013a 2712          	jreq	L65
 743  013c 7b09          	ld	a,(OFST+9,sp)
 744  013e a10c          	cp	a,#12
 745  0140 270c          	jreq	L65
 746  0142 7b09          	ld	a,(OFST+9,sp)
 747  0144 a1ff          	cp	a,#255
 748  0146 2706          	jreq	L65
 749  0148 7b09          	ld	a,(OFST+9,sp)
 750  014a a109          	cp	a,#9
 751  014c 2603          	jrne	L45
 752  014e               L65:
 753  014e 4f            	clr	a
 754  014f 2010          	jra	L06
 755  0151               L45:
 756  0151 ae0061        	ldw	x,#97
 757  0154 89            	pushw	x
 758  0155 ae0000        	ldw	x,#0
 759  0158 89            	pushw	x
 760  0159 ae0000        	ldw	x,#L542
 761  015c cd0000        	call	_assert_failed
 763  015f 5b04          	addw	sp,#4
 764  0161               L06:
 765                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 767  0161 0d0a          	tnz	(OFST+10,sp)
 768  0163 2706          	jreq	L46
 769  0165 7b0a          	ld	a,(OFST+10,sp)
 770  0167 a101          	cp	a,#1
 771  0169 2603          	jrne	L26
 772  016b               L46:
 773  016b 4f            	clr	a
 774  016c 2010          	jra	L66
 775  016e               L26:
 776  016e ae0062        	ldw	x,#98
 777  0171 89            	pushw	x
 778  0172 ae0000        	ldw	x,#0
 779  0175 89            	pushw	x
 780  0176 ae0000        	ldw	x,#L542
 781  0179 cd0000        	call	_assert_failed
 783  017c 5b04          	addw	sp,#4
 784  017e               L66:
 785                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 787  017e 7b08          	ld	a,(OFST+8,sp)
 788  0180 88            	push	a
 789  0181 7b03          	ld	a,(OFST+3,sp)
 790  0183 97            	ld	xl,a
 791  0184 7b02          	ld	a,(OFST+2,sp)
 792  0186 95            	ld	xh,a
 793  0187 cd0000        	call	_ADC1_ConversionConfig
 795  018a 84            	pop	a
 796                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 798  018b 7b05          	ld	a,(OFST+5,sp)
 799  018d cd0000        	call	_ADC1_PrescalerConfig
 801                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 803  0190 7b07          	ld	a,(OFST+7,sp)
 804  0192 97            	ld	xl,a
 805  0193 7b06          	ld	a,(OFST+6,sp)
 806  0195 95            	ld	xh,a
 807  0196 cd0000        	call	_ADC1_ExternalTriggerConfig
 809                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 811  0199 7b0a          	ld	a,(OFST+10,sp)
 812  019b 97            	ld	xl,a
 813  019c 7b09          	ld	a,(OFST+9,sp)
 814  019e 95            	ld	xh,a
 815  019f cd0000        	call	_ADC1_SchmittTriggerConfig
 817                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 819  01a2 72105401      	bset	21505,#0
 820                     ; 119 }
 823  01a6 85            	popw	x
 824  01a7 81            	ret
 860                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 860                     ; 127 {
 861                     .text:	section	.text,new
 862  0000               _ADC1_Cmd:
 864  0000 88            	push	a
 865       00000000      OFST:	set	0
 868                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 870  0001 4d            	tnz	a
 871  0002 2704          	jreq	L47
 872  0004 a101          	cp	a,#1
 873  0006 2603          	jrne	L27
 874  0008               L47:
 875  0008 4f            	clr	a
 876  0009 2010          	jra	L67
 877  000b               L27:
 878  000b ae0081        	ldw	x,#129
 879  000e 89            	pushw	x
 880  000f ae0000        	ldw	x,#0
 881  0012 89            	pushw	x
 882  0013 ae0000        	ldw	x,#L542
 883  0016 cd0000        	call	_assert_failed
 885  0019 5b04          	addw	sp,#4
 886  001b               L67:
 887                     ; 131   if (NewState != DISABLE)
 889  001b 0d01          	tnz	(OFST+1,sp)
 890  001d 2706          	jreq	L562
 891                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 893  001f 72105401      	bset	21505,#0
 895  0023 2004          	jra	L762
 896  0025               L562:
 897                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 899  0025 72115401      	bres	21505,#0
 900  0029               L762:
 901                     ; 139 }
 904  0029 84            	pop	a
 905  002a 81            	ret
 941                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 941                     ; 147 {
 942                     .text:	section	.text,new
 943  0000               _ADC1_ScanModeCmd:
 945  0000 88            	push	a
 946       00000000      OFST:	set	0
 949                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 951  0001 4d            	tnz	a
 952  0002 2704          	jreq	L401
 953  0004 a101          	cp	a,#1
 954  0006 2603          	jrne	L201
 955  0008               L401:
 956  0008 4f            	clr	a
 957  0009 2010          	jra	L601
 958  000b               L201:
 959  000b ae0095        	ldw	x,#149
 960  000e 89            	pushw	x
 961  000f ae0000        	ldw	x,#0
 962  0012 89            	pushw	x
 963  0013 ae0000        	ldw	x,#L542
 964  0016 cd0000        	call	_assert_failed
 966  0019 5b04          	addw	sp,#4
 967  001b               L601:
 968                     ; 151   if (NewState != DISABLE)
 970  001b 0d01          	tnz	(OFST+1,sp)
 971  001d 2706          	jreq	L703
 972                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 974  001f 72125402      	bset	21506,#1
 976  0023 2004          	jra	L113
 977  0025               L703:
 978                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 980  0025 72135402      	bres	21506,#1
 981  0029               L113:
 982                     ; 159 }
 985  0029 84            	pop	a
 986  002a 81            	ret
1022                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1022                     ; 167 {
1023                     .text:	section	.text,new
1024  0000               _ADC1_DataBufferCmd:
1026  0000 88            	push	a
1027       00000000      OFST:	set	0
1030                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1032  0001 4d            	tnz	a
1033  0002 2704          	jreq	L411
1034  0004 a101          	cp	a,#1
1035  0006 2603          	jrne	L211
1036  0008               L411:
1037  0008 4f            	clr	a
1038  0009 2010          	jra	L611
1039  000b               L211:
1040  000b ae00a9        	ldw	x,#169
1041  000e 89            	pushw	x
1042  000f ae0000        	ldw	x,#0
1043  0012 89            	pushw	x
1044  0013 ae0000        	ldw	x,#L542
1045  0016 cd0000        	call	_assert_failed
1047  0019 5b04          	addw	sp,#4
1048  001b               L611:
1049                     ; 171   if (NewState != DISABLE)
1051  001b 0d01          	tnz	(OFST+1,sp)
1052  001d 2706          	jreq	L133
1053                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1055  001f 721e5403      	bset	21507,#7
1057  0023 2004          	jra	L333
1058  0025               L133:
1059                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1061  0025 721f5403      	bres	21507,#7
1062  0029               L333:
1063                     ; 179 }
1066  0029 84            	pop	a
1067  002a 81            	ret
1224                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1224                     ; 191 {
1225                     .text:	section	.text,new
1226  0000               _ADC1_ITConfig:
1228  0000 89            	pushw	x
1229       00000000      OFST:	set	0
1232                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1234  0001 a30020        	cpw	x,#32
1235  0004 2705          	jreq	L421
1236  0006 a30010        	cpw	x,#16
1237  0009 2603          	jrne	L221
1238  000b               L421:
1239  000b 4f            	clr	a
1240  000c 2010          	jra	L621
1241  000e               L221:
1242  000e ae00c1        	ldw	x,#193
1243  0011 89            	pushw	x
1244  0012 ae0000        	ldw	x,#0
1245  0015 89            	pushw	x
1246  0016 ae0000        	ldw	x,#L542
1247  0019 cd0000        	call	_assert_failed
1249  001c 5b04          	addw	sp,#4
1250  001e               L621:
1251                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1253  001e 0d05          	tnz	(OFST+5,sp)
1254  0020 2706          	jreq	L231
1255  0022 7b05          	ld	a,(OFST+5,sp)
1256  0024 a101          	cp	a,#1
1257  0026 2603          	jrne	L031
1258  0028               L231:
1259  0028 4f            	clr	a
1260  0029 2010          	jra	L431
1261  002b               L031:
1262  002b ae00c2        	ldw	x,#194
1263  002e 89            	pushw	x
1264  002f ae0000        	ldw	x,#0
1265  0032 89            	pushw	x
1266  0033 ae0000        	ldw	x,#L542
1267  0036 cd0000        	call	_assert_failed
1269  0039 5b04          	addw	sp,#4
1270  003b               L431:
1271                     ; 196   if (NewState != DISABLE)
1273  003b 0d05          	tnz	(OFST+5,sp)
1274  003d 270a          	jreq	L124
1275                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1277  003f c65400        	ld	a,21504
1278  0042 1a02          	or	a,(OFST+2,sp)
1279  0044 c75400        	ld	21504,a
1281  0047 2009          	jra	L324
1282  0049               L124:
1283                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1285  0049 7b02          	ld	a,(OFST+2,sp)
1286  004b 43            	cpl	a
1287  004c c45400        	and	a,21504
1288  004f c75400        	ld	21504,a
1289  0052               L324:
1290                     ; 206 }
1293  0052 85            	popw	x
1294  0053 81            	ret
1331                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1331                     ; 215 {
1332                     .text:	section	.text,new
1333  0000               _ADC1_PrescalerConfig:
1335  0000 88            	push	a
1336       00000000      OFST:	set	0
1339                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1341  0001 4d            	tnz	a
1342  0002 271c          	jreq	L241
1343  0004 a110          	cp	a,#16
1344  0006 2718          	jreq	L241
1345  0008 a120          	cp	a,#32
1346  000a 2714          	jreq	L241
1347  000c a130          	cp	a,#48
1348  000e 2710          	jreq	L241
1349  0010 a140          	cp	a,#64
1350  0012 270c          	jreq	L241
1351  0014 a150          	cp	a,#80
1352  0016 2708          	jreq	L241
1353  0018 a160          	cp	a,#96
1354  001a 2704          	jreq	L241
1355  001c a170          	cp	a,#112
1356  001e 2603          	jrne	L041
1357  0020               L241:
1358  0020 4f            	clr	a
1359  0021 2010          	jra	L441
1360  0023               L041:
1361  0023 ae00d9        	ldw	x,#217
1362  0026 89            	pushw	x
1363  0027 ae0000        	ldw	x,#0
1364  002a 89            	pushw	x
1365  002b ae0000        	ldw	x,#L542
1366  002e cd0000        	call	_assert_failed
1368  0031 5b04          	addw	sp,#4
1369  0033               L441:
1370                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1372  0033 c65401        	ld	a,21505
1373  0036 a48f          	and	a,#143
1374  0038 c75401        	ld	21505,a
1375                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1377  003b c65401        	ld	a,21505
1378  003e 1a01          	or	a,(OFST+1,sp)
1379  0040 c75401        	ld	21505,a
1380                     ; 223 }
1383  0043 84            	pop	a
1384  0044 81            	ret
1432                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1432                     ; 234 {
1433                     .text:	section	.text,new
1434  0000               _ADC1_SchmittTriggerConfig:
1436  0000 89            	pushw	x
1437       00000000      OFST:	set	0
1440                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1442  0001 9e            	ld	a,xh
1443  0002 4d            	tnz	a
1444  0003 2737          	jreq	L251
1445  0005 9e            	ld	a,xh
1446  0006 a101          	cp	a,#1
1447  0008 2732          	jreq	L251
1448  000a 9e            	ld	a,xh
1449  000b a102          	cp	a,#2
1450  000d 272d          	jreq	L251
1451  000f 9e            	ld	a,xh
1452  0010 a103          	cp	a,#3
1453  0012 2728          	jreq	L251
1454  0014 9e            	ld	a,xh
1455  0015 a104          	cp	a,#4
1456  0017 2723          	jreq	L251
1457  0019 9e            	ld	a,xh
1458  001a a105          	cp	a,#5
1459  001c 271e          	jreq	L251
1460  001e 9e            	ld	a,xh
1461  001f a106          	cp	a,#6
1462  0021 2719          	jreq	L251
1463  0023 9e            	ld	a,xh
1464  0024 a107          	cp	a,#7
1465  0026 2714          	jreq	L251
1466  0028 9e            	ld	a,xh
1467  0029 a108          	cp	a,#8
1468  002b 270f          	jreq	L251
1469  002d 9e            	ld	a,xh
1470  002e a10c          	cp	a,#12
1471  0030 270a          	jreq	L251
1472  0032 9e            	ld	a,xh
1473  0033 a1ff          	cp	a,#255
1474  0035 2705          	jreq	L251
1475  0037 9e            	ld	a,xh
1476  0038 a109          	cp	a,#9
1477  003a 2603          	jrne	L051
1478  003c               L251:
1479  003c 4f            	clr	a
1480  003d 2010          	jra	L451
1481  003f               L051:
1482  003f ae00ec        	ldw	x,#236
1483  0042 89            	pushw	x
1484  0043 ae0000        	ldw	x,#0
1485  0046 89            	pushw	x
1486  0047 ae0000        	ldw	x,#L542
1487  004a cd0000        	call	_assert_failed
1489  004d 5b04          	addw	sp,#4
1490  004f               L451:
1491                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1493  004f 0d02          	tnz	(OFST+2,sp)
1494  0051 2706          	jreq	L061
1495  0053 7b02          	ld	a,(OFST+2,sp)
1496  0055 a101          	cp	a,#1
1497  0057 2603          	jrne	L651
1498  0059               L061:
1499  0059 4f            	clr	a
1500  005a 2010          	jra	L261
1501  005c               L651:
1502  005c ae00ed        	ldw	x,#237
1503  005f 89            	pushw	x
1504  0060 ae0000        	ldw	x,#0
1505  0063 89            	pushw	x
1506  0064 ae0000        	ldw	x,#L542
1507  0067 cd0000        	call	_assert_failed
1509  006a 5b04          	addw	sp,#4
1510  006c               L261:
1511                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1513  006c 7b01          	ld	a,(OFST+1,sp)
1514  006e a1ff          	cp	a,#255
1515  0070 2620          	jrne	L564
1516                     ; 241     if (NewState != DISABLE)
1518  0072 0d02          	tnz	(OFST+2,sp)
1519  0074 270a          	jreq	L764
1520                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1522  0076 725f5407      	clr	21511
1523                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1525  007a 725f5406      	clr	21510
1527  007e 2078          	jra	L374
1528  0080               L764:
1529                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1531  0080 c65407        	ld	a,21511
1532  0083 aaff          	or	a,#255
1533  0085 c75407        	ld	21511,a
1534                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1536  0088 c65406        	ld	a,21510
1537  008b aaff          	or	a,#255
1538  008d c75406        	ld	21510,a
1539  0090 2066          	jra	L374
1540  0092               L564:
1541                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1543  0092 7b01          	ld	a,(OFST+1,sp)
1544  0094 a108          	cp	a,#8
1545  0096 242f          	jruge	L574
1546                     ; 254     if (NewState != DISABLE)
1548  0098 0d02          	tnz	(OFST+2,sp)
1549  009a 2716          	jreq	L774
1550                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1552  009c 7b01          	ld	a,(OFST+1,sp)
1553  009e 5f            	clrw	x
1554  009f 97            	ld	xl,a
1555  00a0 a601          	ld	a,#1
1556  00a2 5d            	tnzw	x
1557  00a3 2704          	jreq	L461
1558  00a5               L661:
1559  00a5 48            	sll	a
1560  00a6 5a            	decw	x
1561  00a7 26fc          	jrne	L661
1562  00a9               L461:
1563  00a9 43            	cpl	a
1564  00aa c45407        	and	a,21511
1565  00ad c75407        	ld	21511,a
1567  00b0 2046          	jra	L374
1568  00b2               L774:
1569                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1571  00b2 7b01          	ld	a,(OFST+1,sp)
1572  00b4 5f            	clrw	x
1573  00b5 97            	ld	xl,a
1574  00b6 a601          	ld	a,#1
1575  00b8 5d            	tnzw	x
1576  00b9 2704          	jreq	L071
1577  00bb               L271:
1578  00bb 48            	sll	a
1579  00bc 5a            	decw	x
1580  00bd 26fc          	jrne	L271
1581  00bf               L071:
1582  00bf ca5407        	or	a,21511
1583  00c2 c75407        	ld	21511,a
1584  00c5 2031          	jra	L374
1585  00c7               L574:
1586                     ; 265     if (NewState != DISABLE)
1588  00c7 0d02          	tnz	(OFST+2,sp)
1589  00c9 2718          	jreq	L505
1590                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1592  00cb 7b01          	ld	a,(OFST+1,sp)
1593  00cd a008          	sub	a,#8
1594  00cf 5f            	clrw	x
1595  00d0 97            	ld	xl,a
1596  00d1 a601          	ld	a,#1
1597  00d3 5d            	tnzw	x
1598  00d4 2704          	jreq	L471
1599  00d6               L671:
1600  00d6 48            	sll	a
1601  00d7 5a            	decw	x
1602  00d8 26fc          	jrne	L671
1603  00da               L471:
1604  00da 43            	cpl	a
1605  00db c45406        	and	a,21510
1606  00de c75406        	ld	21510,a
1608  00e1 2015          	jra	L374
1609  00e3               L505:
1610                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1612  00e3 7b01          	ld	a,(OFST+1,sp)
1613  00e5 a008          	sub	a,#8
1614  00e7 5f            	clrw	x
1615  00e8 97            	ld	xl,a
1616  00e9 a601          	ld	a,#1
1617  00eb 5d            	tnzw	x
1618  00ec 2704          	jreq	L002
1619  00ee               L202:
1620  00ee 48            	sll	a
1621  00ef 5a            	decw	x
1622  00f0 26fc          	jrne	L202
1623  00f2               L002:
1624  00f2 ca5406        	or	a,21510
1625  00f5 c75406        	ld	21510,a
1626  00f8               L374:
1627                     ; 274 }
1630  00f8 85            	popw	x
1631  00f9 81            	ret
1689                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1689                     ; 287 {
1690                     .text:	section	.text,new
1691  0000               _ADC1_ConversionConfig:
1693  0000 89            	pushw	x
1694       00000000      OFST:	set	0
1697                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1699  0001 9e            	ld	a,xh
1700  0002 4d            	tnz	a
1701  0003 2705          	jreq	L012
1702  0005 9e            	ld	a,xh
1703  0006 a101          	cp	a,#1
1704  0008 2603          	jrne	L602
1705  000a               L012:
1706  000a 4f            	clr	a
1707  000b 2010          	jra	L212
1708  000d               L602:
1709  000d ae0121        	ldw	x,#289
1710  0010 89            	pushw	x
1711  0011 ae0000        	ldw	x,#0
1712  0014 89            	pushw	x
1713  0015 ae0000        	ldw	x,#L542
1714  0018 cd0000        	call	_assert_failed
1716  001b 5b04          	addw	sp,#4
1717  001d               L212:
1718                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1720  001d 0d02          	tnz	(OFST+2,sp)
1721  001f 273c          	jreq	L612
1722  0021 7b02          	ld	a,(OFST+2,sp)
1723  0023 a101          	cp	a,#1
1724  0025 2736          	jreq	L612
1725  0027 7b02          	ld	a,(OFST+2,sp)
1726  0029 a102          	cp	a,#2
1727  002b 2730          	jreq	L612
1728  002d 7b02          	ld	a,(OFST+2,sp)
1729  002f a103          	cp	a,#3
1730  0031 272a          	jreq	L612
1731  0033 7b02          	ld	a,(OFST+2,sp)
1732  0035 a104          	cp	a,#4
1733  0037 2724          	jreq	L612
1734  0039 7b02          	ld	a,(OFST+2,sp)
1735  003b a105          	cp	a,#5
1736  003d 271e          	jreq	L612
1737  003f 7b02          	ld	a,(OFST+2,sp)
1738  0041 a106          	cp	a,#6
1739  0043 2718          	jreq	L612
1740  0045 7b02          	ld	a,(OFST+2,sp)
1741  0047 a107          	cp	a,#7
1742  0049 2712          	jreq	L612
1743  004b 7b02          	ld	a,(OFST+2,sp)
1744  004d a108          	cp	a,#8
1745  004f 270c          	jreq	L612
1746  0051 7b02          	ld	a,(OFST+2,sp)
1747  0053 a10c          	cp	a,#12
1748  0055 2706          	jreq	L612
1749  0057 7b02          	ld	a,(OFST+2,sp)
1750  0059 a109          	cp	a,#9
1751  005b 2603          	jrne	L412
1752  005d               L612:
1753  005d 4f            	clr	a
1754  005e 2010          	jra	L022
1755  0060               L412:
1756  0060 ae0122        	ldw	x,#290
1757  0063 89            	pushw	x
1758  0064 ae0000        	ldw	x,#0
1759  0067 89            	pushw	x
1760  0068 ae0000        	ldw	x,#L542
1761  006b cd0000        	call	_assert_failed
1763  006e 5b04          	addw	sp,#4
1764  0070               L022:
1765                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1767  0070 0d05          	tnz	(OFST+5,sp)
1768  0072 2706          	jreq	L422
1769  0074 7b05          	ld	a,(OFST+5,sp)
1770  0076 a108          	cp	a,#8
1771  0078 2603          	jrne	L222
1772  007a               L422:
1773  007a 4f            	clr	a
1774  007b 2010          	jra	L622
1775  007d               L222:
1776  007d ae0123        	ldw	x,#291
1777  0080 89            	pushw	x
1778  0081 ae0000        	ldw	x,#0
1779  0084 89            	pushw	x
1780  0085 ae0000        	ldw	x,#L542
1781  0088 cd0000        	call	_assert_failed
1783  008b 5b04          	addw	sp,#4
1784  008d               L622:
1785                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1787  008d 72175402      	bres	21506,#3
1788                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1790  0091 c65402        	ld	a,21506
1791  0094 1a05          	or	a,(OFST+5,sp)
1792  0096 c75402        	ld	21506,a
1793                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1795  0099 7b01          	ld	a,(OFST+1,sp)
1796  009b a101          	cp	a,#1
1797  009d 2606          	jrne	L735
1798                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1800  009f 72125401      	bset	21505,#1
1802  00a3 2004          	jra	L145
1803  00a5               L735:
1804                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1806  00a5 72135401      	bres	21505,#1
1807  00a9               L145:
1808                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1810  00a9 c65400        	ld	a,21504
1811  00ac a4f0          	and	a,#240
1812  00ae c75400        	ld	21504,a
1813                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1815  00b1 c65400        	ld	a,21504
1816  00b4 1a02          	or	a,(OFST+2,sp)
1817  00b6 c75400        	ld	21504,a
1818                     ; 313 }
1821  00b9 85            	popw	x
1822  00ba 81            	ret
1869                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1869                     ; 326 {
1870                     .text:	section	.text,new
1871  0000               _ADC1_ExternalTriggerConfig:
1873  0000 89            	pushw	x
1874       00000000      OFST:	set	0
1877                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1879  0001 9e            	ld	a,xh
1880  0002 4d            	tnz	a
1881  0003 2705          	jreq	L432
1882  0005 9e            	ld	a,xh
1883  0006 a110          	cp	a,#16
1884  0008 2603          	jrne	L232
1885  000a               L432:
1886  000a 4f            	clr	a
1887  000b 2010          	jra	L632
1888  000d               L232:
1889  000d ae0148        	ldw	x,#328
1890  0010 89            	pushw	x
1891  0011 ae0000        	ldw	x,#0
1892  0014 89            	pushw	x
1893  0015 ae0000        	ldw	x,#L542
1894  0018 cd0000        	call	_assert_failed
1896  001b 5b04          	addw	sp,#4
1897  001d               L632:
1898                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1900  001d 0d02          	tnz	(OFST+2,sp)
1901  001f 2706          	jreq	L242
1902  0021 7b02          	ld	a,(OFST+2,sp)
1903  0023 a101          	cp	a,#1
1904  0025 2603          	jrne	L042
1905  0027               L242:
1906  0027 4f            	clr	a
1907  0028 2010          	jra	L442
1908  002a               L042:
1909  002a ae0149        	ldw	x,#329
1910  002d 89            	pushw	x
1911  002e ae0000        	ldw	x,#0
1912  0031 89            	pushw	x
1913  0032 ae0000        	ldw	x,#L542
1914  0035 cd0000        	call	_assert_failed
1916  0038 5b04          	addw	sp,#4
1917  003a               L442:
1918                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1920  003a c65402        	ld	a,21506
1921  003d a4cf          	and	a,#207
1922  003f c75402        	ld	21506,a
1923                     ; 334   if (NewState != DISABLE)
1925  0042 0d02          	tnz	(OFST+2,sp)
1926  0044 2706          	jreq	L565
1927                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1929  0046 721c5402      	bset	21506,#6
1931  004a 2004          	jra	L765
1932  004c               L565:
1933                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1935  004c 721d5402      	bres	21506,#6
1936  0050               L765:
1937                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1939  0050 c65402        	ld	a,21506
1940  0053 1a01          	or	a,(OFST+1,sp)
1941  0055 c75402        	ld	21506,a
1942                     ; 347 }
1945  0058 85            	popw	x
1946  0059 81            	ret
1970                     ; 358 void ADC1_StartConversion(void)
1970                     ; 359 {
1971                     .text:	section	.text,new
1972  0000               _ADC1_StartConversion:
1976                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1978  0000 72105401      	bset	21505,#0
1979                     ; 361 }
1982  0004 81            	ret
2026                     ; 370 uint16_t ADC1_GetConversionValue(void)
2026                     ; 371 {
2027                     .text:	section	.text,new
2028  0000               _ADC1_GetConversionValue:
2030  0000 5205          	subw	sp,#5
2031       00000005      OFST:	set	5
2034                     ; 372   uint16_t temph = 0;
2036                     ; 373   uint8_t templ = 0;
2038                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2040  0002 c65402        	ld	a,21506
2041  0005 a508          	bcp	a,#8
2042  0007 2715          	jreq	L326
2043                     ; 378     templ = ADC1->DRL;
2045  0009 c65405        	ld	a,21509
2046  000c 6b03          	ld	(OFST-2,sp),a
2048                     ; 380     temph = ADC1->DRH;
2050  000e c65404        	ld	a,21508
2051  0011 5f            	clrw	x
2052  0012 97            	ld	xl,a
2053  0013 1f04          	ldw	(OFST-1,sp),x
2055                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2057  0015 1e04          	ldw	x,(OFST-1,sp)
2058  0017 7b03          	ld	a,(OFST-2,sp)
2059  0019 02            	rlwa	x,a
2060  001a 1f04          	ldw	(OFST-1,sp),x
2063  001c 2021          	jra	L526
2064  001e               L326:
2065                     ; 387     temph = ADC1->DRH;
2067  001e c65404        	ld	a,21508
2068  0021 5f            	clrw	x
2069  0022 97            	ld	xl,a
2070  0023 1f04          	ldw	(OFST-1,sp),x
2072                     ; 389     templ = ADC1->DRL;
2074  0025 c65405        	ld	a,21509
2075  0028 6b03          	ld	(OFST-2,sp),a
2077                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2079  002a 1e04          	ldw	x,(OFST-1,sp)
2080  002c 4f            	clr	a
2081  002d 02            	rlwa	x,a
2082  002e 1f01          	ldw	(OFST-4,sp),x
2084  0030 7b03          	ld	a,(OFST-2,sp)
2085  0032 97            	ld	xl,a
2086  0033 a640          	ld	a,#64
2087  0035 42            	mul	x,a
2088  0036 01            	rrwa	x,a
2089  0037 1a02          	or	a,(OFST-3,sp)
2090  0039 01            	rrwa	x,a
2091  003a 1a01          	or	a,(OFST-4,sp)
2092  003c 01            	rrwa	x,a
2093  003d 1f04          	ldw	(OFST-1,sp),x
2095  003f               L526:
2096                     ; 394   return ((uint16_t)temph);
2098  003f 1e04          	ldw	x,(OFST-1,sp)
2101  0041 5b05          	addw	sp,#5
2102  0043 81            	ret
2149                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2149                     ; 406 {
2150                     .text:	section	.text,new
2151  0000               _ADC1_AWDChannelConfig:
2153  0000 89            	pushw	x
2154       00000000      OFST:	set	0
2157                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2159  0001 9f            	ld	a,xl
2160  0002 4d            	tnz	a
2161  0003 2705          	jreq	L652
2162  0005 9f            	ld	a,xl
2163  0006 a101          	cp	a,#1
2164  0008 2603          	jrne	L452
2165  000a               L652:
2166  000a 4f            	clr	a
2167  000b 2010          	jra	L062
2168  000d               L452:
2169  000d ae0198        	ldw	x,#408
2170  0010 89            	pushw	x
2171  0011 ae0000        	ldw	x,#0
2172  0014 89            	pushw	x
2173  0015 ae0000        	ldw	x,#L542
2174  0018 cd0000        	call	_assert_failed
2176  001b 5b04          	addw	sp,#4
2177  001d               L062:
2178                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2180  001d 0d01          	tnz	(OFST+1,sp)
2181  001f 273c          	jreq	L462
2182  0021 7b01          	ld	a,(OFST+1,sp)
2183  0023 a101          	cp	a,#1
2184  0025 2736          	jreq	L462
2185  0027 7b01          	ld	a,(OFST+1,sp)
2186  0029 a102          	cp	a,#2
2187  002b 2730          	jreq	L462
2188  002d 7b01          	ld	a,(OFST+1,sp)
2189  002f a103          	cp	a,#3
2190  0031 272a          	jreq	L462
2191  0033 7b01          	ld	a,(OFST+1,sp)
2192  0035 a104          	cp	a,#4
2193  0037 2724          	jreq	L462
2194  0039 7b01          	ld	a,(OFST+1,sp)
2195  003b a105          	cp	a,#5
2196  003d 271e          	jreq	L462
2197  003f 7b01          	ld	a,(OFST+1,sp)
2198  0041 a106          	cp	a,#6
2199  0043 2718          	jreq	L462
2200  0045 7b01          	ld	a,(OFST+1,sp)
2201  0047 a107          	cp	a,#7
2202  0049 2712          	jreq	L462
2203  004b 7b01          	ld	a,(OFST+1,sp)
2204  004d a108          	cp	a,#8
2205  004f 270c          	jreq	L462
2206  0051 7b01          	ld	a,(OFST+1,sp)
2207  0053 a10c          	cp	a,#12
2208  0055 2706          	jreq	L462
2209  0057 7b01          	ld	a,(OFST+1,sp)
2210  0059 a109          	cp	a,#9
2211  005b 2603          	jrne	L262
2212  005d               L462:
2213  005d 4f            	clr	a
2214  005e 2010          	jra	L662
2215  0060               L262:
2216  0060 ae0199        	ldw	x,#409
2217  0063 89            	pushw	x
2218  0064 ae0000        	ldw	x,#0
2219  0067 89            	pushw	x
2220  0068 ae0000        	ldw	x,#L542
2221  006b cd0000        	call	_assert_failed
2223  006e 5b04          	addw	sp,#4
2224  0070               L662:
2225                     ; 411   if (Channel < (uint8_t)8)
2227  0070 7b01          	ld	a,(OFST+1,sp)
2228  0072 a108          	cp	a,#8
2229  0074 242f          	jruge	L156
2230                     ; 413     if (NewState != DISABLE)
2232  0076 0d02          	tnz	(OFST+2,sp)
2233  0078 2715          	jreq	L356
2234                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2236  007a 7b01          	ld	a,(OFST+1,sp)
2237  007c 5f            	clrw	x
2238  007d 97            	ld	xl,a
2239  007e a601          	ld	a,#1
2240  0080 5d            	tnzw	x
2241  0081 2704          	jreq	L072
2242  0083               L272:
2243  0083 48            	sll	a
2244  0084 5a            	decw	x
2245  0085 26fc          	jrne	L272
2246  0087               L072:
2247  0087 ca540f        	or	a,21519
2248  008a c7540f        	ld	21519,a
2250  008d 2047          	jra	L756
2251  008f               L356:
2252                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2254  008f 7b01          	ld	a,(OFST+1,sp)
2255  0091 5f            	clrw	x
2256  0092 97            	ld	xl,a
2257  0093 a601          	ld	a,#1
2258  0095 5d            	tnzw	x
2259  0096 2704          	jreq	L472
2260  0098               L672:
2261  0098 48            	sll	a
2262  0099 5a            	decw	x
2263  009a 26fc          	jrne	L672
2264  009c               L472:
2265  009c 43            	cpl	a
2266  009d c4540f        	and	a,21519
2267  00a0 c7540f        	ld	21519,a
2268  00a3 2031          	jra	L756
2269  00a5               L156:
2270                     ; 424     if (NewState != DISABLE)
2272  00a5 0d02          	tnz	(OFST+2,sp)
2273  00a7 2717          	jreq	L166
2274                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2276  00a9 7b01          	ld	a,(OFST+1,sp)
2277  00ab a008          	sub	a,#8
2278  00ad 5f            	clrw	x
2279  00ae 97            	ld	xl,a
2280  00af a601          	ld	a,#1
2281  00b1 5d            	tnzw	x
2282  00b2 2704          	jreq	L003
2283  00b4               L203:
2284  00b4 48            	sll	a
2285  00b5 5a            	decw	x
2286  00b6 26fc          	jrne	L203
2287  00b8               L003:
2288  00b8 ca540e        	or	a,21518
2289  00bb c7540e        	ld	21518,a
2291  00be 2016          	jra	L756
2292  00c0               L166:
2293                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2295  00c0 7b01          	ld	a,(OFST+1,sp)
2296  00c2 a008          	sub	a,#8
2297  00c4 5f            	clrw	x
2298  00c5 97            	ld	xl,a
2299  00c6 a601          	ld	a,#1
2300  00c8 5d            	tnzw	x
2301  00c9 2704          	jreq	L403
2302  00cb               L603:
2303  00cb 48            	sll	a
2304  00cc 5a            	decw	x
2305  00cd 26fc          	jrne	L603
2306  00cf               L403:
2307  00cf 43            	cpl	a
2308  00d0 c4540e        	and	a,21518
2309  00d3 c7540e        	ld	21518,a
2310  00d6               L756:
2311                     ; 433 }
2314  00d6 85            	popw	x
2315  00d7 81            	ret
2350                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2350                     ; 442 {
2351                     .text:	section	.text,new
2352  0000               _ADC1_SetHighThreshold:
2354  0000 89            	pushw	x
2355       00000000      OFST:	set	0
2358                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2360  0001 54            	srlw	x
2361  0002 54            	srlw	x
2362  0003 9f            	ld	a,xl
2363  0004 c75408        	ld	21512,a
2364                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2366  0007 7b02          	ld	a,(OFST+2,sp)
2367  0009 c75409        	ld	21513,a
2368                     ; 445 }
2371  000c 85            	popw	x
2372  000d 81            	ret
2407                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2407                     ; 454 {
2408                     .text:	section	.text,new
2409  0000               _ADC1_SetLowThreshold:
2413                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2415  0000 9f            	ld	a,xl
2416  0001 c7540b        	ld	21515,a
2417                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2419  0004 54            	srlw	x
2420  0005 54            	srlw	x
2421  0006 9f            	ld	a,xl
2422  0007 c7540a        	ld	21514,a
2423                     ; 457 }
2426  000a 81            	ret
2480                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2480                     ; 467 {
2481                     .text:	section	.text,new
2482  0000               _ADC1_GetBufferValue:
2484  0000 88            	push	a
2485  0001 5205          	subw	sp,#5
2486       00000005      OFST:	set	5
2489                     ; 468   uint16_t temph = 0;
2491                     ; 469   uint8_t templ = 0;
2493                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2495  0003 a10a          	cp	a,#10
2496  0005 2403          	jruge	L613
2497  0007 4f            	clr	a
2498  0008 2010          	jra	L023
2499  000a               L613:
2500  000a ae01d8        	ldw	x,#472
2501  000d 89            	pushw	x
2502  000e ae0000        	ldw	x,#0
2503  0011 89            	pushw	x
2504  0012 ae0000        	ldw	x,#L542
2505  0015 cd0000        	call	_assert_failed
2507  0018 5b04          	addw	sp,#4
2508  001a               L023:
2509                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2511  001a c65402        	ld	a,21506
2512  001d a508          	bcp	a,#8
2513  001f 271f          	jreq	L747
2514                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2516  0021 7b06          	ld	a,(OFST+1,sp)
2517  0023 48            	sll	a
2518  0024 5f            	clrw	x
2519  0025 97            	ld	xl,a
2520  0026 d653e1        	ld	a,(21473,x)
2521  0029 6b03          	ld	(OFST-2,sp),a
2523                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2525  002b 7b06          	ld	a,(OFST+1,sp)
2526  002d 48            	sll	a
2527  002e 5f            	clrw	x
2528  002f 97            	ld	xl,a
2529  0030 d653e0        	ld	a,(21472,x)
2530  0033 5f            	clrw	x
2531  0034 97            	ld	xl,a
2532  0035 1f04          	ldw	(OFST-1,sp),x
2534                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2536  0037 1e04          	ldw	x,(OFST-1,sp)
2537  0039 7b03          	ld	a,(OFST-2,sp)
2538  003b 02            	rlwa	x,a
2539  003c 1f04          	ldw	(OFST-1,sp),x
2542  003e 202b          	jra	L157
2543  0040               L747:
2544                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2546  0040 7b06          	ld	a,(OFST+1,sp)
2547  0042 48            	sll	a
2548  0043 5f            	clrw	x
2549  0044 97            	ld	xl,a
2550  0045 d653e0        	ld	a,(21472,x)
2551  0048 5f            	clrw	x
2552  0049 97            	ld	xl,a
2553  004a 1f04          	ldw	(OFST-1,sp),x
2555                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2557  004c 7b06          	ld	a,(OFST+1,sp)
2558  004e 48            	sll	a
2559  004f 5f            	clrw	x
2560  0050 97            	ld	xl,a
2561  0051 d653e1        	ld	a,(21473,x)
2562  0054 6b03          	ld	(OFST-2,sp),a
2564                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2566  0056 1e04          	ldw	x,(OFST-1,sp)
2567  0058 4f            	clr	a
2568  0059 02            	rlwa	x,a
2569  005a 1f01          	ldw	(OFST-4,sp),x
2571  005c 7b03          	ld	a,(OFST-2,sp)
2572  005e 97            	ld	xl,a
2573  005f a640          	ld	a,#64
2574  0061 42            	mul	x,a
2575  0062 01            	rrwa	x,a
2576  0063 1a02          	or	a,(OFST-3,sp)
2577  0065 01            	rrwa	x,a
2578  0066 1a01          	or	a,(OFST-4,sp)
2579  0068 01            	rrwa	x,a
2580  0069 1f04          	ldw	(OFST-1,sp),x
2582  006b               L157:
2583                     ; 493   return ((uint16_t)temph);
2585  006b 1e04          	ldw	x,(OFST-1,sp)
2588  006d 5b06          	addw	sp,#6
2589  006f 81            	ret
2656                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2656                     ; 503 {
2657                     .text:	section	.text,new
2658  0000               _ADC1_GetAWDChannelStatus:
2660  0000 88            	push	a
2661  0001 88            	push	a
2662       00000001      OFST:	set	1
2665                     ; 504   uint8_t status = 0;
2667                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2669  0002 4d            	tnz	a
2670  0003 2728          	jreq	L623
2671  0005 a101          	cp	a,#1
2672  0007 2724          	jreq	L623
2673  0009 a102          	cp	a,#2
2674  000b 2720          	jreq	L623
2675  000d a103          	cp	a,#3
2676  000f 271c          	jreq	L623
2677  0011 a104          	cp	a,#4
2678  0013 2718          	jreq	L623
2679  0015 a105          	cp	a,#5
2680  0017 2714          	jreq	L623
2681  0019 a106          	cp	a,#6
2682  001b 2710          	jreq	L623
2683  001d a107          	cp	a,#7
2684  001f 270c          	jreq	L623
2685  0021 a108          	cp	a,#8
2686  0023 2708          	jreq	L623
2687  0025 a10c          	cp	a,#12
2688  0027 2704          	jreq	L623
2689  0029 a109          	cp	a,#9
2690  002b 2603          	jrne	L423
2691  002d               L623:
2692  002d 4f            	clr	a
2693  002e 2010          	jra	L033
2694  0030               L423:
2695  0030 ae01fb        	ldw	x,#507
2696  0033 89            	pushw	x
2697  0034 ae0000        	ldw	x,#0
2698  0037 89            	pushw	x
2699  0038 ae0000        	ldw	x,#L542
2700  003b cd0000        	call	_assert_failed
2702  003e 5b04          	addw	sp,#4
2703  0040               L033:
2704                     ; 509   if (Channel < (uint8_t)8)
2706  0040 7b02          	ld	a,(OFST+1,sp)
2707  0042 a108          	cp	a,#8
2708  0044 2414          	jruge	L5001
2709                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2711  0046 7b02          	ld	a,(OFST+1,sp)
2712  0048 5f            	clrw	x
2713  0049 97            	ld	xl,a
2714  004a a601          	ld	a,#1
2715  004c 5d            	tnzw	x
2716  004d 2704          	jreq	L233
2717  004f               L433:
2718  004f 48            	sll	a
2719  0050 5a            	decw	x
2720  0051 26fc          	jrne	L433
2721  0053               L233:
2722  0053 c4540d        	and	a,21517
2723  0056 6b01          	ld	(OFST+0,sp),a
2726  0058 2014          	jra	L7001
2727  005a               L5001:
2728                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2730  005a 7b02          	ld	a,(OFST+1,sp)
2731  005c a008          	sub	a,#8
2732  005e 5f            	clrw	x
2733  005f 97            	ld	xl,a
2734  0060 a601          	ld	a,#1
2735  0062 5d            	tnzw	x
2736  0063 2704          	jreq	L633
2737  0065               L043:
2738  0065 48            	sll	a
2739  0066 5a            	decw	x
2740  0067 26fc          	jrne	L043
2741  0069               L633:
2742  0069 c4540c        	and	a,21516
2743  006c 6b01          	ld	(OFST+0,sp),a
2745  006e               L7001:
2746                     ; 518   return ((FlagStatus)status);
2748  006e 7b01          	ld	a,(OFST+0,sp)
2751  0070 85            	popw	x
2752  0071 81            	ret
2911                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2911                     ; 528 {
2912                     .text:	section	.text,new
2913  0000               _ADC1_GetFlagStatus:
2915  0000 88            	push	a
2916  0001 88            	push	a
2917       00000001      OFST:	set	1
2920                     ; 529   uint8_t flagstatus = 0;
2922                     ; 530   uint8_t temp = 0;
2924                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2926  0002 a180          	cp	a,#128
2927  0004 2730          	jreq	L643
2928  0006 a141          	cp	a,#65
2929  0008 272c          	jreq	L643
2930  000a a140          	cp	a,#64
2931  000c 2728          	jreq	L643
2932  000e a110          	cp	a,#16
2933  0010 2724          	jreq	L643
2934  0012 a111          	cp	a,#17
2935  0014 2720          	jreq	L643
2936  0016 a112          	cp	a,#18
2937  0018 271c          	jreq	L643
2938  001a a113          	cp	a,#19
2939  001c 2718          	jreq	L643
2940  001e a114          	cp	a,#20
2941  0020 2714          	jreq	L643
2942  0022 a115          	cp	a,#21
2943  0024 2710          	jreq	L643
2944  0026 a116          	cp	a,#22
2945  0028 270c          	jreq	L643
2946  002a a117          	cp	a,#23
2947  002c 2708          	jreq	L643
2948  002e a118          	cp	a,#24
2949  0030 2704          	jreq	L643
2950  0032 a119          	cp	a,#25
2951  0034 2603          	jrne	L443
2952  0036               L643:
2953  0036 4f            	clr	a
2954  0037 2010          	jra	L053
2955  0039               L443:
2956  0039 ae0215        	ldw	x,#533
2957  003c 89            	pushw	x
2958  003d ae0000        	ldw	x,#0
2959  0040 89            	pushw	x
2960  0041 ae0000        	ldw	x,#L542
2961  0044 cd0000        	call	_assert_failed
2963  0047 5b04          	addw	sp,#4
2964  0049               L053:
2965                     ; 535   if ((Flag & 0x0F) == 0x01)
2967  0049 7b02          	ld	a,(OFST+1,sp)
2968  004b a40f          	and	a,#15
2969  004d a101          	cp	a,#1
2970  004f 2609          	jrne	L7701
2971                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2973  0051 c65403        	ld	a,21507
2974  0054 a440          	and	a,#64
2975  0056 6b01          	ld	(OFST+0,sp),a
2978  0058 2045          	jra	L1011
2979  005a               L7701:
2980                     ; 540   else if ((Flag & 0xF0) == 0x10)
2982  005a 7b02          	ld	a,(OFST+1,sp)
2983  005c a4f0          	and	a,#240
2984  005e a110          	cp	a,#16
2985  0060 2636          	jrne	L3011
2986                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2988  0062 7b02          	ld	a,(OFST+1,sp)
2989  0064 a40f          	and	a,#15
2990  0066 6b01          	ld	(OFST+0,sp),a
2992                     ; 544     if (temp < 8)
2994  0068 7b01          	ld	a,(OFST+0,sp)
2995  006a a108          	cp	a,#8
2996  006c 2414          	jruge	L5011
2997                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2999  006e 7b01          	ld	a,(OFST+0,sp)
3000  0070 5f            	clrw	x
3001  0071 97            	ld	xl,a
3002  0072 a601          	ld	a,#1
3003  0074 5d            	tnzw	x
3004  0075 2704          	jreq	L253
3005  0077               L453:
3006  0077 48            	sll	a
3007  0078 5a            	decw	x
3008  0079 26fc          	jrne	L453
3009  007b               L253:
3010  007b c4540d        	and	a,21517
3011  007e 6b01          	ld	(OFST+0,sp),a
3014  0080 201d          	jra	L1011
3015  0082               L5011:
3016                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3018  0082 7b01          	ld	a,(OFST+0,sp)
3019  0084 a008          	sub	a,#8
3020  0086 5f            	clrw	x
3021  0087 97            	ld	xl,a
3022  0088 a601          	ld	a,#1
3023  008a 5d            	tnzw	x
3024  008b 2704          	jreq	L653
3025  008d               L063:
3026  008d 48            	sll	a
3027  008e 5a            	decw	x
3028  008f 26fc          	jrne	L063
3029  0091               L653:
3030  0091 c4540c        	and	a,21516
3031  0094 6b01          	ld	(OFST+0,sp),a
3033  0096 2007          	jra	L1011
3034  0098               L3011:
3035                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3037  0098 c65400        	ld	a,21504
3038  009b 1402          	and	a,(OFST+1,sp)
3039  009d 6b01          	ld	(OFST+0,sp),a
3041  009f               L1011:
3042                     ; 557   return ((FlagStatus)flagstatus);
3044  009f 7b01          	ld	a,(OFST+0,sp)
3047  00a1 85            	popw	x
3048  00a2 81            	ret
3093                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3093                     ; 568 {
3094                     .text:	section	.text,new
3095  0000               _ADC1_ClearFlag:
3097  0000 88            	push	a
3098  0001 88            	push	a
3099       00000001      OFST:	set	1
3102                     ; 569   uint8_t temp = 0;
3104                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3106  0002 a180          	cp	a,#128
3107  0004 2730          	jreq	L663
3108  0006 a141          	cp	a,#65
3109  0008 272c          	jreq	L663
3110  000a a140          	cp	a,#64
3111  000c 2728          	jreq	L663
3112  000e a110          	cp	a,#16
3113  0010 2724          	jreq	L663
3114  0012 a111          	cp	a,#17
3115  0014 2720          	jreq	L663
3116  0016 a112          	cp	a,#18
3117  0018 271c          	jreq	L663
3118  001a a113          	cp	a,#19
3119  001c 2718          	jreq	L663
3120  001e a114          	cp	a,#20
3121  0020 2714          	jreq	L663
3122  0022 a115          	cp	a,#21
3123  0024 2710          	jreq	L663
3124  0026 a116          	cp	a,#22
3125  0028 270c          	jreq	L663
3126  002a a117          	cp	a,#23
3127  002c 2708          	jreq	L663
3128  002e a118          	cp	a,#24
3129  0030 2704          	jreq	L663
3130  0032 a119          	cp	a,#25
3131  0034 2603          	jrne	L463
3132  0036               L663:
3133  0036 4f            	clr	a
3134  0037 2010          	jra	L073
3135  0039               L463:
3136  0039 ae023c        	ldw	x,#572
3137  003c 89            	pushw	x
3138  003d ae0000        	ldw	x,#0
3139  0040 89            	pushw	x
3140  0041 ae0000        	ldw	x,#L542
3141  0044 cd0000        	call	_assert_failed
3143  0047 5b04          	addw	sp,#4
3144  0049               L073:
3145                     ; 574   if ((Flag & 0x0F) == 0x01)
3147  0049 7b02          	ld	a,(OFST+1,sp)
3148  004b a40f          	and	a,#15
3149  004d a101          	cp	a,#1
3150  004f 2606          	jrne	L5311
3151                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3153  0051 721d5403      	bres	21507,#6
3155  0055 204b          	jra	L7311
3156  0057               L5311:
3157                     ; 579   else if ((Flag & 0xF0) == 0x10)
3159  0057 7b02          	ld	a,(OFST+1,sp)
3160  0059 a4f0          	and	a,#240
3161  005b a110          	cp	a,#16
3162  005d 263a          	jrne	L1411
3163                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3165  005f 7b02          	ld	a,(OFST+1,sp)
3166  0061 a40f          	and	a,#15
3167  0063 6b01          	ld	(OFST+0,sp),a
3169                     ; 583     if (temp < 8)
3171  0065 7b01          	ld	a,(OFST+0,sp)
3172  0067 a108          	cp	a,#8
3173  0069 2416          	jruge	L3411
3174                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3176  006b 7b01          	ld	a,(OFST+0,sp)
3177  006d 5f            	clrw	x
3178  006e 97            	ld	xl,a
3179  006f a601          	ld	a,#1
3180  0071 5d            	tnzw	x
3181  0072 2704          	jreq	L273
3182  0074               L473:
3183  0074 48            	sll	a
3184  0075 5a            	decw	x
3185  0076 26fc          	jrne	L473
3186  0078               L273:
3187  0078 43            	cpl	a
3188  0079 c4540d        	and	a,21517
3189  007c c7540d        	ld	21517,a
3191  007f 2021          	jra	L7311
3192  0081               L3411:
3193                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3195  0081 7b01          	ld	a,(OFST+0,sp)
3196  0083 a008          	sub	a,#8
3197  0085 5f            	clrw	x
3198  0086 97            	ld	xl,a
3199  0087 a601          	ld	a,#1
3200  0089 5d            	tnzw	x
3201  008a 2704          	jreq	L673
3202  008c               L004:
3203  008c 48            	sll	a
3204  008d 5a            	decw	x
3205  008e 26fc          	jrne	L004
3206  0090               L673:
3207  0090 43            	cpl	a
3208  0091 c4540c        	and	a,21516
3209  0094 c7540c        	ld	21516,a
3210  0097 2009          	jra	L7311
3211  0099               L1411:
3212                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3214  0099 7b02          	ld	a,(OFST+1,sp)
3215  009b 43            	cpl	a
3216  009c c45400        	and	a,21504
3217  009f c75400        	ld	21504,a
3218  00a2               L7311:
3219                     ; 596 }
3222  00a2 85            	popw	x
3223  00a3 81            	ret
3279                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3279                     ; 617 {
3280                     .text:	section	.text,new
3281  0000               _ADC1_GetITStatus:
3283  0000 89            	pushw	x
3284  0001 88            	push	a
3285       00000001      OFST:	set	1
3288                     ; 618   ITStatus itstatus = RESET;
3290                     ; 619   uint8_t temp = 0;
3292                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3294  0002 a30080        	cpw	x,#128
3295  0005 273c          	jreq	L604
3296  0007 a30140        	cpw	x,#320
3297  000a 2737          	jreq	L604
3298  000c a30110        	cpw	x,#272
3299  000f 2732          	jreq	L604
3300  0011 a30111        	cpw	x,#273
3301  0014 272d          	jreq	L604
3302  0016 a30112        	cpw	x,#274
3303  0019 2728          	jreq	L604
3304  001b a30113        	cpw	x,#275
3305  001e 2723          	jreq	L604
3306  0020 a30114        	cpw	x,#276
3307  0023 271e          	jreq	L604
3308  0025 a30115        	cpw	x,#277
3309  0028 2719          	jreq	L604
3310  002a a30116        	cpw	x,#278
3311  002d 2714          	jreq	L604
3312  002f a30117        	cpw	x,#279
3313  0032 270f          	jreq	L604
3314  0034 a30118        	cpw	x,#280
3315  0037 270a          	jreq	L604
3316  0039 a3011c        	cpw	x,#284
3317  003c 2705          	jreq	L604
3318  003e a30119        	cpw	x,#281
3319  0041 2603          	jrne	L404
3320  0043               L604:
3321  0043 4f            	clr	a
3322  0044 2010          	jra	L014
3323  0046               L404:
3324  0046 ae026e        	ldw	x,#622
3325  0049 89            	pushw	x
3326  004a ae0000        	ldw	x,#0
3327  004d 89            	pushw	x
3328  004e ae0000        	ldw	x,#L542
3329  0051 cd0000        	call	_assert_failed
3331  0054 5b04          	addw	sp,#4
3332  0056               L014:
3333                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3335  0056 7b02          	ld	a,(OFST+1,sp)
3336  0058 97            	ld	xl,a
3337  0059 7b03          	ld	a,(OFST+2,sp)
3338  005b a4f0          	and	a,#240
3339  005d 5f            	clrw	x
3340  005e 02            	rlwa	x,a
3341  005f a30010        	cpw	x,#16
3342  0062 2636          	jrne	L7711
3343                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3345  0064 7b03          	ld	a,(OFST+2,sp)
3346  0066 a40f          	and	a,#15
3347  0068 6b01          	ld	(OFST+0,sp),a
3349                     ; 628     if (temp < 8)
3351  006a 7b01          	ld	a,(OFST+0,sp)
3352  006c a108          	cp	a,#8
3353  006e 2414          	jruge	L1021
3354                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3356  0070 7b01          	ld	a,(OFST+0,sp)
3357  0072 5f            	clrw	x
3358  0073 97            	ld	xl,a
3359  0074 a601          	ld	a,#1
3360  0076 5d            	tnzw	x
3361  0077 2704          	jreq	L214
3362  0079               L414:
3363  0079 48            	sll	a
3364  007a 5a            	decw	x
3365  007b 26fc          	jrne	L414
3366  007d               L214:
3367  007d c4540d        	and	a,21517
3368  0080 6b01          	ld	(OFST+0,sp),a
3371  0082 201d          	jra	L5021
3372  0084               L1021:
3373                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3375  0084 7b01          	ld	a,(OFST+0,sp)
3376  0086 a008          	sub	a,#8
3377  0088 5f            	clrw	x
3378  0089 97            	ld	xl,a
3379  008a a601          	ld	a,#1
3380  008c 5d            	tnzw	x
3381  008d 2704          	jreq	L614
3382  008f               L024:
3383  008f 48            	sll	a
3384  0090 5a            	decw	x
3385  0091 26fc          	jrne	L024
3386  0093               L614:
3387  0093 c4540c        	and	a,21516
3388  0096 6b01          	ld	(OFST+0,sp),a
3390  0098 2007          	jra	L5021
3391  009a               L7711:
3392                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3394  009a c65400        	ld	a,21504
3395  009d 1403          	and	a,(OFST+2,sp)
3396  009f 6b01          	ld	(OFST+0,sp),a
3398  00a1               L5021:
3399                     ; 641   return ((ITStatus)itstatus);
3401  00a1 7b01          	ld	a,(OFST+0,sp)
3404  00a3 5b03          	addw	sp,#3
3405  00a5 81            	ret
3451                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3451                     ; 663 {
3452                     .text:	section	.text,new
3453  0000               _ADC1_ClearITPendingBit:
3455  0000 89            	pushw	x
3456  0001 88            	push	a
3457       00000001      OFST:	set	1
3460                     ; 664   uint8_t temp = 0;
3462                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3464  0002 a30080        	cpw	x,#128
3465  0005 273c          	jreq	L624
3466  0007 a30140        	cpw	x,#320
3467  000a 2737          	jreq	L624
3468  000c a30110        	cpw	x,#272
3469  000f 2732          	jreq	L624
3470  0011 a30111        	cpw	x,#273
3471  0014 272d          	jreq	L624
3472  0016 a30112        	cpw	x,#274
3473  0019 2728          	jreq	L624
3474  001b a30113        	cpw	x,#275
3475  001e 2723          	jreq	L624
3476  0020 a30114        	cpw	x,#276
3477  0023 271e          	jreq	L624
3478  0025 a30115        	cpw	x,#277
3479  0028 2719          	jreq	L624
3480  002a a30116        	cpw	x,#278
3481  002d 2714          	jreq	L624
3482  002f a30117        	cpw	x,#279
3483  0032 270f          	jreq	L624
3484  0034 a30118        	cpw	x,#280
3485  0037 270a          	jreq	L624
3486  0039 a3011c        	cpw	x,#284
3487  003c 2705          	jreq	L624
3488  003e a30119        	cpw	x,#281
3489  0041 2603          	jrne	L424
3490  0043               L624:
3491  0043 4f            	clr	a
3492  0044 2010          	jra	L034
3493  0046               L424:
3494  0046 ae029b        	ldw	x,#667
3495  0049 89            	pushw	x
3496  004a ae0000        	ldw	x,#0
3497  004d 89            	pushw	x
3498  004e ae0000        	ldw	x,#L542
3499  0051 cd0000        	call	_assert_failed
3501  0054 5b04          	addw	sp,#4
3502  0056               L034:
3503                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3505  0056 7b02          	ld	a,(OFST+1,sp)
3506  0058 97            	ld	xl,a
3507  0059 7b03          	ld	a,(OFST+2,sp)
3508  005b a4f0          	and	a,#240
3509  005d 5f            	clrw	x
3510  005e 02            	rlwa	x,a
3511  005f a30010        	cpw	x,#16
3512  0062 263a          	jrne	L1321
3513                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3515  0064 7b03          	ld	a,(OFST+2,sp)
3516  0066 a40f          	and	a,#15
3517  0068 6b01          	ld	(OFST+0,sp),a
3519                     ; 673     if (temp < 8)
3521  006a 7b01          	ld	a,(OFST+0,sp)
3522  006c a108          	cp	a,#8
3523  006e 2416          	jruge	L3321
3524                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3526  0070 7b01          	ld	a,(OFST+0,sp)
3527  0072 5f            	clrw	x
3528  0073 97            	ld	xl,a
3529  0074 a601          	ld	a,#1
3530  0076 5d            	tnzw	x
3531  0077 2704          	jreq	L234
3532  0079               L434:
3533  0079 48            	sll	a
3534  007a 5a            	decw	x
3535  007b 26fc          	jrne	L434
3536  007d               L234:
3537  007d 43            	cpl	a
3538  007e c4540d        	and	a,21517
3539  0081 c7540d        	ld	21517,a
3541  0084 2021          	jra	L7321
3542  0086               L3321:
3543                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3545  0086 7b01          	ld	a,(OFST+0,sp)
3546  0088 a008          	sub	a,#8
3547  008a 5f            	clrw	x
3548  008b 97            	ld	xl,a
3549  008c a601          	ld	a,#1
3550  008e 5d            	tnzw	x
3551  008f 2704          	jreq	L634
3552  0091               L044:
3553  0091 48            	sll	a
3554  0092 5a            	decw	x
3555  0093 26fc          	jrne	L044
3556  0095               L634:
3557  0095 43            	cpl	a
3558  0096 c4540c        	and	a,21516
3559  0099 c7540c        	ld	21516,a
3560  009c 2009          	jra	L7321
3561  009e               L1321:
3562                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3564  009e 7b03          	ld	a,(OFST+2,sp)
3565  00a0 43            	cpl	a
3566  00a1 c45400        	and	a,21504
3567  00a4 c75400        	ld	21504,a
3568  00a7               L7321:
3569                     ; 686 }
3572  00a7 5b03          	addw	sp,#3
3573  00a9 81            	ret
3586                     	xdef	_ADC1_ClearITPendingBit
3587                     	xdef	_ADC1_GetITStatus
3588                     	xdef	_ADC1_ClearFlag
3589                     	xdef	_ADC1_GetFlagStatus
3590                     	xdef	_ADC1_GetAWDChannelStatus
3591                     	xdef	_ADC1_GetBufferValue
3592                     	xdef	_ADC1_SetLowThreshold
3593                     	xdef	_ADC1_SetHighThreshold
3594                     	xdef	_ADC1_GetConversionValue
3595                     	xdef	_ADC1_StartConversion
3596                     	xdef	_ADC1_AWDChannelConfig
3597                     	xdef	_ADC1_ExternalTriggerConfig
3598                     	xdef	_ADC1_ConversionConfig
3599                     	xdef	_ADC1_SchmittTriggerConfig
3600                     	xdef	_ADC1_PrescalerConfig
3601                     	xdef	_ADC1_ITConfig
3602                     	xdef	_ADC1_DataBufferCmd
3603                     	xdef	_ADC1_ScanModeCmd
3604                     	xdef	_ADC1_Cmd
3605                     	xdef	_ADC1_Init
3606                     	xdef	_ADC1_DeInit
3607                     	xref	_assert_failed
3608                     .const:	section	.text
3609  0000               L542:
3610  0000 7372635c7374  	dc.b	"src\stm8s_adc1.c",0
3630                     	end
