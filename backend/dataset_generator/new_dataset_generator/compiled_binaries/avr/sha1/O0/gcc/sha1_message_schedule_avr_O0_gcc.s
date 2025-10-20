	.file	"sha1_message_schedule.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_message_schedule
	.type	sha1_message_schedule, @function
sha1_message_schedule:
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
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+5
	ldd r19,Y+6
	add r24,r18
	adc r25,r19
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	lsl r18
	rol r19
	ldd r20,Y+7
	ldd r21,Y+8
	add r18,r20
	adc r19,r21
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,16
	brlt .L3
	ldi r24,lo8(16)
	ldi r25,0
	std Y+4,r25
	std Y+3,r24
	rjmp .L4
.L5:
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,3
	sbci r25,-64
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,8
	sbci r25,-64
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r22,Y+7
	ldd r23,Y+8
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	eor r18,r24
	eor r19,r25
	eor r20,r26
	eor r21,r27
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,14
	sbci r25,-64
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r22,Y+7
	ldd r23,Y+8
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	eor r18,r24
	eor r19,r25
	eor r20,r26
	eor r21,r27
	ldd r24,Y+3
	ldd r25,Y+4
	subi r24,16
	sbci r25,-64
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r22,Y+7
	ldd r23,Y+8
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	eor r24,r18
	eor r25,r19
	eor r26,r20
	eor r27,r21
	ldd r18,Y+3
	ldd r19,Y+4
	lsl r18
	rol r19
	lsl r18
	rol r19
	ldd r20,Y+7
	ldd r21,Y+8
	add r18,r20
	adc r19,r21
	lsl r24
	rol r25
	rol r26
	rol r27
	adc r24,__zero_reg__
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L4:
	ldd r24,Y+3
	ldd r25,Y+4
	cpi r24,80
	cpc r25,__zero_reg__
	brge .+2
	rjmp .L5
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
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (GNU) 7.3.0"
