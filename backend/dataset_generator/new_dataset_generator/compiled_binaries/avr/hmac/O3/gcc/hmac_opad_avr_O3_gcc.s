	.file	"hmac_opad.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_create_opad
	.type	hmac_create_opad, @function
hmac_create_opad:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	movw r30,r20
	ldi r19,0
	ldi r18,0
	ldi r20,lo8(92)
.L2:
	cp r18,r22
	cpc r19,r23
	brsh .L3
	movw r26,r28
	add r26,r18
	adc r27,r19
	ld r25,X
	eor r25,r20
	st Z+,r25
	subi r18,-1
	sbci r19,-1
	cpi r18,64
	cpc r19,__zero_reg__
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
.L3:
	st Z+,r20
	subi r18,-1
	sbci r19,-1
	cpi r18,64
	cpc r19,__zero_reg__
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	hmac_create_opad, .-hmac_create_opad
	.ident	"GCC: (GNU) 7.3.0"
