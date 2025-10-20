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
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r18,r22
	movw r26,r24
	movw r30,r22
	subi r24,-64
	sbci r25,-1
	movw r28,r22
.L2:
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X+
	st Y+,r20
	st Y+,r21
	st Y+,r22
	st Y+,r23
	cp r26,r24
	cpc r27,r25
	brne .L2
	movw r22,r18
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
	cp r30,r22
	cpc r31,r23
	brne .L3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	sha1_message_schedule, .-sha1_message_schedule
	.ident	"GCC: (GNU) 7.3.0"
