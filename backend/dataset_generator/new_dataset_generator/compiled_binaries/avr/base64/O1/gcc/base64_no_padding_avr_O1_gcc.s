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
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L8
	movw r28,r24
	adiw r28,1
	ldi r16,lo8(2)
	ldi r17,0
	ldi r18,lo8(1)
	ldi r19,0
	ldi r25,0
	ldi r24,0
	rjmp .L7
.L12:
	movw r18,r30
.L7:
	cp r18,r22
	cpc r19,r23
	brlo .+2
	rjmp .L9
	ld r8,Y
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
	ldd r30,Y+1
	or r8,r30
.L4:
	movw r14,r10
	movw r12,r8
	mov r0,r27
	ldi r27,18
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r27
	brne 1b
	mov r27,r0
	ldi r26,63
	and r12,r26
	clr r13
	clr r14
	clr r15
	movw r30,r12
	subi r30,lo8(-(b64))
	sbci r31,hi8(-(b64))
	ld r30,Z
	movw r26,r20
	add r26,r24
	adc r27,r25
	st X,r30
	movw r14,r24
	ldi r30,2
	add r14,r30
	adc r15,__zero_reg__
	movw r4,r8
	movw r6,r10
	mov r0,r19
	ldi r19,12
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r19
	brne 1b
	mov r19,r0
	ldi r31,63
	and r4,r31
	clr r5
	clr r6
	clr r7
	movw r30,r4
	subi r30,lo8(-(b64))
	sbci r31,hi8(-(b64))
	ld r30,Z
	adiw r26,1
	st X,r30
	cp r18,r22
	cpc r19,r23
	brlo .+2
	rjmp .L10
	movw r30,r24
	adiw r30,3
	add r14,r20
	adc r15,r21
	movw r26,r10
	movw r24,r8
	set
	bld __zero_reg__,6-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	andi r24,63
	clr r25
	clr r26
	clr r27
	movw r26,r24
	subi r26,lo8(-(b64))
	sbci r27,hi8(-(b64))
	ld r24,X
	movw r26,r14
	st X,r24
.L5:
	cp r16,r22
	cpc r17,r23
	brsh .L11
	movw r24,r30
	adiw r24,1
	add r30,r20
	adc r31,r21
	ldi r27,63
	and r8,r27
	clr r9
	clr r10
	clr r11
	movw r26,r8
	subi r26,lo8(-(b64))
	sbci r27,hi8(-(b64))
	ld r26,X
	st Z,r26
.L6:
	movw r30,r18
	adiw r30,3
	subi r16,-3
	sbci r17,-1
	adiw r28,3
	subi r18,-2
	sbci r19,-1
	cp r18,r22
	cpc r19,r23
	brsh .+2
	rjmp .L12
.L2:
	add r20,r24
	adc r21,r25
	movw r30,r20
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
.L9:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	rjmp .L3
.L10:
	movw r30,r14
	rjmp .L5
.L11:
	movw r24,r30
	rjmp .L6
.L8:
	movw r24,r22
	rjmp .L2
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.section	.rodata
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
