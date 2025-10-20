	.file	"array_max.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	array_max
	.type	array_max, @function
array_max:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	ldd r24,Y+9
	ldd r25,Y+10
	or r24,r25
	brne .L2
	ldi r24,0
	ldi r25,0
	movw r26,r24
	rjmp .L3
.L2:
	ldd r24,Y+7
	ldd r25,Y+8
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
	ldi r24,lo8(1)
	ldi r25,0
	std Y+6,r25
	std Y+5,r24
	rjmp .L4
.L6:
	ldd r24,Y+5
	ldd r25,Y+6
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	cp r18,r24
	cpc r19,r25
	cpc r20,r26
	cpc r21,r27
	brge .L5
	ldd r24,Y+5
	ldd r25,Y+6
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+7
	ldd r19,Y+8
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	std Y+1,r24
	std Y+2,r25
	std Y+3,r26
	std Y+4,r27
.L5:
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L4:
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r24,Y+9
	ldd r25,Y+10
	cp r18,r24
	cpc r19,r25
	brlo .L6
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
.L3:
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	array_max, .-array_max
	.ident	"GCC: (GNU) 7.3.0"
