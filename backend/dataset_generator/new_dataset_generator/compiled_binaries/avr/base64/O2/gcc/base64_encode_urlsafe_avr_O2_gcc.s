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
/* stack size = 12 */
.L__stack_usage = 12
	movw r26,r22
	sbiw r26,0
	brne .+2
	rjmp .L1
	movw r30,r20
	ldi r19,0
	ldi r18,0
	rjmp .L5
.L13:
	movw r12,r18
	ldi r17,2
	add r12,r17
	adc r13,__zero_reg__
	movw r28,r24
	add r28,r14
	adc r29,r15
	ld r8,Y
	mov r9,__zero_reg__
	mov r11,__zero_reg__
	mov r10,__zero_reg__
	mov r11,r10
	mov r10,r9
	mov r9,r8
	clr r8
	cp r12,r26
	cpc r13,r27
	brlo .+2
	rjmp .L12
	subi r18,-3
	sbci r19,-1
	add r12,r24
	adc r13,r25
	movw r28,r12
	ld r15,Y
	add r20,r15
	adc r21,__zero_reg__
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	add r20,r8
	adc r21,r9
	adc r22,r10
	adc r23,r11
	movw r12,r20
	movw r14,r22
	ldi r29,63
	and r12,r29
	clr r13
	clr r14
	clr r15
	movw r28,r12
	subi r28,lo8(-(b64url))
	sbci r29,hi8(-(b64url))
	ld r11,Y
.L3:
	movw r12,r20
	movw r14,r22
	ldi r28,18
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r28
	brne 1b
	movw r16,r12
	subi r16,lo8(-(b64url))
	sbci r17,hi8(-(b64url))
	movw r28,r16
	ld r15,Y
	st Z,r15
	movw r12,r20
	movw r14,r22
	ldi r29,12
	1:
	lsr r15
	ror r14
	ror r13
	ror r12
	dec r29
	brne 1b
	ldi r29,63
	and r12,r29
	clr r13
	clr r14
	clr r15
	movw r16,r12
	subi r16,lo8(-(b64url))
	sbci r17,hi8(-(b64url))
	movw r28,r16
	ld r15,Y
	std Z+1,r15
	ldi r17,6
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r17
	brne 1b
	andi r20,63
	clr r21
	clr r22
	clr r23
	subi r20,lo8(-(b64url))
	sbci r21,hi8(-(b64url))
	movw r28,r20
	ld r20,Y
	std Z+2,r20
	std Z+3,r11
	adiw r30,4
	cp r18,r26
	cpc r19,r27
	brsh .L1
.L5:
	movw r14,r18
	ldi r16,-1
	sub r14,r16
	sbc r15,r16
	movw r28,r24
	add r28,r18
	adc r29,r19
	ld r20,Y
	ldi r21,0
	ldi r23,0
	ldi r22,0
	movw r22,r20
	clr r21
	clr r20
	cp r14,r26
	cpc r15,r27
	brsh .+2
	rjmp .L13
	movw r18,r14
	ldi r16,lo8(65)
	mov r11,r16
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
	pop r9
	pop r8
	ret
.L12:
	add r20,r8
	adc r21,r9
	adc r22,r10
	adc r23,r11
	lds r11,b64url
	movw r18,r12
	rjmp .L3
	.size	base64_encode_urlsafe, .-base64_encode_urlsafe
	.section	.rodata
	.type	b64url, @object
	.size	b64url, 65
b64url:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
