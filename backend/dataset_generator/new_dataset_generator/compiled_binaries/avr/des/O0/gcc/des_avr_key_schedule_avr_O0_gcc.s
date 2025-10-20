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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+6,r25
	std Y+5,r24
	std Y+8,r23
	std Y+7,r22
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L5:
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L3
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r18,Y+5
	ldd r19,Y+6
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r25,r24
	ldd r24,Y+1
	mov r20,r25
	eor r20,r24
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r18,r24
	adc r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,r20
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L3:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,8
	brlt .L4
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,16
	brlt .L5
	nop
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	des_key_schedule_avr, .-des_key_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"
