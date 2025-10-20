	.file	"factorial.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__muldi3
.global	factorial
	.type	factorial, @function
factorial:
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
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 26 */
.L__stack_usage = 26
	cpi r22,2
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L4
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
	set
	bld r4,1
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.L3:
	movw r12,r6
	movw r10,r4
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	movw r16,r14
	std Y+1,r4
	std Y+2,r11
	std Y+3,r6
	std Y+4,r13
	std Y+5,r14
	std Y+6,r15
	std Y+7,r16
	std Y+8,r17
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	call __muldi3
	ldi r16,-1
	sub r4,r16
	sbc r5,r16
	sbc r6,r16
	sbc r7,r16
	ldd r10,Y+9
	ldd r11,Y+10
	ldd r12,Y+11
	ldd r13,Y+12
	cp r10,r4
	cpc r11,r5
	cpc r12,r6
	cpc r13,r7
	brsh .L3
.L1:
/* epilogue start */
	adiw r28,12
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
	pop r7
	pop r6
	pop r5
	pop r4
	ret
.L4:
	ldi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L1
	.size	factorial, .-factorial
	.ident	"GCC: (GNU) 7.3.0"
