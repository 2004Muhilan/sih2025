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
	movw r28,r24
	ldi r18,0
	movw r20,r24
	subi r20,-8
	sbci r21,-1
	rjmp .L2
.L6:
	subi r22,-8
	sbci r23,-1
	subi r18,lo8(-(1))
	cpi r18,lo8(16)
	breq .L1
.L2:
	movw r30,r28
	movw r26,r22
.L3:
	ld r25,Z+
	eor r25,r18
	st X+,r25
	cp r30,r20
	cpc r31,r21
	brne .L3
	rjmp .L6
.L1:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	des_key_schedule_avr, .-des_key_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"
