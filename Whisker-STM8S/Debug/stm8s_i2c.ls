   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 67 void I2C_DeInit(void)
  43                     ; 68 {
  45                     .text:	section	.text,new
  46  0000               _I2C_DeInit:
  50                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  52  0000 725f5210      	clr	21008
  53                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  55  0004 725f5211      	clr	21009
  56                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  58  0008 725f5212      	clr	21010
  59                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  61  000c 725f5213      	clr	21011
  62                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  64  0010 725f5214      	clr	21012
  65                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  67  0014 725f521a      	clr	21018
  68                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  70  0018 725f521b      	clr	21019
  71                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  73  001c 725f521c      	clr	21020
  74                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  76  0020 3502521d      	mov	21021,#2
  77                     ; 78 }
  80  0024 81            	ret
 260                     .const:	section	.text
 261  0000               L44:
 262  0000 00061a81      	dc.l	400001
 263  0004               L05:
 264  0004 000186a1      	dc.l	100001
 265  0008               L25:
 266  0008 000f4240      	dc.l	1000000
 267                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 267                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 267                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 267                     ; 99 {
 268                     .text:	section	.text,new
 269  0000               _I2C_Init:
 271  0000 5209          	subw	sp,#9
 272       00000009      OFST:	set	9
 275                     ; 100   uint16_t result = 0x0004;
 277                     ; 101   uint16_t tmpval = 0;
 279                     ; 102   uint8_t tmpccrh = 0;
 281  0002 0f07          	clr	(OFST-2,sp)
 283                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 285  0004 0d13          	tnz	(OFST+10,sp)
 286  0006 270c          	jreq	L21
 287  0008 7b13          	ld	a,(OFST+10,sp)
 288  000a a101          	cp	a,#1
 289  000c 2706          	jreq	L21
 290  000e 7b13          	ld	a,(OFST+10,sp)
 291  0010 a102          	cp	a,#2
 292  0012 2603          	jrne	L01
 293  0014               L21:
 294  0014 4f            	clr	a
 295  0015 2010          	jra	L41
 296  0017               L01:
 297  0017 ae0069        	ldw	x,#105
 298  001a 89            	pushw	x
 299  001b ae0000        	ldw	x,#0
 300  001e 89            	pushw	x
 301  001f ae000c        	ldw	x,#L131
 302  0022 cd0000        	call	_assert_failed
 304  0025 5b04          	addw	sp,#4
 305  0027               L41:
 306                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 308  0027 0d14          	tnz	(OFST+11,sp)
 309  0029 2706          	jreq	L02
 310  002b 7b14          	ld	a,(OFST+11,sp)
 311  002d a180          	cp	a,#128
 312  002f 2603          	jrne	L61
 313  0031               L02:
 314  0031 4f            	clr	a
 315  0032 2010          	jra	L22
 316  0034               L61:
 317  0034 ae006a        	ldw	x,#106
 318  0037 89            	pushw	x
 319  0038 ae0000        	ldw	x,#0
 320  003b 89            	pushw	x
 321  003c ae000c        	ldw	x,#L131
 322  003f cd0000        	call	_assert_failed
 324  0042 5b04          	addw	sp,#4
 325  0044               L22:
 326                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 328  0044 1e10          	ldw	x,(OFST+7,sp)
 329  0046 a30400        	cpw	x,#1024
 330  0049 2403          	jruge	L42
 331  004b 4f            	clr	a
 332  004c 2010          	jra	L62
 333  004e               L42:
 334  004e ae006b        	ldw	x,#107
 335  0051 89            	pushw	x
 336  0052 ae0000        	ldw	x,#0
 337  0055 89            	pushw	x
 338  0056 ae000c        	ldw	x,#L131
 339  0059 cd0000        	call	_assert_failed
 341  005c 5b04          	addw	sp,#4
 342  005e               L62:
 343                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 345  005e 0d12          	tnz	(OFST+9,sp)
 346  0060 2706          	jreq	L23
 347  0062 7b12          	ld	a,(OFST+9,sp)
 348  0064 a140          	cp	a,#64
 349  0066 2603          	jrne	L03
 350  0068               L23:
 351  0068 4f            	clr	a
 352  0069 2010          	jra	L43
 353  006b               L03:
 354  006b ae006c        	ldw	x,#108
 355  006e 89            	pushw	x
 356  006f ae0000        	ldw	x,#0
 357  0072 89            	pushw	x
 358  0073 ae000c        	ldw	x,#L131
 359  0076 cd0000        	call	_assert_failed
 361  0079 5b04          	addw	sp,#4
 362  007b               L43:
 363                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 365  007b 0d15          	tnz	(OFST+12,sp)
 366  007d 2709          	jreq	L63
 367  007f 7b15          	ld	a,(OFST+12,sp)
 368  0081 a111          	cp	a,#17
 369  0083 2403          	jruge	L63
 370  0085 4f            	clr	a
 371  0086 2010          	jra	L04
 372  0088               L63:
 373  0088 ae006d        	ldw	x,#109
 374  008b 89            	pushw	x
 375  008c ae0000        	ldw	x,#0
 376  008f 89            	pushw	x
 377  0090 ae000c        	ldw	x,#L131
 378  0093 cd0000        	call	_assert_failed
 380  0096 5b04          	addw	sp,#4
 381  0098               L04:
 382                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 384  0098 96            	ldw	x,sp
 385  0099 1c000c        	addw	x,#OFST+3
 386  009c cd0000        	call	c_lzmp
 388  009f 2712          	jreq	L24
 389  00a1 96            	ldw	x,sp
 390  00a2 1c000c        	addw	x,#OFST+3
 391  00a5 cd0000        	call	c_ltor
 393  00a8 ae0000        	ldw	x,#L44
 394  00ab cd0000        	call	c_lcmp
 396  00ae 2403          	jruge	L24
 397  00b0 4f            	clr	a
 398  00b1 2010          	jra	L64
 399  00b3               L24:
 400  00b3 ae006e        	ldw	x,#110
 401  00b6 89            	pushw	x
 402  00b7 ae0000        	ldw	x,#0
 403  00ba 89            	pushw	x
 404  00bb ae000c        	ldw	x,#L131
 405  00be cd0000        	call	_assert_failed
 407  00c1 5b04          	addw	sp,#4
 408  00c3               L64:
 409                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 411  00c3 c65212        	ld	a,21010
 412  00c6 a4c0          	and	a,#192
 413  00c8 c75212        	ld	21010,a
 414                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 416  00cb c65212        	ld	a,21010
 417  00ce 1a15          	or	a,(OFST+12,sp)
 418  00d0 c75212        	ld	21010,a
 419                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 421  00d3 72115210      	bres	21008,#0
 422                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 424  00d7 c6521c        	ld	a,21020
 425  00da a430          	and	a,#48
 426  00dc c7521c        	ld	21020,a
 427                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 429  00df 725f521b      	clr	21019
 430                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 432  00e3 96            	ldw	x,sp
 433  00e4 1c000c        	addw	x,#OFST+3
 434  00e7 cd0000        	call	c_ltor
 436  00ea ae0004        	ldw	x,#L05
 437  00ed cd0000        	call	c_lcmp
 439  00f0 2403          	jruge	L45
 440  00f2 cc017f        	jp	L331
 441  00f5               L45:
 442                     ; 131     tmpccrh = I2C_CCRH_FS;
 444  00f5 a680          	ld	a,#128
 445  00f7 6b07          	ld	(OFST-2,sp),a
 447                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 449  00f9 0d12          	tnz	(OFST+9,sp)
 450  00fb 2630          	jrne	L531
 451                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 453  00fd 96            	ldw	x,sp
 454  00fe 1c000c        	addw	x,#OFST+3
 455  0101 cd0000        	call	c_ltor
 457  0104 a603          	ld	a,#3
 458  0106 cd0000        	call	c_smul
 460  0109 96            	ldw	x,sp
 461  010a 1c0001        	addw	x,#OFST-8
 462  010d cd0000        	call	c_rtol
 465  0110 7b15          	ld	a,(OFST+12,sp)
 466  0112 b703          	ld	c_lreg+3,a
 467  0114 3f02          	clr	c_lreg+2
 468  0116 3f01          	clr	c_lreg+1
 469  0118 3f00          	clr	c_lreg
 470  011a ae0008        	ldw	x,#L25
 471  011d cd0000        	call	c_lmul
 473  0120 96            	ldw	x,sp
 474  0121 1c0001        	addw	x,#OFST-8
 475  0124 cd0000        	call	c_ludv
 477  0127 be02          	ldw	x,c_lreg+2
 478  0129 1f08          	ldw	(OFST-1,sp),x
 481  012b 2034          	jra	L731
 482  012d               L531:
 483                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 485  012d 96            	ldw	x,sp
 486  012e 1c000c        	addw	x,#OFST+3
 487  0131 cd0000        	call	c_ltor
 489  0134 a619          	ld	a,#25
 490  0136 cd0000        	call	c_smul
 492  0139 96            	ldw	x,sp
 493  013a 1c0001        	addw	x,#OFST-8
 494  013d cd0000        	call	c_rtol
 497  0140 7b15          	ld	a,(OFST+12,sp)
 498  0142 b703          	ld	c_lreg+3,a
 499  0144 3f02          	clr	c_lreg+2
 500  0146 3f01          	clr	c_lreg+1
 501  0148 3f00          	clr	c_lreg
 502  014a ae0008        	ldw	x,#L25
 503  014d cd0000        	call	c_lmul
 505  0150 96            	ldw	x,sp
 506  0151 1c0001        	addw	x,#OFST-8
 507  0154 cd0000        	call	c_ludv
 509  0157 be02          	ldw	x,c_lreg+2
 510  0159 1f08          	ldw	(OFST-1,sp),x
 512                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 514  015b 7b07          	ld	a,(OFST-2,sp)
 515  015d aa40          	or	a,#64
 516  015f 6b07          	ld	(OFST-2,sp),a
 518  0161               L731:
 519                     ; 147     if (result < (uint16_t)0x01)
 521  0161 1e08          	ldw	x,(OFST-1,sp)
 522  0163 2605          	jrne	L141
 523                     ; 150       result = (uint16_t)0x0001;
 525  0165 ae0001        	ldw	x,#1
 526  0168 1f08          	ldw	(OFST-1,sp),x
 528  016a               L141:
 529                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 531  016a 7b15          	ld	a,(OFST+12,sp)
 532  016c 97            	ld	xl,a
 533  016d a603          	ld	a,#3
 534  016f 42            	mul	x,a
 535  0170 a60a          	ld	a,#10
 536  0172 cd0000        	call	c_sdivx
 538  0175 5c            	incw	x
 539  0176 1f05          	ldw	(OFST-4,sp),x
 541                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 543  0178 7b06          	ld	a,(OFST-3,sp)
 544  017a c7521d        	ld	21021,a
 546  017d 2043          	jra	L341
 547  017f               L331:
 548                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 550  017f 96            	ldw	x,sp
 551  0180 1c000c        	addw	x,#OFST+3
 552  0183 cd0000        	call	c_ltor
 554  0186 3803          	sll	c_lreg+3
 555  0188 3902          	rlc	c_lreg+2
 556  018a 3901          	rlc	c_lreg+1
 557  018c 3900          	rlc	c_lreg
 558  018e 96            	ldw	x,sp
 559  018f 1c0001        	addw	x,#OFST-8
 560  0192 cd0000        	call	c_rtol
 563  0195 7b15          	ld	a,(OFST+12,sp)
 564  0197 b703          	ld	c_lreg+3,a
 565  0199 3f02          	clr	c_lreg+2
 566  019b 3f01          	clr	c_lreg+1
 567  019d 3f00          	clr	c_lreg
 568  019f ae0008        	ldw	x,#L25
 569  01a2 cd0000        	call	c_lmul
 571  01a5 96            	ldw	x,sp
 572  01a6 1c0001        	addw	x,#OFST-8
 573  01a9 cd0000        	call	c_ludv
 575  01ac be02          	ldw	x,c_lreg+2
 576  01ae 1f08          	ldw	(OFST-1,sp),x
 578                     ; 167     if (result < (uint16_t)0x0004)
 580  01b0 1e08          	ldw	x,(OFST-1,sp)
 581  01b2 a30004        	cpw	x,#4
 582  01b5 2405          	jruge	L541
 583                     ; 170       result = (uint16_t)0x0004;
 585  01b7 ae0004        	ldw	x,#4
 586  01ba 1f08          	ldw	(OFST-1,sp),x
 588  01bc               L541:
 589                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 591  01bc 7b15          	ld	a,(OFST+12,sp)
 592  01be 4c            	inc	a
 593  01bf c7521d        	ld	21021,a
 594  01c2               L341:
 595                     ; 181   I2C->CCRL = (uint8_t)result;
 597  01c2 7b09          	ld	a,(OFST+0,sp)
 598  01c4 c7521b        	ld	21019,a
 599                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 601  01c7 7b08          	ld	a,(OFST-1,sp)
 602  01c9 a40f          	and	a,#15
 603  01cb 1a07          	or	a,(OFST-2,sp)
 604  01cd c7521c        	ld	21020,a
 605                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 607  01d0 72105210      	bset	21008,#0
 608                     ; 188   I2C_AcknowledgeConfig(Ack);
 610  01d4 7b13          	ld	a,(OFST+10,sp)
 611  01d6 cd0000        	call	_I2C_AcknowledgeConfig
 613                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 615  01d9 7b11          	ld	a,(OFST+8,sp)
 616  01db c75213        	ld	21011,a
 617                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 617                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 619  01de 1e10          	ldw	x,(OFST+7,sp)
 620  01e0 4f            	clr	a
 621  01e1 01            	rrwa	x,a
 622  01e2 48            	sll	a
 623  01e3 59            	rlcw	x
 624  01e4 01            	rrwa	x,a
 625  01e5 a406          	and	a,#6
 626  01e7 5f            	clrw	x
 627  01e8 6b04          	ld	(OFST-5,sp),a
 629  01ea 7b14          	ld	a,(OFST+11,sp)
 630  01ec aa40          	or	a,#64
 631  01ee 1a04          	or	a,(OFST-5,sp)
 632  01f0 c75214        	ld	21012,a
 633                     ; 194 }
 636  01f3 5b09          	addw	sp,#9
 637  01f5 81            	ret
 693                     ; 202 void I2C_Cmd(FunctionalState NewState)
 693                     ; 203 {
 694                     .text:	section	.text,new
 695  0000               _I2C_Cmd:
 697  0000 88            	push	a
 698       00000000      OFST:	set	0
 701                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 703  0001 4d            	tnz	a
 704  0002 2704          	jreq	L26
 705  0004 a101          	cp	a,#1
 706  0006 2603          	jrne	L06
 707  0008               L26:
 708  0008 4f            	clr	a
 709  0009 2010          	jra	L46
 710  000b               L06:
 711  000b ae00cd        	ldw	x,#205
 712  000e 89            	pushw	x
 713  000f ae0000        	ldw	x,#0
 714  0012 89            	pushw	x
 715  0013 ae000c        	ldw	x,#L131
 716  0016 cd0000        	call	_assert_failed
 718  0019 5b04          	addw	sp,#4
 719  001b               L46:
 720                     ; 207   if (NewState != DISABLE)
 722  001b 0d01          	tnz	(OFST+1,sp)
 723  001d 2706          	jreq	L571
 724                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 726  001f 72105210      	bset	21008,#0
 728  0023 2004          	jra	L771
 729  0025               L571:
 730                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 732  0025 72115210      	bres	21008,#0
 733  0029               L771:
 734                     ; 217 }
 737  0029 84            	pop	a
 738  002a 81            	ret
 774                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 774                     ; 226 {
 775                     .text:	section	.text,new
 776  0000               _I2C_GeneralCallCmd:
 778  0000 88            	push	a
 779       00000000      OFST:	set	0
 782                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 784  0001 4d            	tnz	a
 785  0002 2704          	jreq	L27
 786  0004 a101          	cp	a,#1
 787  0006 2603          	jrne	L07
 788  0008               L27:
 789  0008 4f            	clr	a
 790  0009 2010          	jra	L47
 791  000b               L07:
 792  000b ae00e4        	ldw	x,#228
 793  000e 89            	pushw	x
 794  000f ae0000        	ldw	x,#0
 795  0012 89            	pushw	x
 796  0013 ae000c        	ldw	x,#L131
 797  0016 cd0000        	call	_assert_failed
 799  0019 5b04          	addw	sp,#4
 800  001b               L47:
 801                     ; 230   if (NewState != DISABLE)
 803  001b 0d01          	tnz	(OFST+1,sp)
 804  001d 2706          	jreq	L712
 805                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 807  001f 721c5210      	bset	21008,#6
 809  0023 2004          	jra	L122
 810  0025               L712:
 811                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 813  0025 721d5210      	bres	21008,#6
 814  0029               L122:
 815                     ; 240 }
 818  0029 84            	pop	a
 819  002a 81            	ret
 855                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 855                     ; 251 {
 856                     .text:	section	.text,new
 857  0000               _I2C_GenerateSTART:
 859  0000 88            	push	a
 860       00000000      OFST:	set	0
 863                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 865  0001 4d            	tnz	a
 866  0002 2704          	jreq	L201
 867  0004 a101          	cp	a,#1
 868  0006 2603          	jrne	L001
 869  0008               L201:
 870  0008 4f            	clr	a
 871  0009 2010          	jra	L401
 872  000b               L001:
 873  000b ae00fd        	ldw	x,#253
 874  000e 89            	pushw	x
 875  000f ae0000        	ldw	x,#0
 876  0012 89            	pushw	x
 877  0013 ae000c        	ldw	x,#L131
 878  0016 cd0000        	call	_assert_failed
 880  0019 5b04          	addw	sp,#4
 881  001b               L401:
 882                     ; 255   if (NewState != DISABLE)
 884  001b 0d01          	tnz	(OFST+1,sp)
 885  001d 2706          	jreq	L142
 886                     ; 258     I2C->CR2 |= I2C_CR2_START;
 888  001f 72105211      	bset	21009,#0
 890  0023 2004          	jra	L342
 891  0025               L142:
 892                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 894  0025 72115211      	bres	21009,#0
 895  0029               L342:
 896                     ; 265 }
 899  0029 84            	pop	a
 900  002a 81            	ret
 936                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 936                     ; 274 {
 937                     .text:	section	.text,new
 938  0000               _I2C_GenerateSTOP:
 940  0000 88            	push	a
 941       00000000      OFST:	set	0
 944                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 946  0001 4d            	tnz	a
 947  0002 2704          	jreq	L211
 948  0004 a101          	cp	a,#1
 949  0006 2603          	jrne	L011
 950  0008               L211:
 951  0008 4f            	clr	a
 952  0009 2010          	jra	L411
 953  000b               L011:
 954  000b ae0114        	ldw	x,#276
 955  000e 89            	pushw	x
 956  000f ae0000        	ldw	x,#0
 957  0012 89            	pushw	x
 958  0013 ae000c        	ldw	x,#L131
 959  0016 cd0000        	call	_assert_failed
 961  0019 5b04          	addw	sp,#4
 962  001b               L411:
 963                     ; 278   if (NewState != DISABLE)
 965  001b 0d01          	tnz	(OFST+1,sp)
 966  001d 2706          	jreq	L362
 967                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 969  001f 72125211      	bset	21009,#1
 971  0023 2004          	jra	L562
 972  0025               L362:
 973                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 975  0025 72135211      	bres	21009,#1
 976  0029               L562:
 977                     ; 288 }
 980  0029 84            	pop	a
 981  002a 81            	ret
