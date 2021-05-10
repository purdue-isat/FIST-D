   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
 118                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 118                     ; 55 {
 120                     .text:	section	.text,new
 121  0000               _RST_GetFlagStatus:
 123  0000 88            	push	a
 124       00000000      OFST:	set	0
 127                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 129  0001 a110          	cp	a,#16
 130  0003 2710          	jreq	L01
 131  0005 a108          	cp	a,#8
 132  0007 270c          	jreq	L01
 133  0009 a104          	cp	a,#4
 134  000b 2708          	jreq	L01
 135  000d a102          	cp	a,#2
 136  000f 2704          	jreq	L01
 137  0011 a101          	cp	a,#1
 138  0013 2603          	jrne	L6
 139  0015               L01:
 140  0015 4f            	clr	a
 141  0016 2010          	jra	L21
 142  0018               L6:
 143  0018 ae0039        	ldw	x,#57
 144  001b 89            	pushw	x
 145  001c ae0000        	ldw	x,#0
 146  001f 89            	pushw	x
 147  0020 ae0000        	ldw	x,#L55
 148  0023 cd0000        	call	_assert_failed
 150  0026 5b04          	addw	sp,#4
 151  0028               L21:
 152                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 154  0028 c650b3        	ld	a,20659
 155  002b 1501          	bcp	a,(OFST+1,sp)
 156  002d 2603          	jrne	L41
 157  002f 4f            	clr	a
 158  0030 2002          	jra	L61
 159  0032               L41:
 160  0032 a601          	ld	a,#1
 161  0034               L61:
 164  0034 5b01          	addw	sp,#1
 165  0036 81            	ret
 201                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 201                     ; 70 {
 202                     .text:	section	.text,new
 203  0000               _RST_ClearFlag:
 205  0000 88            	push	a
 206       00000000      OFST:	set	0
 209                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 211  0001 a110          	cp	a,#16
 212  0003 2710          	jreq	L42
 213  0005 a108          	cp	a,#8
 214  0007 270c          	jreq	L42
 215  0009 a104          	cp	a,#4
 216  000b 2708          	jreq	L42
 217  000d a102          	cp	a,#2
 218  000f 2704          	jreq	L42
 219  0011 a101          	cp	a,#1
 220  0013 2603          	jrne	L22
 221  0015               L42:
 222  0015 4f            	clr	a
 223  0016 2010          	jra	L62
 224  0018               L22:
 225  0018 ae0048        	ldw	x,#72
 226  001b 89            	pushw	x
 227  001c ae0000        	ldw	x,#0
 228  001f 89            	pushw	x
 229  0020 ae0000        	ldw	x,#L55
 230  0023 cd0000        	call	_assert_failed
 232  0026 5b04          	addw	sp,#4
 233  0028               L62:
 234                     ; 74   RST->SR = (uint8_t)RST_Flag;
 236  0028 7b01          	ld	a,(OFST+1,sp)
 237  002a c750b3        	ld	20659,a
 238                     ; 75 }
 241  002d 84            	pop	a
 242  002e 81            	ret
 255                     	xdef	_RST_ClearFlag
 256                     	xdef	_RST_GetFlagStatus
 257                     	xref	_assert_failed
 258                     .const:	section	.text
 259  0000               L55:
 260  0000 7372635c7374  	dc.b	"src\stm8s_rst.c",0
 280                     	end
