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
	ldi r18,0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L2
	movw r30,r24
	mov r26,r22
	mov r27,r23
	add r20,r24
	adc r21,r25
	ldi r18,0
.L3:
	ld r25,Z+
	ld r19,X+
	eor r25,r19
	or r18,r25
	cp r30,r20
	cpc r31,r21
	brne .L3
.L2:
	ldi r24,lo8(1)
	cpse r18,__zero_reg__
	ldi r24,0
.L4:
/* epilogue start */
	ret
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (GNU) 7.3.0"
