	.file	"des_avr_permutation.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_permute_avr
	.type	des_permute_avr, @function
des_permute_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+7
	st Z,r25
	std Z+7,r24
	ldd r24,Z+1
	ldd r25,Z+6
	std Z+1,r25
	std Z+6,r24
/* epilogue start */
	ret
	.size	des_permute_avr, .-des_permute_avr
	.ident	"GCC: (GNU) 7.3.0"
