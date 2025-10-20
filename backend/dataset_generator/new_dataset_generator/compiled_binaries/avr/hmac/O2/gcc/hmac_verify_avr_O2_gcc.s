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
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L5
	movw r30,r24
	movw r26,r22
	add r20,r24
	adc r21,r25
	ldi r25,0
.L3:
	ld r24,Z+
	ld r18,X+
	eor r24,r18
	or r25,r24
	cp r20,r30
	cpc r21,r31
	brne .L3
	ldi r24,lo8(1)
	cpse r25,__zero_reg__
	rjmp .L11
/* epilogue start */
	ret
.L11:
	ldi r24,0
	ret
.L5:
	ldi r24,lo8(1)
/* epilogue start */
	ret
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (GNU) 7.3.0"
