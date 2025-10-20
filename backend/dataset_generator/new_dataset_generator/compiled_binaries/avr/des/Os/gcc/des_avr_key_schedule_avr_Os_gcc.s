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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r20,r24
	ldi r25,0
	movw r28,r20
	adiw r28,8
.L2:
	movw r30,r20
	movw r26,r22
.L3:
	ld r18,Z+
	eor r18,r25
	st X+,r18
	cp r28,r30
	cpc r29,r31
	brne .L3
	subi r22,-8
	sbci r23,-1
	subi r25,lo8(-(1))
	cpi r25,lo8(16)
	brne .L2
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	des_key_schedule_avr, .-des_key_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"
