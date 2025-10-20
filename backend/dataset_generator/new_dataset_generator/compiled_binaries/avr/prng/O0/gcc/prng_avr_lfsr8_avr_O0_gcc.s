	.file	"prng_avr_lfsr8.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	prng_lfsr8_avr
	.type	prng_lfsr8_avr, @function
prng_lfsr8_avr:
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
	andi r24,lo8(1)
	std Y+1,r24
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ld r24,Z
	mov r18,r24
	lsr r18
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	tst r24
	breq .L2
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ld r25,Z
	ldi r24,lo8(-72)
	mov r18,r25
	eor r18,r24
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	st Z,r18
.L2:
	ldd r24,Y+2
	ldd r25,Y+3
	movw r30,r24
	ld r24,Z
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	prng_lfsr8_avr, .-prng_lfsr8_avr
	.ident	"GCC: (GNU) 7.3.0"
