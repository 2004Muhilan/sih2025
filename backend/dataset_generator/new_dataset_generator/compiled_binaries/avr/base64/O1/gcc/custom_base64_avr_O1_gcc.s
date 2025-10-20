	.file	"custom_base64.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_encode
	.type	base64_encode, @function
base64_encode:
	push r4
	push r5
	push r6
	push r7
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
	movw r26,r22
	sbiw r26,0
	brne .+2
	rjmp .L1
	mov r30,r20
	mov r31,r21
	ldi r19,0
	ldi r18,0
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	ldi r16,0
	ldi r17,0
	rjmp .L4
.L5:
	movw r18,r22
	mov r4,r10
	mov r5,r11
	mov r6,r16
	mov r7,r17
	mov r20,r10
	mov r21,r11
	mov r22,r16
	mov r23,r17
.L3:
	movw r14,r12
	clr r13
	clr r12
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	mov r7,r6
	mov r6,r5
	mov r5,r4
	clr r4
	add r20,r4
	adc r21,r5
	adc r22,r6
	adc r23,r7
	movw r12,r20
	movw r14,r22
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
	movw r28,r12
	subi r28,lo8(-(b64))
	sbci r29,hi8(-(b64))
	ld r28,Y
	st Z,r28
	movw r12,r20
	movw r14,r22
	mov r0,r27
	ldi r27,12
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r27
	brne 1b
	mov r27,r0
	ldi r29,63
	and r12,r29
	clr r13
	clr r14
	clr r15
	movw r28,r12
	subi r28,lo8(-(b64))
	sbci r29,hi8(-(b64))
	ld r28,Y
	std Z+1,r28
	movw r12,r20
	movw r14,r22
	set
	bld __zero_reg__,6-1
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	lsr __zero_reg__
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
	std Z+2,r28
	andi r20,63
	clr r21
	clr r22
	clr r23
	subi r20,lo8(-(b64))
	sbci r21,hi8(-(b64))
	movw r28,r20
	ld r20,Y
	std Z+3,r20
	adiw r30,4
	cp r18,r26
	cpc r19,r27
	brsh .L1
.L4:
	movw r22,r18
	subi r22,-1
	sbci r23,-1
	movw r28,r24
	add r28,r18
	adc r29,r19
	ld r12,Y
	mov r13,__zero_reg__
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	cp r22,r26
	cpc r23,r27
	brlo .+2
	rjmp .L5
	movw r20,r18
	subi r20,-2
	sbci r21,-1
	add r22,r24
	adc r23,r25
	movw r28,r22
	ld r4,Y
	mov r5,__zero_reg__
	mov r7,__zero_reg__
	mov r6,__zero_reg__
	cp r20,r26
	cpc r21,r27
	brsh .L6
	subi r18,-3
	sbci r19,-1
	movw r28,r20
	add r28,r24
	adc r29,r25
	ld r20,Y
	ldi r21,0
	ldi r23,0
	ldi r22,0
	rjmp .L3
.L6:
	movw r18,r20
	mov r20,r10
	mov r21,r11
	mov r22,r16
	mov r23,r17
	rjmp .L3
.L1:
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	base64_encode, .-base64_encode
.global	base64_decode
	.type	base64_decode, @function
base64_decode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	mov r26,r22
	mov r27,r23
	adiw r24,4
.L9:
	ld r18,Z+
	st X+,r18
	cp r30,r24
	cpc r31,r25
	brne .L9
/* epilogue start */
	ret
	.size	base64_decode, .-base64_decode
	.section	.rodata
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
