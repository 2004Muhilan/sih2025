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
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	ldd r24,Y+1
	cpi r24,lo8(65)
	brlt .L2
	ldd r24,Y+1
	cpi r24,lo8(91)
	brge .L2
	ldd r24,Y+1
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,65
	sbc r25,__zero_reg__
	rjmp .L3
.L2:
	ldd r24,Y+1
	cpi r24,lo8(97)
	brlt .L4
	ldd r24,Y+1
	cpi r24,lo8(123)
	brge .L4
	ldd r24,Y+1
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,71
	sbc r25,__zero_reg__
	rjmp .L3
.L4:
	ldd r24,Y+1
	cpi r24,lo8(48)
	brlt .L5
	ldd r24,Y+1
	cpi r24,lo8(58)
	brge .L5
	ldd r24,Y+1
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	adiw r24,4
	rjmp .L3
.L5:
	ldd r24,Y+1
	cpi r24,lo8(43)
	brne .L6
	ldi r24,lo8(62)
	ldi r25,0
	rjmp .L3
.L6:
	ldd r24,Y+1
	cpi r24,lo8(47)
	brne .L7
	ldi r24,lo8(63)
	ldi r25,0
	rjmp .L3
.L7:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L3:
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	base64_char_value, .-base64_char_value
.global	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 20 */
.L__stack_usage = 20
	std Y+10,r25
	std Y+9,r24
	std Y+12,r23
	std Y+11,r22
	std Y+14,r21
	std Y+13,r20
	ldd r24,Y+13
	ldd r25,Y+14
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L9
.L13:
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+8,__zero_reg__
	std Y+7,__zero_reg__
	rjmp .L10
.L11:
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	add r24,r24
	adc r25,r25
	adc r26,r26
	adc r27,r27
	movw r12,r24
	movw r14,r26
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	ldd r18,Y+9
	ldd r19,Y+10
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	call base64_char_value
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	or r24,r12
	or r25,r13
	or r26,r14
	or r27,r15
	std Y+3,r24
	std Y+4,r25
	std Y+5,r26
	std Y+6,r27
	ldd r24,Y+7
	ldd r25,Y+8
	adiw r24,1
	std Y+8,r25
	std Y+7,r24
.L10:
	ldd r24,Y+7
	ldd r25,Y+8
	sbiw r24,4
	brge .+2
	rjmp .L11
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	movw r24,r26
	clr r26
	clr r27
	ldd r18,Y+13
	ldd r19,Y+14
	movw r30,r18
	ld r18,Z
	ldd r19,Z+1
	movw r22,r18
	subi r22,-1
	sbci r23,-1
	ldd r20,Y+13
	ldd r21,Y+14
	movw r30,r20
	std Z+1,r23
	st Z,r22
	ldd r20,Y+11
	ldd r21,Y+12
	add r18,r20
	adc r19,r21
	movw r30,r18
	st Z,r24
	ldd r24,Y+3
	ldd r25,Y+4
	ldd r26,Y+5
	ldd r27,Y+6
	mov r24,r25
	mov r25,r26
	mov r26,r27
	clr r27
	ldd r18,Y+13
	ldd r19,Y+14
	movw r30,r18
	ld r18,Z
	ldd r19,Z+1
	movw r22,r18
	subi r22,-1
	sbci r23,-1
	ldd r20,Y+13
	ldd r21,Y+14
	movw r30,r20
	std Z+1,r23
	st Z,r22
	ldd r20,Y+11
	ldd r21,Y+12
	add r18,r20
	adc r19,r21
	movw r30,r18
	st Z,r24
	ldd r24,Y+13
	ldd r25,Y+14
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	movw r20,r24
	subi r20,-1
	sbci r21,-1
	ldd r18,Y+13
	ldd r19,Y+14
	movw r30,r18
	std Z+1,r21
	st Z,r20
	ldd r18,Y+11
	ldd r19,Y+12
	add r24,r18
	adc r25,r19
	ldd r18,Y+3
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,4
	std Y+2,r25
	std Y+1,r24
.L9:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	tst r24
	breq .L14
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	cpi r24,lo8(61)
	breq .+2
	rjmp .L13
.L14:
	nop
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (GNU) 7.3.0"
