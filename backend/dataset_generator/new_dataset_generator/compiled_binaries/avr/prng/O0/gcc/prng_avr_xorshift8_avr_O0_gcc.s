	.file	"prng_avr_xorshift8.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_xorshift8_avr
	.type	prng_xorshift8_avr, @function
prng_xorshift8_avr:
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
	ld r24,Z
	std Y+1,r24
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	mov r25,r24
	ldd r24,Y+1
	eor r24,r25
	std Y+1,r24
	ldd r24,Y+1
	swap r24
	lsr r24
	andi r24,lo8(7)
	ldd r25,Y+1
	eor r24,r25
	std Y+1,r24
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	swap r24
	swap r25
	andi r25,0xf0
	eor r25,r24
	andi r24,0xf0
	eor r25,r24
	mov r25,r24
	ldd r24,Y+1
	eor r24,r25
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	ldd r18,Y+1
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	prng_xorshift8_avr, .-prng_xorshift8_avr
	.ident	"GCC: (GNU) 7.3.0"
