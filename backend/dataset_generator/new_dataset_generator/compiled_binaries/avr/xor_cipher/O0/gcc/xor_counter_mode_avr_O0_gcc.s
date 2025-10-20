	.file	"xor_counter_mode.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	xor_counter_mode
	.type	xor_counter_mode, @function
xor_counter_mode:
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
	sbiw r28,19
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 19 */
/* stack size = 29 */
.L__stack_usage = 29
	std Y+5,r25
	std Y+4,r24
	std Y+7,r23
	std Y+6,r22
	std Y+9,r21
	std Y+8,r20
	std Y+11,r19
	std Y+10,r18
	std Y+12,r10
	std Y+13,r11
	std Y+14,r12
	std Y+15,r13
	std Y+16,r14
	std Y+17,r15
	std Y+18,r16
	std Y+19,r17
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r18,Y+10
	ldd r19,Y+11
	movw r22,r18
	call __udivmodhi4
	movw r18,r24
	ldd r24,Y+8
	ldd r25,Y+9
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r25,Z
	ldd r18,Y+12
	ldd r24,Y+1
	add r24,r18
	eor r24,r25
	std Y+3,r24
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r20,Z
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	ldd r18,Y+3
	eor r18,r20
	movw r30,r24
	st Z,r18
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+6
	ldd r25,Y+7
	cp r18,r24
	cpc r19,r25
	brlo .L3
	nop
/* epilogue start */
	adiw r28,19
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
	.size	xor_counter_mode, .-xor_counter_mode
	.ident	"GCC: (GNU) 7.3.0"
