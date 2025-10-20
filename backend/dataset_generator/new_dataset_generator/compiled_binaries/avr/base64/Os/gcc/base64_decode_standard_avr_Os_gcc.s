	.file	"base64_decode_standard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(-65)
	add r25,r24
	cpi r25,lo8(26)
	brsh .L2
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,65
	sbc r25,__zero_reg__
	ret
.L2:
	ldi r25,lo8(-97)
	add r25,r24
	cpi r25,lo8(26)
	brsh .L4
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,71
	sbc r25,__zero_reg__
	ret
.L4:
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(10)
	brsh .L5
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	adiw r24,4
	ret
.L5:
	cpi r24,lo8(43)
	breq .L6
	cpi r24,lo8(47)
	breq .L7
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
.L6:
	ldi r24,lo8(62)
	ldi r25,0
	ret
.L7:
	ldi r24,lo8(63)
	ldi r25,0
/* epilogue start */
	ret
	.size	base64_char_value, .-base64_char_value
.global	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
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
/* stack size = 14 */
.L__stack_usage = 14
	movw r14,r22
	movw r28,r20
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	movw r16,r24
.L9:
	movw r30,r16
	ld r24,Z
	tst r24
	breq .L8
	cpi r24,lo8(61)
	brne .L12
.L8:
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
	ret
.L12:
	movw r6,r16
	mov r13,__zero_reg__
	mov r12,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
.L10:
	ldi r24,6
	1:
	lsl r8
	rol r9
	rol r10
	rol r11
	dec r24
	brne 1b
	movw r30,r6
	ld r24,Z+
	movw r6,r30
	call base64_char_value
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	or r8,r24
	or r9,r25
	or r10,r26
	or r11,r27
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
	ldi r24,4
	cp r12,r24
	cpc r13,__zero_reg__
	brne .L10
	ld r24,Y
	ldd r25,Y+1
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	std Y+1,r19
	st Y,r18
	add r24,r14
	adc r25,r15
	movw r30,r24
	st Z,r10
	ld r24,Y
	ldd r25,Y+1
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	std Y+1,r19
	st Y,r18
	add r24,r14
	adc r25,r15
	movw r30,r24
	st Z,r9
	ld r24,Y
	ldd r25,Y+1
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	std Y+1,r19
	st Y,r18
	add r24,r14
	adc r25,r15
	movw r30,r24
	st Z,r8
	subi r16,-4
	sbci r17,-1
	rjmp .L9
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (GNU) 7.3.0"
