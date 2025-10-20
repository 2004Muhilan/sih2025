	.file	"sha256_schedule.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_message_schedule
	.type	sha256_message_schedule, @function
sha256_message_schedule:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
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
/* stack size = 16 */
.L__stack_usage = 16
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
	movw r28,r22
	subi r28,64
	sbci r29,-1
.L3:
	movw r26,r30
	ldd r8,Z+4
	ldd r9,Z+5
	ldd r10,Z+6
	ldd r11,Z+7
	ldd r12,Z+56
	ldd r13,Z+57
	ldd r14,Z+58
	ldd r15,Z+59
	adiw r30,4
	movw r18,r10
	movw r16,r8
	ldi r24,7
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	dec r24
	brne 1b
	movw r22,r10
	movw r20,r8
	ldi r25,25
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	dec r25
	brne 1b
	or r20,r16
	or r21,r17
	or r22,r18
	or r23,r19
	movw r18,r10
	movw r16,r8
	ldi r24,14
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	dec r24
	brne 1b
	movw r4,r8
	movw r6,r10
	ldi r25,18
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r25
	brne 1b
	or r16,r4
	or r17,r5
	or r18,r6
	or r19,r7
	eor r20,r16
	eor r21,r17
	eor r22,r18
	eor r23,r19
	movw r18,r10
	movw r16,r8
	ldi r24,3
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	dec r24
	brne 1b
	eor r16,r20
	eor r17,r21
	eor r18,r22
	eor r19,r23
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	ldd r20,Z+32
	ldd r21,Z+33
	ldd r22,Z+34
	ldd r23,Z+35
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	add r24,r16
	adc r25,r17
	adc r26,r18
	adc r27,r19
	movw r18,r14
	movw r16,r12
	ldi r20,15
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	dec r20
	brne 1b
	movw r22,r14
	movw r20,r12
	mov r0,r19
	ldi r19,17
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r19
	brne 1b
	mov r19,r0
	or r16,r20
	or r17,r21
	or r18,r22
	or r19,r23
	movw r22,r14
	movw r20,r12
	mov r0,r19
	ldi r19,13
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	dec r19
	brne 1b
	mov r19,r0
	movw r8,r12
	movw r10,r14
	mov r0,r23
	ldi r23,19
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	dec r23
	brne 1b
	mov r23,r0
	or r20,r8
	or r21,r9
	or r22,r10
	or r23,r11
	eor r16,r20
	eor r17,r21
	eor r18,r22
	eor r19,r23
	movw r22,r14
	movw r20,r12
	mov r0,r19
	ldi r19,10
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r19
	brne 1b
	mov r19,r0
	eor r20,r16
	eor r21,r17
	eor r22,r18
	eor r23,r19
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Z+60,r24
	std Z+61,r25
	std Z+62,r26
	std Z+63,r27
	cp r28,r30
	cpc r29,r31
	breq .+2
	rjmp .L3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	sha256_message_schedule, .-sha256_message_schedule
	.ident	"GCC: (GNU) 7.3.0"
