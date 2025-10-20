	.file	"rsa_avr_padding_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_pad_avr
	.type	rsa_pad_avr, @function
rsa_pad_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	add r30,r22
	adc r31,__zero_reg__
	ldi r24,lo8(-1)
.L2:
	cpi r22,lo8(16)
	brlo .L3
/* epilogue start */
	ret
.L3:
	st Z+,r24
	subi r22,lo8(-(1))
	rjmp .L2
	.size	rsa_pad_avr, .-rsa_pad_avr
	.ident	"GCC: (GNU) 7.3.0"
