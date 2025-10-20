	.file	"custom_des.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
	push r3
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 27 */
.L__stack_usage = 27
	std Y+10,r23
	std Y+9,r22
	mov r17,r20
	mov r3,r21
	movw r26,r24
	ldi r30,lo8(56)
	ldi r31,0
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L2:
	ld r18,X+
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	mov r16,r30
	call __ashldi3
	or r18,r8
	or r19,r9
	or r20,r10
	or r21,r11
	or r22,r12
	or r23,r13
	or r24,r14
	or r25,r15
	movw r8,r18
	movw r10,r20
	movw r12,r22
	movw r14,r24
	sbiw r30,8
	cpi r30,-8
	ldi r24,-1
	cpc r31,r24
	brne .L2
	ldi r31,0
	ldi r30,0
.L3:
	movw r18,r8
	movw r20,r10
	movw r22,r12
	movw r24,r14
	ldi r16,lo8(32)
	call __lshrdi3
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	ldd r4,Y+1
	ldd r5,Y+2
	ldd r6,Y+3
	ldd r7,Y+4
	eor r4,r8
	eor r5,r9
	eor r6,r10
	eor r7,r11
	movw r18,r8
	movw r20,r10
	movw r22,r12
	movw r24,r14
	call __ashldi3
	movw r26,r30
	andi r26,7
	clr r27
	ldd r8,Y+9
	ldd r9,Y+10
	add r26,r8
	adc r27,r9
	ld r26,X
	eor r4,r26
	movw r10,r6
	movw r8,r4
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	or r8,r18
	or r9,r19
	or r10,r20
	or r11,r21
	movw r12,r22
	movw r14,r24
	adiw r30,1
	cpi r30,16
	cpc r31,__zero_reg__
	brne .L3
	mov r30,r17
	mov r31,r3
	ldi r26,lo8(56)
	ldi r27,0
.L4:
	movw r18,r8
	movw r20,r10
	movw r22,r12
	movw r24,r14
	mov r16,r26
	call __lshrdi3
	st Z+,r18
	sbiw r26,8
	cpi r26,-8
	ldi r24,-1
	cpc r27,r24
	brne .L4
/* epilogue start */
	adiw r28,10
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
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	ret
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (GNU) 7.3.0"
