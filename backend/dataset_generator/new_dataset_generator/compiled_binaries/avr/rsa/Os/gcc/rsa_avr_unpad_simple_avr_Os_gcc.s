	.file	"rsa_avr_unpad_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_unpad_avr
	.type	rsa_unpad_avr, @function
rsa_unpad_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldi r24,0
.L2:
	ld r25,Z+
	cpi r25,lo8(-1)
	breq .L1
	subi r24,lo8(-(1))
	cpi r24,lo8(16)
	brne .L2
.L1:
/* epilogue start */
	ret
	.size	rsa_unpad_avr, .-rsa_unpad_avr
	.ident	"GCC: (GNU) 7.3.0"
