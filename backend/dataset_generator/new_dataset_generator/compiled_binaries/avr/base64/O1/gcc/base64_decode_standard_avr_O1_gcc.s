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
	brlo .L8
	ldi r25,lo8(-97)
	add r25,r24
	cpi r25,lo8(26)
	brlo .L9
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(10)
	brlo .L10
	cpi r24,lo8(43)
	breq .L6
	cpi r24,lo8(47)
	brne .L11
	ldi r24,lo8(63)
	ldi r25,0
/* epilogue start */
	ret
.L8:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,65
	sbc r25,__zero_reg__
	ret
.L9:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,71
	sbc r25,__zero_reg__
	ret
.L10:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	adiw r24,4
	ret
.L11:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
.L6:
	ldi r24,lo8(62)
	ldi r25,0
	ret
	.size	base64_char_value, .-base64_char_value
.global	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
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
	movw r30,r20
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r30,r24
	ld r18,Z
	tst r18
	brne .+2
	rjmp .L12
	cpi r18,lo8(61)
	brne .+2
	rjmp .L12
	movw r14,r20
	movw r12,r22
	movw r16,r24
	subi r16,-4
	sbci r17,-1
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	rjmp .L14
.L17:
	movw r30,r14
	ld r20,Z
	ldd r21,Z+1
	movw r18,r20
	subi r18,-1
	sbci r19,-1
	std Z+1,r19
	st Z,r18
	movw r30,r12
	add r30,r20
	adc r31,r21
	st Z,r26
	movw r30,r14
	ld r20,Z
	ldd r21,Z+1
	movw r18,r20
	subi r18,-1
	sbci r19,-1
	std Z+1,r19
	st Z,r18
	movw r30,r12
	add r30,r20
	adc r31,r21
	st Z,r25
	movw r30,r14
	ld r20,Z
	ldd r21,Z+1
	movw r18,r20
	subi r18,-1
	sbci r19,-1
	std Z+1,r19
	st Z,r18
	movw r30,r12
	add r30,r20
	adc r31,r21
	st Z,r24
	movw r30,r16
	ld r24,Z
	tst r24
	breq .L12
	subi r16,-4
	sbci r17,-1
	cpi r24,lo8(61)
	breq .L12
.L14:
	movw r28,r16
	sbiw r28,4
	mov r24,r4
	mov r25,r5
	mov r26,r6
	mov r27,r7
.L15:
	lsl r24
	rol r25
	rol r26
	rol r27
	lsl r24
	rol r25
	rol r26
	rol r27
	movw r8,r24
	movw r10,r26
	lsl r8
	rol r9
	rol r10
	rol r11
	lsl r8
	rol r9
	rol r10
	rol r11
	lsl r8
	rol r9
	rol r10
	rol r11
	lsl r8
	rol r9
	rol r10
	rol r11
	ld r24,Y+
	call base64_char_value
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	or r24,r8
	or r25,r9
	or r26,r10
	or r27,r11
	cp r16,r28
	cpc r17,r29
	brne .L15
	rjmp .L17
.L12:
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
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (GNU) 7.3.0"
