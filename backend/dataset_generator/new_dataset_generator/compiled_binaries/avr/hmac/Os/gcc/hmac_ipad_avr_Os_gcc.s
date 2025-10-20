	.file	"hmac_ipad.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_create_ipad
	.type	hmac_create_ipad, @function
hmac_create_ipad:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldi r19,0
	ldi r18,0
	ldi r24,lo8(54)
.L3:
	ldi r25,lo8(54)
	cp r18,r22
	cpc r19,r23
	brsh .L2
	movw r26,r30
	add r26,r18
	adc r27,r19
	ld r25,X
	eor r25,r24
.L2:
	movw r26,r20
	st X+,r25
	movw r20,r26
	subi r18,-1
	sbci r19,-1
	cpi r18,64
	cpc r19,__zero_reg__
	brne .L3
/* epilogue start */
	ret
	.size	hmac_create_ipad, .-hmac_create_ipad
	.ident	"GCC: (GNU) 7.3.0"
