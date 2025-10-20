	.file	"sha1_avr_schedule_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha1_schedule_avr
	.type	sha1_schedule_avr, @function
sha1_schedule_avr:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+4,r25
	std Y+3,r24
	std Y+6,r23
	std Y+5,r22
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
	movw r18,r24
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r18,lo8(24)
	ldi r19,0
	movw r20,r24
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r18
	brpl 1b
	movw r18,r20
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	adiw r24,1
	ldd r20,Y+3
	ldd r21,Y+4
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r20,lo8(16)
	ldi r21,0
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r20
	brpl 1b
	or r18,r24
	or r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	adiw r24,2
	ldd r20,Y+3
	ldd r21,Y+4
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	mov r25,r24
	clr r24
	or r18,r24
	or r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	adiw r24,3
	ldd r20,Y+3
	ldd r21,Y+4
	add r24,r20
	adc r25,r21
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	or r24,r18
	or r25,r19
	ldd r18,Y+1
	ldd r19,Y+2
	lsl r18
	rol r19
	lsl r18
	rol r19
	ldd r20,Y+5
	ldd r21,Y+6
	add r18,r20
	adc r19,r21
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
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
	brge .+2
	rjmp .L3
	nop
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	sha1_schedule_avr, .-sha1_schedule_avr
	.ident	"GCC: (GNU) 7.3.0"
