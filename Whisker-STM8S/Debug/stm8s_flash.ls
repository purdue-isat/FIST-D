   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  76                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  76                     ; 88 {
  78                     .text:	section	.text,new
  79  0000               _FLASH_Unlock:
  81  0000 88            	push	a
  82       00000000      OFST:	set	0
  85                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  87  0001 a1fd          	cp	a,#253
  88  0003 2704          	jreq	L01
  89  0005 a1f7          	cp	a,#247
  90  0007 2603          	jrne	L6
  91  0009               L01:
  92  0009 4f            	clr	a
  93  000a 2010          	jra	L21
  94  000c               L6:
  95  000c ae005a        	ldw	x,#90
  96  000f 89            	pushw	x
  97  0010 ae0000        	ldw	x,#0
  98  0013 89            	pushw	x
  99  0014 ae0010        	ldw	x,#L73
 100  0017 cd0000        	call	_assert_failed
 102  001a 5b04          	addw	sp,#4
 103  001c               L21:
 104                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 106  001c 7b01          	ld	a,(OFST+1,sp)
 107  001e a1fd          	cp	a,#253
 108  0020 260a          	jrne	L14
 109                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 111  0022 35565062      	mov	20578,#86
 112                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 114  0026 35ae5062      	mov	20578,#174
 116  002a 2008          	jra	L34
 117  002c               L14:
 118                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 120  002c 35ae5064      	mov	20580,#174
 121                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 123  0030 35565064      	mov	20580,#86
 124  0034               L34:
 125                     ; 104 }
 128  0034 84            	pop	a
 129  0035 81            	ret
 165                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 165                     ; 113 {
 166                     .text:	section	.text,new
 167  0000               _FLASH_Lock:
 169  0000 88            	push	a
 170       00000000      OFST:	set	0
 173                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 175  0001 a1fd          	cp	a,#253
 176  0003 2704          	jreq	L02
 177  0005 a1f7          	cp	a,#247
 178  0007 2603          	jrne	L61
 179  0009               L02:
 180  0009 4f            	clr	a
 181  000a 2010          	jra	L22
 182  000c               L61:
 183  000c ae0073        	ldw	x,#115
 184  000f 89            	pushw	x
 185  0010 ae0000        	ldw	x,#0
 186  0013 89            	pushw	x
 187  0014 ae0010        	ldw	x,#L73
 188  0017 cd0000        	call	_assert_failed
 190  001a 5b04          	addw	sp,#4
 191  001c               L22:
 192                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 194  001c c6505f        	ld	a,20575
 195  001f 1401          	and	a,(OFST+1,sp)
 196  0021 c7505f        	ld	20575,a
 197                     ; 119 }
 200  0024 84            	pop	a
 201  0025 81            	ret
 224                     ; 126 void FLASH_DeInit(void)
 224                     ; 127 {
 225                     .text:	section	.text,new
 226  0000               _FLASH_DeInit:
 230                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 232  0000 725f505a      	clr	20570
 233                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 235  0004 725f505b      	clr	20571
 236                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 238  0008 35ff505c      	mov	20572,#255
 239                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 241  000c 7217505f      	bres	20575,#3
 242                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 244  0010 7213505f      	bres	20575,#1
 245                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 247  0014 c6505f        	ld	a,20575
 248                     ; 134 }
 251  0017 81            	ret
 307                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 307                     ; 143 {
 308                     .text:	section	.text,new
 309  0000               _FLASH_ITConfig:
 311  0000 88            	push	a
 312       00000000      OFST:	set	0
 315                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 317  0001 4d            	tnz	a
 318  0002 2704          	jreq	L23
 319  0004 a101          	cp	a,#1
 320  0006 2603          	jrne	L03
 321  0008               L23:
 322  0008 4f            	clr	a
 323  0009 2010          	jra	L43
 324  000b               L03:
 325  000b ae0091        	ldw	x,#145
 326  000e 89            	pushw	x
 327  000f ae0000        	ldw	x,#0
 328  0012 89            	pushw	x
 329  0013 ae0010        	ldw	x,#L73
 330  0016 cd0000        	call	_assert_failed
 332  0019 5b04          	addw	sp,#4
 333  001b               L43:
 334                     ; 147   if(NewState != DISABLE)
 336  001b 0d01          	tnz	(OFST+1,sp)
 337  001d 2706          	jreq	L121
 338                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 340  001f 7212505a      	bset	20570,#1
 342  0023 2004          	jra	L321
 343  0025               L121:
 344                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 346  0025 7213505a      	bres	20570,#1
 347  0029               L321:
 348                     ; 155 }
 351  0029 84            	pop	a
 352  002a 81            	ret
 387                     .const:	section	.text
 388  0000               L64:
 389  0000 00008000      	dc.l	32768
 390  0004               L05:
 391  0004 0000a000      	dc.l	40960
 392  0008               L25:
 393  0008 00004000      	dc.l	16384
 394  000c               L45:
 395  000c 00004280      	dc.l	17024
 396                     ; 164 void FLASH_EraseByte(uint32_t Address)
 396                     ; 165 {
 397                     .text:	section	.text,new
 398  0000               _FLASH_EraseByte:
 400       00000000      OFST:	set	0
 403                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 405  0000 96            	ldw	x,sp
 406  0001 1c0003        	addw	x,#OFST+3
 407  0004 cd0000        	call	c_ltor
 409  0007 ae0000        	ldw	x,#L64
 410  000a cd0000        	call	c_lcmp
 412  000d 250f          	jrult	L44
 413  000f 96            	ldw	x,sp
 414  0010 1c0003        	addw	x,#OFST+3
 415  0013 cd0000        	call	c_ltor
 417  0016 ae0004        	ldw	x,#L05
 418  0019 cd0000        	call	c_lcmp
 420  001c 251e          	jrult	L24
 421  001e               L44:
 422  001e 96            	ldw	x,sp
 423  001f 1c0003        	addw	x,#OFST+3
 424  0022 cd0000        	call	c_ltor
 426  0025 ae0008        	ldw	x,#L25
 427  0028 cd0000        	call	c_lcmp
 429  002b 2512          	jrult	L04
 430  002d 96            	ldw	x,sp
 431  002e 1c0003        	addw	x,#OFST+3
 432  0031 cd0000        	call	c_ltor
 434  0034 ae000c        	ldw	x,#L45
 435  0037 cd0000        	call	c_lcmp
 437  003a 2403          	jruge	L04
 438  003c               L24:
 439  003c 4f            	clr	a
 440  003d 2010          	jra	L65
 441  003f               L04:
 442  003f ae00a7        	ldw	x,#167
 443  0042 89            	pushw	x
 444  0043 ae0000        	ldw	x,#0
 445  0046 89            	pushw	x
 446  0047 ae0010        	ldw	x,#L73
 447  004a cd0000        	call	_assert_failed
 449  004d 5b04          	addw	sp,#4
 450  004f               L65:
 451                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 453  004f 1e05          	ldw	x,(OFST+5,sp)
 454  0051 7f            	clr	(x)
 455                     ; 171 }
 458  0052 81            	ret
 502                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 502                     ; 182 {
 503                     .text:	section	.text,new
 504  0000               _FLASH_ProgramByte:
 506       00000000      OFST:	set	0
 509                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 511  0000 96            	ldw	x,sp
 512  0001 1c0003        	addw	x,#OFST+3
 513  0004 cd0000        	call	c_ltor
 515  0007 ae0000        	ldw	x,#L64
 516  000a cd0000        	call	c_lcmp
 518  000d 250f          	jrult	L66
 519  000f 96            	ldw	x,sp
 520  0010 1c0003        	addw	x,#OFST+3
 521  0013 cd0000        	call	c_ltor
 523  0016 ae0004        	ldw	x,#L05
 524  0019 cd0000        	call	c_lcmp
 526  001c 251e          	jrult	L46
 527  001e               L66:
 528  001e 96            	ldw	x,sp
 529  001f 1c0003        	addw	x,#OFST+3
 530  0022 cd0000        	call	c_ltor
 532  0025 ae0008        	ldw	x,#L25
 533  0028 cd0000        	call	c_lcmp
 535  002b 2512          	jrult	L26
 536  002d 96            	ldw	x,sp
 537  002e 1c0003        	addw	x,#OFST+3
 538  0031 cd0000        	call	c_ltor
 540  0034 ae000c        	ldw	x,#L45
 541  0037 cd0000        	call	c_lcmp
 543  003a 2403          	jruge	L26
 544  003c               L46:
 545  003c 4f            	clr	a
 546  003d 2010          	jra	L07
 547  003f               L26:
 548  003f ae00b8        	ldw	x,#184
 549  0042 89            	pushw	x
 550  0043 ae0000        	ldw	x,#0
 551  0046 89            	pushw	x
 552  0047 ae0010        	ldw	x,#L73
 553  004a cd0000        	call	_assert_failed
 555  004d 5b04          	addw	sp,#4
 556  004f               L07:
 557                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 559  004f 7b07          	ld	a,(OFST+7,sp)
 560  0051 1e05          	ldw	x,(OFST+5,sp)
 561  0053 f7            	ld	(x),a
 562                     ; 186 }
 565  0054 81            	ret
 600                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 600                     ; 196 {
 601                     .text:	section	.text,new
 602  0000               _FLASH_ReadByte:
 604       00000000      OFST:	set	0
 607                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 609  0000 96            	ldw	x,sp
 610  0001 1c0003        	addw	x,#OFST+3
 611  0004 cd0000        	call	c_ltor
 613  0007 ae0000        	ldw	x,#L64
 614  000a cd0000        	call	c_lcmp
 616  000d 250f          	jrult	L001
 617  000f 96            	ldw	x,sp
 618  0010 1c0003        	addw	x,#OFST+3
 619  0013 cd0000        	call	c_ltor
 621  0016 ae0004        	ldw	x,#L05
 622  0019 cd0000        	call	c_lcmp
 624  001c 251e          	jrult	L67
 625  001e               L001:
 626  001e 96            	ldw	x,sp
 627  001f 1c0003        	addw	x,#OFST+3
 628  0022 cd0000        	call	c_ltor
 630  0025 ae0008        	ldw	x,#L25
 631  0028 cd0000        	call	c_lcmp
 633  002b 2512          	jrult	L47
 634  002d 96            	ldw	x,sp
 635  002e 1c0003        	addw	x,#OFST+3
 636  0031 cd0000        	call	c_ltor
 638  0034 ae000c        	ldw	x,#L45
 639  0037 cd0000        	call	c_lcmp
 641  003a 2403          	jruge	L47
 642  003c               L67:
 643  003c 4f            	clr	a
 644  003d 2010          	jra	L201
 645  003f               L47:
 646  003f ae00c6        	ldw	x,#198
 647  0042 89            	pushw	x
 648  0043 ae0000        	ldw	x,#0
 649  0046 89            	pushw	x
 650  0047 ae0010        	ldw	x,#L73
 651  004a cd0000        	call	_assert_failed
 653  004d 5b04          	addw	sp,#4
 654  004f               L201:
 655                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 657  004f 1e05          	ldw	x,(OFST+5,sp)
 658  0051 f6            	ld	a,(x)
 661  0052 81            	ret
 705                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 705                     ; 213 {
 706                     .text:	section	.text,new
 707  0000               _FLASH_ProgramWord:
 709       00000000      OFST:	set	0
 712                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 714  0000 96            	ldw	x,sp
 715  0001 1c0003        	addw	x,#OFST+3
 716  0004 cd0000        	call	c_ltor
 718  0007 ae0000        	ldw	x,#L64
 719  000a cd0000        	call	c_lcmp
 721  000d 250f          	jrult	L211
 722  000f 96            	ldw	x,sp
 723  0010 1c0003        	addw	x,#OFST+3
 724  0013 cd0000        	call	c_ltor
 726  0016 ae0004        	ldw	x,#L05
 727  0019 cd0000        	call	c_lcmp
 729  001c 251e          	jrult	L011
 730  001e               L211:
 731  001e 96            	ldw	x,sp
 732  001f 1c0003        	addw	x,#OFST+3
 733  0022 cd0000        	call	c_ltor
 735  0025 ae0008        	ldw	x,#L25
 736  0028 cd0000        	call	c_lcmp
 738  002b 2512          	jrult	L601
 739  002d 96            	ldw	x,sp
 740  002e 1c0003        	addw	x,#OFST+3
 741  0031 cd0000        	call	c_ltor
 743  0034 ae000c        	ldw	x,#L45
 744  0037 cd0000        	call	c_lcmp
 746  003a 2403          	jruge	L601
 747  003c               L011:
 748  003c 4f            	clr	a
 749  003d 2010          	jra	L411
 750  003f               L601:
 751  003f ae00d7        	ldw	x,#215
 752  0042 89            	pushw	x
 753  0043 ae0000        	ldw	x,#0
 754  0046 89            	pushw	x
 755  0047 ae0010        	ldw	x,#L73
 756  004a cd0000        	call	_assert_failed
 758  004d 5b04          	addw	sp,#4
 759  004f               L411:
 760                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 762  004f 721c505b      	bset	20571,#6
 763                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 765  0053 721d505c      	bres	20572,#6
 766                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 768  0057 7b07          	ld	a,(OFST+7,sp)
 769  0059 1e05          	ldw	x,(OFST+5,sp)
 770  005b f7            	ld	(x),a
 771                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 773  005c 7b08          	ld	a,(OFST+8,sp)
 774  005e 1e05          	ldw	x,(OFST+5,sp)
 775  0060 e701          	ld	(1,x),a
 776                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 778  0062 7b09          	ld	a,(OFST+9,sp)
 779  0064 1e05          	ldw	x,(OFST+5,sp)
 780  0066 e702          	ld	(2,x),a
 781                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 783  0068 7b0a          	ld	a,(OFST+10,sp)
 784  006a 1e05          	ldw	x,(OFST+5,sp)
 785  006c e703          	ld	(3,x),a
 786                     ; 229 }
 789  006e 81            	ret
 835                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 835                     ; 238 {
 836                     .text:	section	.text,new
 837  0000               _FLASH_ProgramOptionByte:
 839  0000 89            	pushw	x
 840       00000000      OFST:	set	0
 843                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 845  0001 a34800        	cpw	x,#18432
 846  0004 2508          	jrult	L021
 847  0006 a34880        	cpw	x,#18560
 848  0009 2403          	jruge	L021
 849  000b 4f            	clr	a
 850  000c 2010          	jra	L221
 851  000e               L021:
 852  000e ae00f0        	ldw	x,#240
 853  0011 89            	pushw	x
 854  0012 ae0000        	ldw	x,#0
 855  0015 89            	pushw	x
 856  0016 ae0010        	ldw	x,#L73
 857  0019 cd0000        	call	_assert_failed
 859  001c 5b04          	addw	sp,#4
 860  001e               L221:
 861                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 863  001e 721e505b      	bset	20571,#7
 864                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 866  0022 721f505c      	bres	20572,#7
 867                     ; 247   if(Address == 0x4800)
 869  0026 1e01          	ldw	x,(OFST+1,sp)
 870  0028 a34800        	cpw	x,#18432
 871  002b 2607          	jrne	L742
 872                     ; 250     *((NEAR uint8_t*)Address) = Data;
 874  002d 7b05          	ld	a,(OFST+5,sp)
 875  002f 1e01          	ldw	x,(OFST+1,sp)
 876  0031 f7            	ld	(x),a
 878  0032 200c          	jra	L152
 879  0034               L742:
 880                     ; 255     *((NEAR uint8_t*)Address) = Data;
 882  0034 7b05          	ld	a,(OFST+5,sp)
 883  0036 1e01          	ldw	x,(OFST+1,sp)
 884  0038 f7            	ld	(x),a
 885                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 887  0039 7b05          	ld	a,(OFST+5,sp)
 888  003b 43            	cpl	a
 889  003c 1e01          	ldw	x,(OFST+1,sp)
 890  003e e701          	ld	(1,x),a
 891  0040               L152:
 892                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 894  0040 a6fd          	ld	a,#253
 895  0042 cd0000        	call	_FLASH_WaitForLastOperation
 897                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 899  0045 721f505b      	bres	20571,#7
 900                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 902  0049 721e505c      	bset	20572,#7
 903                     ; 263 }
 906  004d 85            	popw	x
 907  004e 81            	ret
 944                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 944                     ; 271 {
 945                     .text:	section	.text,new
 946  0000               _FLASH_EraseOptionByte:
 948  0000 89            	pushw	x
 949       00000000      OFST:	set	0
 952                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 954  0001 a34800        	cpw	x,#18432
 955  0004 2508          	jrult	L621
 956  0006 a34880        	cpw	x,#18560
 957  0009 2403          	jruge	L621
 958  000b 4f            	clr	a
 959  000c 2010          	jra	L031
 960  000e               L621:
 961  000e ae0111        	ldw	x,#273
 962  0011 89            	pushw	x
 963  0012 ae0000        	ldw	x,#0
 964  0015 89            	pushw	x
 965  0016 ae0010        	ldw	x,#L73
 966  0019 cd0000        	call	_assert_failed
 968  001c 5b04          	addw	sp,#4
 969  001e               L031:
 970                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 972  001e 721e505b      	bset	20571,#7
 973                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 975  0022 721f505c      	bres	20572,#7
 976                     ; 280   if(Address == 0x4800)
 978  0026 1e01          	ldw	x,(OFST+1,sp)
 979  0028 a34800        	cpw	x,#18432
 980  002b 2605          	jrne	L172
 981                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 983  002d 1e01          	ldw	x,(OFST+1,sp)
 984  002f 7f            	clr	(x)
 986  0030 2009          	jra	L372
 987  0032               L172:
 988                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 990  0032 1e01          	ldw	x,(OFST+1,sp)
 991  0034 7f            	clr	(x)
 992                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 994  0035 1e01          	ldw	x,(OFST+1,sp)
 995  0037 a6ff          	ld	a,#255
 996  0039 e701          	ld	(1,x),a
 997  003b               L372:
 998                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
1000  003b a6fd          	ld	a,#253
1001  003d cd0000        	call	_FLASH_WaitForLastOperation
1003                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
1005  0040 721f505b      	bres	20571,#7
1006                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
1008  0044 721e505c      	bset	20572,#7
1009                     ; 296 }
1012  0048 85            	popw	x
1013  0049 81            	ret
1077                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1077                     ; 304 {
1078                     .text:	section	.text,new
1079  0000               _FLASH_ReadOptionByte:
1081  0000 89            	pushw	x
1082  0001 5204          	subw	sp,#4
1083       00000004      OFST:	set	4
1086                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1088                     ; 306   uint16_t res_value = 0;
1090                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1092  0003 a34800        	cpw	x,#18432
1093  0006 2508          	jrult	L431
1094  0008 a34880        	cpw	x,#18560
1095  000b 2403          	jruge	L431
1096  000d 4f            	clr	a
1097  000e 2010          	jra	L631
1098  0010               L431:
1099  0010 ae0135        	ldw	x,#309
1100  0013 89            	pushw	x
1101  0014 ae0000        	ldw	x,#0
1102  0017 89            	pushw	x
1103  0018 ae0010        	ldw	x,#L73
1104  001b cd0000        	call	_assert_failed
1106  001e 5b04          	addw	sp,#4
1107  0020               L631:
1108                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1110  0020 1e05          	ldw	x,(OFST+1,sp)
1111  0022 f6            	ld	a,(x)
1112  0023 6b01          	ld	(OFST-3,sp),a
1114                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1116  0025 1e05          	ldw	x,(OFST+1,sp)
1117  0027 e601          	ld	a,(1,x)
1118  0029 6b02          	ld	(OFST-2,sp),a
1120                     ; 315   if(Address == 0x4800)	 
1122  002b 1e05          	ldw	x,(OFST+1,sp)
1123  002d a34800        	cpw	x,#18432
1124  0030 2608          	jrne	L723
1125                     ; 317     res_value =	 value_optbyte;
1127  0032 7b01          	ld	a,(OFST-3,sp)
1128  0034 5f            	clrw	x
1129  0035 97            	ld	xl,a
1130  0036 1f03          	ldw	(OFST-1,sp),x
1133  0038 2023          	jra	L133
1134  003a               L723:
1135                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1137  003a 7b02          	ld	a,(OFST-2,sp)
1138  003c 43            	cpl	a
1139  003d 1101          	cp	a,(OFST-3,sp)
1140  003f 2617          	jrne	L333
1141                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1143  0041 7b01          	ld	a,(OFST-3,sp)
1144  0043 5f            	clrw	x
1145  0044 97            	ld	xl,a
1146  0045 4f            	clr	a
1147  0046 02            	rlwa	x,a
1148  0047 1f03          	ldw	(OFST-1,sp),x
1150                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1152  0049 7b02          	ld	a,(OFST-2,sp)
1153  004b 5f            	clrw	x
1154  004c 97            	ld	xl,a
1155  004d 01            	rrwa	x,a
1156  004e 1a04          	or	a,(OFST+0,sp)
1157  0050 01            	rrwa	x,a
1158  0051 1a03          	or	a,(OFST-1,sp)
1159  0053 01            	rrwa	x,a
1160  0054 1f03          	ldw	(OFST-1,sp),x
1163  0056 2005          	jra	L133
1164  0058               L333:
1165                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1167  0058 ae5555        	ldw	x,#21845
1168  005b 1f03          	ldw	(OFST-1,sp),x
1170  005d               L133:
1171                     ; 331   return(res_value);
1173  005d 1e03          	ldw	x,(OFST-1,sp)
1176  005f 5b06          	addw	sp,#6
1177  0061 81            	ret
1252                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1252                     ; 341 {
1253                     .text:	section	.text,new
1254  0000               _FLASH_SetLowPowerMode:
1256  0000 88            	push	a
1257       00000000      OFST:	set	0
1260                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1262  0001 a104          	cp	a,#4
1263  0003 270b          	jreq	L441
1264  0005 a108          	cp	a,#8
1265  0007 2707          	jreq	L441
1266  0009 4d            	tnz	a
1267  000a 2704          	jreq	L441
1268  000c a10c          	cp	a,#12
1269  000e 2603          	jrne	L241
1270  0010               L441:
1271  0010 4f            	clr	a
1272  0011 2010          	jra	L641
1273  0013               L241:
1274  0013 ae0157        	ldw	x,#343
1275  0016 89            	pushw	x
1276  0017 ae0000        	ldw	x,#0
1277  001a 89            	pushw	x
1278  001b ae0010        	ldw	x,#L73
1279  001e cd0000        	call	_assert_failed
1281  0021 5b04          	addw	sp,#4
1282  0023               L641:
1283                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1285  0023 c6505a        	ld	a,20570
1286  0026 a4f3          	and	a,#243
1287  0028 c7505a        	ld	20570,a
1288                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1290  002b c6505a        	ld	a,20570
1291  002e 1a01          	or	a,(OFST+1,sp)
1292  0030 c7505a        	ld	20570,a
1293                     ; 350 }
1296  0033 84            	pop	a
1297  0034 81            	ret
1356                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1356                     ; 359 {
1357                     .text:	section	.text,new
1358  0000               _FLASH_SetProgrammingTime:
1360  0000 88            	push	a
1361       00000000      OFST:	set	0
1364                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1366  0001 4d            	tnz	a
1367  0002 2704          	jreq	L451
1368  0004 a101          	cp	a,#1
1369  0006 2603          	jrne	L251
1370  0008               L451:
1371  0008 4f            	clr	a
1372  0009 2010          	jra	L651
1373  000b               L251:
1374  000b ae0169        	ldw	x,#361
1375  000e 89            	pushw	x
1376  000f ae0000        	ldw	x,#0
1377  0012 89            	pushw	x
1378  0013 ae0010        	ldw	x,#L73
1379  0016 cd0000        	call	_assert_failed
1381  0019 5b04          	addw	sp,#4
1382  001b               L651:
1383                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1385  001b 7211505a      	bres	20570,#0
1386                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1388  001f c6505a        	ld	a,20570
1389  0022 1a01          	or	a,(OFST+1,sp)
1390  0024 c7505a        	ld	20570,a
1391                     ; 365 }
1394  0027 84            	pop	a
1395  0028 81            	ret
1420                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1420                     ; 373 {
1421                     .text:	section	.text,new
1422  0000               _FLASH_GetLowPowerMode:
1426                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1428  0000 c6505a        	ld	a,20570
1429  0003 a40c          	and	a,#12
1432  0005 81            	ret
1457                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1457                     ; 383 {
1458                     .text:	section	.text,new
1459  0000               _FLASH_GetProgrammingTime:
1463                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1465  0000 c6505a        	ld	a,20570
1466  0003 a401          	and	a,#1
1469  0005 81            	ret
1503                     ; 392 uint32_t FLASH_GetBootSize(void)
1503                     ; 393 {
1504                     .text:	section	.text,new
1505  0000               _FLASH_GetBootSize:
1507  0000 5204          	subw	sp,#4
1508       00000004      OFST:	set	4
1511                     ; 394   uint32_t temp = 0;
1513                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1515  0002 c6505d        	ld	a,20573
1516  0005 5f            	clrw	x
1517  0006 97            	ld	xl,a
1518  0007 90ae0200      	ldw	y,#512
1519  000b cd0000        	call	c_umul
1521  000e 96            	ldw	x,sp
1522  000f 1c0001        	addw	x,#OFST-3
1523  0012 cd0000        	call	c_rtol
1526                     ; 400   if(FLASH->FPR == 0xFF)
1528  0015 c6505d        	ld	a,20573
1529  0018 a1ff          	cp	a,#255
1530  001a 2611          	jrne	L554
1531                     ; 402     temp += 512;
1533  001c ae0200        	ldw	x,#512
1534  001f bf02          	ldw	c_lreg+2,x
1535  0021 ae0000        	ldw	x,#0
1536  0024 bf00          	ldw	c_lreg,x
1537  0026 96            	ldw	x,sp
1538  0027 1c0001        	addw	x,#OFST-3
1539  002a cd0000        	call	c_lgadd
1542  002d               L554:
1543                     ; 406   return(temp);
1545  002d 96            	ldw	x,sp
1546  002e 1c0001        	addw	x,#OFST-3
1547  0031 cd0000        	call	c_ltor
1551  0034 5b04          	addw	sp,#4
1552  0036 81            	ret
1655                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1655                     ; 418 {
1656                     .text:	section	.text,new
1657  0000               _FLASH_GetFlagStatus:
1659  0000 88            	push	a
1660  0001 88            	push	a
1661       00000001      OFST:	set	1
1664                     ; 419   FlagStatus status = RESET;
1666                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1668  0002 a108          	cp	a,#8
1669  0004 270c          	jreq	L271
1670  0006 a104          	cp	a,#4
1671  0008 2708          	jreq	L271
1672  000a a102          	cp	a,#2
1673  000c 2704          	jreq	L271
1674  000e a101          	cp	a,#1
1675  0010 2603          	jrne	L071
1676  0012               L271:
1677  0012 4f            	clr	a
1678  0013 2010          	jra	L471
1679  0015               L071:
1680  0015 ae01a5        	ldw	x,#421
1681  0018 89            	pushw	x
1682  0019 ae0000        	ldw	x,#0
1683  001c 89            	pushw	x
1684  001d ae0010        	ldw	x,#L73
1685  0020 cd0000        	call	_assert_failed
1687  0023 5b04          	addw	sp,#4
1688  0025               L471:
1689                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1691  0025 c6505f        	ld	a,20575
1692  0028 1502          	bcp	a,(OFST+1,sp)
1693  002a 2706          	jreq	L525
1694                     ; 426     status = SET; /* FLASH_FLAG is set */
1696  002c a601          	ld	a,#1
1697  002e 6b01          	ld	(OFST+0,sp),a
1700  0030 2002          	jra	L725
1701  0032               L525:
1702                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1704  0032 0f01          	clr	(OFST+0,sp)
1706  0034               L725:
1707                     ; 434   return status;
1709  0034 7b01          	ld	a,(OFST+0,sp)
1712  0036 85            	popw	x
1713  0037 81            	ret
1798                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1798                     ; 550 {
1799                     .text:	section	.text,new
1800  0000               _FLASH_WaitForLastOperation:
1802  0000 5203          	subw	sp,#3
1803       00000003      OFST:	set	3
1806                     ; 551   uint8_t flagstatus = 0x00;
1808  0002 0f03          	clr	(OFST+0,sp)
1810                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1812  0004 aeffff        	ldw	x,#65535
1813  0007 1f01          	ldw	(OFST-2,sp),x
1815                     ; 576   UNUSED(FLASH_MemType);
1818  0009 200e          	jra	L375
1819  000b               L175:
1820                     ; 579     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1822  000b c6505f        	ld	a,20575
1823  000e a405          	and	a,#5
1824  0010 6b03          	ld	(OFST+0,sp),a
1826                     ; 580     timeout--;
1828  0012 1e01          	ldw	x,(OFST-2,sp)
1829  0014 1d0001        	subw	x,#1
1830  0017 1f01          	ldw	(OFST-2,sp),x
1832  0019               L375:
1833                     ; 577   while((flagstatus == 0x00) && (timeout != 0x00))
1835  0019 0d03          	tnz	(OFST+0,sp)
1836  001b 2604          	jrne	L775
1838  001d 1e01          	ldw	x,(OFST-2,sp)
1839  001f 26ea          	jrne	L175
1840  0021               L775:
1841                     ; 584   if(timeout == 0x00 )
1843  0021 1e01          	ldw	x,(OFST-2,sp)
1844  0023 2604          	jrne	L106
1845                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1847  0025 a602          	ld	a,#2
1848  0027 6b03          	ld	(OFST+0,sp),a
1850  0029               L106:
1851                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1853  0029 7b03          	ld	a,(OFST+0,sp)
1856  002b 5b03          	addw	sp,#3
1857  002d 81            	ret
1921                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1921                     ; 600 {
1922                     .text:	section	.text,new
1923  0000               _FLASH_EraseBlock:
1925  0000 89            	pushw	x
1926  0001 5206          	subw	sp,#6
1927       00000006      OFST:	set	6
1930                     ; 601   uint32_t startaddress = 0;
1932                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1934  0003 7b0b          	ld	a,(OFST+5,sp)
1935  0005 a1fd          	cp	a,#253
1936  0007 2706          	jreq	L402
1937  0009 7b0b          	ld	a,(OFST+5,sp)
1938  000b a1f7          	cp	a,#247
1939  000d 2603          	jrne	L202
1940  000f               L402:
1941  000f 4f            	clr	a
1942  0010 2010          	jra	L602
1943  0012               L202:
1944  0012 ae0263        	ldw	x,#611
1945  0015 89            	pushw	x
1946  0016 ae0000        	ldw	x,#0
1947  0019 89            	pushw	x
1948  001a ae0010        	ldw	x,#L73
1949  001d cd0000        	call	_assert_failed
1951  0020 5b04          	addw	sp,#4
1952  0022               L602:
1953                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1955  0022 7b0b          	ld	a,(OFST+5,sp)
1956  0024 a1fd          	cp	a,#253
1957  0026 2626          	jrne	L536
1958                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1960  0028 1e07          	ldw	x,(OFST+1,sp)
1961  002a a30080        	cpw	x,#128
1962  002d 2403          	jruge	L012
1963  002f 4f            	clr	a
1964  0030 2010          	jra	L212
1965  0032               L012:
1966  0032 ae0266        	ldw	x,#614
1967  0035 89            	pushw	x
1968  0036 ae0000        	ldw	x,#0
1969  0039 89            	pushw	x
1970  003a ae0010        	ldw	x,#L73
1971  003d cd0000        	call	_assert_failed
1973  0040 5b04          	addw	sp,#4
1974  0042               L212:
1975                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1977  0042 ae8000        	ldw	x,#32768
1978  0045 1f05          	ldw	(OFST-1,sp),x
1979  0047 ae0000        	ldw	x,#0
1980  004a 1f03          	ldw	(OFST-3,sp),x
1983  004c 2024          	jra	L736
1984  004e               L536:
1985                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1987  004e 1e07          	ldw	x,(OFST+1,sp)
1988  0050 a3000a        	cpw	x,#10
1989  0053 2403          	jruge	L412
1990  0055 4f            	clr	a
1991  0056 2010          	jra	L612
1992  0058               L412:
1993  0058 ae026b        	ldw	x,#619
1994  005b 89            	pushw	x
1995  005c ae0000        	ldw	x,#0
1996  005f 89            	pushw	x
1997  0060 ae0010        	ldw	x,#L73
1998  0063 cd0000        	call	_assert_failed
2000  0066 5b04          	addw	sp,#4
2001  0068               L612:
2002                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2004  0068 ae4000        	ldw	x,#16384
2005  006b 1f05          	ldw	(OFST-1,sp),x
2006  006d ae0000        	ldw	x,#0
2007  0070 1f03          	ldw	(OFST-3,sp),x
2009  0072               L736:
2010                     ; 628     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
2012  0072 1e07          	ldw	x,(OFST+1,sp)
2013  0074 a640          	ld	a,#64
2014  0076 cd0000        	call	c_cmulx
2016  0079 96            	ldw	x,sp
2017  007a 1c0003        	addw	x,#OFST-3
2018  007d cd0000        	call	c_ladd
2020  0080 be02          	ldw	x,c_lreg+2
2021  0082 1f01          	ldw	(OFST-5,sp),x
2023                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
2025  0084 721a505b      	bset	20571,#5
2026                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2028  0088 721b505c      	bres	20572,#5
2029                     ; 637     *pwFlash = (uint32_t)0;
2031  008c 1e01          	ldw	x,(OFST-5,sp)
2032  008e a600          	ld	a,#0
2033  0090 e703          	ld	(3,x),a
2034  0092 a600          	ld	a,#0
2035  0094 e702          	ld	(2,x),a
2036  0096 a600          	ld	a,#0
2037  0098 e701          	ld	(1,x),a
2038  009a a600          	ld	a,#0
2039  009c f7            	ld	(x),a
2040                     ; 645 }
2043  009d 5b08          	addw	sp,#8
2044  009f 81            	ret
2149                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2149                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2149                     ; 658 {
2150                     .text:	section	.text,new
2151  0000               _FLASH_ProgramBlock:
2153  0000 89            	pushw	x
2154  0001 5206          	subw	sp,#6
2155       00000006      OFST:	set	6
2158                     ; 659   uint16_t Count = 0;
2160                     ; 660   uint32_t startaddress = 0;
2162                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2164  0003 7b0b          	ld	a,(OFST+5,sp)
2165  0005 a1fd          	cp	a,#253
2166  0007 2706          	jreq	L422
2167  0009 7b0b          	ld	a,(OFST+5,sp)
2168  000b a1f7          	cp	a,#247
2169  000d 2603          	jrne	L222
2170  000f               L422:
2171  000f 4f            	clr	a
2172  0010 2010          	jra	L622
2173  0012               L222:
2174  0012 ae0297        	ldw	x,#663
2175  0015 89            	pushw	x
2176  0016 ae0000        	ldw	x,#0
2177  0019 89            	pushw	x
2178  001a ae0010        	ldw	x,#L73
2179  001d cd0000        	call	_assert_failed
2181  0020 5b04          	addw	sp,#4
2182  0022               L622:
2183                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2185  0022 0d0c          	tnz	(OFST+6,sp)
2186  0024 2706          	jreq	L232
2187  0026 7b0c          	ld	a,(OFST+6,sp)
2188  0028 a110          	cp	a,#16
2189  002a 2603          	jrne	L032
2190  002c               L232:
2191  002c 4f            	clr	a
2192  002d 2010          	jra	L432
2193  002f               L032:
2194  002f ae0298        	ldw	x,#664
2195  0032 89            	pushw	x
2196  0033 ae0000        	ldw	x,#0
2197  0036 89            	pushw	x
2198  0037 ae0010        	ldw	x,#L73
2199  003a cd0000        	call	_assert_failed
2201  003d 5b04          	addw	sp,#4
2202  003f               L432:
2203                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2205  003f 7b0b          	ld	a,(OFST+5,sp)
2206  0041 a1fd          	cp	a,#253
2207  0043 2626          	jrne	L317
2208                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2210  0045 1e07          	ldw	x,(OFST+1,sp)
2211  0047 a30080        	cpw	x,#128
2212  004a 2403          	jruge	L632
2213  004c 4f            	clr	a
2214  004d 2010          	jra	L042
2215  004f               L632:
2216  004f ae029b        	ldw	x,#667
2217  0052 89            	pushw	x
2218  0053 ae0000        	ldw	x,#0
2219  0056 89            	pushw	x
2220  0057 ae0010        	ldw	x,#L73
2221  005a cd0000        	call	_assert_failed
2223  005d 5b04          	addw	sp,#4
2224  005f               L042:
2225                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2227  005f ae8000        	ldw	x,#32768
2228  0062 1f03          	ldw	(OFST-3,sp),x
2229  0064 ae0000        	ldw	x,#0
2230  0067 1f01          	ldw	(OFST-5,sp),x
2233  0069 2024          	jra	L517
2234  006b               L317:
2235                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2237  006b 1e07          	ldw	x,(OFST+1,sp)
2238  006d a3000a        	cpw	x,#10
2239  0070 2403          	jruge	L242
2240  0072 4f            	clr	a
2241  0073 2010          	jra	L442
2242  0075               L242:
2243  0075 ae02a0        	ldw	x,#672
2244  0078 89            	pushw	x
2245  0079 ae0000        	ldw	x,#0
2246  007c 89            	pushw	x
2247  007d ae0010        	ldw	x,#L73
2248  0080 cd0000        	call	_assert_failed
2250  0083 5b04          	addw	sp,#4
2251  0085               L442:
2252                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2254  0085 ae4000        	ldw	x,#16384
2255  0088 1f03          	ldw	(OFST-3,sp),x
2256  008a ae0000        	ldw	x,#0
2257  008d 1f01          	ldw	(OFST-5,sp),x
2259  008f               L517:
2260                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2262  008f 1e07          	ldw	x,(OFST+1,sp)
2263  0091 a640          	ld	a,#64
2264  0093 cd0000        	call	c_cmulx
2266  0096 96            	ldw	x,sp
2267  0097 1c0001        	addw	x,#OFST-5
2268  009a cd0000        	call	c_lgadd
2271                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2273  009d 0d0c          	tnz	(OFST+6,sp)
2274  009f 260a          	jrne	L717
2275                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
2277  00a1 7210505b      	bset	20571,#0
2278                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2280  00a5 7211505c      	bres	20572,#0
2282  00a9 2008          	jra	L127
2283  00ab               L717:
2284                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
2286  00ab 7218505b      	bset	20571,#4
2287                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2289  00af 7219505c      	bres	20572,#4
2290  00b3               L127:
2291                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2293  00b3 5f            	clrw	x
2294  00b4 1f05          	ldw	(OFST-1,sp),x
2296  00b6               L327:
2297                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2299  00b6 1e0d          	ldw	x,(OFST+7,sp)
2300  00b8 72fb05        	addw	x,(OFST-1,sp)
2301  00bb f6            	ld	a,(x)
2302  00bc 1e03          	ldw	x,(OFST-3,sp)
2303  00be 72fb05        	addw	x,(OFST-1,sp)
2304  00c1 f7            	ld	(x),a
2305                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2307  00c2 1e05          	ldw	x,(OFST-1,sp)
2308  00c4 1c0001        	addw	x,#1
2309  00c7 1f05          	ldw	(OFST-1,sp),x
2313  00c9 1e05          	ldw	x,(OFST-1,sp)
2314  00cb a30040        	cpw	x,#64
2315  00ce 25e6          	jrult	L327
2316                     ; 698 }
2319  00d0 5b08          	addw	sp,#8
2320  00d2 81            	ret
2333                     	xdef	_FLASH_WaitForLastOperation
2334                     	xdef	_FLASH_ProgramBlock
2335                     	xdef	_FLASH_EraseBlock
2336                     	xdef	_FLASH_GetFlagStatus
2337                     	xdef	_FLASH_GetBootSize
2338                     	xdef	_FLASH_GetProgrammingTime
2339                     	xdef	_FLASH_GetLowPowerMode
2340                     	xdef	_FLASH_SetProgrammingTime
2341                     	xdef	_FLASH_SetLowPowerMode
2342                     	xdef	_FLASH_EraseOptionByte
2343                     	xdef	_FLASH_ProgramOptionByte
2344                     	xdef	_FLASH_ReadOptionByte
2345                     	xdef	_FLASH_ProgramWord
2346                     	xdef	_FLASH_ReadByte
2347                     	xdef	_FLASH_ProgramByte
2348                     	xdef	_FLASH_EraseByte
2349                     	xdef	_FLASH_ITConfig
2350                     	xdef	_FLASH_DeInit
2351                     	xdef	_FLASH_Lock
2352                     	xdef	_FLASH_Unlock
2353                     	xref	_assert_failed
2354                     	switch	.const
2355  0010               L73:
2356  0010 7372635c7374  	dc.b	"src\stm8s_flash.c",0
2357                     	xref.b	c_lreg
2358                     	xref.b	c_x
2359                     	xref.b	c_y
2379                     	xref	c_ladd
2380                     	xref	c_cmulx
2381                     	xref	c_lgadd
2382                     	xref	c_rtol
2383                     	xref	c_umul
2384                     	xref	c_lcmp
2385                     	xref	c_ltor
2386                     	end
