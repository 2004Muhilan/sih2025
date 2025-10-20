	.file	"ecc_avr_keygen.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_keygen_avr
	.type	ecc_keygen_avr, @function
ecc_keygen_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	ldi r19,lo8(123)
	mul r18,r19
	movw r22,r0
	clr __zero_reg__
	ldi r20,lo8(-56)
	ldi r21,lo8(1)
	mul r18,r20
	movw r24,r0
	mul r18,r21
	add r25,r0
	clr __zero_reg__
/* epilogue start */
	ret
	.size	ecc_keygen_avr, .-ecc_keygen_avr
	.ident	"GCC: (GNU) 7.3.0"
