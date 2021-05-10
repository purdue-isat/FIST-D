   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 53 void UART1_DeInit(void)
  43                     ; 54 {
  45                     .text:	section	.text,new
  46  0000               _UART1_DeInit:
  50                     ; 57   (void)UART1->SR;
  52  0000 c65230        	ld	a,21040
  53                     ; 58   (void)UART1->DR;
  55  0003 c65231        	ld	a,21041
  56                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  58  0006 725f5233      	clr	21043
  59                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  61  000a 725f5232      	clr	21042
  62                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  64  000e 725f5234      	clr	21044
  65                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  67  0012 725f5235      	clr	21045
  68                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  70  0016 725f5236      	clr	21046
  71                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  73  001a 725f5237      	clr	21047
  74                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  76  001e 725f5238      	clr	21048
  77                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  79  0022 725f5239      	clr	21049
  80                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  82  0026 725f523a      	clr	21050
  83                     ; 71 }
  86  002a 81            	ret
 390                     .const:	section	.text
 391  0000               L21:
 392  0000 00098969      	dc.l	625001
 393  0004               L25:
 394  0004 00000064      	dc.l	100
 395                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 395                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 395                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 395                     ; 93 {
 396                     .text:	section	.text,new
 397  0000               _UART1_Init:
 399  0000 520c          	subw	sp,#12
 400       0000000c      OFST:	set	12
 403                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 407                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 409  0002 96            	ldw	x,sp
 410  0003 1c000f        	addw	x,#OFST+3
 411  0006 cd0000        	call	c_ltor
 413  0009 ae0000        	ldw	x,#L21
 414  000c cd0000        	call	c_lcmp
 416  000f 2403          	jruge	L01
 417  0011 4f            	clr	a
 418  0012 2010          	jra	L41
 419  0014               L01:
 420  0014 ae0061        	ldw	x,#97
 421  0017 89            	pushw	x
 422  0018 ae0000        	ldw	x,#0
 423  001b 89            	pushw	x
 424  001c ae0008        	ldw	x,#L371
 425  001f cd0000        	call	_assert_failed
 427  0022 5b04          	addw	sp,#4
 428  0024               L41:
 429                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 431  0024 0d13          	tnz	(OFST+7,sp)
 432  0026 2706          	jreq	L02
 433  0028 7b13          	ld	a,(OFST+7,sp)
 434  002a a110          	cp	a,#16
 435  002c 2603          	jrne	L61
 436  002e               L02:
 437  002e 4f            	clr	a
 438  002f 2010          	jra	L22
 439  0031               L61:
 440  0031 ae0062        	ldw	x,#98
 441  0034 89            	pushw	x
 442  0035 ae0000        	ldw	x,#0
 443  0038 89            	pushw	x
 444  0039 ae0008        	ldw	x,#L371
 445  003c cd0000        	call	_assert_failed
 447  003f 5b04          	addw	sp,#4
 448  0041               L22:
 449                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 451  0041 0d14          	tnz	(OFST+8,sp)
 452  0043 2712          	jreq	L62
 453  0045 7b14          	ld	a,(OFST+8,sp)
 454  0047 a110          	cp	a,#16
 455  0049 270c          	jreq	L62
 456  004b 7b14          	ld	a,(OFST+8,sp)
 457  004d a120          	cp	a,#32
 458  004f 2706          	jreq	L62
 459  0051 7b14          	ld	a,(OFST+8,sp)
 460  0053 a130          	cp	a,#48
 461  0055 2603          	jrne	L42
 462  0057               L62:
 463  0057 4f            	clr	a
 464  0058 2010          	jra	L03
 465  005a               L42:
 466  005a ae0063        	ldw	x,#99
 467  005d 89            	pushw	x
 468  005e ae0000        	ldw	x,#0
 469  0061 89            	pushw	x
 470  0062 ae0008        	ldw	x,#L371
 471  0065 cd0000        	call	_assert_failed
 473  0068 5b04          	addw	sp,#4
 474  006a               L03:
 475                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 477  006a 0d15          	tnz	(OFST+9,sp)
 478  006c 270c          	jreq	L43
 479  006e 7b15          	ld	a,(OFST+9,sp)
 480  0070 a104          	cp	a,#4
 481  0072 2706          	jreq	L43
 482  0074 7b15          	ld	a,(OFST+9,sp)
 483  0076 a106          	cp	a,#6
 484  0078 2603          	jrne	L23
 485  007a               L43:
 486  007a 4f            	clr	a
 487  007b 2010          	jra	L63
 488  007d               L23:
 489  007d ae0064        	ldw	x,#100
 490  0080 89            	pushw	x
 491  0081 ae0000        	ldw	x,#0
 492  0084 89            	pushw	x
 493  0085 ae0008        	ldw	x,#L371
 494  0088 cd0000        	call	_assert_failed
 496  008b 5b04          	addw	sp,#4
 497  008d               L63:
 498                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 500  008d 7b17          	ld	a,(OFST+11,sp)
 501  008f a108          	cp	a,#8
 502  0091 2730          	jreq	L24
 503  0093 7b17          	ld	a,(OFST+11,sp)
 504  0095 a140          	cp	a,#64
 505  0097 272a          	jreq	L24
 506  0099 7b17          	ld	a,(OFST+11,sp)
 507  009b a104          	cp	a,#4
 508  009d 2724          	jreq	L24
 509  009f 7b17          	ld	a,(OFST+11,sp)
 510  00a1 a180          	cp	a,#128
 511  00a3 271e          	jreq	L24
 512  00a5 7b17          	ld	a,(OFST+11,sp)
 513  00a7 a10c          	cp	a,#12
 514  00a9 2718          	jreq	L24
 515  00ab 7b17          	ld	a,(OFST+11,sp)
 516  00ad a10c          	cp	a,#12
 517  00af 2712          	jreq	L24
 518  00b1 7b17          	ld	a,(OFST+11,sp)
 519  00b3 a144          	cp	a,#68
 520  00b5 270c          	jreq	L24
 521  00b7 7b17          	ld	a,(OFST+11,sp)
 522  00b9 a1c0          	cp	a,#192
 523  00bb 2706          	jreq	L24
 524  00bd 7b17          	ld	a,(OFST+11,sp)
 525  00bf a188          	cp	a,#136
 526  00c1 2603          	jrne	L04
 527  00c3               L24:
 528  00c3 4f            	clr	a
 529  00c4 2010          	jra	L44
 530  00c6               L04:
 531  00c6 ae0065        	ldw	x,#101
 532  00c9 89            	pushw	x
 533  00ca ae0000        	ldw	x,#0
 534  00cd 89            	pushw	x
 535  00ce ae0008        	ldw	x,#L371
 536  00d1 cd0000        	call	_assert_failed
 538  00d4 5b04          	addw	sp,#4
 539  00d6               L44:
 540                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 542  00d6 7b16          	ld	a,(OFST+10,sp)
 543  00d8 a488          	and	a,#136
 544  00da a188          	cp	a,#136
 545  00dc 271b          	jreq	L64
 546  00de 7b16          	ld	a,(OFST+10,sp)
 547  00e0 a444          	and	a,#68
 548  00e2 a144          	cp	a,#68
 549  00e4 2713          	jreq	L64
 550  00e6 7b16          	ld	a,(OFST+10,sp)
 551  00e8 a422          	and	a,#34
 552  00ea a122          	cp	a,#34
 553  00ec 270b          	jreq	L64
 554  00ee 7b16          	ld	a,(OFST+10,sp)
 555  00f0 a411          	and	a,#17
 556  00f2 a111          	cp	a,#17
 557  00f4 2703          	jreq	L64
 558  00f6 4f            	clr	a
 559  00f7 2010          	jra	L05
 560  00f9               L64:
 561  00f9 ae0066        	ldw	x,#102
 562  00fc 89            	pushw	x
 563  00fd ae0000        	ldw	x,#0
 564  0100 89            	pushw	x
 565  0101 ae0008        	ldw	x,#L371
 566  0104 cd0000        	call	_assert_failed
 568  0107 5b04          	addw	sp,#4
 569  0109               L05:
 570                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 572  0109 72195234      	bres	21044,#4
 573                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 575  010d c65234        	ld	a,21044
 576  0110 1a13          	or	a,(OFST+7,sp)
 577  0112 c75234        	ld	21044,a
 578                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 580  0115 c65236        	ld	a,21046
 581  0118 a4cf          	and	a,#207
 582  011a c75236        	ld	21046,a
 583                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 585  011d c65236        	ld	a,21046
 586  0120 1a14          	or	a,(OFST+8,sp)
 587  0122 c75236        	ld	21046,a
 588                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 590  0125 c65234        	ld	a,21044
 591  0128 a4f9          	and	a,#249
 592  012a c75234        	ld	21044,a
 593                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 595  012d c65234        	ld	a,21044
 596  0130 1a15          	or	a,(OFST+9,sp)
 597  0132 c75234        	ld	21044,a
 598                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 600  0135 725f5232      	clr	21042
 601                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 603  0139 c65233        	ld	a,21043
 604  013c a40f          	and	a,#15
 605  013e c75233        	ld	21043,a
 606                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 608  0141 c65233        	ld	a,21043
 609  0144 a4f0          	and	a,#240
 610  0146 c75233        	ld	21043,a
 611                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 613  0149 96            	ldw	x,sp
 614  014a 1c000f        	addw	x,#OFST+3
 615  014d cd0000        	call	c_ltor
 617  0150 a604          	ld	a,#4
 618  0152 cd0000        	call	c_llsh
 620  0155 96            	ldw	x,sp
 621  0156 1c0001        	addw	x,#OFST-11
 622  0159 cd0000        	call	c_rtol
 625  015c cd0000        	call	_CLK_GetClockFreq
 627  015f 96            	ldw	x,sp
 628  0160 1c0001        	addw	x,#OFST-11
 629  0163 cd0000        	call	c_ludv
 631  0166 96            	ldw	x,sp
 632  0167 1c0009        	addw	x,#OFST-3
 633  016a cd0000        	call	c_rtol
 636                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 638  016d 96            	ldw	x,sp
 639  016e 1c000f        	addw	x,#OFST+3
 640  0171 cd0000        	call	c_ltor
 642  0174 a604          	ld	a,#4
 643  0176 cd0000        	call	c_llsh
 645  0179 96            	ldw	x,sp
 646  017a 1c0001        	addw	x,#OFST-11
 647  017d cd0000        	call	c_rtol
 650  0180 cd0000        	call	_CLK_GetClockFreq
 652  0183 a664          	ld	a,#100
 653  0185 cd0000        	call	c_smul
 655  0188 96            	ldw	x,sp
 656  0189 1c0001        	addw	x,#OFST-11
 657  018c cd0000        	call	c_ludv
 659  018f 96            	ldw	x,sp
 660  0190 1c0005        	addw	x,#OFST-7
 661  0193 cd0000        	call	c_rtol
 664                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 666  0196 96            	ldw	x,sp
 667  0197 1c0009        	addw	x,#OFST-3
 668  019a cd0000        	call	c_ltor
 670  019d a664          	ld	a,#100
 671  019f cd0000        	call	c_smul
 673  01a2 96            	ldw	x,sp
 674  01a3 1c0001        	addw	x,#OFST-11
 675  01a6 cd0000        	call	c_rtol
 678  01a9 96            	ldw	x,sp
 679  01aa 1c0005        	addw	x,#OFST-7
 680  01ad cd0000        	call	c_ltor
 682  01b0 96            	ldw	x,sp
 683  01b1 1c0001        	addw	x,#OFST-11
 684  01b4 cd0000        	call	c_lsub
 686  01b7 a604          	ld	a,#4
 687  01b9 cd0000        	call	c_llsh
 689  01bc ae0004        	ldw	x,#L25
 690  01bf cd0000        	call	c_ludv
 692  01c2 b603          	ld	a,c_lreg+3
 693  01c4 a40f          	and	a,#15
 694  01c6 ca5233        	or	a,21043
 695  01c9 c75233        	ld	21043,a
 696                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 698  01cc 1e0b          	ldw	x,(OFST-1,sp)
 699  01ce 54            	srlw	x
 700  01cf 54            	srlw	x
 701  01d0 54            	srlw	x
 702  01d1 54            	srlw	x
 703  01d2 01            	rrwa	x,a
 704  01d3 a4f0          	and	a,#240
 705  01d5 5f            	clrw	x
 706  01d6 ca5233        	or	a,21043
 707  01d9 c75233        	ld	21043,a
 708                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 710  01dc c65232        	ld	a,21042
 711  01df 1a0c          	or	a,(OFST+0,sp)
 712  01e1 c75232        	ld	21042,a
 713                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 715  01e4 c65235        	ld	a,21045
 716  01e7 a4f3          	and	a,#243
 717  01e9 c75235        	ld	21045,a
 718                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 720  01ec c65236        	ld	a,21046
 721  01ef a4f8          	and	a,#248
 722  01f1 c75236        	ld	21046,a
 723                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 723                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 725  01f4 7b16          	ld	a,(OFST+10,sp)
 726  01f6 a407          	and	a,#7
 727  01f8 ca5236        	or	a,21046
 728  01fb c75236        	ld	21046,a
 729                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 731  01fe 7b17          	ld	a,(OFST+11,sp)
 732  0200 a504          	bcp	a,#4
 733  0202 2706          	jreq	L571
 734                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 736  0204 72165235      	bset	21045,#3
 738  0208 2004          	jra	L771
 739  020a               L571:
 740                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 742  020a 72175235      	bres	21045,#3
 743  020e               L771:
 744                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 746  020e 7b17          	ld	a,(OFST+11,sp)
 747  0210 a508          	bcp	a,#8
 748  0212 2706          	jreq	L102
 749                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 751  0214 72145235      	bset	21045,#2
 753  0218 2004          	jra	L302
 754  021a               L102:
 755                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 757  021a 72155235      	bres	21045,#2
 758  021e               L302:
 759                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 761  021e 7b16          	ld	a,(OFST+10,sp)
 762  0220 a580          	bcp	a,#128
 763  0222 2706          	jreq	L502
 764                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 766  0224 72175236      	bres	21046,#3
 768  0228 200a          	jra	L702
 769  022a               L502:
 770                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 772  022a 7b16          	ld	a,(OFST+10,sp)
 773  022c a408          	and	a,#8
 774  022e ca5236        	or	a,21046
 775  0231 c75236        	ld	21046,a
 776  0234               L702:
 777                     ; 176 }
 780  0234 5b0c          	addw	sp,#12
 781  0236 81            	ret
 836                     ; 184 void UART1_Cmd(FunctionalState NewState)
 836                     ; 185 {
 837                     .text:	section	.text,new
 838  0000               _UART1_Cmd:
 842                     ; 186   if (NewState != DISABLE)
 844  0000 4d            	tnz	a
 845  0001 2706          	jreq	L732
 846                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 848  0003 721b5234      	bres	21044,#5
 850  0007 2004          	jra	L142
 851  0009               L732:
 852                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 854  0009 721a5234      	bset	21044,#5
 855  000d               L142:
 856                     ; 196 }
 859  000d 81            	ret
 985                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 985                     ; 212 {
 986                     .text:	section	.text,new
 987  0000               _UART1_ITConfig:
 989  0000 89            	pushw	x
 990  0001 89            	pushw	x
 991       00000002      OFST:	set	2
 994                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 998                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
1000  0002 a30100        	cpw	x,#256
1001  0005 2719          	jreq	L26
1002  0007 a30277        	cpw	x,#631
1003  000a 2714          	jreq	L26
1004  000c a30266        	cpw	x,#614
1005  000f 270f          	jreq	L26
1006  0011 a30205        	cpw	x,#517
1007  0014 270a          	jreq	L26
1008  0016 a30244        	cpw	x,#580
1009  0019 2705          	jreq	L26
1010  001b a30346        	cpw	x,#838
1011  001e 2603          	jrne	L06
1012  0020               L26:
1013  0020 4f            	clr	a
1014  0021 2010          	jra	L46
1015  0023               L06:
1016  0023 ae00d8        	ldw	x,#216
1017  0026 89            	pushw	x
1018  0027 ae0000        	ldw	x,#0
1019  002a 89            	pushw	x
1020  002b ae0008        	ldw	x,#L371
1021  002e cd0000        	call	_assert_failed
1023  0031 5b04          	addw	sp,#4
1024  0033               L46:
1025                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1027  0033 0d07          	tnz	(OFST+5,sp)
1028  0035 2706          	jreq	L07
1029  0037 7b07          	ld	a,(OFST+5,sp)
1030  0039 a101          	cp	a,#1
1031  003b 2603          	jrne	L66
1032  003d               L07:
1033  003d 4f            	clr	a
1034  003e 2010          	jra	L27
1035  0040               L66:
1036  0040 ae00d9        	ldw	x,#217
1037  0043 89            	pushw	x
1038  0044 ae0000        	ldw	x,#0
1039  0047 89            	pushw	x
1040  0048 ae0008        	ldw	x,#L371
1041  004b cd0000        	call	_assert_failed
1043  004e 5b04          	addw	sp,#4
1044  0050               L27:
1045                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
1047  0050 7b03          	ld	a,(OFST+1,sp)
1048  0052 6b01          	ld	(OFST-1,sp),a
1050                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
1052  0054 7b04          	ld	a,(OFST+2,sp)
1053  0056 a40f          	and	a,#15
1054  0058 5f            	clrw	x
1055  0059 97            	ld	xl,a
1056  005a a601          	ld	a,#1
1057  005c 5d            	tnzw	x
1058  005d 2704          	jreq	L47
1059  005f               L67:
1060  005f 48            	sll	a
1061  0060 5a            	decw	x
1062  0061 26fc          	jrne	L67
1063  0063               L47:
1064  0063 6b02          	ld	(OFST+0,sp),a
1066                     ; 224   if (NewState != DISABLE)
1068  0065 0d07          	tnz	(OFST+5,sp)
1069  0067 272a          	jreq	L123
1070                     ; 227     if (uartreg == 0x01)
1072  0069 7b01          	ld	a,(OFST-1,sp)
1073  006b a101          	cp	a,#1
1074  006d 260a          	jrne	L323
1075                     ; 229       UART1->CR1 |= itpos;
1077  006f c65234        	ld	a,21044
1078  0072 1a02          	or	a,(OFST+0,sp)
1079  0074 c75234        	ld	21044,a
1081  0077 2045          	jra	L333
1082  0079               L323:
1083                     ; 231     else if (uartreg == 0x02)
1085  0079 7b01          	ld	a,(OFST-1,sp)
1086  007b a102          	cp	a,#2
1087  007d 260a          	jrne	L723
1088                     ; 233       UART1->CR2 |= itpos;
1090  007f c65235        	ld	a,21045
1091  0082 1a02          	or	a,(OFST+0,sp)
1092  0084 c75235        	ld	21045,a
1094  0087 2035          	jra	L333
1095  0089               L723:
1096                     ; 237       UART1->CR4 |= itpos;
1098  0089 c65237        	ld	a,21047
1099  008c 1a02          	or	a,(OFST+0,sp)
1100  008e c75237        	ld	21047,a
1101  0091 202b          	jra	L333
1102  0093               L123:
1103                     ; 243     if (uartreg == 0x01)
1105  0093 7b01          	ld	a,(OFST-1,sp)
1106  0095 a101          	cp	a,#1
1107  0097 260b          	jrne	L533
1108                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1110  0099 7b02          	ld	a,(OFST+0,sp)
1111  009b 43            	cpl	a
1112  009c c45234        	and	a,21044
1113  009f c75234        	ld	21044,a
1115  00a2 201a          	jra	L333
1116  00a4               L533:
1117                     ; 247     else if (uartreg == 0x02)
1119  00a4 7b01          	ld	a,(OFST-1,sp)
1120  00a6 a102          	cp	a,#2
1121  00a8 260b          	jrne	L143
1122                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1124  00aa 7b02          	ld	a,(OFST+0,sp)
1125  00ac 43            	cpl	a
1126  00ad c45235        	and	a,21045
1127  00b0 c75235        	ld	21045,a
1129  00b3 2009          	jra	L333
1130  00b5               L143:
1131                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1133  00b5 7b02          	ld	a,(OFST+0,sp)
1134  00b7 43            	cpl	a
1135  00b8 c45237        	and	a,21047
1136  00bb c75237        	ld	21047,a
1137  00be               L333:
1138                     ; 257 }
1141  00be 5b04          	addw	sp,#4
1142  00c0 81            	ret
1179                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1179                     ; 266 {
1180                     .text:	section	.text,new
1181  0000               _UART1_HalfDuplexCmd:
1183  0000 88            	push	a
1184       00000000      OFST:	set	0
1187                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1189  0001 4d            	tnz	a
1190  0002 2704          	jreq	L401
1191  0004 a101          	cp	a,#1
1192  0006 2603          	jrne	L201
1193  0008               L401:
1194  0008 4f            	clr	a
1195  0009 2010          	jra	L601
1196  000b               L201:
1197  000b ae010b        	ldw	x,#267
1198  000e 89            	pushw	x
1199  000f ae0000        	ldw	x,#0
1200  0012 89            	pushw	x
1201  0013 ae0008        	ldw	x,#L371
1202  0016 cd0000        	call	_assert_failed
1204  0019 5b04          	addw	sp,#4
1205  001b               L601:
1206                     ; 269   if (NewState != DISABLE)
1208  001b 0d01          	tnz	(OFST+1,sp)
1209  001d 2706          	jreq	L363
1210                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1212  001f 72165238      	bset	21048,#3
1214  0023 2004          	jra	L563
1215  0025               L363:
1216                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1218  0025 72175238      	bres	21048,#3
1219  0029               L563:
1220                     ; 277 }
1223  0029 84            	pop	a
1224  002a 81            	ret
1282                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1282                     ; 286 {
1283                     .text:	section	.text,new
1284  0000               _UART1_IrDAConfig:
1286  0000 88            	push	a
1287       00000000      OFST:	set	0
1290                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1292  0001 a101          	cp	a,#1
1293  0003 2703          	jreq	L411
1294  0005 4d            	tnz	a
1295  0006 2603          	jrne	L211
1296  0008               L411:
1297  0008 4f            	clr	a
1298  0009 2010          	jra	L611
1299  000b               L211:
1300  000b ae011f        	ldw	x,#287
1301  000e 89            	pushw	x
1302  000f ae0000        	ldw	x,#0
1303  0012 89            	pushw	x
1304  0013 ae0008        	ldw	x,#L371
1305  0016 cd0000        	call	_assert_failed
1307  0019 5b04          	addw	sp,#4
1308  001b               L611:
1309                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1311  001b 0d01          	tnz	(OFST+1,sp)
1312  001d 2706          	jreq	L514
1313                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1315  001f 72145238      	bset	21048,#2
1317  0023 2004          	jra	L714
1318  0025               L514:
1319                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1321  0025 72155238      	bres	21048,#2
1322  0029               L714:
1323                     ; 297 }
1326  0029 84            	pop	a
1327  002a 81            	ret
1363                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1363                     ; 306 {
1364                     .text:	section	.text,new
1365  0000               _UART1_IrDACmd:
1367  0000 88            	push	a
1368       00000000      OFST:	set	0
1371                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1373  0001 4d            	tnz	a
1374  0002 2704          	jreq	L421
1375  0004 a101          	cp	a,#1
1376  0006 2603          	jrne	L221
1377  0008               L421:
1378  0008 4f            	clr	a
1379  0009 2010          	jra	L621
1380  000b               L221:
1381  000b ae0134        	ldw	x,#308
1382  000e 89            	pushw	x
1383  000f ae0000        	ldw	x,#0
1384  0012 89            	pushw	x
1385  0013 ae0008        	ldw	x,#L371
1386  0016 cd0000        	call	_assert_failed
1388  0019 5b04          	addw	sp,#4
1389  001b               L621:
1390                     ; 310   if (NewState != DISABLE)
1392  001b 0d01          	tnz	(OFST+1,sp)
1393  001d 2706          	jreq	L734
1394                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1396  001f 72125238      	bset	21048,#1
1398  0023 2004          	jra	L144
1399  0025               L734:
1400                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1402  0025 72135238      	bres	21048,#1
1403  0029               L144:
1404                     ; 320 }
1407  0029 84            	pop	a
1408  002a 81            	ret
1468                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1468                     ; 330 {
1469                     .text:	section	.text,new
1470  0000               _UART1_LINBreakDetectionConfig:
1472  0000 88            	push	a
1473       00000000      OFST:	set	0
1476                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1478  0001 4d            	tnz	a
1479  0002 2704          	jreq	L431
1480  0004 a101          	cp	a,#1
1481  0006 2603          	jrne	L231
1482  0008               L431:
1483  0008 4f            	clr	a
1484  0009 2010          	jra	L631
1485  000b               L231:
1486  000b ae014b        	ldw	x,#331
1487  000e 89            	pushw	x
1488  000f ae0000        	ldw	x,#0
1489  0012 89            	pushw	x
1490  0013 ae0008        	ldw	x,#L371
1491  0016 cd0000        	call	_assert_failed
1493  0019 5b04          	addw	sp,#4
1494  001b               L631:
1495                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1497  001b 0d01          	tnz	(OFST+1,sp)
1498  001d 2706          	jreq	L174
1499                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1501  001f 721a5237      	bset	21047,#5
1503  0023 2004          	jra	L374
1504  0025               L174:
1505                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1507  0025 721b5237      	bres	21047,#5
1508  0029               L374:
1509                     ; 341 }
1512  0029 84            	pop	a
1513  002a 81            	ret
1549                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1549                     ; 350 {
1550                     .text:	section	.text,new
1551  0000               _UART1_LINCmd:
1553  0000 88            	push	a
1554       00000000      OFST:	set	0
1557                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1559  0001 4d            	tnz	a
1560  0002 2704          	jreq	L441
1561  0004 a101          	cp	a,#1
1562  0006 2603          	jrne	L241
1563  0008               L441:
1564  0008 4f            	clr	a
1565  0009 2010          	jra	L641
1566  000b               L241:
1567  000b ae015f        	ldw	x,#351
1568  000e 89            	pushw	x
1569  000f ae0000        	ldw	x,#0
1570  0012 89            	pushw	x
1571  0013 ae0008        	ldw	x,#L371
1572  0016 cd0000        	call	_assert_failed
1574  0019 5b04          	addw	sp,#4
1575  001b               L641:
1576                     ; 353   if (NewState != DISABLE)
1578  001b 0d01          	tnz	(OFST+1,sp)
1579  001d 2706          	jreq	L315
1580                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1582  001f 721c5236      	bset	21046,#6
1584  0023 2004          	jra	L515
1585  0025               L315:
1586                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1588  0025 721d5236      	bres	21046,#6
1589  0029               L515:
1590                     ; 363 }
1593  0029 84            	pop	a
1594  002a 81            	ret
1630                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1630                     ; 372 {
1631                     .text:	section	.text,new
1632  0000               _UART1_SmartCardCmd:
1634  0000 88            	push	a
1635       00000000      OFST:	set	0
1638                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1640  0001 4d            	tnz	a
1641  0002 2704          	jreq	L451
1642  0004 a101          	cp	a,#1
1643  0006 2603          	jrne	L251
1644  0008               L451:
1645  0008 4f            	clr	a
1646  0009 2010          	jra	L651
1647  000b               L251:
1648  000b ae0175        	ldw	x,#373
1649  000e 89            	pushw	x
1650  000f ae0000        	ldw	x,#0
1651  0012 89            	pushw	x
1652  0013 ae0008        	ldw	x,#L371
1653  0016 cd0000        	call	_assert_failed
1655  0019 5b04          	addw	sp,#4
1656  001b               L651:
1657                     ; 375   if (NewState != DISABLE)
1659  001b 0d01          	tnz	(OFST+1,sp)
1660  001d 2706          	jreq	L535
1661                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1663  001f 721a5238      	bset	21048,#5
1665  0023 2004          	jra	L735
1666  0025               L535:
1667                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1669  0025 721b5238      	bres	21048,#5
1670  0029               L735:
1671                     ; 385 }
1674  0029 84            	pop	a
1675  002a 81            	ret
1712                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1712                     ; 395 {
1713                     .text:	section	.text,new
1714  0000               _UART1_SmartCardNACKCmd:
1716  0000 88            	push	a
1717       00000000      OFST:	set	0
1720                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1722  0001 4d            	tnz	a
1723  0002 2704          	jreq	L461
1724  0004 a101          	cp	a,#1
1725  0006 2603          	jrne	L261
1726  0008               L461:
1727  0008 4f            	clr	a
1728  0009 2010          	jra	L661
1729  000b               L261:
1730  000b ae018c        	ldw	x,#396
1731  000e 89            	pushw	x
1732  000f ae0000        	ldw	x,#0
1733  0012 89            	pushw	x
1734  0013 ae0008        	ldw	x,#L371
1735  0016 cd0000        	call	_assert_failed
1737  0019 5b04          	addw	sp,#4
1738  001b               L661:
1739                     ; 398   if (NewState != DISABLE)
1741  001b 0d01          	tnz	(OFST+1,sp)
1742  001d 2706          	jreq	L755
1743                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1745  001f 72185238      	bset	21048,#4
1747  0023 2004          	jra	L165
1748  0025               L755:
1749                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1751  0025 72195238      	bres	21048,#4
1752  0029               L165:
1753                     ; 408 }
1756  0029 84            	pop	a
1757  002a 81            	ret
1815                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1815                     ; 417 {
1816                     .text:	section	.text,new
1817  0000               _UART1_WakeUpConfig:
1819  0000 88            	push	a
1820       00000000      OFST:	set	0
1823                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1825  0001 4d            	tnz	a
1826  0002 2704          	jreq	L471
1827  0004 a108          	cp	a,#8
1828  0006 2603          	jrne	L271
1829  0008               L471:
1830  0008 4f            	clr	a
1831  0009 2010          	jra	L671
1832  000b               L271:
1833  000b ae01a2        	ldw	x,#418
1834  000e 89            	pushw	x
1835  000f ae0000        	ldw	x,#0
1836  0012 89            	pushw	x
1837  0013 ae0008        	ldw	x,#L371
1838  0016 cd0000        	call	_assert_failed
1840  0019 5b04          	addw	sp,#4
1841  001b               L671:
1842                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1844  001b 72175234      	bres	21044,#3
1845                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1847  001f c65234        	ld	a,21044
1848  0022 1a01          	or	a,(OFST+1,sp)
1849  0024 c75234        	ld	21044,a
1850                     ; 422 }
1853  0027 84            	pop	a
1854  0028 81            	ret
1891                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1891                     ; 431 {
1892                     .text:	section	.text,new
1893  0000               _UART1_ReceiverWakeUpCmd:
1895  0000 88            	push	a
1896       00000000      OFST:	set	0
1899                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1901  0001 4d            	tnz	a
1902  0002 2704          	jreq	L402
1903  0004 a101          	cp	a,#1
1904  0006 2603          	jrne	L202
1905  0008               L402:
1906  0008 4f            	clr	a
1907  0009 2010          	jra	L602
1908  000b               L202:
1909  000b ae01b0        	ldw	x,#432
1910  000e 89            	pushw	x
1911  000f ae0000        	ldw	x,#0
1912  0012 89            	pushw	x
1913  0013 ae0008        	ldw	x,#L371
1914  0016 cd0000        	call	_assert_failed
1916  0019 5b04          	addw	sp,#4
1917  001b               L602:
1918                     ; 434   if (NewState != DISABLE)
1920  001b 0d01          	tnz	(OFST+1,sp)
1921  001d 2706          	jreq	L726
1922                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1924  001f 72125235      	bset	21045,#1
1926  0023 2004          	jra	L136
1927  0025               L726:
1928                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1930  0025 72135235      	bres	21045,#1
1931  0029               L136:
1932                     ; 444 }
1935  0029 84            	pop	a
1936  002a 81            	ret
1959                     ; 451 uint8_t UART1_ReceiveData8(void)
1959                     ; 452 {
1960                     .text:	section	.text,new
1961  0000               _UART1_ReceiveData8:
1965                     ; 453   return ((uint8_t)UART1->DR);
1967  0000 c65231        	ld	a,21041
1970  0003 81            	ret
2004                     ; 461 uint16_t UART1_ReceiveData9(void)
2004                     ; 462 {
2005                     .text:	section	.text,new
2006  0000               _UART1_ReceiveData9:
2008  0000 89            	pushw	x
2009       00000002      OFST:	set	2
2012                     ; 463   uint16_t temp = 0;
2014                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
2016  0001 c65234        	ld	a,21044
2017  0004 5f            	clrw	x
2018  0005 a480          	and	a,#128
2019  0007 5f            	clrw	x
2020  0008 02            	rlwa	x,a
2021  0009 58            	sllw	x
2022  000a 1f01          	ldw	(OFST-1,sp),x
2024                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
2026  000c c65231        	ld	a,21041
2027  000f 5f            	clrw	x
2028  0010 97            	ld	xl,a
2029  0011 01            	rrwa	x,a
2030  0012 1a02          	or	a,(OFST+0,sp)
2031  0014 01            	rrwa	x,a
2032  0015 1a01          	or	a,(OFST-1,sp)
2033  0017 01            	rrwa	x,a
2034  0018 01            	rrwa	x,a
2035  0019 a4ff          	and	a,#255
2036  001b 01            	rrwa	x,a
2037  001c a401          	and	a,#1
2038  001e 01            	rrwa	x,a
2041  001f 5b02          	addw	sp,#2
2042  0021 81            	ret
2076                     ; 474 void UART1_SendData8(uint8_t Data)
2076                     ; 475 {
2077                     .text:	section	.text,new
2078  0000               _UART1_SendData8:
2082                     ; 477   UART1->DR = Data;
2084  0000 c75231        	ld	21041,a
2085                     ; 478 }
2088  0003 81            	ret
2122                     ; 486 void UART1_SendData9(uint16_t Data)
2122                     ; 487 {
2123                     .text:	section	.text,new
2124  0000               _UART1_SendData9:
2126  0000 89            	pushw	x
2127       00000000      OFST:	set	0
2130                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2132  0001 721d5234      	bres	21044,#6
2133                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2135  0005 54            	srlw	x
2136  0006 54            	srlw	x
2137  0007 9f            	ld	a,xl
2138  0008 a440          	and	a,#64
2139  000a ca5234        	or	a,21044
2140  000d c75234        	ld	21044,a
2141                     ; 493   UART1->DR   = (uint8_t)(Data);
2143  0010 7b02          	ld	a,(OFST+2,sp)
2144  0012 c75231        	ld	21041,a
2145                     ; 494 }
2148  0015 85            	popw	x
2149  0016 81            	ret
2172                     ; 501 void UART1_SendBreak(void)
2172                     ; 502 {
2173                     .text:	section	.text,new
2174  0000               _UART1_SendBreak:
2178                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2180  0000 72105235      	bset	21045,#0
2181                     ; 504 }
2184  0004 81            	ret
2219                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2219                     ; 512 {
2220                     .text:	section	.text,new
2221  0000               _UART1_SetAddress:
2223  0000 88            	push	a
2224       00000000      OFST:	set	0
2227                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2229  0001 a110          	cp	a,#16
2230  0003 2403          	jruge	L422
2231  0005 4f            	clr	a
2232  0006 2010          	jra	L622
2233  0008               L422:
2234  0008 ae0202        	ldw	x,#514
2235  000b 89            	pushw	x
2236  000c ae0000        	ldw	x,#0
2237  000f 89            	pushw	x
2238  0010 ae0008        	ldw	x,#L371
2239  0013 cd0000        	call	_assert_failed
2241  0016 5b04          	addw	sp,#4
2242  0018               L622:
2243                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2245  0018 c65237        	ld	a,21047
2246  001b a4f0          	and	a,#240
2247  001d c75237        	ld	21047,a
2248                     ; 519   UART1->CR4 |= UART1_Address;
2250  0020 c65237        	ld	a,21047
2251  0023 1a01          	or	a,(OFST+1,sp)
2252  0025 c75237        	ld	21047,a
2253                     ; 520 }
2256  0028 84            	pop	a
2257  0029 81            	ret
2291                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2291                     ; 529 {
2292                     .text:	section	.text,new
2293  0000               _UART1_SetGuardTime:
2297                     ; 531   UART1->GTR = UART1_GuardTime;
2299  0000 c75239        	ld	21049,a
2300                     ; 532 }
2303  0003 81            	ret
2337                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2337                     ; 557 {
2338                     .text:	section	.text,new
2339  0000               _UART1_SetPrescaler:
2343                     ; 559   UART1->PSCR = UART1_Prescaler;
2345  0000 c7523a        	ld	21050,a
2346                     ; 560 }
2349  0003 81            	ret
2493                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2493                     ; 569 {
2494                     .text:	section	.text,new
2495  0000               _UART1_GetFlagStatus:
2497  0000 89            	pushw	x
2498  0001 88            	push	a
2499       00000001      OFST:	set	1
2502                     ; 570   FlagStatus status = RESET;
2504                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2506  0002 a30080        	cpw	x,#128
2507  0005 272d          	jreq	L042
2508  0007 a30040        	cpw	x,#64
2509  000a 2728          	jreq	L042
2510  000c a30020        	cpw	x,#32
2511  000f 2723          	jreq	L042
2512  0011 a30010        	cpw	x,#16
2513  0014 271e          	jreq	L042
2514  0016 a30008        	cpw	x,#8
2515  0019 2719          	jreq	L042
2516  001b a30004        	cpw	x,#4
2517  001e 2714          	jreq	L042
2518  0020 a30002        	cpw	x,#2
2519  0023 270f          	jreq	L042
2520  0025 a30001        	cpw	x,#1
2521  0028 270a          	jreq	L042
2522  002a a30101        	cpw	x,#257
2523  002d 2705          	jreq	L042
2524  002f a30210        	cpw	x,#528
2525  0032 2603          	jrne	L632
2526  0034               L042:
2527  0034 4f            	clr	a
2528  0035 2010          	jra	L242
2529  0037               L632:
2530  0037 ae023d        	ldw	x,#573
2531  003a 89            	pushw	x
2532  003b ae0000        	ldw	x,#0
2533  003e 89            	pushw	x
2534  003f ae0008        	ldw	x,#L371
2535  0042 cd0000        	call	_assert_failed
2537  0045 5b04          	addw	sp,#4
2538  0047               L242:
2539                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2541  0047 1e02          	ldw	x,(OFST+1,sp)
2542  0049 a30210        	cpw	x,#528
2543  004c 2611          	jrne	L1601
2544                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2546  004e c65237        	ld	a,21047
2547  0051 1503          	bcp	a,(OFST+2,sp)
2548  0053 2706          	jreq	L3601
2549                     ; 582       status = SET;
2551  0055 a601          	ld	a,#1
2552  0057 6b01          	ld	(OFST+0,sp),a
2555  0059 202b          	jra	L7601
2556  005b               L3601:
2557                     ; 587       status = RESET;
2559  005b 0f01          	clr	(OFST+0,sp)
2561  005d 2027          	jra	L7601
2562  005f               L1601:
2563                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2565  005f 1e02          	ldw	x,(OFST+1,sp)
2566  0061 a30101        	cpw	x,#257
2567  0064 2611          	jrne	L1701
2568                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2570  0066 c65235        	ld	a,21045
2571  0069 1503          	bcp	a,(OFST+2,sp)
2572  006b 2706          	jreq	L3701
2573                     ; 595       status = SET;
2575  006d a601          	ld	a,#1
2576  006f 6b01          	ld	(OFST+0,sp),a
2579  0071 2013          	jra	L7601
2580  0073               L3701:
2581                     ; 600       status = RESET;
2583  0073 0f01          	clr	(OFST+0,sp)
2585  0075 200f          	jra	L7601
2586  0077               L1701:
2587                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2589  0077 c65230        	ld	a,21040
2590  007a 1503          	bcp	a,(OFST+2,sp)
2591  007c 2706          	jreq	L1011
2592                     ; 608       status = SET;
2594  007e a601          	ld	a,#1
2595  0080 6b01          	ld	(OFST+0,sp),a
2598  0082 2002          	jra	L7601
2599  0084               L1011:
2600                     ; 613       status = RESET;
2602  0084 0f01          	clr	(OFST+0,sp)
2604  0086               L7601:
2605                     ; 617   return status;
2607  0086 7b01          	ld	a,(OFST+0,sp)
2610  0088 5b03          	addw	sp,#3
2611  008a 81            	ret
2647                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2647                     ; 647 {
2648                     .text:	section	.text,new
2649  0000               _UART1_ClearFlag:
2651  0000 89            	pushw	x
2652       00000000      OFST:	set	0
2655                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2657  0001 a30020        	cpw	x,#32
2658  0004 2705          	jreq	L052
2659  0006 a30210        	cpw	x,#528
2660  0009 2603          	jrne	L642
2661  000b               L052:
2662  000b 4f            	clr	a
2663  000c 2010          	jra	L252
2664  000e               L642:
2665  000e ae0288        	ldw	x,#648
2666  0011 89            	pushw	x
2667  0012 ae0000        	ldw	x,#0
2668  0015 89            	pushw	x
2669  0016 ae0008        	ldw	x,#L371
2670  0019 cd0000        	call	_assert_failed
2672  001c 5b04          	addw	sp,#4
2673  001e               L252:
2674                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2676  001e 1e01          	ldw	x,(OFST+1,sp)
2677  0020 a30020        	cpw	x,#32
2678  0023 2606          	jrne	L3211
2679                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2681  0025 35df5230      	mov	21040,#223
2683  0029 2004          	jra	L5211
2684  002b               L3211:
2685                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2687  002b 72195237      	bres	21047,#4
2688  002f               L5211:
2689                     ; 660 }
2692  002f 85            	popw	x
2693  0030 81            	ret
2776                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2776                     ; 676 {
2777                     .text:	section	.text,new
2778  0000               _UART1_GetITStatus:
2780  0000 89            	pushw	x
2781  0001 89            	pushw	x
2782       00000002      OFST:	set	2
2785                     ; 677   ITStatus pendingbitstatus = RESET;
2787                     ; 678   uint8_t itpos = 0;
2789                     ; 679   uint8_t itmask1 = 0;
2791                     ; 680   uint8_t itmask2 = 0;
2793                     ; 681   uint8_t enablestatus = 0;
2795                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2797  0002 a30277        	cpw	x,#631
2798  0005 271e          	jreq	L062
2799  0007 a30266        	cpw	x,#614
2800  000a 2719          	jreq	L062
2801  000c a30255        	cpw	x,#597
2802  000f 2714          	jreq	L062
2803  0011 a30244        	cpw	x,#580
2804  0014 270f          	jreq	L062
2805  0016 a30235        	cpw	x,#565
2806  0019 270a          	jreq	L062
2807  001b a30346        	cpw	x,#838
2808  001e 2705          	jreq	L062
2809  0020 a30100        	cpw	x,#256
2810  0023 2603          	jrne	L652
2811  0025               L062:
2812  0025 4f            	clr	a
2813  0026 2010          	jra	L262
2814  0028               L652:
2815  0028 ae02ac        	ldw	x,#684
2816  002b 89            	pushw	x
2817  002c ae0000        	ldw	x,#0
2818  002f 89            	pushw	x
2819  0030 ae0008        	ldw	x,#L371
2820  0033 cd0000        	call	_assert_failed
2822  0036 5b04          	addw	sp,#4
2823  0038               L262:
2824                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2826  0038 7b04          	ld	a,(OFST+2,sp)
2827  003a a40f          	and	a,#15
2828  003c 5f            	clrw	x
2829  003d 97            	ld	xl,a
2830  003e a601          	ld	a,#1
2831  0040 5d            	tnzw	x
2832  0041 2704          	jreq	L462
2833  0043               L662:
2834  0043 48            	sll	a
2835  0044 5a            	decw	x
2836  0045 26fc          	jrne	L662
2837  0047               L462:
2838  0047 6b01          	ld	(OFST-1,sp),a
2840                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2842  0049 7b04          	ld	a,(OFST+2,sp)
2843  004b 4e            	swap	a
2844  004c a40f          	and	a,#15
2845  004e 6b02          	ld	(OFST+0,sp),a
2847                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2849  0050 7b02          	ld	a,(OFST+0,sp)
2850  0052 5f            	clrw	x
2851  0053 97            	ld	xl,a
2852  0054 a601          	ld	a,#1
2853  0056 5d            	tnzw	x
2854  0057 2704          	jreq	L072
2855  0059               L272:
2856  0059 48            	sll	a
2857  005a 5a            	decw	x
2858  005b 26fc          	jrne	L272
2859  005d               L072:
2860  005d 6b02          	ld	(OFST+0,sp),a
2862                     ; 695   if (UART1_IT == UART1_IT_PE)
2864  005f 1e03          	ldw	x,(OFST+1,sp)
2865  0061 a30100        	cpw	x,#256
2866  0064 261c          	jrne	L1711
2867                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2869  0066 c65234        	ld	a,21044
2870  0069 1402          	and	a,(OFST+0,sp)
2871  006b 6b02          	ld	(OFST+0,sp),a
2873                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2875  006d c65230        	ld	a,21040
2876  0070 1501          	bcp	a,(OFST-1,sp)
2877  0072 270a          	jreq	L3711
2879  0074 0d02          	tnz	(OFST+0,sp)
2880  0076 2706          	jreq	L3711
2881                     ; 704       pendingbitstatus = SET;
2883  0078 a601          	ld	a,#1
2884  007a 6b02          	ld	(OFST+0,sp),a
2887  007c 2041          	jra	L7711
2888  007e               L3711:
2889                     ; 709       pendingbitstatus = RESET;
2891  007e 0f02          	clr	(OFST+0,sp)
2893  0080 203d          	jra	L7711
2894  0082               L1711:
2895                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2897  0082 1e03          	ldw	x,(OFST+1,sp)
2898  0084 a30346        	cpw	x,#838
2899  0087 261c          	jrne	L1021
2900                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2902  0089 c65237        	ld	a,21047
2903  008c 1402          	and	a,(OFST+0,sp)
2904  008e 6b02          	ld	(OFST+0,sp),a
2906                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2908  0090 c65237        	ld	a,21047
2909  0093 1501          	bcp	a,(OFST-1,sp)
2910  0095 270a          	jreq	L3021
2912  0097 0d02          	tnz	(OFST+0,sp)
2913  0099 2706          	jreq	L3021
2914                     ; 721       pendingbitstatus = SET;
2916  009b a601          	ld	a,#1
2917  009d 6b02          	ld	(OFST+0,sp),a
2920  009f 201e          	jra	L7711
2921  00a1               L3021:
2922                     ; 726       pendingbitstatus = RESET;
2924  00a1 0f02          	clr	(OFST+0,sp)
2926  00a3 201a          	jra	L7711
2927  00a5               L1021:
2928                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2930  00a5 c65235        	ld	a,21045
2931  00a8 1402          	and	a,(OFST+0,sp)
2932  00aa 6b02          	ld	(OFST+0,sp),a
2934                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2936  00ac c65230        	ld	a,21040
2937  00af 1501          	bcp	a,(OFST-1,sp)
2938  00b1 270a          	jreq	L1121
2940  00b3 0d02          	tnz	(OFST+0,sp)
2941  00b5 2706          	jreq	L1121
2942                     ; 737       pendingbitstatus = SET;
2944  00b7 a601          	ld	a,#1
2945  00b9 6b02          	ld	(OFST+0,sp),a
2948  00bb 2002          	jra	L7711
2949  00bd               L1121:
2950                     ; 742       pendingbitstatus = RESET;
2952  00bd 0f02          	clr	(OFST+0,sp)
2954  00bf               L7711:
2955                     ; 747   return  pendingbitstatus;
2957  00bf 7b02          	ld	a,(OFST+0,sp)
2960  00c1 5b04          	addw	sp,#4
2961  00c3 81            	ret
2998                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2998                     ; 776 {
2999                     .text:	section	.text,new
3000  0000               _UART1_ClearITPendingBit:
3002  0000 89            	pushw	x
3003       00000000      OFST:	set	0
3006                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
3008  0001 a30255        	cpw	x,#597
3009  0004 2705          	jreq	L003
3010  0006 a30346        	cpw	x,#838
3011  0009 2603          	jrne	L672
3012  000b               L003:
3013  000b 4f            	clr	a
3014  000c 2010          	jra	L203
3015  000e               L672:
3016  000e ae0309        	ldw	x,#777
3017  0011 89            	pushw	x
3018  0012 ae0000        	ldw	x,#0
3019  0015 89            	pushw	x
3020  0016 ae0008        	ldw	x,#L371
3021  0019 cd0000        	call	_assert_failed
3023  001c 5b04          	addw	sp,#4
3024  001e               L203:
3025                     ; 780   if (UART1_IT == UART1_IT_RXNE)
3027  001e 1e01          	ldw	x,(OFST+1,sp)
3028  0020 a30255        	cpw	x,#597
3029  0023 2606          	jrne	L3321
3030                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
3032  0025 35df5230      	mov	21040,#223
3034  0029 2004          	jra	L5321
3035  002b               L3321:
3036                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
3038  002b 72195237      	bres	21047,#4
3039  002f               L5321:
3040                     ; 789 }
3043  002f 85            	popw	x
3044  0030 81            	ret
3057                     	xdef	_UART1_ClearITPendingBit
3058                     	xdef	_UART1_GetITStatus
3059                     	xdef	_UART1_ClearFlag
3060                     	xdef	_UART1_GetFlagStatus
3061                     	xdef	_UART1_SetPrescaler
3062                     	xdef	_UART1_SetGuardTime
3063                     	xdef	_UART1_SetAddress
3064                     	xdef	_UART1_SendBreak
3065                     	xdef	_UART1_SendData9
3066                     	xdef	_UART1_SendData8
3067                     	xdef	_UART1_ReceiveData9
3068                     	xdef	_UART1_ReceiveData8
3069                     	xdef	_UART1_ReceiverWakeUpCmd
3070                     	xdef	_UART1_WakeUpConfig
3071                     	xdef	_UART1_SmartCardNACKCmd
3072                     	xdef	_UART1_SmartCardCmd
3073                     	xdef	_UART1_LINCmd
3074                     	xdef	_UART1_LINBreakDetectionConfig
3075                     	xdef	_UART1_IrDACmd
3076                     	xdef	_UART1_IrDAConfig
3077                     	xdef	_UART1_HalfDuplexCmd
3078                     	xdef	_UART1_ITConfig
3079                     	xdef	_UART1_Cmd
3080                     	xdef	_UART1_Init
3081                     	xdef	_UART1_DeInit
3082                     	xref	_assert_failed
3083                     	xref	_CLK_GetClockFreq
3084                     	switch	.const
3085  0008               L371:
3086  0008 7372635c7374  	dc.b	"src\stm8s_uart1.c",0
3087                     	xref.b	c_lreg
3088                     	xref.b	c_x
3108                     	xref	c_lsub
3109                     	xref	c_smul
3110                     	xref	c_ludv
3111                     	xref	c_rtol
3112                     	xref	c_llsh
3113                     	xref	c_lcmp
3114                     	xref	c_ltor
3115                     	end
