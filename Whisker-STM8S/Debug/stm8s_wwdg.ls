   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  64                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  64                     ; 54 {
  66                     .text:	section	.text,new
  67  0000               _WWDG_Init:
  69  0000 89            	pushw	x
  70       00000000      OFST:	set	0
  73                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  75  0001 9f            	ld	a,xl
  76  0002 a180          	cp	a,#128
  77  0004 2403          	jruge	L6
  78  0006 4f            	clr	a
  79  0007 2010          	jra	L01
  80  0009               L6:
  81  0009 ae0038        	ldw	x,#56
  82  000c 89            	pushw	x
  83  000d ae0000        	ldw	x,#0
  84  0010 89            	pushw	x
  85  0011 ae0000        	ldw	x,#L33
  86  0014 cd0000        	call	_assert_failed
  88  0017 5b04          	addw	sp,#4
  89  0019               L01:
  90                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  92  0019 357f50d2      	mov	20690,#127
  93                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  95  001d 7b01          	ld	a,(OFST+1,sp)
  96  001f aac0          	or	a,#192
  97  0021 c750d1        	ld	20689,a
  98                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 100  0024 7b02          	ld	a,(OFST+2,sp)
 101  0026 aa40          	or	a,#64
 102  0028 a47f          	and	a,#127
 103  002a c750d2        	ld	20690,a
 104                     ; 61 }
 107  002d 85            	popw	x
 108  002e 81            	ret
 143                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 143                     ; 70 {
 144                     .text:	section	.text,new
 145  0000               _WWDG_SetCounter:
 147  0000 88            	push	a
 148       00000000      OFST:	set	0
 151                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 153  0001 a180          	cp	a,#128
 154  0003 2403          	jruge	L41
 155  0005 4f            	clr	a
 156  0006 2010          	jra	L61
 157  0008               L41:
 158  0008 ae0048        	ldw	x,#72
 159  000b 89            	pushw	x
 160  000c ae0000        	ldw	x,#0
 161  000f 89            	pushw	x
 162  0010 ae0000        	ldw	x,#L33
 163  0013 cd0000        	call	_assert_failed
 165  0016 5b04          	addw	sp,#4
 166  0018               L61:
 167                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 169  0018 7b01          	ld	a,(OFST+1,sp)
 170  001a a47f          	and	a,#127
 171  001c c750d1        	ld	20689,a
 172                     ; 77 }
 175  001f 84            	pop	a
 176  0020 81            	ret
 199                     ; 86 uint8_t WWDG_GetCounter(void)
 199                     ; 87 {
 200                     .text:	section	.text,new
 201  0000               _WWDG_GetCounter:
 205                     ; 88   return(WWDG->CR);
 207  0000 c650d1        	ld	a,20689
 210  0003 81            	ret
 233                     ; 96 void WWDG_SWReset(void)
 233                     ; 97 {
 234                     .text:	section	.text,new
 235  0000               _WWDG_SWReset:
 239                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 241  0000 358050d1      	mov	20689,#128
 242                     ; 99 }
 245  0004 81            	ret
 281                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 281                     ; 109 {
 282                     .text:	section	.text,new
 283  0000               _WWDG_SetWindowValue:
 285  0000 88            	push	a
 286       00000000      OFST:	set	0
 289                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 291  0001 a180          	cp	a,#128
 292  0003 2403          	jruge	L62
 293  0005 4f            	clr	a
 294  0006 2010          	jra	L03
 295  0008               L62:
 296  0008 ae006f        	ldw	x,#111
 297  000b 89            	pushw	x
 298  000c ae0000        	ldw	x,#0
 299  000f 89            	pushw	x
 300  0010 ae0000        	ldw	x,#L33
 301  0013 cd0000        	call	_assert_failed
 303  0016 5b04          	addw	sp,#4
 304  0018               L03:
 305                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 307  0018 7b01          	ld	a,(OFST+1,sp)
 308  001a aa40          	or	a,#64
 309  001c a47f          	and	a,#127
 310  001e c750d2        	ld	20690,a
 311                     ; 114 }
 314  0021 84            	pop	a
 315  0022 81            	ret
 328                     	xdef	_WWDG_SetWindowValue
 329                     	xdef	_WWDG_SWReset
 330                     	xdef	_WWDG_GetCounter
 331                     	xdef	_WWDG_SetCounter
 332                     	xdef	_WWDG_Init
 333                     	xref	_assert_failed
 334                     .const:	section	.text
 335  0000               L33:
 336  0000 7372635c7374  	dc.b	"src\stm8s_wwdg.c",0
 356                     	end
