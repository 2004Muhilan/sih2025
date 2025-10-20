	.file	"rc4_drop.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_drop_init
	.type	rc4_drop_init, @function
rc4_drop_init:
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
/* stack size = 13 */
.L__stack_usage = 13
	movw r14,r24
	movw r10,r22
	movw r8,r20
	movw r12,r24
	inc r13
	movw r16,r14
	ldi r24,0
.L2:
	movw r30,r16
	st Z+,r24
	movw r16,r30
	subi r24,lo8(-(1))
	cp r12,r30
	cpc r13,r31
	brne .L2
	movw r28,r14
	ldi r20,0
.L3:
	ld r7,Y
	movw r24,r28
	sub r24,r14
	sbc r25,r15
	movw r22,r8
	call __udivmodhi4
	movw r30,r10
	add r30,r24
	adc r31,r25
	ld r30,Z
	add r20,r7
	clr r21
	rol r21
	add r30,r20
	mov r31,r21
	adc r31,__zero_reg__
	mov r20,r30
	add r30,r14
	mov r31,r15
	adc r31,__zero_reg__
	ld r24,Z
	st Y+,r24
	st Z,r7
	cp r16,r28
	cpc r17,r29
	brne .L3
	movw r30,r12
	st Z,__zero_reg__
	movw r28,r14
	subi r28,-1
	sbci r29,-2
	st Y,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L1
	ldi r20,0
	ldi r25,0
	ldi r24,0
	rjmp .L5
.L6:
	movw r24,r22
.L5:
	ldi r30,lo8(1)
	add r30,r24
	add r30,r14
	mov r31,r15
	adc r31,__zero_reg__
	ld r21,Z
	add r20,r21
	movw r26,r14
	add r26,r20
	adc r27,__zero_reg__
	ld r22,X
	st Z,r22
	st X,r21
	movw r22,r24
	subi r22,-1
	sbci r23,-1
	cp r18,r22
	cpc r19,r23
	brne .L6
	subi r24,lo8(-(1))
	movw r30,r12
	st Z,r24
	st Y,r20
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
	pop r7
	ret
	.size	rc4_drop_init, .-rc4_drop_init
.global	rc4_drop_crypt
	.type	rc4_drop_crypt, @function
rc4_drop_crypt:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L13
	movw r28,r22
	add r20,r22
	adc r21,r23
	movw r22,r24
	inc r23
	movw r18,r24
	subi r18,-1
	sbci r19,-2
.L15:
	movw r26,r22
	ld r30,X
	ldi r16,lo8(1)
	add r16,r30
	st X,r16
	add r16,r24
	mov r17,r25
	adc r17,__zero_reg__
	movw r30,r16
	ld r14,Z
	movw r26,r18
	ld r30,X
	add r30,r14
	st X,r30
	movw r26,r24
	add r26,r30
	adc r27,__zero_reg__
	ld r15,X
	movw r30,r16
	st Z,r15
	st X,r14
	ld r15,Y+
	movw r26,r28
	sbiw r26,1
	ld r17,Z
	mov r30,r14
	add r30,r17
	add r30,r24
	mov r31,r25
	adc r31,__zero_reg__
	ld r30,Z
	eor r30,r15
	st X,r30
	cp r20,r28
	cpc r21,r29
	brne .L15
.L13:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rc4_drop_crypt, .-rc4_drop_crypt
.global	rc4_drop_encrypt
	.type	rc4_drop_encrypt, @function
rc4_drop_encrypt:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	subi r28,2
	sbci r29,1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 258 */
/* stack size = 266 */
.L__stack_usage = 266
	movw r12,r20
	movw r14,r18
	ldi r18,0
	ldi r19,lo8(3)
	movw r20,r22
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call rc4_drop_init
	movw r20,r14
	movw r22,r12
	movw r24,r16
	call memcpy
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L20
	subi r28,lo8(-257)
	sbci r29,hi8(-257)
	ld r22,Y
	subi r28,lo8(257)
	sbci r29,hi8(257)
	subi r28,lo8(-258)
	sbci r29,hi8(-258)
	ld r21,Y
	subi r28,lo8(258)
	sbci r29,hi8(258)
	movw r24,r16
	add r14,r16
	adc r15,r17
.L22:
	ldi r26,lo8(1)
	add r26,r22
	ldi r18,lo8(1)
	ldi r19,0
	add r18,r28
	adc r19,r29
	add r18,r26
	adc r19,__zero_reg__
	movw r26,r18
	ld r20,X
	add r21,r20
	ldi r16,lo8(1)
	ldi r17,0
	add r16,r28
	adc r17,r29
	add r16,r21
	adc r17,__zero_reg__
	movw r30,r16
	ld r18,Z
	st X,r18
	st Z,r20
	movw r30,r24
	ld r18,Z+
	movw r24,r30
	movw r16,r30
	subi r16,1
	sbc r17,__zero_reg__
	ld r19,X
	mov r30,r20
	add r30,r19
	ldi r26,lo8(1)
	ldi r27,0
	add r26,r28
	adc r27,r29
	add r26,r30
	adc r27,__zero_reg__
	movw r30,r26
	ld r19,Z
	eor r19,r18
	movw r30,r16
	st Z,r19
	subi r22,lo8(-(1))
	cp r14,r24
	cpc r15,r25
	brne .L22
.L20:
/* epilogue start */
	subi r28,-2
	sbci r29,-2
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	rc4_drop_encrypt, .-rc4_drop_encrypt
	.ident	"GCC: (GNU) 7.3.0"
