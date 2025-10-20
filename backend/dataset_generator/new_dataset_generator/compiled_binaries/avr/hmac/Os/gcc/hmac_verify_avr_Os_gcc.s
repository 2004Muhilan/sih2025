	.file	"hmac_verify.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	add r20,r24
	adc r21,r25
	ldi r18,0
.L2:
	cp r24,r20
	cpc r25,r21
	brne .L3
	ldi r24,lo8(1)
	cpse r18,__zero_reg__
	ldi r24,0
.L4:
/* epilogue start */
	ret
.L3:
	movw r26,r24
	ld r19,X+
	movw r24,r26
	ld r22,Z+
	eor r19,r22
	or r18,r19
	rjmp .L2
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (GNU) 7.3.0"
