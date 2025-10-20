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
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r25,Z
	mov r24,r25
	lsr r24
	sbrs r25,0
	rjmp .L4
	ldi r25,lo8(-72)
	eor r24,r25
	st Z,r24
.L3:
	ld r24,Z
/* epilogue start */
	ret
.L4:
	st Z,r24
	rjmp .L3
	.size	prng_lfsr8_avr, .-prng_lfsr8_avr
	.ident	"GCC: (GNU) 7.3.0"
