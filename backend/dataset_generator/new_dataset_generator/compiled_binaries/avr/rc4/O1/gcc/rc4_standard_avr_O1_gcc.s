	.file	"rc4_standard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	rc4_init
	.type	rc4_init, @function
rc4_init:
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
	movw r20,r24
	inc r21
	movw r18,r24
	ldi r24,0
.L2:
	movw r26,r18
	st X+,r24
	movw r18,r26
	subi r24,lo8(-(1))
	cp r26,r20
	cpc r27,r21
	brne .L2
	movw r28,r14
	ldi r20,0
.L4:
	ld r7,Y
	movw r24,r28
	sub r24,r12
	sbc r25,r13
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
	andi r31,128
	mov r20,r30
	add r30,r14
	mov r31,r15
	adc r31,__zero_reg__
	ld r24,Z
	st Y,r24
	st Z,r7
	adiw r28,1
	cp r28,r18
	cpc r29,r19
	brne .L4
	movw r30,r14
	inc r31
	st Z,__zero_reg__
	adiw r30,1
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
	ret
	.size	rc4_init, .-rc4_init
.global	rc4_crypt
	.type	rc4_crypt, @function
rc4_crypt:
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
	movw r18,r24
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L7
	movw r28,r22
	add r22,r20
	adc r23,r21
	movw r14,r24
	inc r15
	movw r16,r18
	subi r16,-1
	sbci r17,-2
.L10:
	movw r26,r14
	ld r30,X
	subi r30,lo8(-(1))
	st X,r30
	add r30,r18
	mov r31,r19
	adc r31,__zero_reg__
	ld r25,Z
	movw r26,r16
	ld r24,X
	add r24,r25
	st X,r24
	movw r26,r18
	add r26,r24
	adc r27,__zero_reg__
	ld r24,X
	st Z,r24
	st X,r25
	ld r20,Y+
	movw r26,r28
	sbiw r26,1
	ld r30,Z
	add r30,r25
	add r30,r18
	mov r31,r19
	adc r31,__zero_reg__
	ld r24,Z
	eor r24,r20
	st X,r24
	cp r28,r22
	cpc r29,r23
	brne .L10
.L7:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	rc4_crypt, .-rc4_crypt
.global	rc4_encrypt
	.type	rc4_encrypt, @function
rc4_encrypt:
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
	movw r20,r22
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call rc4_init
	movw r20,r14
	movw r22,r12
	movw r24,r16
	call memcpy
	movw r20,r14
	movw r22,r16
	movw r24,r28
	adiw r24,1
	call rc4_crypt
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
	.size	rc4_encrypt, .-rc4_encrypt
.global	rc4_decrypt
	.type	rc4_decrypt, @function
rc4_decrypt:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	call rc4_encrypt
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	rc4_decrypt, .-rc4_decrypt
	.ident	"GCC: (GNU) 7.3.0"
