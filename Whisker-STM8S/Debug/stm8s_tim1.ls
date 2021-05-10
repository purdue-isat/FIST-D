   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 58 void TIM1_DeInit(void)
  43                     ; 59 {
  45                     .text:	section	.text,new
  46  0000               _TIM1_DeInit:
  50                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  52  0000 725f5250      	clr	21072
  53                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  55  0004 725f5251      	clr	21073
  56                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  58  0008 725f5252      	clr	21074
  59                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  61  000c 725f5253      	clr	21075
  62                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  64  0010 725f5254      	clr	21076
  65                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  67  0014 725f5256      	clr	21078
  68                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  70  0018 725f525c      	clr	21084
  71                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  73  001c 725f525d      	clr	21085
  74                     ; 70   TIM1->CCMR1 = 0x01;
  76  0020 35015258      	mov	21080,#1
  77                     ; 71   TIM1->CCMR2 = 0x01;
  79  0024 35015259      	mov	21081,#1
  80                     ; 72   TIM1->CCMR3 = 0x01;
  82  0028 3501525a      	mov	21082,#1
  83                     ; 73   TIM1->CCMR4 = 0x01;
  85  002c 3501525b      	mov	21083,#1
  86                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  88  0030 725f525c      	clr	21084
  89                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  91  0034 725f525d      	clr	21085
  92                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  94  0038 725f5258      	clr	21080
  95                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  97  003c 725f5259      	clr	21081
  98                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 100  0040 725f525a      	clr	21082
 101                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 103  0044 725f525b      	clr	21083
 104                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 106  0048 725f525e      	clr	21086
 107                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 109  004c 725f525f      	clr	21087
 110                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 112  0050 725f5260      	clr	21088
 113                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 115  0054 725f5261      	clr	21089
 116                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 118  0058 35ff5262      	mov	21090,#255
 119                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 121  005c 35ff5263      	mov	21091,#255
 122                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 124  0060 725f5265      	clr	21093
 125                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 127  0064 725f5266      	clr	21094
 128                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 130  0068 725f5267      	clr	21095
 131                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 133  006c 725f5268      	clr	21096
 134                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 136  0070 725f5269      	clr	21097
 137                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 139  0074 725f526a      	clr	21098
 140                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 142  0078 725f526b      	clr	21099
 143                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 145  007c 725f526c      	clr	21100
 146                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 148  0080 725f526f      	clr	21103
 149                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 151  0084 35015257      	mov	21079,#1
 152                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 154  0088 725f526e      	clr	21102
 155                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 157  008c 725f526d      	clr	21101
 158                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 160  0090 725f5264      	clr	21092
 161                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 163  0094 725f5255      	clr	21077
 164                     ; 101 }
 167  0098 81            	ret
 277                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 277                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 277                     ; 113                        uint16_t TIM1_Period,
 277                     ; 114                        uint8_t TIM1_RepetitionCounter)
 277                     ; 115 {
 278                     .text:	section	.text,new
 279  0000               _TIM1_TimeBaseInit:
 281  0000 89            	pushw	x
 282       00000000      OFST:	set	0
 285                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 287  0001 0d05          	tnz	(OFST+5,sp)
 288  0003 2718          	jreq	L21
 289  0005 7b05          	ld	a,(OFST+5,sp)
 290  0007 a110          	cp	a,#16
 291  0009 2712          	jreq	L21
 292  000b 7b05          	ld	a,(OFST+5,sp)
 293  000d a120          	cp	a,#32
 294  000f 270c          	jreq	L21
 295  0011 7b05          	ld	a,(OFST+5,sp)
 296  0013 a140          	cp	a,#64
 297  0015 2706          	jreq	L21
 298  0017 7b05          	ld	a,(OFST+5,sp)
 299  0019 a160          	cp	a,#96
 300  001b 2603          	jrne	L01
 301  001d               L21:
 302  001d 4f            	clr	a
 303  001e 2010          	jra	L41
 304  0020               L01:
 305  0020 ae0075        	ldw	x,#117
 306  0023 89            	pushw	x
 307  0024 ae0000        	ldw	x,#0
 308  0027 89            	pushw	x
 309  0028 ae0000        	ldw	x,#L101
 310  002b cd0000        	call	_assert_failed
 312  002e 5b04          	addw	sp,#4
 313  0030               L41:
 314                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 316  0030 7b06          	ld	a,(OFST+6,sp)
 317  0032 c75262        	ld	21090,a
 318                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 320  0035 7b07          	ld	a,(OFST+7,sp)
 321  0037 c75263        	ld	21091,a
 322                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 324  003a 7b01          	ld	a,(OFST+1,sp)
 325  003c c75260        	ld	21088,a
 326                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 328  003f 7b02          	ld	a,(OFST+2,sp)
 329  0041 c75261        	ld	21089,a
 330                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 330                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 332  0044 c65250        	ld	a,21072
 333  0047 a48f          	and	a,#143
 334  0049 1a05          	or	a,(OFST+5,sp)
 335  004b c75250        	ld	21072,a
 336                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 338  004e 7b08          	ld	a,(OFST+8,sp)
 339  0050 c75264        	ld	21092,a
 340                     ; 133 }
 343  0053 85            	popw	x
 344  0054 81            	ret
 630                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 630                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 630                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 630                     ; 157                   uint16_t TIM1_Pulse,
 630                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 630                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 630                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 630                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 630                     ; 162 {
 631                     .text:	section	.text,new
 632  0000               _TIM1_OC1Init:
 634  0000 89            	pushw	x
 635  0001 5203          	subw	sp,#3
 636       00000003      OFST:	set	3
 639                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 641  0003 9e            	ld	a,xh
 642  0004 4d            	tnz	a
 643  0005 2719          	jreq	L22
 644  0007 9e            	ld	a,xh
 645  0008 a110          	cp	a,#16
 646  000a 2714          	jreq	L22
 647  000c 9e            	ld	a,xh
 648  000d a120          	cp	a,#32
 649  000f 270f          	jreq	L22
 650  0011 9e            	ld	a,xh
 651  0012 a130          	cp	a,#48
 652  0014 270a          	jreq	L22
 653  0016 9e            	ld	a,xh
 654  0017 a160          	cp	a,#96
 655  0019 2705          	jreq	L22
 656  001b 9e            	ld	a,xh
 657  001c a170          	cp	a,#112
 658  001e 2603          	jrne	L02
 659  0020               L22:
 660  0020 4f            	clr	a
 661  0021 2010          	jra	L42
 662  0023               L02:
 663  0023 ae00a4        	ldw	x,#164
 664  0026 89            	pushw	x
 665  0027 ae0000        	ldw	x,#0
 666  002a 89            	pushw	x
 667  002b ae0000        	ldw	x,#L101
 668  002e cd0000        	call	_assert_failed
 670  0031 5b04          	addw	sp,#4
 671  0033               L42:
 672                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 674  0033 0d05          	tnz	(OFST+2,sp)
 675  0035 2706          	jreq	L03
 676  0037 7b05          	ld	a,(OFST+2,sp)
 677  0039 a111          	cp	a,#17
 678  003b 2603          	jrne	L62
 679  003d               L03:
 680  003d 4f            	clr	a
 681  003e 2010          	jra	L23
 682  0040               L62:
 683  0040 ae00a5        	ldw	x,#165
 684  0043 89            	pushw	x
 685  0044 ae0000        	ldw	x,#0
 686  0047 89            	pushw	x
 687  0048 ae0000        	ldw	x,#L101
 688  004b cd0000        	call	_assert_failed
 690  004e 5b04          	addw	sp,#4
 691  0050               L23:
 692                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 694  0050 0d08          	tnz	(OFST+5,sp)
 695  0052 2706          	jreq	L63
 696  0054 7b08          	ld	a,(OFST+5,sp)
 697  0056 a144          	cp	a,#68
 698  0058 2603          	jrne	L43
 699  005a               L63:
 700  005a 4f            	clr	a
 701  005b 2010          	jra	L04
 702  005d               L43:
 703  005d ae00a6        	ldw	x,#166
 704  0060 89            	pushw	x
 705  0061 ae0000        	ldw	x,#0
 706  0064 89            	pushw	x
 707  0065 ae0000        	ldw	x,#L101
 708  0068 cd0000        	call	_assert_failed
 710  006b 5b04          	addw	sp,#4
 711  006d               L04:
 712                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 714  006d 0d0b          	tnz	(OFST+8,sp)
 715  006f 2706          	jreq	L44
 716  0071 7b0b          	ld	a,(OFST+8,sp)
 717  0073 a122          	cp	a,#34
 718  0075 2603          	jrne	L24
 719  0077               L44:
 720  0077 4f            	clr	a
 721  0078 2010          	jra	L64
 722  007a               L24:
 723  007a ae00a7        	ldw	x,#167
 724  007d 89            	pushw	x
 725  007e ae0000        	ldw	x,#0
 726  0081 89            	pushw	x
 727  0082 ae0000        	ldw	x,#L101
 728  0085 cd0000        	call	_assert_failed
 730  0088 5b04          	addw	sp,#4
 731  008a               L64:
 732                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 734  008a 0d0c          	tnz	(OFST+9,sp)
 735  008c 2706          	jreq	L25
 736  008e 7b0c          	ld	a,(OFST+9,sp)
 737  0090 a188          	cp	a,#136
 738  0092 2603          	jrne	L05
 739  0094               L25:
 740  0094 4f            	clr	a
 741  0095 2010          	jra	L45
 742  0097               L05:
 743  0097 ae00a8        	ldw	x,#168
 744  009a 89            	pushw	x
 745  009b ae0000        	ldw	x,#0
 746  009e 89            	pushw	x
 747  009f ae0000        	ldw	x,#L101
 748  00a2 cd0000        	call	_assert_failed
 750  00a5 5b04          	addw	sp,#4
 751  00a7               L45:
 752                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 754  00a7 7b0d          	ld	a,(OFST+10,sp)
 755  00a9 a155          	cp	a,#85
 756  00ab 2704          	jreq	L06
 757  00ad 0d0d          	tnz	(OFST+10,sp)
 758  00af 2603          	jrne	L65
 759  00b1               L06:
 760  00b1 4f            	clr	a
 761  00b2 2010          	jra	L26
 762  00b4               L65:
 763  00b4 ae00a9        	ldw	x,#169
 764  00b7 89            	pushw	x
 765  00b8 ae0000        	ldw	x,#0
 766  00bb 89            	pushw	x
 767  00bc ae0000        	ldw	x,#L101
 768  00bf cd0000        	call	_assert_failed
 770  00c2 5b04          	addw	sp,#4
 771  00c4               L26:
 772                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 774  00c4 7b0e          	ld	a,(OFST+11,sp)
 775  00c6 a12a          	cp	a,#42
 776  00c8 2704          	jreq	L66
 777  00ca 0d0e          	tnz	(OFST+11,sp)
 778  00cc 2603          	jrne	L46
 779  00ce               L66:
 780  00ce 4f            	clr	a
 781  00cf 2010          	jra	L07
 782  00d1               L46:
 783  00d1 ae00aa        	ldw	x,#170
 784  00d4 89            	pushw	x
 785  00d5 ae0000        	ldw	x,#0
 786  00d8 89            	pushw	x
 787  00d9 ae0000        	ldw	x,#L101
 788  00dc cd0000        	call	_assert_failed
 790  00df 5b04          	addw	sp,#4
 791  00e1               L07:
 792                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 792                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 794  00e1 c6525c        	ld	a,21084
 795  00e4 a4f0          	and	a,#240
 796  00e6 c7525c        	ld	21084,a
 797                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 797                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 797                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 797                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 799  00e9 7b0c          	ld	a,(OFST+9,sp)
 800  00eb a408          	and	a,#8
 801  00ed 6b03          	ld	(OFST+0,sp),a
 803  00ef 7b0b          	ld	a,(OFST+8,sp)
 804  00f1 a402          	and	a,#2
 805  00f3 1a03          	or	a,(OFST+0,sp)
 806  00f5 6b02          	ld	(OFST-1,sp),a
 808  00f7 7b08          	ld	a,(OFST+5,sp)
 809  00f9 a404          	and	a,#4
 810  00fb 6b01          	ld	(OFST-2,sp),a
 812  00fd 7b05          	ld	a,(OFST+2,sp)
 813  00ff a401          	and	a,#1
 814  0101 1a01          	or	a,(OFST-2,sp)
 815  0103 1a02          	or	a,(OFST-1,sp)
 816  0105 ca525c        	or	a,21084
 817  0108 c7525c        	ld	21084,a
 818                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 818                     ; 185                           (uint8_t)TIM1_OCMode);
 820  010b c65258        	ld	a,21080
 821  010e a48f          	and	a,#143
 822  0110 1a04          	or	a,(OFST+1,sp)
 823  0112 c75258        	ld	21080,a
 824                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 826  0115 c6526f        	ld	a,21103
 827  0118 a4fc          	and	a,#252
 828  011a c7526f        	ld	21103,a
 829                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 829                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 831  011d 7b0e          	ld	a,(OFST+11,sp)
 832  011f a402          	and	a,#2
 833  0121 6b03          	ld	(OFST+0,sp),a
 835  0123 7b0d          	ld	a,(OFST+10,sp)
 836  0125 a401          	and	a,#1
 837  0127 1a03          	or	a,(OFST+0,sp)
 838  0129 ca526f        	or	a,21103
 839  012c c7526f        	ld	21103,a
 840                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 842  012f 7b09          	ld	a,(OFST+6,sp)
 843  0131 c75265        	ld	21093,a
 844                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 846  0134 7b0a          	ld	a,(OFST+7,sp)
 847  0136 c75266        	ld	21094,a
 848                     ; 196 }
 851  0139 5b05          	addw	sp,#5
 852  013b 81            	ret
 957                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 957                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 957                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 957                     ; 220                   uint16_t TIM1_Pulse,
 957                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 957                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 957                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 957                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 957                     ; 225 {
 958                     .text:	section	.text,new
 959  0000               _TIM1_OC2Init:
 961  0000 89            	pushw	x
 962  0001 5203          	subw	sp,#3
 963       00000003      OFST:	set	3
 966                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 968  0003 9e            	ld	a,xh
 969  0004 4d            	tnz	a
 970  0005 2719          	jreq	L67
 971  0007 9e            	ld	a,xh
 972  0008 a110          	cp	a,#16
 973  000a 2714          	jreq	L67
 974  000c 9e            	ld	a,xh
 975  000d a120          	cp	a,#32
 976  000f 270f          	jreq	L67
 977  0011 9e            	ld	a,xh
 978  0012 a130          	cp	a,#48
 979  0014 270a          	jreq	L67
 980  0016 9e            	ld	a,xh
 981  0017 a160          	cp	a,#96
 982  0019 2705          	jreq	L67
 983  001b 9e            	ld	a,xh
 984  001c a170          	cp	a,#112
 985  001e 2603          	jrne	L47
 986  0020               L67:
 987  0020 4f            	clr	a
 988  0021 2010          	jra	L001
 989  0023               L47:
 990  0023 ae00e3        	ldw	x,#227
 991  0026 89            	pushw	x
 992  0027 ae0000        	ldw	x,#0
 993  002a 89            	pushw	x
 994  002b ae0000        	ldw	x,#L101
 995  002e cd0000        	call	_assert_failed
 997  0031 5b04          	addw	sp,#4
 998  0033               L001:
 999                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1001  0033 0d05          	tnz	(OFST+2,sp)
1002  0035 2706          	jreq	L401
1003  0037 7b05          	ld	a,(OFST+2,sp)
1004  0039 a111          	cp	a,#17
1005  003b 2603          	jrne	L201
1006  003d               L401:
1007  003d 4f            	clr	a
1008  003e 2010          	jra	L601
1009  0040               L201:
1010  0040 ae00e4        	ldw	x,#228
1011  0043 89            	pushw	x
1012  0044 ae0000        	ldw	x,#0
1013  0047 89            	pushw	x
1014  0048 ae0000        	ldw	x,#L101
1015  004b cd0000        	call	_assert_failed
1017  004e 5b04          	addw	sp,#4
1018  0050               L601:
1019                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1021  0050 0d08          	tnz	(OFST+5,sp)
1022  0052 2706          	jreq	L211
1023  0054 7b08          	ld	a,(OFST+5,sp)
1024  0056 a144          	cp	a,#68
1025  0058 2603          	jrne	L011
1026  005a               L211:
1027  005a 4f            	clr	a
1028  005b 2010          	jra	L411
1029  005d               L011:
1030  005d ae00e5        	ldw	x,#229
1031  0060 89            	pushw	x
1032  0061 ae0000        	ldw	x,#0
1033  0064 89            	pushw	x
1034  0065 ae0000        	ldw	x,#L101
1035  0068 cd0000        	call	_assert_failed
1037  006b 5b04          	addw	sp,#4
1038  006d               L411:
1039                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1041  006d 0d0b          	tnz	(OFST+8,sp)
1042  006f 2706          	jreq	L021
1043  0071 7b0b          	ld	a,(OFST+8,sp)
1044  0073 a122          	cp	a,#34
1045  0075 2603          	jrne	L611
1046  0077               L021:
1047  0077 4f            	clr	a
1048  0078 2010          	jra	L221
1049  007a               L611:
1050  007a ae00e6        	ldw	x,#230
1051  007d 89            	pushw	x
1052  007e ae0000        	ldw	x,#0
1053  0081 89            	pushw	x
1054  0082 ae0000        	ldw	x,#L101
1055  0085 cd0000        	call	_assert_failed
1057  0088 5b04          	addw	sp,#4
1058  008a               L221:
1059                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1061  008a 0d0c          	tnz	(OFST+9,sp)
1062  008c 2706          	jreq	L621
1063  008e 7b0c          	ld	a,(OFST+9,sp)
1064  0090 a188          	cp	a,#136
1065  0092 2603          	jrne	L421
1066  0094               L621:
1067  0094 4f            	clr	a
1068  0095 2010          	jra	L031
1069  0097               L421:
1070  0097 ae00e7        	ldw	x,#231
1071  009a 89            	pushw	x
1072  009b ae0000        	ldw	x,#0
1073  009e 89            	pushw	x
1074  009f ae0000        	ldw	x,#L101
1075  00a2 cd0000        	call	_assert_failed
1077  00a5 5b04          	addw	sp,#4
1078  00a7               L031:
1079                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1081  00a7 7b0d          	ld	a,(OFST+10,sp)
1082  00a9 a155          	cp	a,#85
1083  00ab 2704          	jreq	L431
1084  00ad 0d0d          	tnz	(OFST+10,sp)
1085  00af 2603          	jrne	L231
1086  00b1               L431:
1087  00b1 4f            	clr	a
1088  00b2 2010          	jra	L631
1089  00b4               L231:
1090  00b4 ae00e8        	ldw	x,#232
1091  00b7 89            	pushw	x
1092  00b8 ae0000        	ldw	x,#0
1093  00bb 89            	pushw	x
1094  00bc ae0000        	ldw	x,#L101
1095  00bf cd0000        	call	_assert_failed
1097  00c2 5b04          	addw	sp,#4
1098  00c4               L631:
1099                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1101  00c4 7b0e          	ld	a,(OFST+11,sp)
1102  00c6 a12a          	cp	a,#42
1103  00c8 2704          	jreq	L241
1104  00ca 0d0e          	tnz	(OFST+11,sp)
1105  00cc 2603          	jrne	L041
1106  00ce               L241:
1107  00ce 4f            	clr	a
1108  00cf 2010          	jra	L441
1109  00d1               L041:
1110  00d1 ae00e9        	ldw	x,#233
1111  00d4 89            	pushw	x
1112  00d5 ae0000        	ldw	x,#0
1113  00d8 89            	pushw	x
1114  00d9 ae0000        	ldw	x,#L101
1115  00dc cd0000        	call	_assert_failed
1117  00df 5b04          	addw	sp,#4
1118  00e1               L441:
1119                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1119                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1121  00e1 c6525c        	ld	a,21084
1122  00e4 a40f          	and	a,#15
1123  00e6 c7525c        	ld	21084,a
1124                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1124                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1124                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1124                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1126  00e9 7b0c          	ld	a,(OFST+9,sp)
1127  00eb a480          	and	a,#128
1128  00ed 6b03          	ld	(OFST+0,sp),a
1130  00ef 7b0b          	ld	a,(OFST+8,sp)
1131  00f1 a420          	and	a,#32
1132  00f3 1a03          	or	a,(OFST+0,sp)
1133  00f5 6b02          	ld	(OFST-1,sp),a
1135  00f7 7b08          	ld	a,(OFST+5,sp)
1136  00f9 a440          	and	a,#64
1137  00fb 6b01          	ld	(OFST-2,sp),a
1139  00fd 7b05          	ld	a,(OFST+2,sp)
1140  00ff a410          	and	a,#16
1141  0101 1a01          	or	a,(OFST-2,sp)
1142  0103 1a02          	or	a,(OFST-1,sp)
1143  0105 ca525c        	or	a,21084
1144  0108 c7525c        	ld	21084,a
1145                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1145                     ; 249                           (uint8_t)TIM1_OCMode);
1147  010b c65259        	ld	a,21081
1148  010e a48f          	and	a,#143
1149  0110 1a04          	or	a,(OFST+1,sp)
1150  0112 c75259        	ld	21081,a
1151                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1153  0115 c6526f        	ld	a,21103
1154  0118 a4f3          	and	a,#243
1155  011a c7526f        	ld	21103,a
1156                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1156                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1158  011d 7b0e          	ld	a,(OFST+11,sp)
1159  011f a408          	and	a,#8
1160  0121 6b03          	ld	(OFST+0,sp),a
1162  0123 7b0d          	ld	a,(OFST+10,sp)
1163  0125 a404          	and	a,#4
1164  0127 1a03          	or	a,(OFST+0,sp)
1165  0129 ca526f        	or	a,21103
1166  012c c7526f        	ld	21103,a
1167                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1169  012f 7b09          	ld	a,(OFST+6,sp)
1170  0131 c75267        	ld	21095,a
1171                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1173  0134 7b0a          	ld	a,(OFST+7,sp)
1174  0136 c75268        	ld	21096,a
1175                     ; 260 }
1178  0139 5b05          	addw	sp,#5
1179  013b 81            	ret
1284                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1284                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1284                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1284                     ; 284                   uint16_t TIM1_Pulse,
1284                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1284                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1284                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1284                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1284                     ; 289 {
1285                     .text:	section	.text,new
1286  0000               _TIM1_OC3Init:
1288  0000 89            	pushw	x
1289  0001 5203          	subw	sp,#3
1290       00000003      OFST:	set	3
1293                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1295  0003 9e            	ld	a,xh
1296  0004 4d            	tnz	a
1297  0005 2719          	jreq	L251
1298  0007 9e            	ld	a,xh
1299  0008 a110          	cp	a,#16
1300  000a 2714          	jreq	L251
1301  000c 9e            	ld	a,xh
1302  000d a120          	cp	a,#32
1303  000f 270f          	jreq	L251
1304  0011 9e            	ld	a,xh
1305  0012 a130          	cp	a,#48
1306  0014 270a          	jreq	L251
1307  0016 9e            	ld	a,xh
1308  0017 a160          	cp	a,#96
1309  0019 2705          	jreq	L251
1310  001b 9e            	ld	a,xh
1311  001c a170          	cp	a,#112
1312  001e 2603          	jrne	L051
1313  0020               L251:
1314  0020 4f            	clr	a
1315  0021 2010          	jra	L451
1316  0023               L051:
1317  0023 ae0123        	ldw	x,#291
1318  0026 89            	pushw	x
1319  0027 ae0000        	ldw	x,#0
1320  002a 89            	pushw	x
1321  002b ae0000        	ldw	x,#L101
1322  002e cd0000        	call	_assert_failed
1324  0031 5b04          	addw	sp,#4
1325  0033               L451:
1326                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1328  0033 0d05          	tnz	(OFST+2,sp)
1329  0035 2706          	jreq	L061
1330  0037 7b05          	ld	a,(OFST+2,sp)
1331  0039 a111          	cp	a,#17
1332  003b 2603          	jrne	L651
1333  003d               L061:
1334  003d 4f            	clr	a
1335  003e 2010          	jra	L261
1336  0040               L651:
1337  0040 ae0124        	ldw	x,#292
1338  0043 89            	pushw	x
1339  0044 ae0000        	ldw	x,#0
1340  0047 89            	pushw	x
1341  0048 ae0000        	ldw	x,#L101
1342  004b cd0000        	call	_assert_failed
1344  004e 5b04          	addw	sp,#4
1345  0050               L261:
1346                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1348  0050 0d08          	tnz	(OFST+5,sp)
1349  0052 2706          	jreq	L661
1350  0054 7b08          	ld	a,(OFST+5,sp)
1351  0056 a144          	cp	a,#68
1352  0058 2603          	jrne	L461
1353  005a               L661:
1354  005a 4f            	clr	a
1355  005b 2010          	jra	L071
1356  005d               L461:
1357  005d ae0125        	ldw	x,#293
1358  0060 89            	pushw	x
1359  0061 ae0000        	ldw	x,#0
1360  0064 89            	pushw	x
1361  0065 ae0000        	ldw	x,#L101
1362  0068 cd0000        	call	_assert_failed
1364  006b 5b04          	addw	sp,#4
1365  006d               L071:
1366                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1368  006d 0d0b          	tnz	(OFST+8,sp)
1369  006f 2706          	jreq	L471
1370  0071 7b0b          	ld	a,(OFST+8,sp)
1371  0073 a122          	cp	a,#34
1372  0075 2603          	jrne	L271
1373  0077               L471:
1374  0077 4f            	clr	a
1375  0078 2010          	jra	L671
1376  007a               L271:
1377  007a ae0126        	ldw	x,#294
1378  007d 89            	pushw	x
1379  007e ae0000        	ldw	x,#0
1380  0081 89            	pushw	x
1381  0082 ae0000        	ldw	x,#L101
1382  0085 cd0000        	call	_assert_failed
1384  0088 5b04          	addw	sp,#4
1385  008a               L671:
1386                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1388  008a 0d0c          	tnz	(OFST+9,sp)
1389  008c 2706          	jreq	L202
1390  008e 7b0c          	ld	a,(OFST+9,sp)
1391  0090 a188          	cp	a,#136
1392  0092 2603          	jrne	L002
1393  0094               L202:
1394  0094 4f            	clr	a
1395  0095 2010          	jra	L402
1396  0097               L002:
1397  0097 ae0127        	ldw	x,#295
1398  009a 89            	pushw	x
1399  009b ae0000        	ldw	x,#0
1400  009e 89            	pushw	x
1401  009f ae0000        	ldw	x,#L101
1402  00a2 cd0000        	call	_assert_failed
1404  00a5 5b04          	addw	sp,#4
1405  00a7               L402:
1406                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1408  00a7 7b0d          	ld	a,(OFST+10,sp)
1409  00a9 a155          	cp	a,#85
1410  00ab 2704          	jreq	L012
1411  00ad 0d0d          	tnz	(OFST+10,sp)
1412  00af 2603          	jrne	L602
1413  00b1               L012:
1414  00b1 4f            	clr	a
1415  00b2 2010          	jra	L212
1416  00b4               L602:
1417  00b4 ae0128        	ldw	x,#296
1418  00b7 89            	pushw	x
1419  00b8 ae0000        	ldw	x,#0
1420  00bb 89            	pushw	x
1421  00bc ae0000        	ldw	x,#L101
1422  00bf cd0000        	call	_assert_failed
1424  00c2 5b04          	addw	sp,#4
1425  00c4               L212:
1426                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1428  00c4 7b0e          	ld	a,(OFST+11,sp)
1429  00c6 a12a          	cp	a,#42
1430  00c8 2704          	jreq	L612
1431  00ca 0d0e          	tnz	(OFST+11,sp)
1432  00cc 2603          	jrne	L412
1433  00ce               L612:
1434  00ce 4f            	clr	a
1435  00cf 2010          	jra	L022
1436  00d1               L412:
1437  00d1 ae0129        	ldw	x,#297
1438  00d4 89            	pushw	x
1439  00d5 ae0000        	ldw	x,#0
1440  00d8 89            	pushw	x
1441  00d9 ae0000        	ldw	x,#L101
1442  00dc cd0000        	call	_assert_failed
1444  00df 5b04          	addw	sp,#4
1445  00e1               L022:
1446                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1446                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1448  00e1 c6525d        	ld	a,21085
1449  00e4 a4f0          	and	a,#240
1450  00e6 c7525d        	ld	21085,a
1451                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1451                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1451                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1451                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1453  00e9 7b0c          	ld	a,(OFST+9,sp)
1454  00eb a408          	and	a,#8
1455  00ed 6b03          	ld	(OFST+0,sp),a
1457  00ef 7b0b          	ld	a,(OFST+8,sp)
1458  00f1 a402          	and	a,#2
1459  00f3 1a03          	or	a,(OFST+0,sp)
1460  00f5 6b02          	ld	(OFST-1,sp),a
1462  00f7 7b08          	ld	a,(OFST+5,sp)
1463  00f9 a404          	and	a,#4
1464  00fb 6b01          	ld	(OFST-2,sp),a
1466  00fd 7b05          	ld	a,(OFST+2,sp)
1467  00ff a401          	and	a,#1
1468  0101 1a01          	or	a,(OFST-2,sp)
1469  0103 1a02          	or	a,(OFST-1,sp)
1470  0105 ca525d        	or	a,21085
1471  0108 c7525d        	ld	21085,a
1472                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1472                     ; 312                           (uint8_t)TIM1_OCMode);
1474  010b c6525a        	ld	a,21082
1475  010e a48f          	and	a,#143
1476  0110 1a04          	or	a,(OFST+1,sp)
1477  0112 c7525a        	ld	21082,a
1478                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1480  0115 c6526f        	ld	a,21103
1481  0118 a4cf          	and	a,#207
1482  011a c7526f        	ld	21103,a
1483                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1483                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1485  011d 7b0e          	ld	a,(OFST+11,sp)
1486  011f a420          	and	a,#32
1487  0121 6b03          	ld	(OFST+0,sp),a
1489  0123 7b0d          	ld	a,(OFST+10,sp)
1490  0125 a410          	and	a,#16
1491  0127 1a03          	or	a,(OFST+0,sp)
1492  0129 ca526f        	or	a,21103
1493  012c c7526f        	ld	21103,a
1494                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1496  012f 7b09          	ld	a,(OFST+6,sp)
1497  0131 c75269        	ld	21097,a
1498                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1500  0134 7b0a          	ld	a,(OFST+7,sp)
1501  0136 c7526a        	ld	21098,a
1502                     ; 323 }
1505  0139 5b05          	addw	sp,#5
1506  013b 81            	ret
1581                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1581                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1581                     ; 340                   uint16_t TIM1_Pulse,
1581                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1581                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1581                     ; 343 {
1582                     .text:	section	.text,new
1583  0000               _TIM1_OC4Init:
1585  0000 89            	pushw	x
1586  0001 88            	push	a
1587       00000001      OFST:	set	1
1590                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1592  0002 9e            	ld	a,xh
1593  0003 4d            	tnz	a
1594  0004 2719          	jreq	L622
1595  0006 9e            	ld	a,xh
1596  0007 a110          	cp	a,#16
1597  0009 2714          	jreq	L622
1598  000b 9e            	ld	a,xh
1599  000c a120          	cp	a,#32
1600  000e 270f          	jreq	L622
1601  0010 9e            	ld	a,xh
1602  0011 a130          	cp	a,#48
1603  0013 270a          	jreq	L622
1604  0015 9e            	ld	a,xh
1605  0016 a160          	cp	a,#96
1606  0018 2705          	jreq	L622
1607  001a 9e            	ld	a,xh
1608  001b a170          	cp	a,#112
1609  001d 2603          	jrne	L422
1610  001f               L622:
1611  001f 4f            	clr	a
1612  0020 2010          	jra	L032
1613  0022               L422:
1614  0022 ae0159        	ldw	x,#345
1615  0025 89            	pushw	x
1616  0026 ae0000        	ldw	x,#0
1617  0029 89            	pushw	x
1618  002a ae0000        	ldw	x,#L101
1619  002d cd0000        	call	_assert_failed
1621  0030 5b04          	addw	sp,#4
1622  0032               L032:
1623                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1625  0032 0d03          	tnz	(OFST+2,sp)
1626  0034 2706          	jreq	L432
1627  0036 7b03          	ld	a,(OFST+2,sp)
1628  0038 a111          	cp	a,#17
1629  003a 2603          	jrne	L232
1630  003c               L432:
1631  003c 4f            	clr	a
1632  003d 2010          	jra	L632
1633  003f               L232:
1634  003f ae015a        	ldw	x,#346
1635  0042 89            	pushw	x
1636  0043 ae0000        	ldw	x,#0
1637  0046 89            	pushw	x
1638  0047 ae0000        	ldw	x,#L101
1639  004a cd0000        	call	_assert_failed
1641  004d 5b04          	addw	sp,#4
1642  004f               L632:
1643                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1645  004f 0d08          	tnz	(OFST+7,sp)
1646  0051 2706          	jreq	L242
1647  0053 7b08          	ld	a,(OFST+7,sp)
1648  0055 a122          	cp	a,#34
1649  0057 2603          	jrne	L042
1650  0059               L242:
1651  0059 4f            	clr	a
1652  005a 2010          	jra	L442
1653  005c               L042:
1654  005c ae015b        	ldw	x,#347
1655  005f 89            	pushw	x
1656  0060 ae0000        	ldw	x,#0
1657  0063 89            	pushw	x
1658  0064 ae0000        	ldw	x,#L101
1659  0067 cd0000        	call	_assert_failed
1661  006a 5b04          	addw	sp,#4
1662  006c               L442:
1663                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1665  006c 7b09          	ld	a,(OFST+8,sp)
1666  006e a155          	cp	a,#85
1667  0070 2704          	jreq	L052
1668  0072 0d09          	tnz	(OFST+8,sp)
1669  0074 2603          	jrne	L642
1670  0076               L052:
1671  0076 4f            	clr	a
1672  0077 2010          	jra	L252
1673  0079               L642:
1674  0079 ae015c        	ldw	x,#348
1675  007c 89            	pushw	x
1676  007d ae0000        	ldw	x,#0
1677  0080 89            	pushw	x
1678  0081 ae0000        	ldw	x,#L101
1679  0084 cd0000        	call	_assert_failed
1681  0087 5b04          	addw	sp,#4
1682  0089               L252:
1683                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1685  0089 c6525d        	ld	a,21085
1686  008c a4cf          	and	a,#207
1687  008e c7525d        	ld	21085,a
1688                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1688                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1690  0091 7b08          	ld	a,(OFST+7,sp)
1691  0093 a420          	and	a,#32
1692  0095 6b01          	ld	(OFST+0,sp),a
1694  0097 7b03          	ld	a,(OFST+2,sp)
1695  0099 a410          	and	a,#16
1696  009b 1a01          	or	a,(OFST+0,sp)
1697  009d ca525d        	or	a,21085
1698  00a0 c7525d        	ld	21085,a
1699                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1699                     ; 358                           TIM1_OCMode);
1701  00a3 c6525b        	ld	a,21083
1702  00a6 a48f          	and	a,#143
1703  00a8 1a02          	or	a,(OFST+1,sp)
1704  00aa c7525b        	ld	21083,a
1705                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1707  00ad 0d09          	tnz	(OFST+8,sp)
1708  00af 270a          	jreq	L734
1709                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1711  00b1 c6526f        	ld	a,21103
1712  00b4 aadf          	or	a,#223
1713  00b6 c7526f        	ld	21103,a
1715  00b9 2004          	jra	L144
1716  00bb               L734:
1717                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1719  00bb 721d526f      	bres	21103,#6
1720  00bf               L144:
1721                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1723  00bf 7b06          	ld	a,(OFST+5,sp)
1724  00c1 c7526b        	ld	21099,a
1725                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1727  00c4 7b07          	ld	a,(OFST+6,sp)
1728  00c6 c7526c        	ld	21100,a
1729                     ; 373 }
1732  00c9 5b03          	addw	sp,#3
1733  00cb 81            	ret
1939                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1939                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1939                     ; 390                      uint8_t TIM1_DeadTime,
1939                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1939                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1939                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1939                     ; 394 {
1940                     .text:	section	.text,new
1941  0000               _TIM1_BDTRConfig:
1943  0000 89            	pushw	x
1944  0001 88            	push	a
1945       00000001      OFST:	set	1
1948                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1950  0002 9e            	ld	a,xh
1951  0003 a104          	cp	a,#4
1952  0005 2704          	jreq	L062
1953  0007 9e            	ld	a,xh
1954  0008 4d            	tnz	a
1955  0009 2603          	jrne	L652
1956  000b               L062:
1957  000b 4f            	clr	a
1958  000c 2010          	jra	L262
1959  000e               L652:
1960  000e ae018c        	ldw	x,#396
1961  0011 89            	pushw	x
1962  0012 ae0000        	ldw	x,#0
1963  0015 89            	pushw	x
1964  0016 ae0000        	ldw	x,#L101
1965  0019 cd0000        	call	_assert_failed
1967  001c 5b04          	addw	sp,#4
1968  001e               L262:
1969                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1971  001e 0d03          	tnz	(OFST+2,sp)
1972  0020 2712          	jreq	L662
1973  0022 7b03          	ld	a,(OFST+2,sp)
1974  0024 a101          	cp	a,#1
1975  0026 270c          	jreq	L662
1976  0028 7b03          	ld	a,(OFST+2,sp)
1977  002a a102          	cp	a,#2
1978  002c 2706          	jreq	L662
1979  002e 7b03          	ld	a,(OFST+2,sp)
1980  0030 a103          	cp	a,#3
1981  0032 2603          	jrne	L462
1982  0034               L662:
1983  0034 4f            	clr	a
1984  0035 2010          	jra	L072
1985  0037               L462:
1986  0037 ae018d        	ldw	x,#397
1987  003a 89            	pushw	x
1988  003b ae0000        	ldw	x,#0
1989  003e 89            	pushw	x
1990  003f ae0000        	ldw	x,#L101
1991  0042 cd0000        	call	_assert_failed
1993  0045 5b04          	addw	sp,#4
1994  0047               L072:
1995                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1997  0047 7b07          	ld	a,(OFST+6,sp)
1998  0049 a110          	cp	a,#16
1999  004b 2704          	jreq	L472
2000  004d 0d07          	tnz	(OFST+6,sp)
2001  004f 2603          	jrne	L272
2002  0051               L472:
2003  0051 4f            	clr	a
2004  0052 2010          	jra	L672
2005  0054               L272:
2006  0054 ae018e        	ldw	x,#398
2007  0057 89            	pushw	x
2008  0058 ae0000        	ldw	x,#0
2009  005b 89            	pushw	x
2010  005c ae0000        	ldw	x,#L101
2011  005f cd0000        	call	_assert_failed
2013  0062 5b04          	addw	sp,#4
2014  0064               L672:
2015                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2017  0064 0d08          	tnz	(OFST+7,sp)
2018  0066 2706          	jreq	L203
2019  0068 7b08          	ld	a,(OFST+7,sp)
2020  006a a120          	cp	a,#32
2021  006c 2603          	jrne	L003
2022  006e               L203:
2023  006e 4f            	clr	a
2024  006f 2010          	jra	L403
2025  0071               L003:
2026  0071 ae018f        	ldw	x,#399
2027  0074 89            	pushw	x
2028  0075 ae0000        	ldw	x,#0
2029  0078 89            	pushw	x
2030  0079 ae0000        	ldw	x,#L101
2031  007c cd0000        	call	_assert_failed
2033  007f 5b04          	addw	sp,#4
2034  0081               L403:
2035                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2037  0081 7b09          	ld	a,(OFST+8,sp)
2038  0083 a140          	cp	a,#64
2039  0085 2704          	jreq	L013
2040  0087 0d09          	tnz	(OFST+8,sp)
2041  0089 2603          	jrne	L603
2042  008b               L013:
2043  008b 4f            	clr	a
2044  008c 2010          	jra	L213
2045  008e               L603:
2046  008e ae0190        	ldw	x,#400
2047  0091 89            	pushw	x
2048  0092 ae0000        	ldw	x,#0
2049  0095 89            	pushw	x
2050  0096 ae0000        	ldw	x,#L101
2051  0099 cd0000        	call	_assert_failed
2053  009c 5b04          	addw	sp,#4
2054  009e               L213:
2055                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2057  009e 7b06          	ld	a,(OFST+5,sp)
2058  00a0 c7526e        	ld	21102,a
2059                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2059                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2059                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2061  00a3 7b07          	ld	a,(OFST+6,sp)
2062  00a5 1a08          	or	a,(OFST+7,sp)
2063  00a7 1a09          	or	a,(OFST+8,sp)
2064  00a9 6b01          	ld	(OFST+0,sp),a
2066  00ab 7b02          	ld	a,(OFST+1,sp)
2067  00ad 1a03          	or	a,(OFST+2,sp)
2068  00af 1a01          	or	a,(OFST+0,sp)
2069  00b1 c7526d        	ld	21101,a
2070                     ; 409 }
2073  00b4 5b03          	addw	sp,#3
2074  00b6 81            	ret
2277                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2277                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2277                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2277                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2277                     ; 427                  uint8_t TIM1_ICFilter)
2277                     ; 428 {
2278                     .text:	section	.text,new
2279  0000               _TIM1_ICInit:
2281  0000 89            	pushw	x
2282       00000000      OFST:	set	0
2285                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2287  0001 9e            	ld	a,xh
2288  0002 4d            	tnz	a
2289  0003 270f          	jreq	L023
2290  0005 9e            	ld	a,xh
2291  0006 a101          	cp	a,#1
2292  0008 270a          	jreq	L023
2293  000a 9e            	ld	a,xh
2294  000b a102          	cp	a,#2
2295  000d 2705          	jreq	L023
2296  000f 9e            	ld	a,xh
2297  0010 a103          	cp	a,#3
2298  0012 2603          	jrne	L613
2299  0014               L023:
2300  0014 4f            	clr	a
2301  0015 2010          	jra	L223
2302  0017               L613:
2303  0017 ae01ae        	ldw	x,#430
2304  001a 89            	pushw	x
2305  001b ae0000        	ldw	x,#0
2306  001e 89            	pushw	x
2307  001f ae0000        	ldw	x,#L101
2308  0022 cd0000        	call	_assert_failed
2310  0025 5b04          	addw	sp,#4
2311  0027               L223:
2312                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2314  0027 0d02          	tnz	(OFST+2,sp)
2315  0029 2706          	jreq	L623
2316  002b 7b02          	ld	a,(OFST+2,sp)
2317  002d a101          	cp	a,#1
2318  002f 2603          	jrne	L423
2319  0031               L623:
2320  0031 4f            	clr	a
2321  0032 2010          	jra	L033
2322  0034               L423:
2323  0034 ae01af        	ldw	x,#431
2324  0037 89            	pushw	x
2325  0038 ae0000        	ldw	x,#0
2326  003b 89            	pushw	x
2327  003c ae0000        	ldw	x,#L101
2328  003f cd0000        	call	_assert_failed
2330  0042 5b04          	addw	sp,#4
2331  0044               L033:
2332                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2334  0044 7b05          	ld	a,(OFST+5,sp)
2335  0046 a101          	cp	a,#1
2336  0048 270c          	jreq	L433
2337  004a 7b05          	ld	a,(OFST+5,sp)
2338  004c a102          	cp	a,#2
2339  004e 2706          	jreq	L433
2340  0050 7b05          	ld	a,(OFST+5,sp)
2341  0052 a103          	cp	a,#3
2342  0054 2603          	jrne	L233
2343  0056               L433:
2344  0056 4f            	clr	a
2345  0057 2010          	jra	L633
2346  0059               L233:
2347  0059 ae01b0        	ldw	x,#432
2348  005c 89            	pushw	x
2349  005d ae0000        	ldw	x,#0
2350  0060 89            	pushw	x
2351  0061 ae0000        	ldw	x,#L101
2352  0064 cd0000        	call	_assert_failed
2354  0067 5b04          	addw	sp,#4
2355  0069               L633:
2356                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2358  0069 0d06          	tnz	(OFST+6,sp)
2359  006b 2712          	jreq	L243
2360  006d 7b06          	ld	a,(OFST+6,sp)
2361  006f a104          	cp	a,#4
2362  0071 270c          	jreq	L243
2363  0073 7b06          	ld	a,(OFST+6,sp)
2364  0075 a108          	cp	a,#8
2365  0077 2706          	jreq	L243
2366  0079 7b06          	ld	a,(OFST+6,sp)
2367  007b a10c          	cp	a,#12
2368  007d 2603          	jrne	L043
2369  007f               L243:
2370  007f 4f            	clr	a
2371  0080 2010          	jra	L443
2372  0082               L043:
2373  0082 ae01b1        	ldw	x,#433
2374  0085 89            	pushw	x
2375  0086 ae0000        	ldw	x,#0
2376  0089 89            	pushw	x
2377  008a ae0000        	ldw	x,#L101
2378  008d cd0000        	call	_assert_failed
2380  0090 5b04          	addw	sp,#4
2381  0092               L443:
2382                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2384  0092 7b07          	ld	a,(OFST+7,sp)
2385  0094 a110          	cp	a,#16
2386  0096 2403          	jruge	L643
2387  0098 4f            	clr	a
2388  0099 2010          	jra	L053
2389  009b               L643:
2390  009b ae01b2        	ldw	x,#434
2391  009e 89            	pushw	x
2392  009f ae0000        	ldw	x,#0
2393  00a2 89            	pushw	x
2394  00a3 ae0000        	ldw	x,#L101
2395  00a6 cd0000        	call	_assert_failed
2397  00a9 5b04          	addw	sp,#4
2398  00ab               L053:
2399                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2401  00ab 0d01          	tnz	(OFST+1,sp)
2402  00ad 2614          	jrne	L176
2403                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2403                     ; 440                (uint8_t)TIM1_ICSelection,
2403                     ; 441                (uint8_t)TIM1_ICFilter);
2405  00af 7b07          	ld	a,(OFST+7,sp)
2406  00b1 88            	push	a
2407  00b2 7b06          	ld	a,(OFST+6,sp)
2408  00b4 97            	ld	xl,a
2409  00b5 7b03          	ld	a,(OFST+3,sp)
2410  00b7 95            	ld	xh,a
2411  00b8 cd0000        	call	L3_TI1_Config
2413  00bb 84            	pop	a
2414                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2416  00bc 7b06          	ld	a,(OFST+6,sp)
2417  00be cd0000        	call	_TIM1_SetIC1Prescaler
2420  00c1 2046          	jra	L376
2421  00c3               L176:
2422                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2424  00c3 7b01          	ld	a,(OFST+1,sp)
2425  00c5 a101          	cp	a,#1
2426  00c7 2614          	jrne	L576
2427                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2427                     ; 449                (uint8_t)TIM1_ICSelection,
2427                     ; 450                (uint8_t)TIM1_ICFilter);
2429  00c9 7b07          	ld	a,(OFST+7,sp)
2430  00cb 88            	push	a
2431  00cc 7b06          	ld	a,(OFST+6,sp)
2432  00ce 97            	ld	xl,a
2433  00cf 7b03          	ld	a,(OFST+3,sp)
2434  00d1 95            	ld	xh,a
2435  00d2 cd0000        	call	L5_TI2_Config
2437  00d5 84            	pop	a
2438                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2440  00d6 7b06          	ld	a,(OFST+6,sp)
2441  00d8 cd0000        	call	_TIM1_SetIC2Prescaler
2444  00db 202c          	jra	L376
2445  00dd               L576:
2446                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2448  00dd 7b01          	ld	a,(OFST+1,sp)
2449  00df a102          	cp	a,#2
2450  00e1 2614          	jrne	L107
2451                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2451                     ; 458                (uint8_t)TIM1_ICSelection,
2451                     ; 459                (uint8_t)TIM1_ICFilter);
2453  00e3 7b07          	ld	a,(OFST+7,sp)
2454  00e5 88            	push	a
2455  00e6 7b06          	ld	a,(OFST+6,sp)
2456  00e8 97            	ld	xl,a
2457  00e9 7b03          	ld	a,(OFST+3,sp)
2458  00eb 95            	ld	xh,a
2459  00ec cd0000        	call	L7_TI3_Config
2461  00ef 84            	pop	a
2462                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2464  00f0 7b06          	ld	a,(OFST+6,sp)
2465  00f2 cd0000        	call	_TIM1_SetIC3Prescaler
2468  00f5 2012          	jra	L376
2469  00f7               L107:
2470                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2470                     ; 467                (uint8_t)TIM1_ICSelection,
2470                     ; 468                (uint8_t)TIM1_ICFilter);
2472  00f7 7b07          	ld	a,(OFST+7,sp)
2473  00f9 88            	push	a
2474  00fa 7b06          	ld	a,(OFST+6,sp)
2475  00fc 97            	ld	xl,a
2476  00fd 7b03          	ld	a,(OFST+3,sp)
2477  00ff 95            	ld	xh,a
2478  0100 cd0000        	call	L11_TI4_Config
2480  0103 84            	pop	a
2481                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2483  0104 7b06          	ld	a,(OFST+6,sp)
2484  0106 cd0000        	call	_TIM1_SetIC4Prescaler
2486  0109               L376:
2487                     ; 472 }
2490  0109 85            	popw	x
2491  010a 81            	ret
2588                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2588                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2588                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2588                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2588                     ; 492                      uint8_t TIM1_ICFilter)
2588                     ; 493 {
2589                     .text:	section	.text,new
2590  0000               _TIM1_PWMIConfig:
2592  0000 89            	pushw	x
2593  0001 89            	pushw	x
2594       00000002      OFST:	set	2
2597                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2599                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2601                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2603  0002 9e            	ld	a,xh
2604  0003 4d            	tnz	a
2605  0004 2705          	jreq	L653
2606  0006 9e            	ld	a,xh
2607  0007 a101          	cp	a,#1
2608  0009 2603          	jrne	L453
2609  000b               L653:
2610  000b 4f            	clr	a
2611  000c 2010          	jra	L063
2612  000e               L453:
2613  000e ae01f2        	ldw	x,#498
2614  0011 89            	pushw	x
2615  0012 ae0000        	ldw	x,#0
2616  0015 89            	pushw	x
2617  0016 ae0000        	ldw	x,#L101
2618  0019 cd0000        	call	_assert_failed
2620  001c 5b04          	addw	sp,#4
2621  001e               L063:
2622                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2624  001e 0d04          	tnz	(OFST+2,sp)
2625  0020 2706          	jreq	L463
2626  0022 7b04          	ld	a,(OFST+2,sp)
2627  0024 a101          	cp	a,#1
2628  0026 2603          	jrne	L263
2629  0028               L463:
2630  0028 4f            	clr	a
2631  0029 2010          	jra	L663
2632  002b               L263:
2633  002b ae01f3        	ldw	x,#499
2634  002e 89            	pushw	x
2635  002f ae0000        	ldw	x,#0
2636  0032 89            	pushw	x
2637  0033 ae0000        	ldw	x,#L101
2638  0036 cd0000        	call	_assert_failed
2640  0039 5b04          	addw	sp,#4
2641  003b               L663:
2642                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2644  003b 7b07          	ld	a,(OFST+5,sp)
2645  003d a101          	cp	a,#1
2646  003f 270c          	jreq	L273
2647  0041 7b07          	ld	a,(OFST+5,sp)
2648  0043 a102          	cp	a,#2
2649  0045 2706          	jreq	L273
2650  0047 7b07          	ld	a,(OFST+5,sp)
2651  0049 a103          	cp	a,#3
2652  004b 2603          	jrne	L073
2653  004d               L273:
2654  004d 4f            	clr	a
2655  004e 2010          	jra	L473
2656  0050               L073:
2657  0050 ae01f4        	ldw	x,#500
2658  0053 89            	pushw	x
2659  0054 ae0000        	ldw	x,#0
2660  0057 89            	pushw	x
2661  0058 ae0000        	ldw	x,#L101
2662  005b cd0000        	call	_assert_failed
2664  005e 5b04          	addw	sp,#4
2665  0060               L473:
2666                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2668  0060 0d08          	tnz	(OFST+6,sp)
2669  0062 2712          	jreq	L004
2670  0064 7b08          	ld	a,(OFST+6,sp)
2671  0066 a104          	cp	a,#4
2672  0068 270c          	jreq	L004
2673  006a 7b08          	ld	a,(OFST+6,sp)
2674  006c a108          	cp	a,#8
2675  006e 2706          	jreq	L004
2676  0070 7b08          	ld	a,(OFST+6,sp)
2677  0072 a10c          	cp	a,#12
2678  0074 2603          	jrne	L673
2679  0076               L004:
2680  0076 4f            	clr	a
2681  0077 2010          	jra	L204
2682  0079               L673:
2683  0079 ae01f5        	ldw	x,#501
2684  007c 89            	pushw	x
2685  007d ae0000        	ldw	x,#0
2686  0080 89            	pushw	x
2687  0081 ae0000        	ldw	x,#L101
2688  0084 cd0000        	call	_assert_failed
2690  0087 5b04          	addw	sp,#4
2691  0089               L204:
2692                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2694  0089 7b04          	ld	a,(OFST+2,sp)
2695  008b a101          	cp	a,#1
2696  008d 2706          	jreq	L357
2697                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2699  008f a601          	ld	a,#1
2700  0091 6b01          	ld	(OFST-1,sp),a
2703  0093 2002          	jra	L557
2704  0095               L357:
2705                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2707  0095 0f01          	clr	(OFST-1,sp)
2709  0097               L557:
2710                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2712  0097 7b07          	ld	a,(OFST+5,sp)
2713  0099 a101          	cp	a,#1
2714  009b 2606          	jrne	L757
2715                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2717  009d a602          	ld	a,#2
2718  009f 6b02          	ld	(OFST+0,sp),a
2721  00a1 2004          	jra	L167
2722  00a3               L757:
2723                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2725  00a3 a601          	ld	a,#1
2726  00a5 6b02          	ld	(OFST+0,sp),a
2728  00a7               L167:
2729                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2731  00a7 0d03          	tnz	(OFST+1,sp)
2732  00a9 2626          	jrne	L367
2733                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2733                     ; 527                (uint8_t)TIM1_ICFilter);
2735  00ab 7b09          	ld	a,(OFST+7,sp)
2736  00ad 88            	push	a
2737  00ae 7b08          	ld	a,(OFST+6,sp)
2738  00b0 97            	ld	xl,a
2739  00b1 7b05          	ld	a,(OFST+3,sp)
2740  00b3 95            	ld	xh,a
2741  00b4 cd0000        	call	L3_TI1_Config
2743  00b7 84            	pop	a
2744                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2746  00b8 7b08          	ld	a,(OFST+6,sp)
2747  00ba cd0000        	call	_TIM1_SetIC1Prescaler
2749                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2751  00bd 7b09          	ld	a,(OFST+7,sp)
2752  00bf 88            	push	a
2753  00c0 7b03          	ld	a,(OFST+1,sp)
2754  00c2 97            	ld	xl,a
2755  00c3 7b02          	ld	a,(OFST+0,sp)
2756  00c5 95            	ld	xh,a
2757  00c6 cd0000        	call	L5_TI2_Config
2759  00c9 84            	pop	a
2760                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2762  00ca 7b08          	ld	a,(OFST+6,sp)
2763  00cc cd0000        	call	_TIM1_SetIC2Prescaler
2766  00cf 2024          	jra	L567
2767  00d1               L367:
2768                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2768                     ; 542                (uint8_t)TIM1_ICFilter);
2770  00d1 7b09          	ld	a,(OFST+7,sp)
2771  00d3 88            	push	a
2772  00d4 7b08          	ld	a,(OFST+6,sp)
2773  00d6 97            	ld	xl,a
2774  00d7 7b05          	ld	a,(OFST+3,sp)
2775  00d9 95            	ld	xh,a
2776  00da cd0000        	call	L5_TI2_Config
2778  00dd 84            	pop	a
2779                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2781  00de 7b08          	ld	a,(OFST+6,sp)
2782  00e0 cd0000        	call	_TIM1_SetIC2Prescaler
2784                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2786  00e3 7b09          	ld	a,(OFST+7,sp)
2787  00e5 88            	push	a
2788  00e6 7b03          	ld	a,(OFST+1,sp)
2789  00e8 97            	ld	xl,a
2790  00e9 7b02          	ld	a,(OFST+0,sp)
2791  00eb 95            	ld	xh,a
2792  00ec cd0000        	call	L3_TI1_Config
2794  00ef 84            	pop	a
2795                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2797  00f0 7b08          	ld	a,(OFST+6,sp)
2798  00f2 cd0000        	call	_TIM1_SetIC1Prescaler
2800  00f5               L567:
2801                     ; 553 }
2804  00f5 5b04          	addw	sp,#4
2805  00f7 81            	ret
2861                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2861                     ; 562 {
2862                     .text:	section	.text,new
2863  0000               _TIM1_Cmd:
2865  0000 88            	push	a
2866       00000000      OFST:	set	0
2869                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2871  0001 4d            	tnz	a
2872  0002 2704          	jreq	L014
2873  0004 a101          	cp	a,#1
2874  0006 2603          	jrne	L604
2875  0008               L014:
2876  0008 4f            	clr	a
2877  0009 2010          	jra	L214
2878  000b               L604:
2879  000b ae0234        	ldw	x,#564
2880  000e 89            	pushw	x
2881  000f ae0000        	ldw	x,#0
2882  0012 89            	pushw	x
2883  0013 ae0000        	ldw	x,#L101
2884  0016 cd0000        	call	_assert_failed
2886  0019 5b04          	addw	sp,#4
2887  001b               L214:
2888                     ; 567   if (NewState != DISABLE)
2890  001b 0d01          	tnz	(OFST+1,sp)
2891  001d 2706          	jreq	L5101
2892                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2894  001f 72105250      	bset	21072,#0
2896  0023 2004          	jra	L7101
2897  0025               L5101:
2898                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2900  0025 72115250      	bres	21072,#0
2901  0029               L7101:
2902                     ; 575 }
2905  0029 84            	pop	a
2906  002a 81            	ret
2943                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2943                     ; 584 {
2944                     .text:	section	.text,new
2945  0000               _TIM1_CtrlPWMOutputs:
2947  0000 88            	push	a
2948       00000000      OFST:	set	0
2951                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2953  0001 4d            	tnz	a
2954  0002 2704          	jreq	L024
2955  0004 a101          	cp	a,#1
2956  0006 2603          	jrne	L614
2957  0008               L024:
2958  0008 4f            	clr	a
2959  0009 2010          	jra	L224
2960  000b               L614:
2961  000b ae024a        	ldw	x,#586
2962  000e 89            	pushw	x
2963  000f ae0000        	ldw	x,#0
2964  0012 89            	pushw	x
2965  0013 ae0000        	ldw	x,#L101
2966  0016 cd0000        	call	_assert_failed
2968  0019 5b04          	addw	sp,#4
2969  001b               L224:
2970                     ; 590   if (NewState != DISABLE)
2972  001b 0d01          	tnz	(OFST+1,sp)
2973  001d 2706          	jreq	L7301
2974                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2976  001f 721e526d      	bset	21101,#7
2978  0023 2004          	jra	L1401
2979  0025               L7301:
2980                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2982  0025 721f526d      	bres	21101,#7
2983  0029               L1401:
2984                     ; 598 }
2987  0029 84            	pop	a
2988  002a 81            	ret
3096                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3096                     ; 618 {
3097                     .text:	section	.text,new
3098  0000               _TIM1_ITConfig:
3100  0000 89            	pushw	x
3101       00000000      OFST:	set	0
3104                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3106  0001 9e            	ld	a,xh
3107  0002 4d            	tnz	a
3108  0003 2703          	jreq	L624
3109  0005 4f            	clr	a
3110  0006 2010          	jra	L034
3111  0008               L624:
3112  0008 ae026c        	ldw	x,#620
3113  000b 89            	pushw	x
3114  000c ae0000        	ldw	x,#0
3115  000f 89            	pushw	x
3116  0010 ae0000        	ldw	x,#L101
3117  0013 cd0000        	call	_assert_failed
3119  0016 5b04          	addw	sp,#4
3120  0018               L034:
3121                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3123  0018 0d02          	tnz	(OFST+2,sp)
3124  001a 2706          	jreq	L434
3125  001c 7b02          	ld	a,(OFST+2,sp)
3126  001e a101          	cp	a,#1
3127  0020 2603          	jrne	L234
3128  0022               L434:
3129  0022 4f            	clr	a
3130  0023 2010          	jra	L634
3131  0025               L234:
3132  0025 ae026d        	ldw	x,#621
3133  0028 89            	pushw	x
3134  0029 ae0000        	ldw	x,#0
3135  002c 89            	pushw	x
3136  002d ae0000        	ldw	x,#L101
3137  0030 cd0000        	call	_assert_failed
3139  0033 5b04          	addw	sp,#4
3140  0035               L634:
3141                     ; 623   if (NewState != DISABLE)
3143  0035 0d02          	tnz	(OFST+2,sp)
3144  0037 270a          	jreq	L1111
3145                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3147  0039 c65254        	ld	a,21076
3148  003c 1a01          	or	a,(OFST+1,sp)
3149  003e c75254        	ld	21076,a
3151  0041 2009          	jra	L3111
3152  0043               L1111:
3153                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3155  0043 7b01          	ld	a,(OFST+1,sp)
3156  0045 43            	cpl	a
3157  0046 c45254        	and	a,21076
3158  0049 c75254        	ld	21076,a
3159  004c               L3111:
3160                     ; 633 }
3163  004c 85            	popw	x
3164  004d 81            	ret
3188                     ; 640 void TIM1_InternalClockConfig(void)
3188                     ; 641 {
3189                     .text:	section	.text,new
3190  0000               _TIM1_InternalClockConfig:
3194                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3196  0000 c65252        	ld	a,21074
3197  0003 a4f8          	and	a,#248
3198  0005 c75252        	ld	21074,a
3199                     ; 644 }
3202  0008 81            	ret
3320                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3320                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3320                     ; 664                               uint8_t ExtTRGFilter)
3320                     ; 665 {
3321                     .text:	section	.text,new
3322  0000               _TIM1_ETRClockMode1Config:
3324  0000 89            	pushw	x
3325       00000000      OFST:	set	0
3328                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3330  0001 9e            	ld	a,xh
3331  0002 4d            	tnz	a
3332  0003 270f          	jreq	L644
3333  0005 9e            	ld	a,xh
3334  0006 a110          	cp	a,#16
3335  0008 270a          	jreq	L644
3336  000a 9e            	ld	a,xh
3337  000b a120          	cp	a,#32
3338  000d 2705          	jreq	L644
3339  000f 9e            	ld	a,xh
3340  0010 a130          	cp	a,#48
3341  0012 2603          	jrne	L444
3342  0014               L644:
3343  0014 4f            	clr	a
3344  0015 2010          	jra	L054
3345  0017               L444:
3346  0017 ae029b        	ldw	x,#667
3347  001a 89            	pushw	x
3348  001b ae0000        	ldw	x,#0
3349  001e 89            	pushw	x
3350  001f ae0000        	ldw	x,#L101
3351  0022 cd0000        	call	_assert_failed
3353  0025 5b04          	addw	sp,#4
3354  0027               L054:
3355                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3357  0027 7b02          	ld	a,(OFST+2,sp)
3358  0029 a180          	cp	a,#128
3359  002b 2704          	jreq	L454
3360  002d 0d02          	tnz	(OFST+2,sp)
3361  002f 2603          	jrne	L254
3362  0031               L454:
3363  0031 4f            	clr	a
3364  0032 2010          	jra	L654
3365  0034               L254:
3366  0034 ae029c        	ldw	x,#668
3367  0037 89            	pushw	x
3368  0038 ae0000        	ldw	x,#0
3369  003b 89            	pushw	x
3370  003c ae0000        	ldw	x,#L101
3371  003f cd0000        	call	_assert_failed
3373  0042 5b04          	addw	sp,#4
3374  0044               L654:
3375                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3377  0044 7b05          	ld	a,(OFST+5,sp)
3378  0046 88            	push	a
3379  0047 7b03          	ld	a,(OFST+3,sp)
3380  0049 97            	ld	xl,a
3381  004a 7b02          	ld	a,(OFST+2,sp)
3382  004c 95            	ld	xh,a
3383  004d cd0000        	call	_TIM1_ETRConfig
3385  0050 84            	pop	a
3386                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3386                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3388  0051 c65252        	ld	a,21074
3389  0054 a488          	and	a,#136
3390  0056 aa77          	or	a,#119
3391  0058 c75252        	ld	21074,a
3392                     ; 676 }
3395  005b 85            	popw	x
3396  005c 81            	ret
3455                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3455                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3455                     ; 696                               uint8_t ExtTRGFilter)
3455                     ; 697 {
3456                     .text:	section	.text,new
3457  0000               _TIM1_ETRClockMode2Config:
3459  0000 89            	pushw	x
3460       00000000      OFST:	set	0
3463                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3465  0001 9e            	ld	a,xh
3466  0002 4d            	tnz	a
3467  0003 270f          	jreq	L464
3468  0005 9e            	ld	a,xh
3469  0006 a110          	cp	a,#16
3470  0008 270a          	jreq	L464
3471  000a 9e            	ld	a,xh
3472  000b a120          	cp	a,#32
3473  000d 2705          	jreq	L464
3474  000f 9e            	ld	a,xh
3475  0010 a130          	cp	a,#48
3476  0012 2603          	jrne	L264
3477  0014               L464:
3478  0014 4f            	clr	a
3479  0015 2010          	jra	L664
3480  0017               L264:
3481  0017 ae02bb        	ldw	x,#699
3482  001a 89            	pushw	x
3483  001b ae0000        	ldw	x,#0
3484  001e 89            	pushw	x
3485  001f ae0000        	ldw	x,#L101
3486  0022 cd0000        	call	_assert_failed
3488  0025 5b04          	addw	sp,#4
3489  0027               L664:
3490                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3492  0027 7b02          	ld	a,(OFST+2,sp)
3493  0029 a180          	cp	a,#128
3494  002b 2704          	jreq	L274
3495  002d 0d02          	tnz	(OFST+2,sp)
3496  002f 2603          	jrne	L074
3497  0031               L274:
3498  0031 4f            	clr	a
3499  0032 2010          	jra	L474
3500  0034               L074:
3501  0034 ae02bc        	ldw	x,#700
3502  0037 89            	pushw	x
3503  0038 ae0000        	ldw	x,#0
3504  003b 89            	pushw	x
3505  003c ae0000        	ldw	x,#L101
3506  003f cd0000        	call	_assert_failed
3508  0042 5b04          	addw	sp,#4
3509  0044               L474:
3510                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3512  0044 7b05          	ld	a,(OFST+5,sp)
3513  0046 88            	push	a
3514  0047 7b03          	ld	a,(OFST+3,sp)
3515  0049 97            	ld	xl,a
3516  004a 7b02          	ld	a,(OFST+2,sp)
3517  004c 95            	ld	xh,a
3518  004d cd0000        	call	_TIM1_ETRConfig
3520  0050 84            	pop	a
3521                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3523  0051 721c5253      	bset	21075,#6
3524                     ; 707 }
3527  0055 85            	popw	x
3528  0056 81            	ret
3585                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3585                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3585                     ; 727                     uint8_t ExtTRGFilter)
3585                     ; 728 {
3586                     .text:	section	.text,new
3587  0000               _TIM1_ETRConfig:
3589  0000 89            	pushw	x
3590       00000000      OFST:	set	0
3593                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3595  0001 7b05          	ld	a,(OFST+5,sp)
3596  0003 a110          	cp	a,#16
3597  0005 2403          	jruge	L005
3598  0007 4f            	clr	a
3599  0008 2010          	jra	L205
3600  000a               L005:
3601  000a ae02da        	ldw	x,#730
3602  000d 89            	pushw	x
3603  000e ae0000        	ldw	x,#0
3604  0011 89            	pushw	x
3605  0012 ae0000        	ldw	x,#L101
3606  0015 cd0000        	call	_assert_failed
3608  0018 5b04          	addw	sp,#4
3609  001a               L205:
3610                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3610                     ; 733                          (uint8_t)ExtTRGFilter );
3612  001a 7b01          	ld	a,(OFST+1,sp)
3613  001c 1a02          	or	a,(OFST+2,sp)
3614  001e 1a05          	or	a,(OFST+5,sp)
3615  0020 ca5253        	or	a,21075
3616  0023 c75253        	ld	21075,a
3617                     ; 734 }
3620  0026 85            	popw	x
3621  0027 81            	ret
3711                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3711                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3711                     ; 753                                  uint8_t ICFilter)
3711                     ; 754 {
3712                     .text:	section	.text,new
3713  0000               _TIM1_TIxExternalClockConfig:
3715  0000 89            	pushw	x
3716       00000000      OFST:	set	0
3719                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3721  0001 9e            	ld	a,xh
3722  0002 a140          	cp	a,#64
3723  0004 270a          	jreq	L015
3724  0006 9e            	ld	a,xh
3725  0007 a160          	cp	a,#96
3726  0009 2705          	jreq	L015
3727  000b 9e            	ld	a,xh
3728  000c a150          	cp	a,#80
3729  000e 2603          	jrne	L605
3730  0010               L015:
3731  0010 4f            	clr	a
3732  0011 2010          	jra	L215
3733  0013               L605:
3734  0013 ae02f4        	ldw	x,#756
3735  0016 89            	pushw	x
3736  0017 ae0000        	ldw	x,#0
3737  001a 89            	pushw	x
3738  001b ae0000        	ldw	x,#L101
3739  001e cd0000        	call	_assert_failed
3741  0021 5b04          	addw	sp,#4
3742  0023               L215:
3743                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3745  0023 0d02          	tnz	(OFST+2,sp)
3746  0025 2706          	jreq	L615
3747  0027 7b02          	ld	a,(OFST+2,sp)
3748  0029 a101          	cp	a,#1
3749  002b 2603          	jrne	L415
3750  002d               L615:
3751  002d 4f            	clr	a
3752  002e 2010          	jra	L025
3753  0030               L415:
3754  0030 ae02f5        	ldw	x,#757
3755  0033 89            	pushw	x
3756  0034 ae0000        	ldw	x,#0
3757  0037 89            	pushw	x
3758  0038 ae0000        	ldw	x,#L101
3759  003b cd0000        	call	_assert_failed
3761  003e 5b04          	addw	sp,#4
3762  0040               L025:
3763                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3765  0040 7b05          	ld	a,(OFST+5,sp)
3766  0042 a110          	cp	a,#16
3767  0044 2403          	jruge	L225
3768  0046 4f            	clr	a
3769  0047 2010          	jra	L425
3770  0049               L225:
3771  0049 ae02f6        	ldw	x,#758
3772  004c 89            	pushw	x
3773  004d ae0000        	ldw	x,#0
3774  0050 89            	pushw	x
3775  0051 ae0000        	ldw	x,#L101
3776  0054 cd0000        	call	_assert_failed
3778  0057 5b04          	addw	sp,#4
3779  0059               L425:
3780                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3782  0059 7b01          	ld	a,(OFST+1,sp)
3783  005b a160          	cp	a,#96
3784  005d 260f          	jrne	L3131
3785                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3787  005f 7b05          	ld	a,(OFST+5,sp)
3788  0061 88            	push	a
3789  0062 7b03          	ld	a,(OFST+3,sp)
3790  0064 ae0001        	ldw	x,#1
3791  0067 95            	ld	xh,a
3792  0068 cd0000        	call	L5_TI2_Config
3794  006b 84            	pop	a
3796  006c 200d          	jra	L5131
3797  006e               L3131:
3798                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3800  006e 7b05          	ld	a,(OFST+5,sp)
3801  0070 88            	push	a
3802  0071 7b03          	ld	a,(OFST+3,sp)
3803  0073 ae0001        	ldw	x,#1
3804  0076 95            	ld	xh,a
3805  0077 cd0000        	call	L3_TI1_Config
3807  007a 84            	pop	a
3808  007b               L5131:
3809                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3811  007b 7b01          	ld	a,(OFST+1,sp)
3812  007d cd0000        	call	_TIM1_SelectInputTrigger
3814                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3816  0080 c65252        	ld	a,21074
3817  0083 aa07          	or	a,#7
3818  0085 c75252        	ld	21074,a
3819                     ; 775 }
3822  0088 85            	popw	x
3823  0089 81            	ret
3909                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3909                     ; 788 {
3910                     .text:	section	.text,new
3911  0000               _TIM1_SelectInputTrigger:
3913  0000 88            	push	a
3914       00000000      OFST:	set	0
3917                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3919  0001 a140          	cp	a,#64
3920  0003 2713          	jreq	L235
3921  0005 a150          	cp	a,#80
3922  0007 270f          	jreq	L235
3923  0009 a160          	cp	a,#96
3924  000b 270b          	jreq	L235
3925  000d a170          	cp	a,#112
3926  000f 2707          	jreq	L235
3927  0011 a130          	cp	a,#48
3928  0013 2703          	jreq	L235
3929  0015 4d            	tnz	a
3930  0016 2603          	jrne	L035
3931  0018               L235:
3932  0018 4f            	clr	a
3933  0019 2010          	jra	L435
3934  001b               L035:
3935  001b ae0316        	ldw	x,#790
3936  001e 89            	pushw	x
3937  001f ae0000        	ldw	x,#0
3938  0022 89            	pushw	x
3939  0023 ae0000        	ldw	x,#L101
3940  0026 cd0000        	call	_assert_failed
3942  0029 5b04          	addw	sp,#4
3943  002b               L435:
3944                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3946  002b c65252        	ld	a,21074
3947  002e a48f          	and	a,#143
3948  0030 1a01          	or	a,(OFST+1,sp)
3949  0032 c75252        	ld	21074,a
3950                     ; 794 }
3953  0035 84            	pop	a
3954  0036 81            	ret
3991                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3991                     ; 804 {
3992                     .text:	section	.text,new
3993  0000               _TIM1_UpdateDisableConfig:
3995  0000 88            	push	a
3996       00000000      OFST:	set	0
3999                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4001  0001 4d            	tnz	a
4002  0002 2704          	jreq	L245
4003  0004 a101          	cp	a,#1
4004  0006 2603          	jrne	L045
4005  0008               L245:
4006  0008 4f            	clr	a
4007  0009 2010          	jra	L445
4008  000b               L045:
4009  000b ae0326        	ldw	x,#806
4010  000e 89            	pushw	x
4011  000f ae0000        	ldw	x,#0
4012  0012 89            	pushw	x
4013  0013 ae0000        	ldw	x,#L101
4014  0016 cd0000        	call	_assert_failed
4016  0019 5b04          	addw	sp,#4
4017  001b               L445:
4018                     ; 809   if (NewState != DISABLE)
4020  001b 0d01          	tnz	(OFST+1,sp)
4021  001d 2706          	jreq	L3731
4022                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
4024  001f 72125250      	bset	21072,#1
4026  0023 2004          	jra	L5731
4027  0025               L3731:
4028                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
4030  0025 72135250      	bres	21072,#1
4031  0029               L5731:
4032                     ; 817 }
4035  0029 84            	pop	a
4036  002a 81            	ret
4095                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4095                     ; 828 {
4096                     .text:	section	.text,new
4097  0000               _TIM1_UpdateRequestConfig:
4099  0000 88            	push	a
4100       00000000      OFST:	set	0
4103                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4105  0001 4d            	tnz	a
4106  0002 2704          	jreq	L255
4107  0004 a101          	cp	a,#1
4108  0006 2603          	jrne	L055
4109  0008               L255:
4110  0008 4f            	clr	a
4111  0009 2010          	jra	L455
4112  000b               L055:
4113  000b ae033e        	ldw	x,#830
4114  000e 89            	pushw	x
4115  000f ae0000        	ldw	x,#0
4116  0012 89            	pushw	x
4117  0013 ae0000        	ldw	x,#L101
4118  0016 cd0000        	call	_assert_failed
4120  0019 5b04          	addw	sp,#4
4121  001b               L455:
4122                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4124  001b 0d01          	tnz	(OFST+1,sp)
4125  001d 2706          	jreq	L5241
4126                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4128  001f 72145250      	bset	21072,#2
4130  0023 2004          	jra	L7241
4131  0025               L5241:
4132                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4134  0025 72155250      	bres	21072,#2
4135  0029               L7241:
4136                     ; 841 }
4139  0029 84            	pop	a
4140  002a 81            	ret
4177                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4177                     ; 850 {
4178                     .text:	section	.text,new
4179  0000               _TIM1_SelectHallSensor:
4181  0000 88            	push	a
4182       00000000      OFST:	set	0
4185                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4187  0001 4d            	tnz	a
4188  0002 2704          	jreq	L265
4189  0004 a101          	cp	a,#1
4190  0006 2603          	jrne	L065
4191  0008               L265:
4192  0008 4f            	clr	a
4193  0009 2010          	jra	L465
4194  000b               L065:
4195  000b ae0354        	ldw	x,#852
4196  000e 89            	pushw	x
4197  000f ae0000        	ldw	x,#0
4198  0012 89            	pushw	x
4199  0013 ae0000        	ldw	x,#L101
4200  0016 cd0000        	call	_assert_failed
4202  0019 5b04          	addw	sp,#4
4203  001b               L465:
4204                     ; 855   if (NewState != DISABLE)
4206  001b 0d01          	tnz	(OFST+1,sp)
4207  001d 2706          	jreq	L7441
4208                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4210  001f 721e5251      	bset	21073,#7
4212  0023 2004          	jra	L1541
4213  0025               L7441:
4214                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4216  0025 721f5251      	bres	21073,#7
4217  0029               L1541:
4218                     ; 863 }
4221  0029 84            	pop	a
4222  002a 81            	ret
4280                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4280                     ; 874 {
4281                     .text:	section	.text,new
4282  0000               _TIM1_SelectOnePulseMode:
4284  0000 88            	push	a
4285       00000000      OFST:	set	0
4288                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4290  0001 a101          	cp	a,#1
4291  0003 2703          	jreq	L275
4292  0005 4d            	tnz	a
4293  0006 2603          	jrne	L075
4294  0008               L275:
4295  0008 4f            	clr	a
4296  0009 2010          	jra	L475
4297  000b               L075:
4298  000b ae036c        	ldw	x,#876
4299  000e 89            	pushw	x
4300  000f ae0000        	ldw	x,#0
4301  0012 89            	pushw	x
4302  0013 ae0000        	ldw	x,#L101
4303  0016 cd0000        	call	_assert_failed
4305  0019 5b04          	addw	sp,#4
4306  001b               L475:
4307                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4309  001b 0d01          	tnz	(OFST+1,sp)
4310  001d 2706          	jreq	L1051
4311                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4313  001f 72165250      	bset	21072,#3
4315  0023 2004          	jra	L3051
4316  0025               L1051:
4317                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4319  0025 72175250      	bres	21072,#3
4320  0029               L3051:
4321                     ; 888 }
4324  0029 84            	pop	a
4325  002a 81            	ret
4424                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4424                     ; 904 {
4425                     .text:	section	.text,new
4426  0000               _TIM1_SelectOutputTrigger:
4428  0000 88            	push	a
4429       00000000      OFST:	set	0
4432                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4434  0001 4d            	tnz	a
4435  0002 2718          	jreq	L206
4436  0004 a110          	cp	a,#16
4437  0006 2714          	jreq	L206
4438  0008 a120          	cp	a,#32
4439  000a 2710          	jreq	L206
4440  000c a130          	cp	a,#48
4441  000e 270c          	jreq	L206
4442  0010 a140          	cp	a,#64
4443  0012 2708          	jreq	L206
4444  0014 a150          	cp	a,#80
4445  0016 2704          	jreq	L206
4446  0018 a160          	cp	a,#96
4447  001a 2603          	jrne	L006
4448  001c               L206:
4449  001c 4f            	clr	a
4450  001d 2010          	jra	L406
4451  001f               L006:
4452  001f ae038a        	ldw	x,#906
4453  0022 89            	pushw	x
4454  0023 ae0000        	ldw	x,#0
4455  0026 89            	pushw	x
4456  0027 ae0000        	ldw	x,#L101
4457  002a cd0000        	call	_assert_failed
4459  002d 5b04          	addw	sp,#4
4460  002f               L406:
4461                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4461                     ; 910                         (uint8_t) TIM1_TRGOSource);
4463  002f c65251        	ld	a,21073
4464  0032 a48f          	and	a,#143
4465  0034 1a01          	or	a,(OFST+1,sp)
4466  0036 c75251        	ld	21073,a
4467                     ; 911 }
4470  0039 84            	pop	a
4471  003a 81            	ret
4546                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4546                     ; 924 {
4547                     .text:	section	.text,new
4548  0000               _TIM1_SelectSlaveMode:
4550  0000 88            	push	a
4551       00000000      OFST:	set	0
4554                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4556  0001 a104          	cp	a,#4
4557  0003 270c          	jreq	L216
4558  0005 a105          	cp	a,#5
4559  0007 2708          	jreq	L216
4560  0009 a106          	cp	a,#6
4561  000b 2704          	jreq	L216
4562  000d a107          	cp	a,#7
4563  000f 2603          	jrne	L016
4564  0011               L216:
4565  0011 4f            	clr	a
4566  0012 2010          	jra	L416
4567  0014               L016:
4568  0014 ae039e        	ldw	x,#926
4569  0017 89            	pushw	x
4570  0018 ae0000        	ldw	x,#0
4571  001b 89            	pushw	x
4572  001c ae0000        	ldw	x,#L101
4573  001f cd0000        	call	_assert_failed
4575  0022 5b04          	addw	sp,#4
4576  0024               L416:
4577                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4577                     ; 930                          (uint8_t)TIM1_SlaveMode);
4579  0024 c65252        	ld	a,21074
4580  0027 a4f8          	and	a,#248
4581  0029 1a01          	or	a,(OFST+1,sp)
4582  002b c75252        	ld	21074,a
4583                     ; 931 }
4586  002e 84            	pop	a
4587  002f 81            	ret
4624                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4624                     ; 940 {
4625                     .text:	section	.text,new
4626  0000               _TIM1_SelectMasterSlaveMode:
4628  0000 88            	push	a
4629       00000000      OFST:	set	0
4632                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4634  0001 4d            	tnz	a
4635  0002 2704          	jreq	L226
4636  0004 a101          	cp	a,#1
4637  0006 2603          	jrne	L026
4638  0008               L226:
4639  0008 4f            	clr	a
4640  0009 2010          	jra	L426
4641  000b               L026:
4642  000b ae03ae        	ldw	x,#942
4643  000e 89            	pushw	x
4644  000f ae0000        	ldw	x,#0
4645  0012 89            	pushw	x
4646  0013 ae0000        	ldw	x,#L101
4647  0016 cd0000        	call	_assert_failed
4649  0019 5b04          	addw	sp,#4
4650  001b               L426:
4651                     ; 945   if (NewState != DISABLE)
4653  001b 0d01          	tnz	(OFST+1,sp)
4654  001d 2706          	jreq	L5161
4655                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4657  001f 721e5252      	bset	21074,#7
4659  0023 2004          	jra	L7161
4660  0025               L5161:
4661                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4663  0025 721f5252      	bres	21074,#7
4664  0029               L7161:
4665                     ; 953 }
4668  0029 84            	pop	a
4669  002a 81            	ret
4756                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4756                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4756                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4756                     ; 978 {
4757                     .text:	section	.text,new
4758  0000               _TIM1_EncoderInterfaceConfig:
4760  0000 89            	pushw	x
4761       00000000      OFST:	set	0
4764                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4766  0001 9e            	ld	a,xh
4767  0002 a101          	cp	a,#1
4768  0004 270a          	jreq	L236
4769  0006 9e            	ld	a,xh
4770  0007 a102          	cp	a,#2
4771  0009 2705          	jreq	L236
4772  000b 9e            	ld	a,xh
4773  000c a103          	cp	a,#3
4774  000e 2603          	jrne	L036
4775  0010               L236:
4776  0010 4f            	clr	a
4777  0011 2010          	jra	L436
4778  0013               L036:
4779  0013 ae03d4        	ldw	x,#980
4780  0016 89            	pushw	x
4781  0017 ae0000        	ldw	x,#0
4782  001a 89            	pushw	x
4783  001b ae0000        	ldw	x,#L101
4784  001e cd0000        	call	_assert_failed
4786  0021 5b04          	addw	sp,#4
4787  0023               L436:
4788                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4790  0023 0d02          	tnz	(OFST+2,sp)
4791  0025 2706          	jreq	L046
4792  0027 7b02          	ld	a,(OFST+2,sp)
4793  0029 a101          	cp	a,#1
4794  002b 2603          	jrne	L636
4795  002d               L046:
4796  002d 4f            	clr	a
4797  002e 2010          	jra	L246
4798  0030               L636:
4799  0030 ae03d5        	ldw	x,#981
4800  0033 89            	pushw	x
4801  0034 ae0000        	ldw	x,#0
4802  0037 89            	pushw	x
4803  0038 ae0000        	ldw	x,#L101
4804  003b cd0000        	call	_assert_failed
4806  003e 5b04          	addw	sp,#4
4807  0040               L246:
4808                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4810  0040 0d05          	tnz	(OFST+5,sp)
4811  0042 2706          	jreq	L646
4812  0044 7b05          	ld	a,(OFST+5,sp)
4813  0046 a101          	cp	a,#1
4814  0048 2603          	jrne	L446
4815  004a               L646:
4816  004a 4f            	clr	a
4817  004b 2010          	jra	L056
4818  004d               L446:
4819  004d ae03d6        	ldw	x,#982
4820  0050 89            	pushw	x
4821  0051 ae0000        	ldw	x,#0
4822  0054 89            	pushw	x
4823  0055 ae0000        	ldw	x,#L101
4824  0058 cd0000        	call	_assert_failed
4826  005b 5b04          	addw	sp,#4
4827  005d               L056:
4828                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4830  005d 0d02          	tnz	(OFST+2,sp)
4831  005f 2706          	jreq	L1661
4832                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4834  0061 7212525c      	bset	21084,#1
4836  0065 2004          	jra	L3661
4837  0067               L1661:
4838                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4840  0067 7213525c      	bres	21084,#1
4841  006b               L3661:
4842                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4844  006b 0d05          	tnz	(OFST+5,sp)
4845  006d 2706          	jreq	L5661
4846                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4848  006f 721a525c      	bset	21084,#5
4850  0073 2004          	jra	L7661
4851  0075               L5661:
4852                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4854  0075 721b525c      	bres	21084,#5
4855  0079               L7661:
4856                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4856                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4858  0079 c65252        	ld	a,21074
4859  007c a4f0          	and	a,#240
4860  007e 1a01          	or	a,(OFST+1,sp)
4861  0080 c75252        	ld	21074,a
4862                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4862                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4864  0083 c65258        	ld	a,21080
4865  0086 a4fc          	and	a,#252
4866  0088 aa01          	or	a,#1
4867  008a c75258        	ld	21080,a
4868                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4868                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4870  008d c65259        	ld	a,21081
4871  0090 a4fc          	and	a,#252
4872  0092 aa01          	or	a,#1
4873  0094 c75259        	ld	21081,a
4874                     ; 1011 }
4877  0097 85            	popw	x
4878  0098 81            	ret
4946                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4946                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4946                     ; 1025 {
4947                     .text:	section	.text,new
4948  0000               _TIM1_PrescalerConfig:
4950  0000 89            	pushw	x
4951       00000000      OFST:	set	0
4954                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4956  0001 0d05          	tnz	(OFST+5,sp)
4957  0003 2706          	jreq	L656
4958  0005 7b05          	ld	a,(OFST+5,sp)
4959  0007 a101          	cp	a,#1
4960  0009 2603          	jrne	L456
4961  000b               L656:
4962  000b 4f            	clr	a
4963  000c 2010          	jra	L066
4964  000e               L456:
4965  000e ae0403        	ldw	x,#1027
4966  0011 89            	pushw	x
4967  0012 ae0000        	ldw	x,#0
4968  0015 89            	pushw	x
4969  0016 ae0000        	ldw	x,#L101
4970  0019 cd0000        	call	_assert_failed
4972  001c 5b04          	addw	sp,#4
4973  001e               L066:
4974                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4976  001e 7b01          	ld	a,(OFST+1,sp)
4977  0020 c75260        	ld	21088,a
4978                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4980  0023 7b02          	ld	a,(OFST+2,sp)
4981  0025 c75261        	ld	21089,a
4982                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4984  0028 7b05          	ld	a,(OFST+5,sp)
4985  002a c75257        	ld	21079,a
4986                     ; 1035 }
4989  002d 85            	popw	x
4990  002e 81            	ret
5027                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
5027                     ; 1049 {
5028                     .text:	section	.text,new
5029  0000               _TIM1_CounterModeConfig:
5031  0000 88            	push	a
5032       00000000      OFST:	set	0
5035                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5037  0001 4d            	tnz	a
5038  0002 2710          	jreq	L666
5039  0004 a110          	cp	a,#16
5040  0006 270c          	jreq	L666
5041  0008 a120          	cp	a,#32
5042  000a 2708          	jreq	L666
5043  000c a140          	cp	a,#64
5044  000e 2704          	jreq	L666
5045  0010 a160          	cp	a,#96
5046  0012 2603          	jrne	L466
5047  0014               L666:
5048  0014 4f            	clr	a
5049  0015 2010          	jra	L076
5050  0017               L466:
5051  0017 ae041b        	ldw	x,#1051
5052  001a 89            	pushw	x
5053  001b ae0000        	ldw	x,#0
5054  001e 89            	pushw	x
5055  001f ae0000        	ldw	x,#L101
5056  0022 cd0000        	call	_assert_failed
5058  0025 5b04          	addw	sp,#4
5059  0027               L076:
5060                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5060                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5062  0027 c65250        	ld	a,21072
5063  002a a48f          	and	a,#143
5064  002c 1a01          	or	a,(OFST+1,sp)
5065  002e c75250        	ld	21072,a
5066                     ; 1057 }
5069  0031 84            	pop	a
5070  0032 81            	ret
5129                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5129                     ; 1068 {
5130                     .text:	section	.text,new
5131  0000               _TIM1_ForcedOC1Config:
5133  0000 88            	push	a
5134       00000000      OFST:	set	0
5137                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5139  0001 a150          	cp	a,#80
5140  0003 2704          	jreq	L676
5141  0005 a140          	cp	a,#64
5142  0007 2603          	jrne	L476
5143  0009               L676:
5144  0009 4f            	clr	a
5145  000a 2010          	jra	L007
5146  000c               L476:
5147  000c ae042e        	ldw	x,#1070
5148  000f 89            	pushw	x
5149  0010 ae0000        	ldw	x,#0
5150  0013 89            	pushw	x
5151  0014 ae0000        	ldw	x,#L101
5152  0017 cd0000        	call	_assert_failed
5154  001a 5b04          	addw	sp,#4
5155  001c               L007:
5156                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5156                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5158  001c c65258        	ld	a,21080
5159  001f a48f          	and	a,#143
5160  0021 1a01          	or	a,(OFST+1,sp)
5161  0023 c75258        	ld	21080,a
5162                     ; 1075 }
5165  0026 84            	pop	a
5166  0027 81            	ret
5203                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5203                     ; 1086 {
5204                     .text:	section	.text,new
5205  0000               _TIM1_ForcedOC2Config:
5207  0000 88            	push	a
5208       00000000      OFST:	set	0
5211                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5213  0001 a150          	cp	a,#80
5214  0003 2704          	jreq	L607
5215  0005 a140          	cp	a,#64
5216  0007 2603          	jrne	L407
5217  0009               L607:
5218  0009 4f            	clr	a
5219  000a 2010          	jra	L017
5220  000c               L407:
5221  000c ae0440        	ldw	x,#1088
5222  000f 89            	pushw	x
5223  0010 ae0000        	ldw	x,#0
5224  0013 89            	pushw	x
5225  0014 ae0000        	ldw	x,#L101
5226  0017 cd0000        	call	_assert_failed
5228  001a 5b04          	addw	sp,#4
5229  001c               L017:
5230                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5230                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5232  001c c65259        	ld	a,21081
5233  001f a48f          	and	a,#143
5234  0021 1a01          	or	a,(OFST+1,sp)
5235  0023 c75259        	ld	21081,a
5236                     ; 1093 }
5239  0026 84            	pop	a
5240  0027 81            	ret
5277                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5277                     ; 1105 {
5278                     .text:	section	.text,new
5279  0000               _TIM1_ForcedOC3Config:
5281  0000 88            	push	a
5282       00000000      OFST:	set	0
5285                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5287  0001 a150          	cp	a,#80
5288  0003 2704          	jreq	L617
5289  0005 a140          	cp	a,#64
5290  0007 2603          	jrne	L417
5291  0009               L617:
5292  0009 4f            	clr	a
5293  000a 2010          	jra	L027
5294  000c               L417:
5295  000c ae0453        	ldw	x,#1107
5296  000f 89            	pushw	x
5297  0010 ae0000        	ldw	x,#0
5298  0013 89            	pushw	x
5299  0014 ae0000        	ldw	x,#L101
5300  0017 cd0000        	call	_assert_failed
5302  001a 5b04          	addw	sp,#4
5303  001c               L027:
5304                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5304                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5306  001c c6525a        	ld	a,21082
5307  001f a48f          	and	a,#143
5308  0021 1a01          	or	a,(OFST+1,sp)
5309  0023 c7525a        	ld	21082,a
5310                     ; 1112 }
5313  0026 84            	pop	a
5314  0027 81            	ret
5351                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5351                     ; 1124 {
5352                     .text:	section	.text,new
5353  0000               _TIM1_ForcedOC4Config:
5355  0000 88            	push	a
5356       00000000      OFST:	set	0
5359                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5361  0001 a150          	cp	a,#80
5362  0003 2704          	jreq	L627
5363  0005 a140          	cp	a,#64
5364  0007 2603          	jrne	L427
5365  0009               L627:
5366  0009 4f            	clr	a
5367  000a 2010          	jra	L037
5368  000c               L427:
5369  000c ae0466        	ldw	x,#1126
5370  000f 89            	pushw	x
5371  0010 ae0000        	ldw	x,#0
5372  0013 89            	pushw	x
5373  0014 ae0000        	ldw	x,#L101
5374  0017 cd0000        	call	_assert_failed
5376  001a 5b04          	addw	sp,#4
5377  001c               L037:
5378                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5378                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5380  001c c6525b        	ld	a,21083
5381  001f a48f          	and	a,#143
5382  0021 1a01          	or	a,(OFST+1,sp)
5383  0023 c7525b        	ld	21083,a
5384                     ; 1131 }
5387  0026 84            	pop	a
5388  0027 81            	ret
5425                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5425                     ; 1140 {
5426                     .text:	section	.text,new
5427  0000               _TIM1_ARRPreloadConfig:
5429  0000 88            	push	a
5430       00000000      OFST:	set	0
5433                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5435  0001 4d            	tnz	a
5436  0002 2704          	jreq	L637
5437  0004 a101          	cp	a,#1
5438  0006 2603          	jrne	L437
5439  0008               L637:
5440  0008 4f            	clr	a
5441  0009 2010          	jra	L047
5442  000b               L437:
5443  000b ae0476        	ldw	x,#1142
5444  000e 89            	pushw	x
5445  000f ae0000        	ldw	x,#0
5446  0012 89            	pushw	x
5447  0013 ae0000        	ldw	x,#L101
5448  0016 cd0000        	call	_assert_failed
5450  0019 5b04          	addw	sp,#4
5451  001b               L047:
5452                     ; 1145   if (NewState != DISABLE)
5454  001b 0d01          	tnz	(OFST+1,sp)
5455  001d 2706          	jreq	L7502
5456                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5458  001f 721e5250      	bset	21072,#7
5460  0023 2004          	jra	L1602
5461  0025               L7502:
5462                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5464  0025 721f5250      	bres	21072,#7
5465  0029               L1602:
5466                     ; 1153 }
5469  0029 84            	pop	a
5470  002a 81            	ret
5506                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5506                     ; 1162 {
5507                     .text:	section	.text,new
5508  0000               _TIM1_SelectCOM:
5510  0000 88            	push	a
5511       00000000      OFST:	set	0
5514                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5516  0001 4d            	tnz	a
5517  0002 2704          	jreq	L647
5518  0004 a101          	cp	a,#1
5519  0006 2603          	jrne	L447
5520  0008               L647:
5521  0008 4f            	clr	a
5522  0009 2010          	jra	L057
5523  000b               L447:
5524  000b ae048c        	ldw	x,#1164
5525  000e 89            	pushw	x
5526  000f ae0000        	ldw	x,#0
5527  0012 89            	pushw	x
5528  0013 ae0000        	ldw	x,#L101
5529  0016 cd0000        	call	_assert_failed
5531  0019 5b04          	addw	sp,#4
5532  001b               L057:
5533                     ; 1167   if (NewState != DISABLE)
5535  001b 0d01          	tnz	(OFST+1,sp)
5536  001d 2706          	jreq	L1012
5537                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5539  001f 72145251      	bset	21073,#2
5541  0023 2004          	jra	L3012
5542  0025               L1012:
5543                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5545  0025 72155251      	bres	21073,#2
5546  0029               L3012:
5547                     ; 1175 }
5550  0029 84            	pop	a
5551  002a 81            	ret
5588                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5588                     ; 1184 {
5589                     .text:	section	.text,new
5590  0000               _TIM1_CCPreloadControl:
5592  0000 88            	push	a
5593       00000000      OFST:	set	0
5596                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5598  0001 4d            	tnz	a
5599  0002 2704          	jreq	L657
5600  0004 a101          	cp	a,#1
5601  0006 2603          	jrne	L457
5602  0008               L657:
5603  0008 4f            	clr	a
5604  0009 2010          	jra	L067
5605  000b               L457:
5606  000b ae04a2        	ldw	x,#1186
5607  000e 89            	pushw	x
5608  000f ae0000        	ldw	x,#0
5609  0012 89            	pushw	x
5610  0013 ae0000        	ldw	x,#L101
5611  0016 cd0000        	call	_assert_failed
5613  0019 5b04          	addw	sp,#4
5614  001b               L067:
5615                     ; 1189   if (NewState != DISABLE)
5617  001b 0d01          	tnz	(OFST+1,sp)
5618  001d 2706          	jreq	L3212
5619                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5621  001f 72105251      	bset	21073,#0
5623  0023 2004          	jra	L5212
5624  0025               L3212:
5625                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5627  0025 72115251      	bres	21073,#0
5628  0029               L5212:
5629                     ; 1197 }
5632  0029 84            	pop	a
5633  002a 81            	ret
5670                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5670                     ; 1206 {
5671                     .text:	section	.text,new
5672  0000               _TIM1_OC1PreloadConfig:
5674  0000 88            	push	a
5675       00000000      OFST:	set	0
5678                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5680  0001 4d            	tnz	a
5681  0002 2704          	jreq	L667
5682  0004 a101          	cp	a,#1
5683  0006 2603          	jrne	L467
5684  0008               L667:
5685  0008 4f            	clr	a
5686  0009 2010          	jra	L077
5687  000b               L467:
5688  000b ae04b8        	ldw	x,#1208
5689  000e 89            	pushw	x
5690  000f ae0000        	ldw	x,#0
5691  0012 89            	pushw	x
5692  0013 ae0000        	ldw	x,#L101
5693  0016 cd0000        	call	_assert_failed
5695  0019 5b04          	addw	sp,#4
5696  001b               L077:
5697                     ; 1211   if (NewState != DISABLE)
5699  001b 0d01          	tnz	(OFST+1,sp)
5700  001d 2706          	jreq	L5412
5701                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5703  001f 72165258      	bset	21080,#3
5705  0023 2004          	jra	L7412
5706  0025               L5412:
5707                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5709  0025 72175258      	bres	21080,#3
5710  0029               L7412:
5711                     ; 1219 }
5714  0029 84            	pop	a
5715  002a 81            	ret
5752                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5752                     ; 1228 {
5753                     .text:	section	.text,new
5754  0000               _TIM1_OC2PreloadConfig:
5756  0000 88            	push	a
5757       00000000      OFST:	set	0
5760                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5762  0001 4d            	tnz	a
5763  0002 2704          	jreq	L677
5764  0004 a101          	cp	a,#1
5765  0006 2603          	jrne	L477
5766  0008               L677:
5767  0008 4f            	clr	a
5768  0009 2010          	jra	L0001
5769  000b               L477:
5770  000b ae04ce        	ldw	x,#1230
5771  000e 89            	pushw	x
5772  000f ae0000        	ldw	x,#0
5773  0012 89            	pushw	x
5774  0013 ae0000        	ldw	x,#L101
5775  0016 cd0000        	call	_assert_failed
5777  0019 5b04          	addw	sp,#4
5778  001b               L0001:
5779                     ; 1233   if (NewState != DISABLE)
5781  001b 0d01          	tnz	(OFST+1,sp)
5782  001d 2706          	jreq	L7612
5783                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5785  001f 72165259      	bset	21081,#3
5787  0023 2004          	jra	L1712
5788  0025               L7612:
5789                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5791  0025 72175259      	bres	21081,#3
5792  0029               L1712:
5793                     ; 1241 }
5796  0029 84            	pop	a
5797  002a 81            	ret
5834                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5834                     ; 1250 {
5835                     .text:	section	.text,new
5836  0000               _TIM1_OC3PreloadConfig:
5838  0000 88            	push	a
5839       00000000      OFST:	set	0
5842                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5844  0001 4d            	tnz	a
5845  0002 2704          	jreq	L6001
5846  0004 a101          	cp	a,#1
5847  0006 2603          	jrne	L4001
5848  0008               L6001:
5849  0008 4f            	clr	a
5850  0009 2010          	jra	L0101
5851  000b               L4001:
5852  000b ae04e4        	ldw	x,#1252
5853  000e 89            	pushw	x
5854  000f ae0000        	ldw	x,#0
5855  0012 89            	pushw	x
5856  0013 ae0000        	ldw	x,#L101
5857  0016 cd0000        	call	_assert_failed
5859  0019 5b04          	addw	sp,#4
5860  001b               L0101:
5861                     ; 1255   if (NewState != DISABLE)
5863  001b 0d01          	tnz	(OFST+1,sp)
5864  001d 2706          	jreq	L1122
5865                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5867  001f 7216525a      	bset	21082,#3
5869  0023 2004          	jra	L3122
5870  0025               L1122:
5871                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5873  0025 7217525a      	bres	21082,#3
5874  0029               L3122:
5875                     ; 1263 }
5878  0029 84            	pop	a
5879  002a 81            	ret
5916                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5916                     ; 1272 {
5917                     .text:	section	.text,new
5918  0000               _TIM1_OC4PreloadConfig:
5920  0000 88            	push	a
5921       00000000      OFST:	set	0
5924                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5926  0001 4d            	tnz	a
5927  0002 2704          	jreq	L6101
5928  0004 a101          	cp	a,#1
5929  0006 2603          	jrne	L4101
5930  0008               L6101:
5931  0008 4f            	clr	a
5932  0009 2010          	jra	L0201
5933  000b               L4101:
5934  000b ae04fa        	ldw	x,#1274
5935  000e 89            	pushw	x
5936  000f ae0000        	ldw	x,#0
5937  0012 89            	pushw	x
5938  0013 ae0000        	ldw	x,#L101
5939  0016 cd0000        	call	_assert_failed
5941  0019 5b04          	addw	sp,#4
5942  001b               L0201:
5943                     ; 1277   if (NewState != DISABLE)
5945  001b 0d01          	tnz	(OFST+1,sp)
5946  001d 2706          	jreq	L3322
5947                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5949  001f 7216525b      	bset	21083,#3
5951  0023 2004          	jra	L5322
5952  0025               L3322:
5953                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5955  0025 7217525b      	bres	21083,#3
5956  0029               L5322:
5957                     ; 1285 }
5960  0029 84            	pop	a
5961  002a 81            	ret
5997                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5997                     ; 1294 {
5998                     .text:	section	.text,new
5999  0000               _TIM1_OC1FastConfig:
6001  0000 88            	push	a
6002       00000000      OFST:	set	0
6005                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6007  0001 4d            	tnz	a
6008  0002 2704          	jreq	L6201
6009  0004 a101          	cp	a,#1
6010  0006 2603          	jrne	L4201
6011  0008               L6201:
6012  0008 4f            	clr	a
6013  0009 2010          	jra	L0301
6014  000b               L4201:
6015  000b ae0510        	ldw	x,#1296
6016  000e 89            	pushw	x
6017  000f ae0000        	ldw	x,#0
6018  0012 89            	pushw	x
6019  0013 ae0000        	ldw	x,#L101
6020  0016 cd0000        	call	_assert_failed
6022  0019 5b04          	addw	sp,#4
6023  001b               L0301:
6024                     ; 1299   if (NewState != DISABLE)
6026  001b 0d01          	tnz	(OFST+1,sp)
6027  001d 2706          	jreq	L5522
6028                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
6030  001f 72145258      	bset	21080,#2
6032  0023 2004          	jra	L7522
6033  0025               L5522:
6034                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6036  0025 72155258      	bres	21080,#2
6037  0029               L7522:
6038                     ; 1307 }
6041  0029 84            	pop	a
6042  002a 81            	ret
6078                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6078                     ; 1316 {
6079                     .text:	section	.text,new
6080  0000               _TIM1_OC2FastConfig:
6082  0000 88            	push	a
6083       00000000      OFST:	set	0
6086                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6088  0001 4d            	tnz	a
6089  0002 2704          	jreq	L6301
6090  0004 a101          	cp	a,#1
6091  0006 2603          	jrne	L4301
6092  0008               L6301:
6093  0008 4f            	clr	a
6094  0009 2010          	jra	L0401
6095  000b               L4301:
6096  000b ae0526        	ldw	x,#1318
6097  000e 89            	pushw	x
6098  000f ae0000        	ldw	x,#0
6099  0012 89            	pushw	x
6100  0013 ae0000        	ldw	x,#L101
6101  0016 cd0000        	call	_assert_failed
6103  0019 5b04          	addw	sp,#4
6104  001b               L0401:
6105                     ; 1321   if (NewState != DISABLE)
6107  001b 0d01          	tnz	(OFST+1,sp)
6108  001d 2706          	jreq	L7722
6109                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6111  001f 72145259      	bset	21081,#2
6113  0023 2004          	jra	L1032
6114  0025               L7722:
6115                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6117  0025 72155259      	bres	21081,#2
6118  0029               L1032:
6119                     ; 1329 }
6122  0029 84            	pop	a
6123  002a 81            	ret
6159                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6159                     ; 1338 {
6160                     .text:	section	.text,new
6161  0000               _TIM1_OC3FastConfig:
6163  0000 88            	push	a
6164       00000000      OFST:	set	0
6167                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6169  0001 4d            	tnz	a
6170  0002 2704          	jreq	L6401
6171  0004 a101          	cp	a,#1
6172  0006 2603          	jrne	L4401
6173  0008               L6401:
6174  0008 4f            	clr	a
6175  0009 2010          	jra	L0501
6176  000b               L4401:
6177  000b ae053c        	ldw	x,#1340
6178  000e 89            	pushw	x
6179  000f ae0000        	ldw	x,#0
6180  0012 89            	pushw	x
6181  0013 ae0000        	ldw	x,#L101
6182  0016 cd0000        	call	_assert_failed
6184  0019 5b04          	addw	sp,#4
6185  001b               L0501:
6186                     ; 1343   if (NewState != DISABLE)
6188  001b 0d01          	tnz	(OFST+1,sp)
6189  001d 2706          	jreq	L1232
6190                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6192  001f 7214525a      	bset	21082,#2
6194  0023 2004          	jra	L3232
6195  0025               L1232:
6196                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6198  0025 7215525a      	bres	21082,#2
6199  0029               L3232:
6200                     ; 1351 }
6203  0029 84            	pop	a
6204  002a 81            	ret
6240                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6240                     ; 1360 {
6241                     .text:	section	.text,new
6242  0000               _TIM1_OC4FastConfig:
6244  0000 88            	push	a
6245       00000000      OFST:	set	0
6248                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6250  0001 4d            	tnz	a
6251  0002 2704          	jreq	L6501
6252  0004 a101          	cp	a,#1
6253  0006 2603          	jrne	L4501
6254  0008               L6501:
6255  0008 4f            	clr	a
6256  0009 2010          	jra	L0601
6257  000b               L4501:
6258  000b ae0552        	ldw	x,#1362
6259  000e 89            	pushw	x
6260  000f ae0000        	ldw	x,#0
6261  0012 89            	pushw	x
6262  0013 ae0000        	ldw	x,#L101
6263  0016 cd0000        	call	_assert_failed
6265  0019 5b04          	addw	sp,#4
6266  001b               L0601:
6267                     ; 1365   if (NewState != DISABLE)
6269  001b 0d01          	tnz	(OFST+1,sp)
6270  001d 2706          	jreq	L3432
6271                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6273  001f 7214525b      	bset	21083,#2
6275  0023 2004          	jra	L5432
6276  0025               L3432:
6277                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6279  0025 7215525b      	bres	21083,#2
6280  0029               L5432:
6281                     ; 1373 }
6284  0029 84            	pop	a
6285  002a 81            	ret
6391                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6391                     ; 1390 {
6392                     .text:	section	.text,new
6393  0000               _TIM1_GenerateEvent:
6395  0000 88            	push	a
6396       00000000      OFST:	set	0
6399                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6401  0001 4d            	tnz	a
6402  0002 2703          	jreq	L4601
6403  0004 4f            	clr	a
6404  0005 2010          	jra	L6601
6405  0007               L4601:
6406  0007 ae0570        	ldw	x,#1392
6407  000a 89            	pushw	x
6408  000b ae0000        	ldw	x,#0
6409  000e 89            	pushw	x
6410  000f ae0000        	ldw	x,#L101
6411  0012 cd0000        	call	_assert_failed
6413  0015 5b04          	addw	sp,#4
6414  0017               L6601:
6415                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6417  0017 7b01          	ld	a,(OFST+1,sp)
6418  0019 c75257        	ld	21079,a
6419                     ; 1396 }
6422  001c 84            	pop	a
6423  001d 81            	ret
6460                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6460                     ; 1407 {
6461                     .text:	section	.text,new
6462  0000               _TIM1_OC1PolarityConfig:
6464  0000 88            	push	a
6465       00000000      OFST:	set	0
6468                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6470  0001 4d            	tnz	a
6471  0002 2704          	jreq	L4701
6472  0004 a122          	cp	a,#34
6473  0006 2603          	jrne	L2701
6474  0008               L4701:
6475  0008 4f            	clr	a
6476  0009 2010          	jra	L6701
6477  000b               L2701:
6478  000b ae0581        	ldw	x,#1409
6479  000e 89            	pushw	x
6480  000f ae0000        	ldw	x,#0
6481  0012 89            	pushw	x
6482  0013 ae0000        	ldw	x,#L101
6483  0016 cd0000        	call	_assert_failed
6485  0019 5b04          	addw	sp,#4
6486  001b               L6701:
6487                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6489  001b 0d01          	tnz	(OFST+1,sp)
6490  001d 2706          	jreq	L7242
6491                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6493  001f 7212525c      	bset	21084,#1
6495  0023 2004          	jra	L1342
6496  0025               L7242:
6497                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6499  0025 7213525c      	bres	21084,#1
6500  0029               L1342:
6501                     ; 1420 }
6504  0029 84            	pop	a
6505  002a 81            	ret
6542                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6542                     ; 1431 {
6543                     .text:	section	.text,new
6544  0000               _TIM1_OC1NPolarityConfig:
6546  0000 88            	push	a
6547       00000000      OFST:	set	0
6550                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6552  0001 4d            	tnz	a
6553  0002 2704          	jreq	L4011
6554  0004 a188          	cp	a,#136
6555  0006 2603          	jrne	L2011
6556  0008               L4011:
6557  0008 4f            	clr	a
6558  0009 2010          	jra	L6011
6559  000b               L2011:
6560  000b ae0599        	ldw	x,#1433
6561  000e 89            	pushw	x
6562  000f ae0000        	ldw	x,#0
6563  0012 89            	pushw	x
6564  0013 ae0000        	ldw	x,#L101
6565  0016 cd0000        	call	_assert_failed
6567  0019 5b04          	addw	sp,#4
6568  001b               L6011:
6569                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6571  001b 0d01          	tnz	(OFST+1,sp)
6572  001d 2706          	jreq	L1542
6573                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6575  001f 7216525c      	bset	21084,#3
6577  0023 2004          	jra	L3542
6578  0025               L1542:
6579                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6581  0025 7217525c      	bres	21084,#3
6582  0029               L3542:
6583                     ; 1444 }
6586  0029 84            	pop	a
6587  002a 81            	ret
6624                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6624                     ; 1455 {
6625                     .text:	section	.text,new
6626  0000               _TIM1_OC2PolarityConfig:
6628  0000 88            	push	a
6629       00000000      OFST:	set	0
6632                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6634  0001 4d            	tnz	a
6635  0002 2704          	jreq	L4111
6636  0004 a122          	cp	a,#34
6637  0006 2603          	jrne	L2111
6638  0008               L4111:
6639  0008 4f            	clr	a
6640  0009 2010          	jra	L6111
6641  000b               L2111:
6642  000b ae05b1        	ldw	x,#1457
6643  000e 89            	pushw	x
6644  000f ae0000        	ldw	x,#0
6645  0012 89            	pushw	x
6646  0013 ae0000        	ldw	x,#L101
6647  0016 cd0000        	call	_assert_failed
6649  0019 5b04          	addw	sp,#4
6650  001b               L6111:
6651                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6653  001b 0d01          	tnz	(OFST+1,sp)
6654  001d 2706          	jreq	L3742
6655                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6657  001f 721a525c      	bset	21084,#5
6659  0023 2004          	jra	L5742
6660  0025               L3742:
6661                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6663  0025 721b525c      	bres	21084,#5
6664  0029               L5742:
6665                     ; 1468 }
6668  0029 84            	pop	a
6669  002a 81            	ret
6706                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6706                     ; 1479 {
6707                     .text:	section	.text,new
6708  0000               _TIM1_OC2NPolarityConfig:
6710  0000 88            	push	a
6711       00000000      OFST:	set	0
6714                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6716  0001 4d            	tnz	a
6717  0002 2704          	jreq	L4211
6718  0004 a188          	cp	a,#136
6719  0006 2603          	jrne	L2211
6720  0008               L4211:
6721  0008 4f            	clr	a
6722  0009 2010          	jra	L6211
6723  000b               L2211:
6724  000b ae05c9        	ldw	x,#1481
6725  000e 89            	pushw	x
6726  000f ae0000        	ldw	x,#0
6727  0012 89            	pushw	x
6728  0013 ae0000        	ldw	x,#L101
6729  0016 cd0000        	call	_assert_failed
6731  0019 5b04          	addw	sp,#4
6732  001b               L6211:
6733                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6735  001b 0d01          	tnz	(OFST+1,sp)
6736  001d 2706          	jreq	L5152
6737                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6739  001f 721e525c      	bset	21084,#7
6741  0023 2004          	jra	L7152
6742  0025               L5152:
6743                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6745  0025 721f525c      	bres	21084,#7
6746  0029               L7152:
6747                     ; 1492 }
6750  0029 84            	pop	a
6751  002a 81            	ret
6788                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6788                     ; 1503 {
6789                     .text:	section	.text,new
6790  0000               _TIM1_OC3PolarityConfig:
6792  0000 88            	push	a
6793       00000000      OFST:	set	0
6796                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6798  0001 4d            	tnz	a
6799  0002 2704          	jreq	L4311
6800  0004 a122          	cp	a,#34
6801  0006 2603          	jrne	L2311
6802  0008               L4311:
6803  0008 4f            	clr	a
6804  0009 2010          	jra	L6311
6805  000b               L2311:
6806  000b ae05e1        	ldw	x,#1505
6807  000e 89            	pushw	x
6808  000f ae0000        	ldw	x,#0
6809  0012 89            	pushw	x
6810  0013 ae0000        	ldw	x,#L101
6811  0016 cd0000        	call	_assert_failed
6813  0019 5b04          	addw	sp,#4
6814  001b               L6311:
6815                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6817  001b 0d01          	tnz	(OFST+1,sp)
6818  001d 2706          	jreq	L7352
6819                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6821  001f 7212525d      	bset	21085,#1
6823  0023 2004          	jra	L1452
6824  0025               L7352:
6825                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6827  0025 7213525d      	bres	21085,#1
6828  0029               L1452:
6829                     ; 1516 }
6832  0029 84            	pop	a
6833  002a 81            	ret
6870                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6870                     ; 1528 {
6871                     .text:	section	.text,new
6872  0000               _TIM1_OC3NPolarityConfig:
6874  0000 88            	push	a
6875       00000000      OFST:	set	0
6878                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6880  0001 4d            	tnz	a
6881  0002 2704          	jreq	L4411
6882  0004 a188          	cp	a,#136
6883  0006 2603          	jrne	L2411
6884  0008               L4411:
6885  0008 4f            	clr	a
6886  0009 2010          	jra	L6411
6887  000b               L2411:
6888  000b ae05fa        	ldw	x,#1530
6889  000e 89            	pushw	x
6890  000f ae0000        	ldw	x,#0
6891  0012 89            	pushw	x
6892  0013 ae0000        	ldw	x,#L101
6893  0016 cd0000        	call	_assert_failed
6895  0019 5b04          	addw	sp,#4
6896  001b               L6411:
6897                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6899  001b 0d01          	tnz	(OFST+1,sp)
6900  001d 2706          	jreq	L1652
6901                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6903  001f 7216525d      	bset	21085,#3
6905  0023 2004          	jra	L3652
6906  0025               L1652:
6907                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6909  0025 7217525d      	bres	21085,#3
6910  0029               L3652:
6911                     ; 1541 }
6914  0029 84            	pop	a
6915  002a 81            	ret
6952                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6952                     ; 1552 {
6953                     .text:	section	.text,new
6954  0000               _TIM1_OC4PolarityConfig:
6956  0000 88            	push	a
6957       00000000      OFST:	set	0
6960                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6962  0001 4d            	tnz	a
6963  0002 2704          	jreq	L4511
6964  0004 a122          	cp	a,#34
6965  0006 2603          	jrne	L2511
6966  0008               L4511:
6967  0008 4f            	clr	a
6968  0009 2010          	jra	L6511
6969  000b               L2511:
6970  000b ae0612        	ldw	x,#1554
6971  000e 89            	pushw	x
6972  000f ae0000        	ldw	x,#0
6973  0012 89            	pushw	x
6974  0013 ae0000        	ldw	x,#L101
6975  0016 cd0000        	call	_assert_failed
6977  0019 5b04          	addw	sp,#4
6978  001b               L6511:
6979                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6981  001b 0d01          	tnz	(OFST+1,sp)
6982  001d 2706          	jreq	L3062
6983                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6985  001f 721a525d      	bset	21085,#5
6987  0023 2004          	jra	L5062
6988  0025               L3062:
6989                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6991  0025 721b525d      	bres	21085,#5
6992  0029               L5062:
6993                     ; 1565 }
6996  0029 84            	pop	a
6997  002a 81            	ret
7043                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7043                     ; 1580 {
7044                     .text:	section	.text,new
7045  0000               _TIM1_CCxCmd:
7047  0000 89            	pushw	x
7048       00000000      OFST:	set	0
7051                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7053  0001 9e            	ld	a,xh
7054  0002 4d            	tnz	a
7055  0003 270f          	jreq	L4611
7056  0005 9e            	ld	a,xh
7057  0006 a101          	cp	a,#1
7058  0008 270a          	jreq	L4611
7059  000a 9e            	ld	a,xh
7060  000b a102          	cp	a,#2
7061  000d 2705          	jreq	L4611
7062  000f 9e            	ld	a,xh
7063  0010 a103          	cp	a,#3
7064  0012 2603          	jrne	L2611
7065  0014               L4611:
7066  0014 4f            	clr	a
7067  0015 2010          	jra	L6611
7068  0017               L2611:
7069  0017 ae062e        	ldw	x,#1582
7070  001a 89            	pushw	x
7071  001b ae0000        	ldw	x,#0
7072  001e 89            	pushw	x
7073  001f ae0000        	ldw	x,#L101
7074  0022 cd0000        	call	_assert_failed
7076  0025 5b04          	addw	sp,#4
7077  0027               L6611:
7078                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7080  0027 0d02          	tnz	(OFST+2,sp)
7081  0029 2706          	jreq	L2711
7082  002b 7b02          	ld	a,(OFST+2,sp)
7083  002d a101          	cp	a,#1
7084  002f 2603          	jrne	L0711
7085  0031               L2711:
7086  0031 4f            	clr	a
7087  0032 2010          	jra	L4711
7088  0034               L0711:
7089  0034 ae062f        	ldw	x,#1583
7090  0037 89            	pushw	x
7091  0038 ae0000        	ldw	x,#0
7092  003b 89            	pushw	x
7093  003c ae0000        	ldw	x,#L101
7094  003f cd0000        	call	_assert_failed
7096  0042 5b04          	addw	sp,#4
7097  0044               L4711:
7098                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7100  0044 0d01          	tnz	(OFST+1,sp)
7101  0046 2610          	jrne	L1362
7102                     ; 1588     if (NewState != DISABLE)
7104  0048 0d02          	tnz	(OFST+2,sp)
7105  004a 2706          	jreq	L3362
7106                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7108  004c 7210525c      	bset	21084,#0
7110  0050 2040          	jra	L7362
7111  0052               L3362:
7112                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7114  0052 7211525c      	bres	21084,#0
7115  0056 203a          	jra	L7362
7116  0058               L1362:
7117                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7119  0058 7b01          	ld	a,(OFST+1,sp)
7120  005a a101          	cp	a,#1
7121  005c 2610          	jrne	L1462
7122                     ; 1601     if (NewState != DISABLE)
7124  005e 0d02          	tnz	(OFST+2,sp)
7125  0060 2706          	jreq	L3462
7126                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7128  0062 7218525c      	bset	21084,#4
7130  0066 202a          	jra	L7362
7131  0068               L3462:
7132                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7134  0068 7219525c      	bres	21084,#4
7135  006c 2024          	jra	L7362
7136  006e               L1462:
7137                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7139  006e 7b01          	ld	a,(OFST+1,sp)
7140  0070 a102          	cp	a,#2
7141  0072 2610          	jrne	L1562
7142                     ; 1613     if (NewState != DISABLE)
7144  0074 0d02          	tnz	(OFST+2,sp)
7145  0076 2706          	jreq	L3562
7146                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7148  0078 7210525d      	bset	21085,#0
7150  007c 2014          	jra	L7362
7151  007e               L3562:
7152                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7154  007e 7211525d      	bres	21085,#0
7155  0082 200e          	jra	L7362
7156  0084               L1562:
7157                     ; 1625     if (NewState != DISABLE)
7159  0084 0d02          	tnz	(OFST+2,sp)
7160  0086 2706          	jreq	L1662
7161                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7163  0088 7218525d      	bset	21085,#4
7165  008c 2004          	jra	L7362
7166  008e               L1662:
7167                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7169  008e 7219525d      	bres	21085,#4
7170  0092               L7362:
7171                     ; 1634 }
7174  0092 85            	popw	x
7175  0093 81            	ret
7221                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7221                     ; 1648 {
7222                     .text:	section	.text,new
7223  0000               _TIM1_CCxNCmd:
7225  0000 89            	pushw	x
7226       00000000      OFST:	set	0
7229                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7231  0001 9e            	ld	a,xh
7232  0002 4d            	tnz	a
7233  0003 270a          	jreq	L2021
7234  0005 9e            	ld	a,xh
7235  0006 a101          	cp	a,#1
7236  0008 2705          	jreq	L2021
7237  000a 9e            	ld	a,xh
7238  000b a102          	cp	a,#2
7239  000d 2603          	jrne	L0021
7240  000f               L2021:
7241  000f 4f            	clr	a
7242  0010 2010          	jra	L4021
7243  0012               L0021:
7244  0012 ae0672        	ldw	x,#1650
7245  0015 89            	pushw	x
7246  0016 ae0000        	ldw	x,#0
7247  0019 89            	pushw	x
7248  001a ae0000        	ldw	x,#L101
7249  001d cd0000        	call	_assert_failed
7251  0020 5b04          	addw	sp,#4
7252  0022               L4021:
7253                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7255  0022 0d02          	tnz	(OFST+2,sp)
7256  0024 2706          	jreq	L0121
7257  0026 7b02          	ld	a,(OFST+2,sp)
7258  0028 a101          	cp	a,#1
7259  002a 2603          	jrne	L6021
7260  002c               L0121:
7261  002c 4f            	clr	a
7262  002d 2010          	jra	L2121
7263  002f               L6021:
7264  002f ae0673        	ldw	x,#1651
7265  0032 89            	pushw	x
7266  0033 ae0000        	ldw	x,#0
7267  0036 89            	pushw	x
7268  0037 ae0000        	ldw	x,#L101
7269  003a cd0000        	call	_assert_failed
7271  003d 5b04          	addw	sp,#4
7272  003f               L2121:
7273                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7275  003f 0d01          	tnz	(OFST+1,sp)
7276  0041 2610          	jrne	L7072
7277                     ; 1656     if (NewState != DISABLE)
7279  0043 0d02          	tnz	(OFST+2,sp)
7280  0045 2706          	jreq	L1172
7281                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7283  0047 7214525c      	bset	21084,#2
7285  004b 202a          	jra	L5172
7286  004d               L1172:
7287                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7289  004d 7215525c      	bres	21084,#2
7290  0051 2024          	jra	L5172
7291  0053               L7072:
7292                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7294  0053 7b01          	ld	a,(OFST+1,sp)
7295  0055 a101          	cp	a,#1
7296  0057 2610          	jrne	L7172
7297                     ; 1668     if (NewState != DISABLE)
7299  0059 0d02          	tnz	(OFST+2,sp)
7300  005b 2706          	jreq	L1272
7301                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7303  005d 721c525c      	bset	21084,#6
7305  0061 2014          	jra	L5172
7306  0063               L1272:
7307                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7309  0063 721d525c      	bres	21084,#6
7310  0067 200e          	jra	L5172
7311  0069               L7172:
7312                     ; 1680     if (NewState != DISABLE)
7314  0069 0d02          	tnz	(OFST+2,sp)
7315  006b 2706          	jreq	L7272
7316                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7318  006d 7214525d      	bset	21085,#2
7320  0071 2004          	jra	L5172
7321  0073               L7272:
7322                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7324  0073 7215525d      	bres	21085,#2
7325  0077               L5172:
7326                     ; 1689 }
7329  0077 85            	popw	x
7330  0078 81            	ret
7376                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7376                     ; 1713 {
7377                     .text:	section	.text,new
7378  0000               _TIM1_SelectOCxM:
7380  0000 89            	pushw	x
7381       00000000      OFST:	set	0
7384                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7386  0001 9e            	ld	a,xh
7387  0002 4d            	tnz	a
7388  0003 270f          	jreq	L0221
7389  0005 9e            	ld	a,xh
7390  0006 a101          	cp	a,#1
7391  0008 270a          	jreq	L0221
7392  000a 9e            	ld	a,xh
7393  000b a102          	cp	a,#2
7394  000d 2705          	jreq	L0221
7395  000f 9e            	ld	a,xh
7396  0010 a103          	cp	a,#3
7397  0012 2603          	jrne	L6121
7398  0014               L0221:
7399  0014 4f            	clr	a
7400  0015 2010          	jra	L2221
7401  0017               L6121:
7402  0017 ae06b3        	ldw	x,#1715
7403  001a 89            	pushw	x
7404  001b ae0000        	ldw	x,#0
7405  001e 89            	pushw	x
7406  001f ae0000        	ldw	x,#L101
7407  0022 cd0000        	call	_assert_failed
7409  0025 5b04          	addw	sp,#4
7410  0027               L2221:
7411                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7413  0027 0d02          	tnz	(OFST+2,sp)
7414  0029 272a          	jreq	L6221
7415  002b 7b02          	ld	a,(OFST+2,sp)
7416  002d a110          	cp	a,#16
7417  002f 2724          	jreq	L6221
7418  0031 7b02          	ld	a,(OFST+2,sp)
7419  0033 a120          	cp	a,#32
7420  0035 271e          	jreq	L6221
7421  0037 7b02          	ld	a,(OFST+2,sp)
7422  0039 a130          	cp	a,#48
7423  003b 2718          	jreq	L6221
7424  003d 7b02          	ld	a,(OFST+2,sp)
7425  003f a160          	cp	a,#96
7426  0041 2712          	jreq	L6221
7427  0043 7b02          	ld	a,(OFST+2,sp)
7428  0045 a170          	cp	a,#112
7429  0047 270c          	jreq	L6221
7430  0049 7b02          	ld	a,(OFST+2,sp)
7431  004b a150          	cp	a,#80
7432  004d 2706          	jreq	L6221
7433  004f 7b02          	ld	a,(OFST+2,sp)
7434  0051 a140          	cp	a,#64
7435  0053 2603          	jrne	L4221
7436  0055               L6221:
7437  0055 4f            	clr	a
7438  0056 2010          	jra	L0321
7439  0058               L4221:
7440  0058 ae06b4        	ldw	x,#1716
7441  005b 89            	pushw	x
7442  005c ae0000        	ldw	x,#0
7443  005f 89            	pushw	x
7444  0060 ae0000        	ldw	x,#L101
7445  0063 cd0000        	call	_assert_failed
7447  0066 5b04          	addw	sp,#4
7448  0068               L0321:
7449                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7451  0068 0d01          	tnz	(OFST+1,sp)
7452  006a 2610          	jrne	L5572
7453                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7455  006c 7211525c      	bres	21084,#0
7456                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7456                     ; 1725                             | (uint8_t)TIM1_OCMode);
7458  0070 c65258        	ld	a,21080
7459  0073 a48f          	and	a,#143
7460  0075 1a02          	or	a,(OFST+2,sp)
7461  0077 c75258        	ld	21080,a
7463  007a 203a          	jra	L7572
7464  007c               L5572:
7465                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7467  007c 7b01          	ld	a,(OFST+1,sp)
7468  007e a101          	cp	a,#1
7469  0080 2610          	jrne	L1672
7470                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7472  0082 7219525c      	bres	21084,#4
7473                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7473                     ; 1734                             | (uint8_t)TIM1_OCMode);
7475  0086 c65259        	ld	a,21081
7476  0089 a48f          	and	a,#143
7477  008b 1a02          	or	a,(OFST+2,sp)
7478  008d c75259        	ld	21081,a
7480  0090 2024          	jra	L7572
7481  0092               L1672:
7482                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7484  0092 7b01          	ld	a,(OFST+1,sp)
7485  0094 a102          	cp	a,#2
7486  0096 2610          	jrne	L5672
7487                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7489  0098 7211525d      	bres	21085,#0
7490                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7490                     ; 1743                             | (uint8_t)TIM1_OCMode);
7492  009c c6525a        	ld	a,21082
7493  009f a48f          	and	a,#143
7494  00a1 1a02          	or	a,(OFST+2,sp)
7495  00a3 c7525a        	ld	21082,a
7497  00a6 200e          	jra	L7572
7498  00a8               L5672:
7499                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7501  00a8 7219525d      	bres	21085,#4
7502                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7502                     ; 1752                             | (uint8_t)TIM1_OCMode);
7504  00ac c6525b        	ld	a,21083
7505  00af a48f          	and	a,#143
7506  00b1 1a02          	or	a,(OFST+2,sp)
7507  00b3 c7525b        	ld	21083,a
7508  00b6               L7572:
7509                     ; 1754 }
7512  00b6 85            	popw	x
7513  00b7 81            	ret
7547                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7547                     ; 1763 {
7548                     .text:	section	.text,new
7549  0000               _TIM1_SetCounter:
7553                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7555  0000 9e            	ld	a,xh
7556  0001 c7525e        	ld	21086,a
7557                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7559  0004 9f            	ld	a,xl
7560  0005 c7525f        	ld	21087,a
7561                     ; 1767 }
7564  0008 81            	ret
7598                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7598                     ; 1776 {
7599                     .text:	section	.text,new
7600  0000               _TIM1_SetAutoreload:
7604                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7606  0000 9e            	ld	a,xh
7607  0001 c75262        	ld	21090,a
7608                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7610  0004 9f            	ld	a,xl
7611  0005 c75263        	ld	21091,a
7612                     ; 1780  }
7615  0008 81            	ret
7649                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7649                     ; 1789 {
7650                     .text:	section	.text,new
7651  0000               _TIM1_SetCompare1:
7655                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7657  0000 9e            	ld	a,xh
7658  0001 c75265        	ld	21093,a
7659                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7661  0004 9f            	ld	a,xl
7662  0005 c75266        	ld	21094,a
7663                     ; 1793 }
7666  0008 81            	ret
7700                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7700                     ; 1802 {
7701                     .text:	section	.text,new
7702  0000               _TIM1_SetCompare2:
7706                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7708  0000 9e            	ld	a,xh
7709  0001 c75267        	ld	21095,a
7710                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7712  0004 9f            	ld	a,xl
7713  0005 c75268        	ld	21096,a
7714                     ; 1806 }
7717  0008 81            	ret
7751                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7751                     ; 1815 {
7752                     .text:	section	.text,new
7753  0000               _TIM1_SetCompare3:
7757                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7759  0000 9e            	ld	a,xh
7760  0001 c75269        	ld	21097,a
7761                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7763  0004 9f            	ld	a,xl
7764  0005 c7526a        	ld	21098,a
7765                     ; 1819 }
7768  0008 81            	ret
7802                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7802                     ; 1828 {
7803                     .text:	section	.text,new
7804  0000               _TIM1_SetCompare4:
7808                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7810  0000 9e            	ld	a,xh
7811  0001 c7526b        	ld	21099,a
7812                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7814  0004 9f            	ld	a,xl
7815  0005 c7526c        	ld	21100,a
7816                     ; 1832 }
7819  0008 81            	ret
7856                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7856                     ; 1845 {
7857                     .text:	section	.text,new
7858  0000               _TIM1_SetIC1Prescaler:
7860  0000 88            	push	a
7861       00000000      OFST:	set	0
7864                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7866  0001 4d            	tnz	a
7867  0002 270c          	jreq	L2521
7868  0004 a104          	cp	a,#4
7869  0006 2708          	jreq	L2521
7870  0008 a108          	cp	a,#8
7871  000a 2704          	jreq	L2521
7872  000c a10c          	cp	a,#12
7873  000e 2603          	jrne	L0521
7874  0010               L2521:
7875  0010 4f            	clr	a
7876  0011 2010          	jra	L4521
7877  0013               L0521:
7878  0013 ae0737        	ldw	x,#1847
7879  0016 89            	pushw	x
7880  0017 ae0000        	ldw	x,#0
7881  001a 89            	pushw	x
7882  001b ae0000        	ldw	x,#L101
7883  001e cd0000        	call	_assert_failed
7885  0021 5b04          	addw	sp,#4
7886  0023               L4521:
7887                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7887                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7889  0023 c65258        	ld	a,21080
7890  0026 a4f3          	and	a,#243
7891  0028 1a01          	or	a,(OFST+1,sp)
7892  002a c75258        	ld	21080,a
7893                     ; 1852 }
7896  002d 84            	pop	a
7897  002e 81            	ret
7934                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7934                     ; 1865 {
7935                     .text:	section	.text,new
7936  0000               _TIM1_SetIC2Prescaler:
7938  0000 88            	push	a
7939       00000000      OFST:	set	0
7942                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7944  0001 4d            	tnz	a
7945  0002 270c          	jreq	L2621
7946  0004 a104          	cp	a,#4
7947  0006 2708          	jreq	L2621
7948  0008 a108          	cp	a,#8
7949  000a 2704          	jreq	L2621
7950  000c a10c          	cp	a,#12
7951  000e 2603          	jrne	L0621
7952  0010               L2621:
7953  0010 4f            	clr	a
7954  0011 2010          	jra	L4621
7955  0013               L0621:
7956  0013 ae074c        	ldw	x,#1868
7957  0016 89            	pushw	x
7958  0017 ae0000        	ldw	x,#0
7959  001a 89            	pushw	x
7960  001b ae0000        	ldw	x,#L101
7961  001e cd0000        	call	_assert_failed
7963  0021 5b04          	addw	sp,#4
7964  0023               L4621:
7965                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7965                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7967  0023 c65259        	ld	a,21081
7968  0026 a4f3          	and	a,#243
7969  0028 1a01          	or	a,(OFST+1,sp)
7970  002a c75259        	ld	21081,a
7971                     ; 1873 }
7974  002d 84            	pop	a
7975  002e 81            	ret
8012                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
8012                     ; 1886 {
8013                     .text:	section	.text,new
8014  0000               _TIM1_SetIC3Prescaler:
8016  0000 88            	push	a
8017       00000000      OFST:	set	0
8020                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
8022  0001 4d            	tnz	a
8023  0002 270c          	jreq	L2721
8024  0004 a104          	cp	a,#4
8025  0006 2708          	jreq	L2721
8026  0008 a108          	cp	a,#8
8027  000a 2704          	jreq	L2721
8028  000c a10c          	cp	a,#12
8029  000e 2603          	jrne	L0721
8030  0010               L2721:
8031  0010 4f            	clr	a
8032  0011 2010          	jra	L4721
8033  0013               L0721:
8034  0013 ae0761        	ldw	x,#1889
8035  0016 89            	pushw	x
8036  0017 ae0000        	ldw	x,#0
8037  001a 89            	pushw	x
8038  001b ae0000        	ldw	x,#L101
8039  001e cd0000        	call	_assert_failed
8041  0021 5b04          	addw	sp,#4
8042  0023               L4721:
8043                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
8043                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
8045  0023 c6525a        	ld	a,21082
8046  0026 a4f3          	and	a,#243
8047  0028 1a01          	or	a,(OFST+1,sp)
8048  002a c7525a        	ld	21082,a
8049                     ; 1894 }
8052  002d 84            	pop	a
8053  002e 81            	ret
8090                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8090                     ; 1907 {
8091                     .text:	section	.text,new
8092  0000               _TIM1_SetIC4Prescaler:
8094  0000 88            	push	a
8095       00000000      OFST:	set	0
8098                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8100  0001 4d            	tnz	a
8101  0002 270c          	jreq	L2031
8102  0004 a104          	cp	a,#4
8103  0006 2708          	jreq	L2031
8104  0008 a108          	cp	a,#8
8105  000a 2704          	jreq	L2031
8106  000c a10c          	cp	a,#12
8107  000e 2603          	jrne	L0031
8108  0010               L2031:
8109  0010 4f            	clr	a
8110  0011 2010          	jra	L4031
8111  0013               L0031:
8112  0013 ae0776        	ldw	x,#1910
8113  0016 89            	pushw	x
8114  0017 ae0000        	ldw	x,#0
8115  001a 89            	pushw	x
8116  001b ae0000        	ldw	x,#L101
8117  001e cd0000        	call	_assert_failed
8119  0021 5b04          	addw	sp,#4
8120  0023               L4031:
8121                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8121                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8123  0023 c6525b        	ld	a,21083
8124  0026 a4f3          	and	a,#243
8125  0028 1a01          	or	a,(OFST+1,sp)
8126  002a c7525b        	ld	21083,a
8127                     ; 1915 }
8130  002d 84            	pop	a
8131  002e 81            	ret
8183                     ; 1922 uint16_t TIM1_GetCapture1(void)
8183                     ; 1923 {
8184                     .text:	section	.text,new
8185  0000               _TIM1_GetCapture1:
8187  0000 5204          	subw	sp,#4
8188       00000004      OFST:	set	4
8191                     ; 1926   uint16_t tmpccr1 = 0;
8193                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8197                     ; 1929   tmpccr1h = TIM1->CCR1H;
8199  0002 c65265        	ld	a,21093
8200  0005 6b02          	ld	(OFST-2,sp),a
8202                     ; 1930   tmpccr1l = TIM1->CCR1L;
8204  0007 c65266        	ld	a,21094
8205  000a 6b01          	ld	(OFST-3,sp),a
8207                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8209  000c 7b01          	ld	a,(OFST-3,sp)
8210  000e 5f            	clrw	x
8211  000f 97            	ld	xl,a
8212  0010 1f03          	ldw	(OFST-1,sp),x
8214                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8216  0012 7b02          	ld	a,(OFST-2,sp)
8217  0014 5f            	clrw	x
8218  0015 97            	ld	xl,a
8219  0016 4f            	clr	a
8220  0017 02            	rlwa	x,a
8221  0018 01            	rrwa	x,a
8222  0019 1a04          	or	a,(OFST+0,sp)
8223  001b 01            	rrwa	x,a
8224  001c 1a03          	or	a,(OFST-1,sp)
8225  001e 01            	rrwa	x,a
8226  001f 1f03          	ldw	(OFST-1,sp),x
8228                     ; 1935   return (uint16_t)tmpccr1;
8230  0021 1e03          	ldw	x,(OFST-1,sp)
8233  0023 5b04          	addw	sp,#4
8234  0025 81            	ret
8286                     ; 1943 uint16_t TIM1_GetCapture2(void)
8286                     ; 1944 {
8287                     .text:	section	.text,new
8288  0000               _TIM1_GetCapture2:
8290  0000 5204          	subw	sp,#4
8291       00000004      OFST:	set	4
8294                     ; 1947   uint16_t tmpccr2 = 0;
8296                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8300                     ; 1950   tmpccr2h = TIM1->CCR2H;
8302  0002 c65267        	ld	a,21095
8303  0005 6b02          	ld	(OFST-2,sp),a
8305                     ; 1951   tmpccr2l = TIM1->CCR2L;
8307  0007 c65268        	ld	a,21096
8308  000a 6b01          	ld	(OFST-3,sp),a
8310                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8312  000c 7b01          	ld	a,(OFST-3,sp)
8313  000e 5f            	clrw	x
8314  000f 97            	ld	xl,a
8315  0010 1f03          	ldw	(OFST-1,sp),x
8317                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8319  0012 7b02          	ld	a,(OFST-2,sp)
8320  0014 5f            	clrw	x
8321  0015 97            	ld	xl,a
8322  0016 4f            	clr	a
8323  0017 02            	rlwa	x,a
8324  0018 01            	rrwa	x,a
8325  0019 1a04          	or	a,(OFST+0,sp)
8326  001b 01            	rrwa	x,a
8327  001c 1a03          	or	a,(OFST-1,sp)
8328  001e 01            	rrwa	x,a
8329  001f 1f03          	ldw	(OFST-1,sp),x
8331                     ; 1956   return (uint16_t)tmpccr2;
8333  0021 1e03          	ldw	x,(OFST-1,sp)
8336  0023 5b04          	addw	sp,#4
8337  0025 81            	ret
8389                     ; 1964 uint16_t TIM1_GetCapture3(void)
8389                     ; 1965 {
8390                     .text:	section	.text,new
8391  0000               _TIM1_GetCapture3:
8393  0000 5204          	subw	sp,#4
8394       00000004      OFST:	set	4
8397                     ; 1967   uint16_t tmpccr3 = 0;
8399                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8403                     ; 1970   tmpccr3h = TIM1->CCR3H;
8405  0002 c65269        	ld	a,21097
8406  0005 6b02          	ld	(OFST-2,sp),a
8408                     ; 1971   tmpccr3l = TIM1->CCR3L;
8410  0007 c6526a        	ld	a,21098
8411  000a 6b01          	ld	(OFST-3,sp),a
8413                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8415  000c 7b01          	ld	a,(OFST-3,sp)
8416  000e 5f            	clrw	x
8417  000f 97            	ld	xl,a
8418  0010 1f03          	ldw	(OFST-1,sp),x
8420                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8422  0012 7b02          	ld	a,(OFST-2,sp)
8423  0014 5f            	clrw	x
8424  0015 97            	ld	xl,a
8425  0016 4f            	clr	a
8426  0017 02            	rlwa	x,a
8427  0018 01            	rrwa	x,a
8428  0019 1a04          	or	a,(OFST+0,sp)
8429  001b 01            	rrwa	x,a
8430  001c 1a03          	or	a,(OFST-1,sp)
8431  001e 01            	rrwa	x,a
8432  001f 1f03          	ldw	(OFST-1,sp),x
8434                     ; 1976   return (uint16_t)tmpccr3;
8436  0021 1e03          	ldw	x,(OFST-1,sp)
8439  0023 5b04          	addw	sp,#4
8440  0025 81            	ret
8492                     ; 1984 uint16_t TIM1_GetCapture4(void)
8492                     ; 1985 {
8493                     .text:	section	.text,new
8494  0000               _TIM1_GetCapture4:
8496  0000 5204          	subw	sp,#4
8497       00000004      OFST:	set	4
8500                     ; 1987   uint16_t tmpccr4 = 0;
8502                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8506                     ; 1990   tmpccr4h = TIM1->CCR4H;
8508  0002 c6526b        	ld	a,21099
8509  0005 6b02          	ld	(OFST-2,sp),a
8511                     ; 1991   tmpccr4l = TIM1->CCR4L;
8513  0007 c6526c        	ld	a,21100
8514  000a 6b01          	ld	(OFST-3,sp),a
8516                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8518  000c 7b01          	ld	a,(OFST-3,sp)
8519  000e 5f            	clrw	x
8520  000f 97            	ld	xl,a
8521  0010 1f03          	ldw	(OFST-1,sp),x
8523                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8525  0012 7b02          	ld	a,(OFST-2,sp)
8526  0014 5f            	clrw	x
8527  0015 97            	ld	xl,a
8528  0016 4f            	clr	a
8529  0017 02            	rlwa	x,a
8530  0018 01            	rrwa	x,a
8531  0019 1a04          	or	a,(OFST+0,sp)
8532  001b 01            	rrwa	x,a
8533  001c 1a03          	or	a,(OFST-1,sp)
8534  001e 01            	rrwa	x,a
8535  001f 1f03          	ldw	(OFST-1,sp),x
8537                     ; 1996   return (uint16_t)tmpccr4;
8539  0021 1e03          	ldw	x,(OFST-1,sp)
8542  0023 5b04          	addw	sp,#4
8543  0025 81            	ret
8577                     ; 2004 uint16_t TIM1_GetCounter(void)
8577                     ; 2005 {
8578                     .text:	section	.text,new
8579  0000               _TIM1_GetCounter:
8581  0000 89            	pushw	x
8582       00000002      OFST:	set	2
8585                     ; 2006   uint16_t tmpcntr = 0;
8587                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8589  0001 c6525e        	ld	a,21086
8590  0004 5f            	clrw	x
8591  0005 97            	ld	xl,a
8592  0006 4f            	clr	a
8593  0007 02            	rlwa	x,a
8594  0008 1f01          	ldw	(OFST-1,sp),x
8596                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8598  000a c6525f        	ld	a,21087
8599  000d 5f            	clrw	x
8600  000e 97            	ld	xl,a
8601  000f 01            	rrwa	x,a
8602  0010 1a02          	or	a,(OFST+0,sp)
8603  0012 01            	rrwa	x,a
8604  0013 1a01          	or	a,(OFST-1,sp)
8605  0015 01            	rrwa	x,a
8608  0016 5b02          	addw	sp,#2
8609  0018 81            	ret
8643                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8643                     ; 2020 {
8644                     .text:	section	.text,new
8645  0000               _TIM1_GetPrescaler:
8647  0000 89            	pushw	x
8648       00000002      OFST:	set	2
8651                     ; 2021   uint16_t temp = 0;
8653                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8655  0001 c65260        	ld	a,21088
8656  0004 5f            	clrw	x
8657  0005 97            	ld	xl,a
8658  0006 4f            	clr	a
8659  0007 02            	rlwa	x,a
8660  0008 1f01          	ldw	(OFST-1,sp),x
8662                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8664  000a c65261        	ld	a,21089
8665  000d 5f            	clrw	x
8666  000e 97            	ld	xl,a
8667  000f 01            	rrwa	x,a
8668  0010 1a02          	or	a,(OFST+0,sp)
8669  0012 01            	rrwa	x,a
8670  0013 1a01          	or	a,(OFST-1,sp)
8671  0015 01            	rrwa	x,a
8674  0016 5b02          	addw	sp,#2
8675  0018 81            	ret
8850                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8850                     ; 2048 {
8851                     .text:	section	.text,new
8852  0000               _TIM1_GetFlagStatus:
8854  0000 89            	pushw	x
8855  0001 89            	pushw	x
8856       00000002      OFST:	set	2
8859                     ; 2049   FlagStatus bitstatus = RESET;
8861                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8865                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8867  0002 a30001        	cpw	x,#1
8868  0005 2737          	jreq	L6231
8869  0007 a30002        	cpw	x,#2
8870  000a 2732          	jreq	L6231
8871  000c a30004        	cpw	x,#4
8872  000f 272d          	jreq	L6231
8873  0011 a30008        	cpw	x,#8
8874  0014 2728          	jreq	L6231
8875  0016 a30010        	cpw	x,#16
8876  0019 2723          	jreq	L6231
8877  001b a30020        	cpw	x,#32
8878  001e 271e          	jreq	L6231
8879  0020 a30040        	cpw	x,#64
8880  0023 2719          	jreq	L6231
8881  0025 a30080        	cpw	x,#128
8882  0028 2714          	jreq	L6231
8883  002a a30200        	cpw	x,#512
8884  002d 270f          	jreq	L6231
8885  002f a30400        	cpw	x,#1024
8886  0032 270a          	jreq	L6231
8887  0034 a30800        	cpw	x,#2048
8888  0037 2705          	jreq	L6231
8889  0039 a31000        	cpw	x,#4096
8890  003c 2603          	jrne	L4231
8891  003e               L6231:
8892  003e 4f            	clr	a
8893  003f 2010          	jra	L0331
8894  0041               L4231:
8895  0041 ae0805        	ldw	x,#2053
8896  0044 89            	pushw	x
8897  0045 ae0000        	ldw	x,#0
8898  0048 89            	pushw	x
8899  0049 ae0000        	ldw	x,#L101
8900  004c cd0000        	call	_assert_failed
8902  004f 5b04          	addw	sp,#4
8903  0051               L0331:
8904                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8906  0051 c65255        	ld	a,21077
8907  0054 1404          	and	a,(OFST+2,sp)
8908  0056 6b01          	ld	(OFST-1,sp),a
8910                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8912  0058 7b03          	ld	a,(OFST+1,sp)
8913  005a 6b02          	ld	(OFST+0,sp),a
8915                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8917  005c c65256        	ld	a,21078
8918  005f 1402          	and	a,(OFST+0,sp)
8919  0061 1a01          	or	a,(OFST-1,sp)
8920  0063 2706          	jreq	L7643
8921                     ; 2060     bitstatus = SET;
8923  0065 a601          	ld	a,#1
8924  0067 6b02          	ld	(OFST+0,sp),a
8927  0069 2002          	jra	L1743
8928  006b               L7643:
8929                     ; 2064     bitstatus = RESET;
8931  006b 0f02          	clr	(OFST+0,sp)
8933  006d               L1743:
8934                     ; 2066   return (FlagStatus)(bitstatus);
8936  006d 7b02          	ld	a,(OFST+0,sp)
8939  006f 5b04          	addw	sp,#4
8940  0071 81            	ret
8976                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8976                     ; 2088 {
8977                     .text:	section	.text,new
8978  0000               _TIM1_ClearFlag:
8980  0000 89            	pushw	x
8981       00000000      OFST:	set	0
8984                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8986  0001 01            	rrwa	x,a
8987  0002 9f            	ld	a,xl
8988  0003 a4e1          	and	a,#225
8989  0005 97            	ld	xl,a
8990  0006 4f            	clr	a
8991  0007 02            	rlwa	x,a
8992  0008 5d            	tnzw	x
8993  0009 2607          	jrne	L4331
8994  000b 1e01          	ldw	x,(OFST+1,sp)
8995  000d 2703          	jreq	L4331
8996  000f 4f            	clr	a
8997  0010 2010          	jra	L6331
8998  0012               L4331:
8999  0012 ae082a        	ldw	x,#2090
9000  0015 89            	pushw	x
9001  0016 ae0000        	ldw	x,#0
9002  0019 89            	pushw	x
9003  001a ae0000        	ldw	x,#L101
9004  001d cd0000        	call	_assert_failed
9006  0020 5b04          	addw	sp,#4
9007  0022               L6331:
9008                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
9010  0022 7b02          	ld	a,(OFST+2,sp)
9011  0024 43            	cpl	a
9012  0025 c75255        	ld	21077,a
9013                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
9013                     ; 2095                         (uint8_t)0x1E);
9015  0028 7b01          	ld	a,(OFST+1,sp)
9016  002a 43            	cpl	a
9017  002b a41e          	and	a,#30
9018  002d c75256        	ld	21078,a
9019                     ; 2096 }
9022  0030 85            	popw	x
9023  0031 81            	ret
9088                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9088                     ; 2113 {
9089                     .text:	section	.text,new
9090  0000               _TIM1_GetITStatus:
9092  0000 88            	push	a
9093  0001 89            	pushw	x
9094       00000002      OFST:	set	2
9097                     ; 2114   ITStatus bitstatus = RESET;
9099                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9103                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9105  0002 a101          	cp	a,#1
9106  0004 271c          	jreq	L4431
9107  0006 a102          	cp	a,#2
9108  0008 2718          	jreq	L4431
9109  000a a104          	cp	a,#4
9110  000c 2714          	jreq	L4431
9111  000e a108          	cp	a,#8
9112  0010 2710          	jreq	L4431
9113  0012 a110          	cp	a,#16
9114  0014 270c          	jreq	L4431
9115  0016 a120          	cp	a,#32
9116  0018 2708          	jreq	L4431
9117  001a a140          	cp	a,#64
9118  001c 2704          	jreq	L4431
9119  001e a180          	cp	a,#128
9120  0020 2603          	jrne	L2431
9121  0022               L4431:
9122  0022 4f            	clr	a
9123  0023 2010          	jra	L6431
9124  0025               L2431:
9125  0025 ae0846        	ldw	x,#2118
9126  0028 89            	pushw	x
9127  0029 ae0000        	ldw	x,#0
9128  002c 89            	pushw	x
9129  002d ae0000        	ldw	x,#L101
9130  0030 cd0000        	call	_assert_failed
9132  0033 5b04          	addw	sp,#4
9133  0035               L6431:
9134                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9136  0035 c65255        	ld	a,21077
9137  0038 1403          	and	a,(OFST+1,sp)
9138  003a 6b01          	ld	(OFST-1,sp),a
9140                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9142  003c c65254        	ld	a,21076
9143  003f 1403          	and	a,(OFST+1,sp)
9144  0041 6b02          	ld	(OFST+0,sp),a
9146                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9148  0043 0d01          	tnz	(OFST-1,sp)
9149  0045 270a          	jreq	L3453
9151  0047 0d02          	tnz	(OFST+0,sp)
9152  0049 2706          	jreq	L3453
9153                     ; 2126     bitstatus = SET;
9155  004b a601          	ld	a,#1
9156  004d 6b02          	ld	(OFST+0,sp),a
9159  004f 2002          	jra	L5453
9160  0051               L3453:
9161                     ; 2130     bitstatus = RESET;
9163  0051 0f02          	clr	(OFST+0,sp)
9165  0053               L5453:
9166                     ; 2132   return (ITStatus)(bitstatus);
9168  0053 7b02          	ld	a,(OFST+0,sp)
9171  0055 5b03          	addw	sp,#3
9172  0057 81            	ret
9209                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9209                     ; 2150 {
9210                     .text:	section	.text,new
9211  0000               _TIM1_ClearITPendingBit:
9213  0000 88            	push	a
9214       00000000      OFST:	set	0
9217                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9219  0001 4d            	tnz	a
9220  0002 2703          	jreq	L2531
9221  0004 4f            	clr	a
9222  0005 2010          	jra	L4531
9223  0007               L2531:
9224  0007 ae0868        	ldw	x,#2152
9225  000a 89            	pushw	x
9226  000b ae0000        	ldw	x,#0
9227  000e 89            	pushw	x
9228  000f ae0000        	ldw	x,#L101
9229  0012 cd0000        	call	_assert_failed
9231  0015 5b04          	addw	sp,#4
9232  0017               L4531:
9233                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9235  0017 7b01          	ld	a,(OFST+1,sp)
9236  0019 43            	cpl	a
9237  001a c75255        	ld	21077,a
9238                     ; 2156 }
9241  001d 84            	pop	a
9242  001e 81            	ret
9294                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9294                     ; 2175                        uint8_t TIM1_ICSelection,
9294                     ; 2176                        uint8_t TIM1_ICFilter)
9294                     ; 2177 {
9295                     .text:	section	.text,new
9296  0000               L3_TI1_Config:
9298  0000 89            	pushw	x
9299  0001 88            	push	a
9300       00000001      OFST:	set	1
9303                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9305  0002 7211525c      	bres	21084,#0
9306                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9306                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9308  0006 7b06          	ld	a,(OFST+5,sp)
9309  0008 97            	ld	xl,a
9310  0009 a610          	ld	a,#16
9311  000b 42            	mul	x,a
9312  000c 9f            	ld	a,xl
9313  000d 1a03          	or	a,(OFST+2,sp)
9314  000f 6b01          	ld	(OFST+0,sp),a
9316  0011 c65258        	ld	a,21080
9317  0014 a40c          	and	a,#12
9318  0016 1a01          	or	a,(OFST+0,sp)
9319  0018 c75258        	ld	21080,a
9320                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9322  001b 0d02          	tnz	(OFST+1,sp)
9323  001d 2706          	jreq	L3163
9324                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9326  001f 7212525c      	bset	21084,#1
9328  0023 2004          	jra	L5163
9329  0025               L3163:
9330                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9332  0025 7213525c      	bres	21084,#1
9333  0029               L5163:
9334                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9336  0029 7210525c      	bset	21084,#0
9337                     ; 2197 }
9340  002d 5b03          	addw	sp,#3
9341  002f 81            	ret
9393                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9393                     ; 2216                        uint8_t TIM1_ICSelection,
9393                     ; 2217                        uint8_t TIM1_ICFilter)
9393                     ; 2218 {
9394                     .text:	section	.text,new
9395  0000               L5_TI2_Config:
9397  0000 89            	pushw	x
9398  0001 88            	push	a
9399       00000001      OFST:	set	1
9402                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9404  0002 7219525c      	bres	21084,#4
9405                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9405                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9407  0006 7b06          	ld	a,(OFST+5,sp)
9408  0008 97            	ld	xl,a
9409  0009 a610          	ld	a,#16
9410  000b 42            	mul	x,a
9411  000c 9f            	ld	a,xl
9412  000d 1a03          	or	a,(OFST+2,sp)
9413  000f 6b01          	ld	(OFST+0,sp),a
9415  0011 c65259        	ld	a,21081
9416  0014 a40c          	and	a,#12
9417  0016 1a01          	or	a,(OFST+0,sp)
9418  0018 c75259        	ld	21081,a
9419                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9421  001b 0d02          	tnz	(OFST+1,sp)
9422  001d 2706          	jreq	L5463
9423                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9425  001f 721a525c      	bset	21084,#5
9427  0023 2004          	jra	L7463
9428  0025               L5463:
9429                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9431  0025 721b525c      	bres	21084,#5
9432  0029               L7463:
9433                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9435  0029 7218525c      	bset	21084,#4
9436                     ; 2236 }
9439  002d 5b03          	addw	sp,#3
9440  002f 81            	ret
9492                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9492                     ; 2255                        uint8_t TIM1_ICSelection,
9492                     ; 2256                        uint8_t TIM1_ICFilter)
9492                     ; 2257 {
9493                     .text:	section	.text,new
9494  0000               L7_TI3_Config:
9496  0000 89            	pushw	x
9497  0001 88            	push	a
9498       00000001      OFST:	set	1
9501                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9503  0002 7211525d      	bres	21085,#0
9504                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9504                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9506  0006 7b06          	ld	a,(OFST+5,sp)
9507  0008 97            	ld	xl,a
9508  0009 a610          	ld	a,#16
9509  000b 42            	mul	x,a
9510  000c 9f            	ld	a,xl
9511  000d 1a03          	or	a,(OFST+2,sp)
9512  000f 6b01          	ld	(OFST+0,sp),a
9514  0011 c6525a        	ld	a,21082
9515  0014 a40c          	and	a,#12
9516  0016 1a01          	or	a,(OFST+0,sp)
9517  0018 c7525a        	ld	21082,a
9518                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9520  001b 0d02          	tnz	(OFST+1,sp)
9521  001d 2706          	jreq	L7763
9522                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9524  001f 7212525d      	bset	21085,#1
9526  0023 2004          	jra	L1073
9527  0025               L7763:
9528                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9530  0025 7213525d      	bres	21085,#1
9531  0029               L1073:
9532                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9534  0029 7210525d      	bset	21085,#0
9535                     ; 2276 }
9538  002d 5b03          	addw	sp,#3
9539  002f 81            	ret
9591                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9591                     ; 2295                        uint8_t TIM1_ICSelection,
9591                     ; 2296                        uint8_t TIM1_ICFilter)
9591                     ; 2297 {
9592                     .text:	section	.text,new
9593  0000               L11_TI4_Config:
9595  0000 89            	pushw	x
9596  0001 88            	push	a
9597       00000001      OFST:	set	1
9600                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9602  0002 7219525d      	bres	21085,#4
9603                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9603                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9605  0006 7b06          	ld	a,(OFST+5,sp)
9606  0008 97            	ld	xl,a
9607  0009 a610          	ld	a,#16
9608  000b 42            	mul	x,a
9609  000c 9f            	ld	a,xl
9610  000d 1a03          	or	a,(OFST+2,sp)
9611  000f 6b01          	ld	(OFST+0,sp),a
9613  0011 c6525b        	ld	a,21083
9614  0014 a40c          	and	a,#12
9615  0016 1a01          	or	a,(OFST+0,sp)
9616  0018 c7525b        	ld	21083,a
9617                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9619  001b 0d02          	tnz	(OFST+1,sp)
9620  001d 2706          	jreq	L1373
9621                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9623  001f 721a525d      	bset	21085,#5
9625  0023 2004          	jra	L3373
9626  0025               L1373:
9627                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9629  0025 721b525d      	bres	21085,#5
9630  0029               L3373:
9631                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9633  0029 7218525d      	bset	21085,#4
9634                     ; 2317 }
9637  002d 5b03          	addw	sp,#3
9638  002f 81            	ret
9651                     	xdef	_TIM1_ClearITPendingBit
9652                     	xdef	_TIM1_GetITStatus
9653                     	xdef	_TIM1_ClearFlag
9654                     	xdef	_TIM1_GetFlagStatus
9655                     	xdef	_TIM1_GetPrescaler
9656                     	xdef	_TIM1_GetCounter
9657                     	xdef	_TIM1_GetCapture4
9658                     	xdef	_TIM1_GetCapture3
9659                     	xdef	_TIM1_GetCapture2
9660                     	xdef	_TIM1_GetCapture1
9661                     	xdef	_TIM1_SetIC4Prescaler
9662                     	xdef	_TIM1_SetIC3Prescaler
9663                     	xdef	_TIM1_SetIC2Prescaler
9664                     	xdef	_TIM1_SetIC1Prescaler
9665                     	xdef	_TIM1_SetCompare4
9666                     	xdef	_TIM1_SetCompare3
9667                     	xdef	_TIM1_SetCompare2
9668                     	xdef	_TIM1_SetCompare1
9669                     	xdef	_TIM1_SetAutoreload
9670                     	xdef	_TIM1_SetCounter
9671                     	xdef	_TIM1_SelectOCxM
9672                     	xdef	_TIM1_CCxNCmd
9673                     	xdef	_TIM1_CCxCmd
9674                     	xdef	_TIM1_OC4PolarityConfig
9675                     	xdef	_TIM1_OC3NPolarityConfig
9676                     	xdef	_TIM1_OC3PolarityConfig
9677                     	xdef	_TIM1_OC2NPolarityConfig
9678                     	xdef	_TIM1_OC2PolarityConfig
9679                     	xdef	_TIM1_OC1NPolarityConfig
9680                     	xdef	_TIM1_OC1PolarityConfig
9681                     	xdef	_TIM1_GenerateEvent
9682                     	xdef	_TIM1_OC4FastConfig
9683                     	xdef	_TIM1_OC3FastConfig
9684                     	xdef	_TIM1_OC2FastConfig
9685                     	xdef	_TIM1_OC1FastConfig
9686                     	xdef	_TIM1_OC4PreloadConfig
9687                     	xdef	_TIM1_OC3PreloadConfig
9688                     	xdef	_TIM1_OC2PreloadConfig
9689                     	xdef	_TIM1_OC1PreloadConfig
9690                     	xdef	_TIM1_CCPreloadControl
9691                     	xdef	_TIM1_SelectCOM
9692                     	xdef	_TIM1_ARRPreloadConfig
9693                     	xdef	_TIM1_ForcedOC4Config
9694                     	xdef	_TIM1_ForcedOC3Config
9695                     	xdef	_TIM1_ForcedOC2Config
9696                     	xdef	_TIM1_ForcedOC1Config
9697                     	xdef	_TIM1_CounterModeConfig
9698                     	xdef	_TIM1_PrescalerConfig
9699                     	xdef	_TIM1_EncoderInterfaceConfig
9700                     	xdef	_TIM1_SelectMasterSlaveMode
9701                     	xdef	_TIM1_SelectSlaveMode
9702                     	xdef	_TIM1_SelectOutputTrigger
9703                     	xdef	_TIM1_SelectOnePulseMode
9704                     	xdef	_TIM1_SelectHallSensor
9705                     	xdef	_TIM1_UpdateRequestConfig
9706                     	xdef	_TIM1_UpdateDisableConfig
9707                     	xdef	_TIM1_SelectInputTrigger
9708                     	xdef	_TIM1_TIxExternalClockConfig
9709                     	xdef	_TIM1_ETRConfig
9710                     	xdef	_TIM1_ETRClockMode2Config
9711                     	xdef	_TIM1_ETRClockMode1Config
9712                     	xdef	_TIM1_InternalClockConfig
9713                     	xdef	_TIM1_ITConfig
9714                     	xdef	_TIM1_CtrlPWMOutputs
9715                     	xdef	_TIM1_Cmd
9716                     	xdef	_TIM1_PWMIConfig
9717                     	xdef	_TIM1_ICInit
9718                     	xdef	_TIM1_BDTRConfig
9719                     	xdef	_TIM1_OC4Init
9720                     	xdef	_TIM1_OC3Init
9721                     	xdef	_TIM1_OC2Init
9722                     	xdef	_TIM1_OC1Init
9723                     	xdef	_TIM1_TimeBaseInit
9724                     	xdef	_TIM1_DeInit
9725                     	xref	_assert_failed
9726                     .const:	section	.text
9727  0000               L101:
9728  0000 7372635c7374  	dc.b	"src\stm8s_tim1.c",0
9748                     	end
