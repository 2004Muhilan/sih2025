	.file	"base64_no_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
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
	ldi r18,lo8(2)
	ldi r19,0
	ldi r29,0
	ldi r28,0
.L2:
	movw r16,r20
	add r16,r28
	adc r17,r29
	movw r30,r18
	sbiw r30,2
	cp r30,r22
	cpc r31,r23
	brlo .L7
	movw r30,r16
	st Z,__zero_reg__
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
.L7:
	movw r14,r18
	ldi r26,1
	sub r14,r26
	sbc r15,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	cp r14,r22
	cpc r15,r23
	brsh .L3
	movw r30,r24
	ldd r8,Z+1
	mov r9,__zero_reg__
	mov r9,r8
	clr r8
	mov __tmp_reg__,r9
	lsl r0
	sbc r10,r10
	sbc r11,r11
.L3:
	cp r18,r22
	cpc r19,r23
	brsh .L4
	movw r26,r24
	adiw r26,2
	ld r30,X
	or r8,r30
.L4:
	movw r4,r8
	movw r6,r10
	ldi r30,18
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r30
	brne 1b
	ldi r27,63
	and r4,r27
	clr r5
	clr r6
	clr r7
	movw r30,r4
	subi r30,lo8(-(b64))
	sbci r31,hi8(-(b64))
	ld r30,Z
	movw r26,r16
	st X,r30
	movw r30,r28
	adiw r30,2
	movw r4,r8
	movw r6,r10
	ldi r26,12
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r26
	brne 1b
	ldi r27,63
	and r4,r27
	clr r5
	clr r6
	clr r7
	movw r26,r4
	subi r26,lo8(-(b64))
	sbci r27,hi8(-(b64))
	ld r13,X
	movw r26,r16
	adiw r26,1
	st X,r13
	movw r26,r20
	add r26,r30
	adc r27,r31
	cp r14,r22
	cpc r15,r23
	brsh .L5
	adiw r30,1
	movw r14,r10
	movw r12,r8
	ldi r28,6
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r28
	brne 1b
	ldi r28,63
	and r12,r28
	clr r13
	clr r14
	clr r15
	movw r28,r12
	subi r28,lo8(-(b64))
	sbci r29,hi8(-(b64))
	ld r28,Y
	st X,r28
.L5:
	movw r26,r20
	add r26,r30
	adc r27,r31
	cp r18,r22
	cpc r19,r23
	brsh .L6
	adiw r30,1
	ldi r28,63
	and r8,r28
	clr r9
	clr r10
	clr r11
	movw r28,r8
	subi r28,lo8(-(b64))
	sbci r29,hi8(-(b64))
	ld r28,Y
	st X,r28
.L6:
	subi r18,-3
	sbci r19,-1
	adiw r24,3
	movw r28,r30
	rjmp .L2
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
