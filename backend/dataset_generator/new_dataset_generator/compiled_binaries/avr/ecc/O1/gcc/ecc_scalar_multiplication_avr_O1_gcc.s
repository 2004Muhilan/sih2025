	.file	"ecc_scalar_multiplication.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ecc_scalar_mult
	.type	ecc_scalar_mult, @function
ecc_scalar_mult:
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
	sbiw r28,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 16 */
/* stack size = 28 */
.L__stack_usage = 28
	movw r30,r24
	ldd r11,Y+31
	ldd r12,Y+32
	ldd r13,Y+33
	ldd r14,Y+34
	ldd r15,Y+35
	ldd r16,Y+36
	ldd r17,Y+37
	ldd r27,Y+38
	mov r18,r11
	mov r19,r12
	mov r20,r13
	mov r21,r14
	mov r22,r15
	mov r23,r16
	mov r24,r17
	mov r25,r27
	ldi r26,0
	call __cmpdi2_s8
	breq .L2
.L3:
	mov r18,r11
	mov r19,r12
	mov r20,r13
	mov r21,r14
	mov r22,r15
	mov r23,r16
	mov r24,r17
	mov r25,r27
	ldi r16,lo8(1)
	call __lshrdi3
	mov r11,r18
	mov r12,r19
	mov r13,r20
	mov r14,r21
	mov r15,r22
	mov r16,r23
	mov r17,r24
	mov r27,r25
	ldi r26,0
	call __cmpdi2_s8
	brne .L3
.L2:
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	std Z+8,__zero_reg__
	std Z+9,__zero_reg__
	std Z+10,__zero_reg__
	std Z+11,__zero_reg__
	std Z+12,__zero_reg__
	std Z+13,__zero_reg__
	std Z+14,__zero_reg__
	std Z+15,__zero_reg__
	movw r24,r30
/* epilogue start */
	adiw r28,16
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
	ret
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (GNU) 7.3.0"
