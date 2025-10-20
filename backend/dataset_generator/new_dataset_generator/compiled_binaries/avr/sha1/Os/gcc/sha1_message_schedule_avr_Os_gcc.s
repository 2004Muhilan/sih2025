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
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r30,r22
	movw r18,r24
	subi r18,-64
	sbci r19,-1
	movw r26,r22
.L2:
	movw r28,r24
	ld r12,Y+
	ld r13,Y+
	ld r14,Y+
	ld r15,Y+
	movw r24,r28
	st X+,r12
	st X+,r13
	st X+,r14
	st X+,r15
	cp r18,r28
	cpc r19,r29
	brne .L2
	inc r23
.L3:
	movw r28,r30
	adiw r30,4
	ldd r24,Y+52
	ldd r25,Y+53
	ldd r26,Y+54
	ldd r27,Y+55
	ldd r16,Y+32
	ldd r17,Y+33
	ldd r18,Y+34
	ldd r19,Y+35
	eor r24,r16
	eor r25,r17
	eor r26,r18
	eor r27,r19
	ldd r16,Y+8
	ldd r17,Y+9
	ldd r18,Y+10
	ldd r19,Y+11
	eor r24,r16
	eor r25,r17
	eor r26,r18
	eor r27,r19
	ld r16,Y
	ldd r17,Y+1
	ldd r18,Y+2
	ldd r19,Y+3
	eor r24,r16
	eor r25,r17
	eor r26,r18
	eor r27,r19
	lsl r24
	rol r25
	rol r26
	rol r27
	adc r24,__zero_reg__
	std Z+60,r24
	std Z+61,r25
	std Z+62,r26
	std Z+63,r27
	cp r22,r30
	cpc r23,r31
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (GNU) 7.3.0"
