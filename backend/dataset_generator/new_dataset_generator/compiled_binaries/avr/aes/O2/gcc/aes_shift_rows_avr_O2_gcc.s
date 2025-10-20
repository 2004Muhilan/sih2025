	.file	"aes_shift_rows.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+1
	ldd r25,Z+5
	std Z+1,r25
	ldd r25,Z+9
	std Z+5,r25
	ldd r25,Z+13
	std Z+9,r25
	std Z+13,r24
	ldd r24,Z+2
	ldd r25,Z+10
	std Z+2,r25
	std Z+10,r24
	ldd r24,Z+6
	ldd r25,Z+14
	std Z+6,r25
	std Z+14,r24
	ldd r24,Z+15
	ldd r25,Z+11
	std Z+15,r25
	ldd r25,Z+7
	std Z+11,r25
	ldd r25,Z+3
	std Z+7,r25
	std Z+3,r24
/* epilogue start */
	ret
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (GNU) 7.3.0"
