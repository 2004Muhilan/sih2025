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
/* stack size = 9 */
.L__stack_usage = 9
	movw r18,r24
	movw r14,r22
	movw r12,r20
	movw r16,r24
	movw r30,r24
	ldi r25,0
	ldi r24,0
.L2:
	st Z+,r24
	adiw r24,1
	cp r24,__zero_reg__
	ldi r20,1
	cpc r25,r20
	brne .L2
	ldi r29,0
	ldi r28,0
	ldi r20,0
.L3:
	movw r30,r16
	ld r11,Z+
	movw r16,r30
	movw r24,r28
	movw r22,r12
	call __udivmodhi4
	movw r30,r14
	add r30,r24
	adc r31,r25
	ld r30,Z
	add r20,r11
	clr r21
	rol r21
	add r30,r20
	mov r31,r21
	adc r31,__zero_reg__
	mov r20,r30
	add r30,r18
	mov r31,r19
	adc r31,__zero_reg__
	ld r24,Z
	movw r26,r16
	sbiw r26,1
	st X,r24
	st Z,r11
	adiw r28,1
	cp r28,__zero_reg__
	ldi r31,1
	cpc r29,r31
	brne .L3
	movw r30,r18
	inc r31
	st Z,__zero_reg__
	subi r18,-1
	sbci r19,-2
	movw r30,r18
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
	movw r30,r22
	add r20,r22
	adc r21,r23
	movw r18,r24
	inc r19
	movw r22,r24
	subi r22,-1
	sbci r23,-2
.L7:
	cp r30,r20
	cpc r31,r21
	brne .L8
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.L8:
	movw r28,r18
	ld r26,Y
	ldi r16,lo8(1)
	add r16,r26
	st Y,r16
	add r16,r24
	mov r17,r25
	adc r17,__zero_reg__
	movw r26,r16
	ld r14,X
	movw r28,r22
	ld r26,Y
	add r26,r14
	st Y,r26
	movw r28,r24
	add r28,r26
	adc r29,__zero_reg__
	ld r15,Y
	movw r26,r16
	st X,r15
	st Y,r14
	ld r15,Z+
	movw r28,r30
	sbiw r28,1
	ld r17,X
	mov r26,r14
	add r26,r17
	add r26,r24
	mov r27,r25
	adc r27,__zero_reg__
	ld r26,X
	eor r26,r15
	st Y,r26
	rjmp .L7
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
