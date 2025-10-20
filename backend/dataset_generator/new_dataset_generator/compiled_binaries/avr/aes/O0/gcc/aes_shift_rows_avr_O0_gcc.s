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
	push r28
	push r29
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 5 */
.L__stack_usage = 5
	std Y+3,r25
	std Y+2,r24
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ldd r24,Z+1
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,1
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+5
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,5
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+9
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,9
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+13
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,13
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ldd r24,Z+2
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,2
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+10
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,10
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ldd r24,Z+6
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,6
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+14
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,14
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ldd r24,Z+15
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,15
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+11
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,11
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+7
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,7
	ldd r18,Y+2
	ldd r19,Y+3
	movw r30,r18
	ldd r18,Z+3
	movw r30,r24
	st Z,r18
	ldd r24,Y+2
	ldd r25,Y+3
	adiw r24,3
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	nop
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (GNU) 7.3.0"
