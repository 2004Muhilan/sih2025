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
	movw r28,r20
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L2
	adiw r24,1
	ldi r16,lo8(2)
	ldi r17,0
	ldi r30,lo8(1)
	ldi r31,0
	ldi r19,0
	ldi r18,0
	rjmp .L7
.L11:
	movw r30,r26
.L7:
	cp r30,r22
	cpc r31,r23
	brlo .+2
	rjmp .L9
	movw r26,r24
	ld r8,X
	mov r9,__zero_reg__
	mov r9,r8
	clr r8
	mov __tmp_reg__,r9
	lsl r0
	sbc r10,r10
	sbc r11,r11
.L3:
	cp r16,r22
	cpc r17,r23
	brsh .L4
	movw r28,r24
	ldd r26,Y+1
	or r8,r26
.L4:
	movw r14,r10
	movw r12,r8
	ldi r27,18
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r27
	brne 1b
	ldi r29,63
	and r12,r29
	clr r13
	clr r14
	clr r15
	movw r26,r12
	subi r26,lo8(-(b64))
	sbci r27,hi8(-(b64))
	ld r26,X
	movw r28,r20
	add r28,r18
	adc r29,r19
	st Y,r26
	movw r14,r18
	ldi r26,2
	add r14,r26
	adc r15,__zero_reg__
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
	ld r26,X
	std Y+1,r26
	movw r28,r20
	add r28,r14
	adc r29,r15
	cp r30,r22
	cpc r31,r23
	brlo .+2
	rjmp .L10
	subi r18,-3
	sbci r19,-1
	movw r14,r10
	movw r12,r8
	ldi r26,6
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r26
	brne 1b
	ldi r26,63
	and r12,r26
	clr r13
	clr r14
	clr r15
	movw r26,r12
	subi r26,lo8(-(b64))
	sbci r27,hi8(-(b64))
	ld r26,X
	st Y,r26
	movw r28,r20
	add r28,r18
	adc r29,r19
.L5:
	cp r16,r22
	cpc r17,r23
	brsh .L6
	subi r18,-1
	sbci r19,-1
	ldi r27,63
	and r8,r27
	clr r9
	clr r10
	clr r11
	movw r26,r8
	subi r26,lo8(-(b64))
	sbci r27,hi8(-(b64))
	ld r26,X
	st Y,r26
	movw r28,r20
	add r28,r18
	adc r29,r19
.L6:
	movw r26,r30
	adiw r26,3
	subi r16,-3
	sbci r17,-1
	adiw r24,3
	adiw r30,2
	cp r30,r22
	cpc r31,r23
	brsh .+2
	rjmp .L11
.L2:
	st Y,__zero_reg__
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
.L9:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	rjmp .L3
.L10:
	movw r18,r14
	rjmp .L5
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
