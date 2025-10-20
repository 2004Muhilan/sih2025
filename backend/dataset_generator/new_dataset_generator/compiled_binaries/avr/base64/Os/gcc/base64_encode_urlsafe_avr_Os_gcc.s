	.file	"base64_encode_urlsafe.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_encode_urlsafe
	.type	base64_encode_urlsafe, @function
base64_encode_urlsafe:
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
	movw r26,r20
	ldi r19,0
	ldi r18,0
.L2:
	cp r18,r22
	cpc r19,r23
	brlo .L4
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
.L4:
	movw r30,r18
	adiw r30,1
	movw r28,r24
	add r28,r18
	adc r29,r19
	ld r16,Y
	mov r8,r16
	mov r9,__zero_reg__
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	cp r30,r22
	cpc r31,r23
	brlo .+2
	rjmp .L5
	movw r20,r18
	subi r20,-2
	sbci r21,-1
	add r30,r24
	adc r31,r25
	ld r12,Z
	mov r13,__zero_reg__
	mov r15,__zero_reg__
	mov r14,__zero_reg__
	cp r20,r22
	cpc r21,r23
	brlo .+2
	rjmp .L6
	movw r30,r18
	adiw r30,3
	add r20,r24
	adc r21,r25
	movw r28,r20
	ld r16,Y
	mov r4,r16
	mov r5,__zero_reg__
	mov r7,__zero_reg__
	mov r6,__zero_reg__
.L3:
	movw r18,r8
	clr r17
	clr r16
	add r16,r4
	adc r17,r5
	adc r18,r6
	adc r19,r7
	mov r15,r14
	mov r14,r13
	mov r13,r12
	clr r12
	add r16,r12
	adc r17,r13
	adc r18,r14
	adc r19,r15
	movw r12,r16
	movw r14,r18
	ldi r21,18
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r21
	brne 1b
	movw r28,r12
	subi r28,lo8(-(b64url))
	sbci r29,hi8(-(b64url))
	ld r20,Y
	st X,r20
	movw r12,r16
	movw r14,r18
	ldi r28,12
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r28
	brne 1b
	ldi r29,63
	and r12,r29
	clr r13
	clr r14
	clr r15
	movw r28,r12
	subi r28,lo8(-(b64url))
	sbci r29,hi8(-(b64url))
	ld r20,Y
	adiw r26,1
	st X,r20
	sbiw r26,1
	movw r12,r16
	movw r14,r18
	ldi r29,6
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r29
	brne 1b
	ldi r20,63
	and r12,r20
	clr r13
	clr r14
	clr r15
	movw r28,r12
	subi r28,lo8(-(b64url))
	sbci r29,hi8(-(b64url))
	ld r20,Y
	adiw r26,2
	st X,r20
	sbiw r26,2
	andi r16,63
	clr r17
	clr r18
	clr r19
	subi r16,lo8(-(b64url))
	sbci r17,hi8(-(b64url))
	movw r28,r16
	ld r18,Y
	adiw r26,3
	st X,r18
	sbiw r26,3
	adiw r26,4
	movw r18,r30
	rjmp .L2
.L5:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.L7:
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
	rjmp .L3
.L6:
	movw r30,r20
	rjmp .L7
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.section	.rodata
	.type	b64url, @object
	.size	b64url, 65
b64url:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
