	.file	"des_avr_key_schedule.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_key_schedule_avr
	.type	des_key_schedule_avr, @function
des_key_schedule_avr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	movw r30,r22
	ldi r25,0
.L2:
	ld r24,X
	eor r24,r25
	st Z,r24
	adiw r26,1
	ld r24,X
	sbiw r26,1
	eor r24,r25
	std Z+1,r24
	adiw r26,2
	ld r24,X
	sbiw r26,2
	eor r24,r25
	std Z+2,r24
	adiw r26,3
	ld r24,X
	sbiw r26,3
	eor r24,r25
	std Z+3,r24
	adiw r26,4
	ld r24,X
	sbiw r26,4
	eor r24,r25
	std Z+4,r24
	adiw r26,5
	ld r24,X
	sbiw r26,5
	eor r24,r25
	std Z+5,r24
	adiw r26,6
	ld r24,X
	sbiw r26,6
	eor r24,r25
	std Z+6,r24
	adiw r26,7
	ld r24,X
	sbiw r26,7
	eor r24,r25
	std Z+7,r24
	subi r25,lo8(-(1))
	adiw r30,8
	cpi r25,lo8(16)
	brne .L2
/* epilogue start */
	ret
	.size	des_key_schedule_avr, .-des_key_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"
