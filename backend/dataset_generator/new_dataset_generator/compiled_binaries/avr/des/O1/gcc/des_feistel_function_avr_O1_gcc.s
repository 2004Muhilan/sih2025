	.file	"des_feistel_function.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_feistel
	.type	des_feistel, @function
des_feistel:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(48)
	ldi r25,0
.L2:
	sbiw r24,1
	brne .L2
	ldi r22,0
	ldi r23,0
	movw r24,r22
/* epilogue start */
	ret
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (GNU) 7.3.0"
