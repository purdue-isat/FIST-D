   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  43                     ; 54 void BEEP_DeInit(void)
  43                     ; 55 {
  45                     .text:	section	.text,new
  46  0000               _BEEP_DeInit:
  50                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  52  0000 351f50f3      	mov	20723,#31
  53                     ; 57 }
  56  0004 81            	ret
 122                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 122                     ; 68 {
 123                     .text:	section	.text,new
 124  0000               _BEEP_Init:
 126  0000 88            	push	a
 127       00000000      OFST:	set	0
 130                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 132  0001 4d            	tnz	a
 133  0002 2708          	jreq	L21
 134  0004 a140          	cp	a,#64
 135  0006 2704          	jreq	L21
 136  0008 a180          	cp	a,#128
 137  000a 2603          	jrne	L01
 138  000c               L21:
 139  000c 4f            	clr	a
 140  000d 2010          	jra	L41
 141  000f               L01:
 142  000f ae0046        	ldw	x,#70
 143  0012 89            	pushw	x
 144  0013 ae0000        	ldw	x,#0
 145  0016 89            	pushw	x
 146  0017 ae000c        	ldw	x,#L15
 147  001a cd0000        	call	_assert_failed
 149  001d 5b04          	addw	sp,#4
 150  001f               L41:
 151                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 153  001f c650f3        	ld	a,20723
 154  0022 a41f          	and	a,#31
 155  0024 a11f          	cp	a,#31
 156  0026 2610          	jrne	L35
 157                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 159  0028 c650f3        	ld	a,20723
 160  002b a4e0          	and	a,#224
 161  002d c750f3        	ld	20723,a
 162                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 164  0030 c650f3        	ld	a,20723
 165  0033 aa0b          	or	a,#11
 166  0035 c750f3        	ld	20723,a
 167  0038               L35:
 168                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 170  0038 c650f3        	ld	a,20723
 171  003b a43f          	and	a,#63
 172  003d c750f3        	ld	20723,a
 173                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 175  0040 c650f3        	ld	a,20723
 176  0043 1a01          	or	a,(OFST+1,sp)
 177  0045 c750f3        	ld	20723,a
 178                     ; 82 }
 181  0048 84            	pop	a
 182  0049 81            	ret
 237                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 237                     ; 92 {
 238                     .text:	section	.text,new
 239  0000               _BEEP_Cmd:
 243                     ; 93   if (NewState != DISABLE)
 245  0000 4d            	tnz	a
 246  0001 2706          	jreq	L301
 247                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 249  0003 721a50f3      	bset	20723,#5
 251  0007 2004          	jra	L501
 252  0009               L301:
 253                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 255  0009 721b50f3      	bres	20723,#5
 256  000d               L501:
 257                     ; 103 }
 260  000d 81            	ret
 314                     .const:	section	.text
 315  0000               L42:
 316  0000 0001adb0      	dc.l	110000
 317  0004               L62:
 318  0004 000249f1      	dc.l	150001
 319  0008               L23:
 320  0008 000003e8      	dc.l	1000
 321                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 321                     ; 119 {
 322                     .text:	section	.text,new
 323  0000               _BEEP_LSICalibrationConfig:
 325  0000 5206          	subw	sp,#6
 326       00000006      OFST:	set	6
 329                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 331  0002 96            	ldw	x,sp
 332  0003 1c0009        	addw	x,#OFST+3
 333  0006 cd0000        	call	c_ltor
 335  0009 ae0000        	ldw	x,#L42
 336  000c cd0000        	call	c_lcmp
 338  000f 2512          	jrult	L22
 339  0011 96            	ldw	x,sp
 340  0012 1c0009        	addw	x,#OFST+3
 341  0015 cd0000        	call	c_ltor
 343  0018 ae0004        	ldw	x,#L62
 344  001b cd0000        	call	c_lcmp
 346  001e 2403          	jruge	L22
 347  0020 4f            	clr	a
 348  0021 2010          	jra	L03
 349  0023               L22:
 350  0023 ae007c        	ldw	x,#124
 351  0026 89            	pushw	x
 352  0027 ae0000        	ldw	x,#0
 353  002a 89            	pushw	x
 354  002b ae000c        	ldw	x,#L15
 355  002e cd0000        	call	_assert_failed
 357  0031 5b04          	addw	sp,#4
 358  0033               L03:
 359                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 361  0033 96            	ldw	x,sp
 362  0034 1c0009        	addw	x,#OFST+3
 363  0037 cd0000        	call	c_ltor
 365  003a ae0008        	ldw	x,#L23
 366  003d cd0000        	call	c_ludv
 368  0040 be02          	ldw	x,c_lreg+2
 369  0042 1f03          	ldw	(OFST-3,sp),x
 371                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 373  0044 c650f3        	ld	a,20723
 374  0047 a4e0          	and	a,#224
 375  0049 c750f3        	ld	20723,a
 376                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 378  004c 1e03          	ldw	x,(OFST-3,sp)
 379  004e 54            	srlw	x
 380  004f 54            	srlw	x
 381  0050 54            	srlw	x
 382  0051 1f05          	ldw	(OFST-1,sp),x
 384                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 386  0053 1e05          	ldw	x,(OFST-1,sp)
 387  0055 58            	sllw	x
 388  0056 58            	sllw	x
 389  0057 58            	sllw	x
 390  0058 1f01          	ldw	(OFST-5,sp),x
 392  005a 1e03          	ldw	x,(OFST-3,sp)
 393  005c 72f001        	subw	x,(OFST-5,sp)
 394  005f 1605          	ldw	y,(OFST-1,sp)
 395  0061 9058          	sllw	y
 396  0063 905c          	incw	y
 397  0065 cd0000        	call	c_imul
 399  0068 1605          	ldw	y,(OFST-1,sp)
 400  006a 9058          	sllw	y
 401  006c 9058          	sllw	y
 402  006e 9058          	sllw	y
 403  0070 bf00          	ldw	c_x,x
 404  0072 90b300        	cpw	y,c_x
 405  0075 250c          	jrult	L531
 406                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 408  0077 7b06          	ld	a,(OFST+0,sp)
 409  0079 a002          	sub	a,#2
 410  007b ca50f3        	or	a,20723
 411  007e c750f3        	ld	20723,a
 413  0081 2009          	jra	L731
 414  0083               L531:
 415                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 417  0083 7b06          	ld	a,(OFST+0,sp)
 418  0085 4a            	dec	a
 419  0086 ca50f3        	or	a,20723
 420  0089 c750f3        	ld	20723,a
 421  008c               L731:
 422                     ; 142 }
 425  008c 5b06          	addw	sp,#6
 426  008e 81            	ret
 439                     	xdef	_BEEP_LSICalibrationConfig
 440                     	xdef	_BEEP_Cmd
 441                     	xdef	_BEEP_Init
 442                     	xdef	_BEEP_DeInit
 443                     	xref	_assert_failed
 444                     	switch	.const
 445  000c               L15:
 446  000c 7372635c7374  	dc.b	"src\stm8s_beep.c",0
 447                     	xref.b	c_lreg
 448                     	xref.b	c_x
 468                     	xref	c_imul
 469                     	xref	c_ludv
 470                     	xref	c_lcmp
 471                     	xref	c_ltor
 472                     	end
