	.file	"rsa_avr_keygen_small.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rsa_keygen_small_avr
	.type	rsa_keygen_small_avr, @function
rsa_keygen_small_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(67)
	ldi r19,lo8(1)
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldi r24,lo8(7)
	ldi r25,0
	movw r30,r22
	std Z+1,r25
	st Z,r24
	ldi r24,lo8(103)
	ldi r25,0
	movw r30,r20
	std Z+1,r25
	st Z,r24
/* epilogue start */
	ret
	.size	rsa_keygen_small_avr, .-rsa_keygen_small_avr
	.ident	"GCC: (GNU) 7.3.0"