1018                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1018                     ; 297 {
1019                     .text:	section	.text,new
1020  0000               _I2C_SoftwareResetCmd:
1022  0000 88            	push	a
1023       00000000      OFST:	set	0
1026                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1028  0001 4d            	tnz	a
1029  0002 2704          	jreq	L221
1030  0004 a101          	cp	a,#1
1031  0006 2603          	jrne	L021
1032  0008               L221:
1033  0008 4f            	clr	a
1034  0009 2010          	jra	L421
1035  000b               L021:
1036  000b ae012b        	ldw	x,#299
1037  000e 89            	pushw	x
1038  000f ae0000        	ldw	x,#0
1039  0012 89            	pushw	x
1040  0013 ae000c        	ldw	x,#L131
1041  0016 cd0000        	call	_assert_failed
1043  0019 5b04          	addw	sp,#4
1044  001b               L421:
1045                     ; 301   if (NewState != DISABLE)
1047  001b 0d01          	tnz	(OFST+1,sp)
1048  001d 2706          	jreq	L503
1049                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1051  001f 721e5211      	bset	21009,#7
1053  0023 2004          	jra	L703
1054  0025               L503:
1055                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1057  0025 721f5211      	bres	21009,#7
1058  0029               L703:
1059                     ; 311 }
1062  0029 84            	pop	a
1063  002a 81            	ret
1100                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1100                     ; 321 {
1101                     .text:	section	.text,new
1102  0000               _I2C_StretchClockCmd:
1104  0000 88            	push	a
1105       00000000      OFST:	set	0
1108                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1110  0001 4d            	tnz	a
1111  0002 2704          	jreq	L231
1112  0004 a101          	cp	a,#1
1113  0006 2603          	jrne	L031
1114  0008               L231:
1115  0008 4f            	clr	a
1116  0009 2010          	jra	L431
1117  000b               L031:
1118  000b ae0143        	ldw	x,#323
1119  000e 89            	pushw	x
1120  000f ae0000        	ldw	x,#0
1121  0012 89            	pushw	x
1122  0013 ae000c        	ldw	x,#L131
1123  0016 cd0000        	call	_assert_failed
1125  0019 5b04          	addw	sp,#4
1126  001b               L431:
1127                     ; 325   if (NewState != DISABLE)
1129  001b 0d01          	tnz	(OFST+1,sp)
1130  001d 2706          	jreq	L723
1131                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1133  001f 721f5210      	bres	21008,#7
1135  0023 2004          	jra	L133
1136  0025               L723:
1137                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1139  0025 721e5210      	bset	21008,#7
1140  0029               L133:
1141                     ; 336 }
1144  0029 84            	pop	a
1145  002a 81            	ret
1182                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1182                     ; 346 {
1183                     .text:	section	.text,new
1184  0000               _I2C_AcknowledgeConfig:
1186  0000 88            	push	a
1187       00000000      OFST:	set	0
1190                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1192  0001 4d            	tnz	a
1193  0002 2708          	jreq	L241
1194  0004 a101          	cp	a,#1
1195  0006 2704          	jreq	L241
1196  0008 a102          	cp	a,#2
1197  000a 2603          	jrne	L041
1198  000c               L241:
1199  000c 4f            	clr	a
1200  000d 2010          	jra	L441
1201  000f               L041:
1202  000f ae015c        	ldw	x,#348
1203  0012 89            	pushw	x
1204  0013 ae0000        	ldw	x,#0
1205  0016 89            	pushw	x
1206  0017 ae000c        	ldw	x,#L131
1207  001a cd0000        	call	_assert_failed
1209  001d 5b04          	addw	sp,#4
1210  001f               L441:
1211                     ; 350   if (Ack == I2C_ACK_NONE)
1213  001f 0d01          	tnz	(OFST+1,sp)
1214  0021 2606          	jrne	L153
1215                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1217  0023 72155211      	bres	21009,#2
1219  0027 2014          	jra	L353
1220  0029               L153:
1221                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1223  0029 72145211      	bset	21009,#2
1224                     ; 360     if (Ack == I2C_ACK_CURR)
1226  002d 7b01          	ld	a,(OFST+1,sp)
1227  002f a101          	cp	a,#1
1228  0031 2606          	jrne	L553
1229                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1231  0033 72175211      	bres	21009,#3
1233  0037 2004          	jra	L353
1234  0039               L553:
1235                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1237  0039 72165211      	bset	21009,#3
1238  003d               L353:
1239                     ; 371 }
1242  003d 84            	pop	a
1243  003e 81            	ret
1316                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1316                     ; 382 {
1317                     .text:	section	.text,new
1318  0000               _I2C_ITConfig:
1320  0000 89            	pushw	x
1321       00000000      OFST:	set	0
1324                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1326  0001 9e            	ld	a,xh
1327  0002 a101          	cp	a,#1
1328  0004 271e          	jreq	L251
1329  0006 9e            	ld	a,xh
1330  0007 a102          	cp	a,#2
1331  0009 2719          	jreq	L251
1332  000b 9e            	ld	a,xh
1333  000c a104          	cp	a,#4
1334  000e 2714          	jreq	L251
1335  0010 9e            	ld	a,xh
1336  0011 a103          	cp	a,#3
1337  0013 270f          	jreq	L251
1338  0015 9e            	ld	a,xh
1339  0016 a105          	cp	a,#5
1340  0018 270a          	jreq	L251
1341  001a 9e            	ld	a,xh
1342  001b a106          	cp	a,#6
1343  001d 2705          	jreq	L251
1344  001f 9e            	ld	a,xh
1345  0020 a107          	cp	a,#7
1346  0022 2603          	jrne	L051
1347  0024               L251:
1348  0024 4f            	clr	a
1349  0025 2010          	jra	L451
1350  0027               L051:
1351  0027 ae0180        	ldw	x,#384
1352  002a 89            	pushw	x
1353  002b ae0000        	ldw	x,#0
1354  002e 89            	pushw	x
1355  002f ae000c        	ldw	x,#L131
1356  0032 cd0000        	call	_assert_failed
1358  0035 5b04          	addw	sp,#4
1359  0037               L451:
1360                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1362  0037 0d02          	tnz	(OFST+2,sp)
1363  0039 2706          	jreq	L061
1364  003b 7b02          	ld	a,(OFST+2,sp)
1365  003d a101          	cp	a,#1
1366  003f 2603          	jrne	L651
1367  0041               L061:
1368  0041 4f            	clr	a
1369  0042 2010          	jra	L261
1370  0044               L651:
1371  0044 ae0181        	ldw	x,#385
1372  0047 89            	pushw	x
1373  0048 ae0000        	ldw	x,#0
1374  004b 89            	pushw	x
1375  004c ae000c        	ldw	x,#L131
1376  004f cd0000        	call	_assert_failed
1378  0052 5b04          	addw	sp,#4
1379  0054               L261:
1380                     ; 387   if (NewState != DISABLE)
1382  0054 0d02          	tnz	(OFST+2,sp)
1383  0056 270a          	jreq	L514
1384                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1386  0058 c6521a        	ld	a,21018
1387  005b 1a01          	or	a,(OFST+1,sp)
1388  005d c7521a        	ld	21018,a
1390  0060 2009          	jra	L714
1391  0062               L514:
1392                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1394  0062 7b01          	ld	a,(OFST+1,sp)
1395  0064 43            	cpl	a
1396  0065 c4521a        	and	a,21018
1397  0068 c7521a        	ld	21018,a
1398  006b               L714:
1399                     ; 397 }
1402  006b 85            	popw	x
1403  006c 81            	ret
1440                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1440                     ; 406 {
1441                     .text:	section	.text,new
1442  0000               _I2C_FastModeDutyCycleConfig:
1444  0000 88            	push	a
1445       00000000      OFST:	set	0
1448                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1450  0001 4d            	tnz	a
1451  0002 2704          	jreq	L071
1452  0004 a140          	cp	a,#64
1453  0006 2603          	jrne	L661
1454  0008               L071:
1455  0008 4f            	clr	a
1456  0009 2010          	jra	L271
1457  000b               L661:
1458  000b ae0198        	ldw	x,#408
1459  000e 89            	pushw	x
1460  000f ae0000        	ldw	x,#0
1461  0012 89            	pushw	x
1462  0013 ae000c        	ldw	x,#L131
1463  0016 cd0000        	call	_assert_failed
1465  0019 5b04          	addw	sp,#4
1466  001b               L271:
1467                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1469  001b 7b01          	ld	a,(OFST+1,sp)
1470  001d a140          	cp	a,#64
1471  001f 2606          	jrne	L734
1472                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1474  0021 721c521c      	bset	21020,#6
1476  0025 2004          	jra	L144
1477  0027               L734:
1478                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1480  0027 721d521c      	bres	21020,#6
1481  002b               L144:
1482                     ; 420 }
1485  002b 84            	pop	a
1486  002c 81            	ret
1509                     ; 427 uint8_t I2C_ReceiveData(void)
1509                     ; 428 {
1510                     .text:	section	.text,new
1511  0000               _I2C_ReceiveData:
1515                     ; 430   return ((uint8_t)I2C->DR);
1517  0000 c65216        	ld	a,21014
1520  0003 81            	ret
1586                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1586                     ; 441 {
1587                     .text:	section	.text,new
1588  0000               _I2C_Send7bitAddress:
1590  0000 89            	pushw	x
1591       00000000      OFST:	set	0
1594                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1596  0001 9e            	ld	a,xh
1597  0002 a501          	bcp	a,#1
1598  0004 2603          	jrne	L002
1599  0006 4f            	clr	a
1600  0007 2010          	jra	L202
1601  0009               L002:
1602  0009 ae01bb        	ldw	x,#443
1603  000c 89            	pushw	x
1604  000d ae0000        	ldw	x,#0
1605  0010 89            	pushw	x
1606  0011 ae000c        	ldw	x,#L131
1607  0014 cd0000        	call	_assert_failed
1609  0017 5b04          	addw	sp,#4
1610  0019               L202:
1611                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1613  0019 0d02          	tnz	(OFST+2,sp)
1614  001b 2706          	jreq	L602
1615  001d 7b02          	ld	a,(OFST+2,sp)
1616  001f a101          	cp	a,#1
1617  0021 2603          	jrne	L402
1618  0023               L602:
1619  0023 4f            	clr	a
1620  0024 2010          	jra	L012
1621  0026               L402:
1622  0026 ae01bc        	ldw	x,#444
1623  0029 89            	pushw	x
1624  002a ae0000        	ldw	x,#0
1625  002d 89            	pushw	x
1626  002e ae000c        	ldw	x,#L131
1627  0031 cd0000        	call	_assert_failed
1629  0034 5b04          	addw	sp,#4
1630  0036               L012:
1631                     ; 447   Address &= (uint8_t)0xFE;
1633  0036 7b01          	ld	a,(OFST+1,sp)
1634  0038 a4fe          	and	a,#254
1635  003a 6b01          	ld	(OFST+1,sp),a
1636                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1638  003c 7b01          	ld	a,(OFST+1,sp)
1639  003e 1a02          	or	a,(OFST+2,sp)
1640  0040 c75216        	ld	21014,a
1641                     ; 451 }
1644  0043 85            	popw	x
1645  0044 81            	ret
1679                     ; 458 void I2C_SendData(uint8_t Data)
1679                     ; 459 {
1680                     .text:	section	.text,new
1681  0000               _I2C_SendData:
1685                     ; 461   I2C->DR = Data;
1687  0000 c75216        	ld	21014,a
1688                     ; 462 }
1691  0003 81            	ret
1916                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1916                     ; 579 {
1917                     .text:	section	.text,new
1918  0000               _I2C_CheckEvent:
1920  0000 89            	pushw	x
1921  0001 5206          	subw	sp,#6
1922       00000006      OFST:	set	6
1925                     ; 580   __IO uint16_t lastevent = 0x00;
1927  0003 5f            	clrw	x
1928  0004 1f04          	ldw	(OFST-2,sp),x
1930                     ; 581   uint8_t flag1 = 0x00 ;
1932                     ; 582   uint8_t flag2 = 0x00;
1934                     ; 583   ErrorStatus status = ERROR;
1936                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1938  0006 1e07          	ldw	x,(OFST+1,sp)
1939  0008 a30682        	cpw	x,#1666
1940  000b 2769          	jreq	L022
1941  000d 1e07          	ldw	x,(OFST+1,sp)
1942  000f a30202        	cpw	x,#514
1943  0012 2762          	jreq	L022
1944  0014 1e07          	ldw	x,(OFST+1,sp)
1945  0016 a31200        	cpw	x,#4608
1946  0019 275b          	jreq	L022
1947  001b 1e07          	ldw	x,(OFST+1,sp)
1948  001d a30240        	cpw	x,#576
1949  0020 2754          	jreq	L022
1950  0022 1e07          	ldw	x,(OFST+1,sp)
1951  0024 a30350        	cpw	x,#848
1952  0027 274d          	jreq	L022
1953  0029 1e07          	ldw	x,(OFST+1,sp)
1954  002b a30684        	cpw	x,#1668
1955  002e 2746          	jreq	L022
1956  0030 1e07          	ldw	x,(OFST+1,sp)
1957  0032 a30794        	cpw	x,#1940
1958  0035 273f          	jreq	L022
1959  0037 1e07          	ldw	x,(OFST+1,sp)
1960  0039 a30004        	cpw	x,#4
1961  003c 2738          	jreq	L022
1962  003e 1e07          	ldw	x,(OFST+1,sp)
1963  0040 a30010        	cpw	x,#16
1964  0043 2731          	jreq	L022
1965  0045 1e07          	ldw	x,(OFST+1,sp)
1966  0047 a30301        	cpw	x,#769
1967  004a 272a          	jreq	L022
1968  004c 1e07          	ldw	x,(OFST+1,sp)
1969  004e a30782        	cpw	x,#1922
1970  0051 2723          	jreq	L022
1971  0053 1e07          	ldw	x,(OFST+1,sp)
1972  0055 a30302        	cpw	x,#770
1973  0058 271c          	jreq	L022
1974  005a 1e07          	ldw	x,(OFST+1,sp)
1975  005c a30340        	cpw	x,#832
1976  005f 2715          	jreq	L022
1977  0061 1e07          	ldw	x,(OFST+1,sp)
1978  0063 a30784        	cpw	x,#1924
1979  0066 270e          	jreq	L022
1980  0068 1e07          	ldw	x,(OFST+1,sp)
1981  006a a30780        	cpw	x,#1920
1982  006d 2707          	jreq	L022
1983  006f 1e07          	ldw	x,(OFST+1,sp)
1984  0071 a30308        	cpw	x,#776
1985  0074 2603          	jrne	L612
1986  0076               L022:
1987  0076 4f            	clr	a
1988  0077 2010          	jra	L222
1989  0079               L612:
1990  0079 ae024a        	ldw	x,#586
1991  007c 89            	pushw	x
1992  007d ae0000        	ldw	x,#0
1993  0080 89            	pushw	x
1994  0081 ae000c        	ldw	x,#L131
1995  0084 cd0000        	call	_assert_failed
1997  0087 5b04          	addw	sp,#4
1998  0089               L222:
1999                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
2001  0089 1e07          	ldw	x,(OFST+1,sp)
2002  008b a30004        	cpw	x,#4
2003  008e 260b          	jrne	L336
2004                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
2006  0090 c65218        	ld	a,21016
2007  0093 a404          	and	a,#4
2008  0095 5f            	clrw	x
2009  0096 97            	ld	xl,a
2010  0097 1f04          	ldw	(OFST-2,sp),x
2013  0099 201f          	jra	L536
2014  009b               L336:
2015                     ; 594     flag1 = I2C->SR1;
2017  009b c65217        	ld	a,21015
2018  009e 6b03          	ld	(OFST-3,sp),a
2020                     ; 595     flag2 = I2C->SR3;
2022  00a0 c65219        	ld	a,21017
2023  00a3 6b06          	ld	(OFST+0,sp),a
2025                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2027  00a5 7b03          	ld	a,(OFST-3,sp)
2028  00a7 5f            	clrw	x
2029  00a8 97            	ld	xl,a
2030  00a9 1f01          	ldw	(OFST-5,sp),x
2032  00ab 7b06          	ld	a,(OFST+0,sp)
2033  00ad 5f            	clrw	x
2034  00ae 97            	ld	xl,a
2035  00af 4f            	clr	a
2036  00b0 02            	rlwa	x,a
2037  00b1 01            	rrwa	x,a
2038  00b2 1a02          	or	a,(OFST-4,sp)
2039  00b4 01            	rrwa	x,a
2040  00b5 1a01          	or	a,(OFST-5,sp)
2041  00b7 01            	rrwa	x,a
2042  00b8 1f04          	ldw	(OFST-2,sp),x
2044  00ba               L536:
2045                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2047  00ba 1e04          	ldw	x,(OFST-2,sp)
2048  00bc 01            	rrwa	x,a
2049  00bd 1408          	and	a,(OFST+2,sp)
2050  00bf 01            	rrwa	x,a
2051  00c0 1407          	and	a,(OFST+1,sp)
2052  00c2 01            	rrwa	x,a
2053  00c3 1307          	cpw	x,(OFST+1,sp)
2054  00c5 2606          	jrne	L736
2055                     ; 602     status = SUCCESS;
2057  00c7 a601          	ld	a,#1
2058  00c9 6b06          	ld	(OFST+0,sp),a
2061  00cb 2002          	jra	L146
2062  00cd               L736:
2063                     ; 607     status = ERROR;
2065  00cd 0f06          	clr	(OFST+0,sp)
2067  00cf               L146:
2068                     ; 611   return status;
2070  00cf 7b06          	ld	a,(OFST+0,sp)
2073  00d1 5b08          	addw	sp,#8
2074  00d3 81            	ret
2127                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2127                     ; 629 {
2128                     .text:	section	.text,new
2129  0000               _I2C_GetLastEvent:
2131  0000 5206          	subw	sp,#6
2132       00000006      OFST:	set	6
2135                     ; 630   __IO uint16_t lastevent = 0;
2137  0002 5f            	clrw	x
2138  0003 1f05          	ldw	(OFST-1,sp),x
2140                     ; 631   uint16_t flag1 = 0;
2142                     ; 632   uint16_t flag2 = 0;
2144                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2146  0005 c65218        	ld	a,21016
2147  0008 a504          	bcp	a,#4
2148  000a 2707          	jreq	L176
2149                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2151  000c ae0004        	ldw	x,#4
2152  000f 1f05          	ldw	(OFST-1,sp),x
2155  0011 201b          	jra	L376
2156  0013               L176:
2157                     ; 641     flag1 = I2C->SR1;
2159  0013 c65217        	ld	a,21015
2160  0016 5f            	clrw	x
2161  0017 97            	ld	xl,a
2162  0018 1f01          	ldw	(OFST-5,sp),x
2164                     ; 642     flag2 = I2C->SR3;
2166  001a c65219        	ld	a,21017
2167  001d 5f            	clrw	x
2168  001e 97            	ld	xl,a
2169  001f 1f03          	ldw	(OFST-3,sp),x
2171                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2173  0021 1e03          	ldw	x,(OFST-3,sp)
2174  0023 4f            	clr	a
2175  0024 02            	rlwa	x,a
2176  0025 01            	rrwa	x,a
2177  0026 1a02          	or	a,(OFST-4,sp)
2178  0028 01            	rrwa	x,a
2179  0029 1a01          	or	a,(OFST-5,sp)
2180  002b 01            	rrwa	x,a
2181  002c 1f05          	ldw	(OFST-1,sp),x
2183  002e               L376:
2184                     ; 648   return (I2C_Event_TypeDef)lastevent;
2186  002e 1e05          	ldw	x,(OFST-1,sp)
2189  0030 5b06          	addw	sp,#6
2190  0032 81            	ret
2406                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2406                     ; 680 {
2407                     .text:	section	.text,new
2408  0000               _I2C_GetFlagStatus:
2410  0000 89            	pushw	x
2411  0001 89            	pushw	x
2412       00000002      OFST:	set	2
2415                     ; 681   uint8_t tempreg = 0;
2417  0002 0f02          	clr	(OFST+0,sp)
2419                     ; 682   uint8_t regindex = 0;
2421                     ; 683   FlagStatus bitstatus = RESET;
2423                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2425  0004 a30180        	cpw	x,#384
2426  0007 274b          	jreq	L232
2427  0009 a30140        	cpw	x,#320
2428  000c 2746          	jreq	L232
2429  000e a30110        	cpw	x,#272
2430  0011 2741          	jreq	L232
2431  0013 a30108        	cpw	x,#264
2432  0016 273c          	jreq	L232
2433  0018 a30104        	cpw	x,#260
2434  001b 2737          	jreq	L232
2435  001d a30102        	cpw	x,#258
2436  0020 2732          	jreq	L232
2437  0022 a30101        	cpw	x,#257
2438  0025 272d          	jreq	L232
2439  0027 a30220        	cpw	x,#544
2440  002a 2728          	jreq	L232
2441  002c a30208        	cpw	x,#520
2442  002f 2723          	jreq	L232
2443  0031 a30204        	cpw	x,#516
2444  0034 271e          	jreq	L232
2445  0036 a30202        	cpw	x,#514
2446  0039 2719          	jreq	L232
2447  003b a30201        	cpw	x,#513
2448  003e 2714          	jreq	L232
2449  0040 a30310        	cpw	x,#784
2450  0043 270f          	jreq	L232
2451  0045 a30304        	cpw	x,#772
2452  0048 270a          	jreq	L232
2453  004a a30302        	cpw	x,#770
2454  004d 2705          	jreq	L232
2455  004f a30301        	cpw	x,#769
2456  0052 2603          	jrne	L032
2457  0054               L232:
2458  0054 4f            	clr	a
2459  0055 2010          	jra	L432
2460  0057               L032:
2461  0057 ae02ae        	ldw	x,#686
2462  005a 89            	pushw	x
2463  005b ae0000        	ldw	x,#0
2464  005e 89            	pushw	x
2465  005f ae000c        	ldw	x,#L131
2466  0062 cd0000        	call	_assert_failed
2468  0065 5b04          	addw	sp,#4
2469  0067               L432:
2470                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2472  0067 7b03          	ld	a,(OFST+1,sp)
2473  0069 6b01          	ld	(OFST-1,sp),a
2475                     ; 691   switch (regindex)
2477  006b 7b01          	ld	a,(OFST-1,sp)
2479                     ; 708     default:
2479                     ; 709       break;
2480  006d 4a            	dec	a
2481  006e 2708          	jreq	L576
2482  0070 4a            	dec	a
2483  0071 270c          	jreq	L776
2484  0073 4a            	dec	a
2485  0074 2710          	jreq	L107
2486  0076 2013          	jra	L5101
2487  0078               L576:
2488                     ; 694     case 0x01:
2488                     ; 695       tempreg = (uint8_t)I2C->SR1;
2490  0078 c65217        	ld	a,21015
2491  007b 6b02          	ld	(OFST+0,sp),a
2493                     ; 696       break;
2495  007d 200c          	jra	L5101
2496  007f               L776:
2497                     ; 699     case 0x02:
2497                     ; 700       tempreg = (uint8_t)I2C->SR2;
2499  007f c65218        	ld	a,21016
2500  0082 6b02          	ld	(OFST+0,sp),a
2502                     ; 701       break;
2504  0084 2005          	jra	L5101
2505  0086               L107:
2506                     ; 704     case 0x03:
2506                     ; 705       tempreg = (uint8_t)I2C->SR3;
2508  0086 c65219        	ld	a,21017
2509  0089 6b02          	ld	(OFST+0,sp),a
2511                     ; 706       break;
2513  008b               L307:
2514                     ; 708     default:
2514                     ; 709       break;
2516  008b               L5101:
2517                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2519  008b 7b04          	ld	a,(OFST+2,sp)
2520  008d 1502          	bcp	a,(OFST+0,sp)
2521  008f 2706          	jreq	L7101
2522                     ; 716     bitstatus = SET;
2524  0091 a601          	ld	a,#1
2525  0093 6b02          	ld	(OFST+0,sp),a
2528  0095 2002          	jra	L1201
2529  0097               L7101:
2530                     ; 721     bitstatus = RESET;
2532  0097 0f02          	clr	(OFST+0,sp)
2534  0099               L1201:
2535                     ; 724   return bitstatus;
2537  0099 7b02          	ld	a,(OFST+0,sp)
2540  009b 5b04          	addw	sp,#4
2541  009d 81            	ret
2586                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2586                     ; 760 {
2587                     .text:	section	.text,new
2588  0000               _I2C_ClearFlag:
2590  0000 89            	pushw	x
2591  0001 89            	pushw	x
2592       00000002      OFST:	set	2
2595                     ; 761   uint16_t flagpos = 0;
2597                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2599  0002 01            	rrwa	x,a
2600  0003 9f            	ld	a,xl
2601  0004 a4fd          	and	a,#253
2602  0006 97            	ld	xl,a
2603  0007 4f            	clr	a
2604  0008 02            	rlwa	x,a
2605  0009 5d            	tnzw	x
2606  000a 2607          	jrne	L042
2607  000c 1e03          	ldw	x,(OFST+1,sp)
2608  000e 2703          	jreq	L042
2609  0010 4f            	clr	a
2610  0011 2010          	jra	L242
2611  0013               L042:
2612  0013 ae02fb        	ldw	x,#763
2613  0016 89            	pushw	x
2614  0017 ae0000        	ldw	x,#0
2615  001a 89            	pushw	x
2616  001b ae000c        	ldw	x,#L131
2617  001e cd0000        	call	_assert_failed
2619  0021 5b04          	addw	sp,#4
2620  0023               L242:
2621                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2623  0023 7b03          	ld	a,(OFST+1,sp)
2624  0025 97            	ld	xl,a
2625  0026 7b04          	ld	a,(OFST+2,sp)
2626  0028 a4ff          	and	a,#255
2627  002a 5f            	clrw	x
2628  002b 02            	rlwa	x,a
2629  002c 1f01          	ldw	(OFST-1,sp),x
2630  002e 01            	rrwa	x,a
2632                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2634  002f 7b02          	ld	a,(OFST+0,sp)
2635  0031 43            	cpl	a
2636  0032 c75218        	ld	21016,a
2637                     ; 769 }
2640  0035 5b04          	addw	sp,#4
2641  0037 81            	ret
2808                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2808                     ; 792 {
2809                     .text:	section	.text,new
2810  0000               _I2C_GetITStatus:
2812  0000 89            	pushw	x
2813  0001 5204          	subw	sp,#4
2814       00000004      OFST:	set	4
2817                     ; 793   ITStatus bitstatus = RESET;
2819                     ; 794   __IO uint8_t enablestatus = 0;
2821  0003 0f03          	clr	(OFST-1,sp)
2823                     ; 795   uint16_t tempregister = 0;
2825                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2827  0005 a31680        	cpw	x,#5760
2828  0008 2737          	jreq	L052
2829  000a a31640        	cpw	x,#5696
2830  000d 2732          	jreq	L052
2831  000f a31210        	cpw	x,#4624
2832  0012 272d          	jreq	L052
2833  0014 a31208        	cpw	x,#4616
2834  0017 2728          	jreq	L052
2835  0019 a31204        	cpw	x,#4612
2836  001c 2723          	jreq	L052
2837  001e a31202        	cpw	x,#4610
2838  0021 271e          	jreq	L052
2839  0023 a31201        	cpw	x,#4609
2840  0026 2719          	jreq	L052
2841  0028 a32220        	cpw	x,#8736
2842  002b 2714          	jreq	L052
2843  002d a32108        	cpw	x,#8456
2844  0030 270f          	jreq	L052
2845  0032 a32104        	cpw	x,#8452
2846  0035 270a          	jreq	L052
2847  0037 a32102        	cpw	x,#8450
2848  003a 2705          	jreq	L052
2849  003c a32101        	cpw	x,#8449
2850  003f 2603          	jrne	L642
2851  0041               L052:
2852  0041 4f            	clr	a
2853  0042 2010          	jra	L252
2854  0044               L642:
2855  0044 ae031e        	ldw	x,#798
2856  0047 89            	pushw	x
2857  0048 ae0000        	ldw	x,#0
2858  004b 89            	pushw	x
2859  004c ae000c        	ldw	x,#L131
2860  004f cd0000        	call	_assert_failed
2862  0052 5b04          	addw	sp,#4
2863  0054               L252:
2864                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2866  0054 7b05          	ld	a,(OFST+1,sp)
2867  0056 a407          	and	a,#7
2868  0058 5f            	clrw	x
2869  0059 97            	ld	xl,a
2870  005a 1f01          	ldw	(OFST-3,sp),x
2872                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2874  005c c6521a        	ld	a,21018
2875  005f 1402          	and	a,(OFST-2,sp)
2876  0061 6b03          	ld	(OFST-1,sp),a
2878                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2880  0063 7b05          	ld	a,(OFST+1,sp)
2881  0065 97            	ld	xl,a
2882  0066 7b06          	ld	a,(OFST+2,sp)
2883  0068 9f            	ld	a,xl
2884  0069 a430          	and	a,#48
2885  006b 97            	ld	xl,a
2886  006c 4f            	clr	a
2887  006d 02            	rlwa	x,a
2888  006e a30100        	cpw	x,#256
2889  0071 2615          	jrne	L3311
2890                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2892  0073 c65217        	ld	a,21015
2893  0076 1506          	bcp	a,(OFST+2,sp)
2894  0078 270a          	jreq	L5311
2896  007a 0d03          	tnz	(OFST-1,sp)
2897  007c 2706          	jreq	L5311
2898                     ; 811       bitstatus = SET;
2900  007e a601          	ld	a,#1
2901  0080 6b04          	ld	(OFST+0,sp),a
2904  0082 2017          	jra	L1411
2905  0084               L5311:
2906                     ; 816       bitstatus = RESET;
2908  0084 0f04          	clr	(OFST+0,sp)
2910  0086 2013          	jra	L1411
2911  0088               L3311:
2912                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2914  0088 c65218        	ld	a,21016
2915  008b 1506          	bcp	a,(OFST+2,sp)
2916  008d 270a          	jreq	L3411
2918  008f 0d03          	tnz	(OFST-1,sp)
2919  0091 2706          	jreq	L3411
2920                     ; 825       bitstatus = SET;
2922  0093 a601          	ld	a,#1
2923  0095 6b04          	ld	(OFST+0,sp),a
2926  0097 2002          	jra	L1411
2927  0099               L3411:
2928                     ; 830       bitstatus = RESET;
2930  0099 0f04          	clr	(OFST+0,sp)
2932  009b               L1411:
2933                     ; 834   return  bitstatus;
2935  009b 7b04          	ld	a,(OFST+0,sp)
2938  009d 5b06          	addw	sp,#6
2939  009f 81            	ret
2985                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2985                     ; 872 {
2986                     .text:	section	.text,new
2987  0000               _I2C_ClearITPendingBit:
2989  0000 89            	pushw	x
2990  0001 89            	pushw	x
2991       00000002      OFST:	set	2
2994                     ; 873   uint16_t flagpos = 0;
2996                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2998  0002 a32220        	cpw	x,#8736
2999  0005 2714          	jreq	L062
3000  0007 a32108        	cpw	x,#8456
3001  000a 270f          	jreq	L062
3002  000c a32104        	cpw	x,#8452
3003  000f 270a          	jreq	L062
3004  0011 a32102        	cpw	x,#8450
3005  0014 2705          	jreq	L062
3006  0016 a32101        	cpw	x,#8449
3007  0019 2603          	jrne	L652
3008  001b               L062:
3009  001b 4f            	clr	a
3010  001c 2010          	jra	L262
3011  001e               L652:
3012  001e ae036c        	ldw	x,#876
3013  0021 89            	pushw	x
3014  0022 ae0000        	ldw	x,#0
3015  0025 89            	pushw	x
3016  0026 ae000c        	ldw	x,#L131
3017  0029 cd0000        	call	_assert_failed
3019  002c 5b04          	addw	sp,#4
3020  002e               L262:
3021                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
3023  002e 7b03          	ld	a,(OFST+1,sp)
3024  0030 97            	ld	xl,a
3025  0031 7b04          	ld	a,(OFST+2,sp)
3026  0033 a4ff          	and	a,#255
3027  0035 5f            	clrw	x
3028  0036 02            	rlwa	x,a
3029  0037 1f01          	ldw	(OFST-1,sp),x
3030  0039 01            	rrwa	x,a
3032                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3034  003a 7b02          	ld	a,(OFST+0,sp)
3035  003c 43            	cpl	a
3036  003d c75218        	ld	21016,a
3037                     ; 883 }
3040  0040 5b04          	addw	sp,#4
3041  0042 81            	ret
3054                     	xdef	_I2C_ClearITPendingBit
3055                     	xdef	_I2C_GetITStatus
3056                     	xdef	_I2C_ClearFlag
3057                     	xdef	_I2C_GetFlagStatus
3058                     	xdef	_I2C_GetLastEvent
3059                     	xdef	_I2C_CheckEvent
3060                     	xdef	_I2C_SendData
3061                     	xdef	_I2C_Send7bitAddress
3062                     	xdef	_I2C_ReceiveData
3063                     	xdef	_I2C_ITConfig
3064                     	xdef	_I2C_FastModeDutyCycleConfig
3065                     	xdef	_I2C_AcknowledgeConfig
3066                     	xdef	_I2C_StretchClockCmd
3067                     	xdef	_I2C_SoftwareResetCmd
3068                     	xdef	_I2C_GenerateSTOP
3069                     	xdef	_I2C_GenerateSTART
3070                     	xdef	_I2C_GeneralCallCmd
3071                     	xdef	_I2C_Cmd
3072                     	xdef	_I2C_Init
3073                     	xdef	_I2C_DeInit
3074                     	xref	_assert_failed
3075                     	switch	.const
3076  000c               L131:
3077  000c 7372635c7374  	dc.b	"src\stm8s_i2c.c",0
3078                     	xref.b	c_lreg
3079                     	xref.b	c_x
3099                     	xref	c_sdivx
3100                     	xref	c_ludv
3101                     	xref	c_rtol
3102                     	xref	c_smul
3103                     	xref	c_lmul
3104                     	xref	c_lcmp
3105                     	xref	c_ltor
3106                     	xref	c_lzmp
3107                     	end
