   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 53 void EXTI_DeInit(void)
  43                     ; 54 {
  45                     .text:	section	.text,new
  46  0000               _EXTI_DeInit:
  50                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  52  0000 725f50a0      	clr	20640
  53                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  55  0004 725f50a1      	clr	20641
  56                     ; 57 }
  59  0008 81            	ret
 185                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 185                     ; 71 {
 186                     .text:	section	.text,new
 187  0000               _EXTI_SetExtIntSensitivity:
 189  0000 89            	pushw	x
 190       00000000      OFST:	set	0
 193                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 195  0001 9e            	ld	a,xh
 196  0002 4d            	tnz	a
 197  0003 2714          	jreq	L21
 198  0005 9e            	ld	a,xh
 199  0006 a101          	cp	a,#1
 200  0008 270f          	jreq	L21
 201  000a 9e            	ld	a,xh
 202  000b a102          	cp	a,#2
 203  000d 270a          	jreq	L21
 204  000f 9e            	ld	a,xh
 205  0010 a103          	cp	a,#3
 206  0012 2705          	jreq	L21
 207  0014 9e            	ld	a,xh
 208  0015 a104          	cp	a,#4
 209  0017 2603          	jrne	L01
 210  0019               L21:
 211  0019 4f            	clr	a
 212  001a 2010          	jra	L41
 213  001c               L01:
 214  001c ae0049        	ldw	x,#73
 215  001f 89            	pushw	x
 216  0020 ae0000        	ldw	x,#0
 217  0023 89            	pushw	x
 218  0024 ae0000        	ldw	x,#L111
 219  0027 cd0000        	call	_assert_failed
 221  002a 5b04          	addw	sp,#4
 222  002c               L41:
 223                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 225  002c 0d02          	tnz	(OFST+2,sp)
 226  002e 2712          	jreq	L02
 227  0030 7b02          	ld	a,(OFST+2,sp)
 228  0032 a101          	cp	a,#1
 229  0034 270c          	jreq	L02
 230  0036 7b02          	ld	a,(OFST+2,sp)
 231  0038 a102          	cp	a,#2
 232  003a 2706          	jreq	L02
 233  003c 7b02          	ld	a,(OFST+2,sp)
 234  003e a103          	cp	a,#3
 235  0040 2603          	jrne	L61
 236  0042               L02:
 237  0042 4f            	clr	a
 238  0043 2010          	jra	L22
 239  0045               L61:
 240  0045 ae004a        	ldw	x,#74
 241  0048 89            	pushw	x
 242  0049 ae0000        	ldw	x,#0
 243  004c 89            	pushw	x
 244  004d ae0000        	ldw	x,#L111
 245  0050 cd0000        	call	_assert_failed
 247  0053 5b04          	addw	sp,#4
 248  0055               L22:
 249                     ; 77   switch (Port)
 251  0055 7b01          	ld	a,(OFST+1,sp)
 253                     ; 99   default:
 253                     ; 100     break;
 254  0057 4d            	tnz	a
 255  0058 270e          	jreq	L12
 256  005a 4a            	dec	a
 257  005b 271d          	jreq	L32
 258  005d 4a            	dec	a
 259  005e 272e          	jreq	L52
 260  0060 4a            	dec	a
 261  0061 2742          	jreq	L72
 262  0063 4a            	dec	a
 263  0064 2756          	jreq	L13
 264  0066 2064          	jra	L511
 265  0068               L12:
 266                     ; 79   case EXTI_PORT_GPIOA:
 266                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 268  0068 c650a0        	ld	a,20640
 269  006b a4fc          	and	a,#252
 270  006d c750a0        	ld	20640,a
 271                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 273  0070 c650a0        	ld	a,20640
 274  0073 1a02          	or	a,(OFST+2,sp)
 275  0075 c750a0        	ld	20640,a
 276                     ; 82     break;
 278  0078 2052          	jra	L511
 279  007a               L32:
 280                     ; 83   case EXTI_PORT_GPIOB:
 280                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 282  007a c650a0        	ld	a,20640
 283  007d a4f3          	and	a,#243
 284  007f c750a0        	ld	20640,a
 285                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 287  0082 7b02          	ld	a,(OFST+2,sp)
 288  0084 48            	sll	a
 289  0085 48            	sll	a
 290  0086 ca50a0        	or	a,20640
 291  0089 c750a0        	ld	20640,a
 292                     ; 86     break;
 294  008c 203e          	jra	L511
 295  008e               L52:
 296                     ; 87   case EXTI_PORT_GPIOC:
 296                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 298  008e c650a0        	ld	a,20640
 299  0091 a4cf          	and	a,#207
 300  0093 c750a0        	ld	20640,a
 301                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 303  0096 7b02          	ld	a,(OFST+2,sp)
 304  0098 97            	ld	xl,a
 305  0099 a610          	ld	a,#16
 306  009b 42            	mul	x,a
 307  009c 9f            	ld	a,xl
 308  009d ca50a0        	or	a,20640
 309  00a0 c750a0        	ld	20640,a
 310                     ; 90     break;
 312  00a3 2027          	jra	L511
 313  00a5               L72:
 314                     ; 91   case EXTI_PORT_GPIOD:
 314                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 316  00a5 c650a0        	ld	a,20640
 317  00a8 a43f          	and	a,#63
 318  00aa c750a0        	ld	20640,a
 319                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 321  00ad 7b02          	ld	a,(OFST+2,sp)
 322  00af 97            	ld	xl,a
 323  00b0 a640          	ld	a,#64
 324  00b2 42            	mul	x,a
 325  00b3 9f            	ld	a,xl
 326  00b4 ca50a0        	or	a,20640
 327  00b7 c750a0        	ld	20640,a
 328                     ; 94     break;
 330  00ba 2010          	jra	L511
 331  00bc               L13:
 332                     ; 95   case EXTI_PORT_GPIOE:
 332                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 334  00bc c650a1        	ld	a,20641
 335  00bf a4fc          	and	a,#252
 336  00c1 c750a1        	ld	20641,a
 337                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 339  00c4 c650a1        	ld	a,20641
 340  00c7 1a02          	or	a,(OFST+2,sp)
 341  00c9 c750a1        	ld	20641,a
 342                     ; 98     break;
 344  00cc               L33:
 345                     ; 99   default:
 345                     ; 100     break;
 347  00cc               L511:
 348                     ; 102 }
 351  00cc 85            	popw	x
 352  00cd 81            	ret
 411                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 411                     ; 112 {
 412                     .text:	section	.text,new
 413  0000               _EXTI_SetTLISensitivity:
 415  0000 88            	push	a
 416       00000000      OFST:	set	0
 419                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 421  0001 4d            	tnz	a
 422  0002 2704          	jreq	L03
 423  0004 a104          	cp	a,#4
 424  0006 2603          	jrne	L62
 425  0008               L03:
 426  0008 4f            	clr	a
 427  0009 2010          	jra	L23
 428  000b               L62:
 429  000b ae0072        	ldw	x,#114
 430  000e 89            	pushw	x
 431  000f ae0000        	ldw	x,#0
 432  0012 89            	pushw	x
 433  0013 ae0000        	ldw	x,#L111
 434  0016 cd0000        	call	_assert_failed
 436  0019 5b04          	addw	sp,#4
 437  001b               L23:
 438                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 440  001b 721550a1      	bres	20641,#2
 441                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 443  001f c650a1        	ld	a,20641
 444  0022 1a01          	or	a,(OFST+1,sp)
 445  0024 c750a1        	ld	20641,a
 446                     ; 119 }
 449  0027 84            	pop	a
 450  0028 81            	ret
 497                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 497                     ; 127 {
 498                     .text:	section	.text,new
 499  0000               _EXTI_GetExtIntSensitivity:
 501  0000 88            	push	a
 502  0001 88            	push	a
 503       00000001      OFST:	set	1
 506                     ; 128   uint8_t value = 0;
 508  0002 0f01          	clr	(OFST+0,sp)
 510                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 512  0004 4d            	tnz	a
 513  0005 2710          	jreq	L04
 514  0007 a101          	cp	a,#1
 515  0009 270c          	jreq	L04
 516  000b a102          	cp	a,#2
 517  000d 2708          	jreq	L04
 518  000f a103          	cp	a,#3
 519  0011 2704          	jreq	L04
 520  0013 a104          	cp	a,#4
 521  0015 2603          	jrne	L63
 522  0017               L04:
 523  0017 4f            	clr	a
 524  0018 2010          	jra	L24
 525  001a               L63:
 526  001a ae0083        	ldw	x,#131
 527  001d 89            	pushw	x
 528  001e ae0000        	ldw	x,#0
 529  0021 89            	pushw	x
 530  0022 ae0000        	ldw	x,#L111
 531  0025 cd0000        	call	_assert_failed
 533  0028 5b04          	addw	sp,#4
 534  002a               L24:
 535                     ; 133   switch (Port)
 537  002a 7b02          	ld	a,(OFST+1,sp)
 539                     ; 150   default:
 539                     ; 151     break;
 540  002c 4d            	tnz	a
 541  002d 270e          	jreq	L541
 542  002f 4a            	dec	a
 543  0030 2714          	jreq	L741
 544  0032 4a            	dec	a
 545  0033 271c          	jreq	L151
 546  0035 4a            	dec	a
 547  0036 2725          	jreq	L351
 548  0038 4a            	dec	a
 549  0039 2730          	jreq	L551
 550  003b 2035          	jra	L502
 551  003d               L541:
 552                     ; 135   case EXTI_PORT_GPIOA:
 552                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 554  003d c650a0        	ld	a,20640
 555  0040 a403          	and	a,#3
 556  0042 6b01          	ld	(OFST+0,sp),a
 558                     ; 137     break;
 560  0044 202c          	jra	L502
 561  0046               L741:
 562                     ; 138   case EXTI_PORT_GPIOB:
 562                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 564  0046 c650a0        	ld	a,20640
 565  0049 a40c          	and	a,#12
 566  004b 44            	srl	a
 567  004c 44            	srl	a
 568  004d 6b01          	ld	(OFST+0,sp),a
 570                     ; 140     break;
 572  004f 2021          	jra	L502
 573  0051               L151:
 574                     ; 141   case EXTI_PORT_GPIOC:
 574                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 576  0051 c650a0        	ld	a,20640
 577  0054 a430          	and	a,#48
 578  0056 4e            	swap	a
 579  0057 a40f          	and	a,#15
 580  0059 6b01          	ld	(OFST+0,sp),a
 582                     ; 143     break;
 584  005b 2015          	jra	L502
 585  005d               L351:
 586                     ; 144   case EXTI_PORT_GPIOD:
 586                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 588  005d c650a0        	ld	a,20640
 589  0060 a4c0          	and	a,#192
 590  0062 4e            	swap	a
 591  0063 44            	srl	a
 592  0064 44            	srl	a
 593  0065 a403          	and	a,#3
 594  0067 6b01          	ld	(OFST+0,sp),a
 596                     ; 146     break;
 598  0069 2007          	jra	L502
 599  006b               L551:
 600                     ; 147   case EXTI_PORT_GPIOE:
 600                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 602  006b c650a1        	ld	a,20641
 603  006e a403          	and	a,#3
 604  0070 6b01          	ld	(OFST+0,sp),a
 606                     ; 149     break;
 608  0072               L751:
 609                     ; 150   default:
 609                     ; 151     break;
 611  0072               L502:
 612                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 614  0072 7b01          	ld	a,(OFST+0,sp)
 617  0074 85            	popw	x
 618  0075 81            	ret
 654                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 654                     ; 163 {
 655                     .text:	section	.text,new
 656  0000               _EXTI_GetTLISensitivity:
 658  0000 88            	push	a
 659       00000001      OFST:	set	1
 662                     ; 164   uint8_t value = 0;
 664                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 666  0001 c650a1        	ld	a,20641
 667  0004 a404          	and	a,#4
 668  0006 6b01          	ld	(OFST+0,sp),a
 670                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 672  0008 7b01          	ld	a,(OFST+0,sp)
 675  000a 5b01          	addw	sp,#1
 676  000c 81            	ret
 689                     	xdef	_EXTI_GetTLISensitivity
 690                     	xdef	_EXTI_GetExtIntSensitivity
 691                     	xdef	_EXTI_SetTLISensitivity
 692                     	xdef	_EXTI_SetExtIntSensitivity
 693                     	xdef	_EXTI_DeInit
 694                     	xref	_assert_failed
 695                     .const:	section	.text
 696  0000               L111:
 697  0000 7372635c7374  	dc.b	"src\stm8s_exti.c",0
 717                     	end
