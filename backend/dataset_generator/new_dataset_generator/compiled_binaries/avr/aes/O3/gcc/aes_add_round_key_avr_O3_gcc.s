	.file	"aes_add_round_key.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	movw r26,r22
	ld r24,Z
	ld r25,X
	eor r24,r25
	st Z,r24
	ldd r24,Z+1
	adiw r26,1
	ld r25,X
	sbiw r26,1
	eor r24,r25
	std Z+1,r24
	ldd r24,Z+2
	adiw r26,2
	ld r25,X
	sbiw r26,2
	eor r24,r25
	std Z+2,r24
	ldd r24,Z+3
	adiw r26,3
	ld r25,X
	sbiw r26,3
	eor r24,r25
	std Z+3,r24
	ldd r24,Z+4
	adiw r26,4
	ld r25,X
	sbiw r26,4
	eor r24,r25
	std Z+4,r24
	ldd r24,Z+5
	adiw r26,5
	ld r25,X
	sbiw r26,5
	eor r24,r25
	std Z+5,r24
	ldd r24,Z+6
	adiw r26,6
	ld r25,X
	sbiw r26,6
	eor r24,r25
	std Z+6,r24
	ldd r24,Z+7
	adiw r26,7
	ld r25,X
	sbiw r26,7
	eor r24,r25
	std Z+7,r24
	ldd r24,Z+8
	adiw r26,8
	ld r25,X
	sbiw r26,8
	eor r24,r25
	std Z+8,r24
	ldd r24,Z+9
	adiw r26,9
	ld r25,X
	sbiw r26,9
	eor r24,r25
	std Z+9,r24
	ldd r24,Z+10
	adiw r26,10
	ld r25,X
	sbiw r26,10
	eor r24,r25
	std Z+10,r24
	ldd r24,Z+11
	adiw r26,11
	ld r25,X
	sbiw r26,11
	eor r24,r25
	std Z+11,r24
	ldd r24,Z+12
	adiw r26,12
	ld r25,X
	sbiw r26,12
	eor r24,r25
	std Z+12,r24
	ldd r24,Z+13
	adiw r26,13
	ld r25,X
	sbiw r26,13
	eor r24,r25
	std Z+13,r24
	ldd r24,Z+14
	adiw r26,14
	ld r25,X
	sbiw r26,14
	eor r24,r25
	std Z+14,r24
	ldd r24,Z+15
	adiw r26,15
	ld r25,X
	eor r24,r25
	std Z+15,r24
/* epilogue start */
	ret
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (GNU) 7.3.0"
