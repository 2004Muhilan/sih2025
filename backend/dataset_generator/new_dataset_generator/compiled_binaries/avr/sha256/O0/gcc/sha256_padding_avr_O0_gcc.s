	.file	"sha256_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_padding
	.type	sha256_padding, @function
sha256_padding:
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
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
/* stack size = 28 */
.L__stack_usage = 28
	std Y+14,r25
	std Y+13,r24
	std Y+16,r23
	std Y+15,r22
	std Y+18,r21
	std Y+17,r20
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r24,Y+17
	ldd r25,Y+18
	movw r22,r18
	call memcpy
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r24,Y+15
	ldd r25,Y+16
	add r24,r18
	adc r25,r19
	ldi r18,lo8(-128)
	movw r30,r24
	st Z,r18
	ldi r18,lo8(55)
	ldi r19,0
	ldd r24,Y+15
	ldd r25,Y+16
	movw r20,r18
	sub r20,r24
	sbc r21,r25
	movw r24,r20
	andi r24,63
	clr r25
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+15
	ldd r25,Y+16
	adiw r24,1
	ldd r18,Y+17
	ldd r19,Y+18
	add r24,r18
	adc r25,r19
	ldd r18,Y+3
	ldd r19,Y+4
	movw r20,r18
	ldi r22,0
	ldi r23,0
	call memset
	ldd r24,Y+15
	ldd r25,Y+16
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r18,r24
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	movw r24,r22
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldi r18,lo8(7)
	ldi r19,0
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r18
	sub r30,r24
	sbc r31,r25
	movw r24,r30
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	mov r16,r30
	call __lshrdi3
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r16,r24
	mov r17,r25
	ldd r18,Y+15
	ldd r19,Y+16
	ldd r24,Y+3
	ldd r25,Y+4
	add r18,r24
	adc r19,r25
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	adiw r24,1
	ldd r18,Y+17
	ldd r19,Y+18
	add r24,r18
	adc r25,r19
	mov r18,r10
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,8
	brlt .L3
	nop
/* epilogue start */
	adiw r28,18
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
	ret
	.size	sha256_padding, .-sha256_padding
	.ident	"GCC: (GNU) 7.3.0"
