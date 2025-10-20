	.file	"des_key_schedule.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_key_schedule
	.type	des_key_schedule, @function
des_key_schedule:
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
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 32 */
.L__stack_usage = 32
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	std Y+7,r22
	std Y+8,r23
	std Y+9,r24
	std Y+10,r25
	std Y+12,r17
	std Y+11,r16
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L3:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Y+9
	ldd r25,Y+10
	mov r16,r30
	call __lshrdi3
	std Y+13,r18
	std Y+14,r19
	std Y+15,r20
	std Y+16,r21
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	ldd r24,Y+1
	ldd r25,Y+2
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	ldd r18,Y+11
	ldd r19,Y+12
	add r24,r18
	adc r25,r19
	ldd r18,Y+13
	andi r18,lo8(-1)
	mov r8,r18
	ldd r30,Y+14
	andi r30,lo8(-1)
	mov r9,r30
	ldd r31,Y+15
	andi r31,lo8(-1)
	mov r10,r31
	ldd r18,Y+16
	andi r18,lo8(-1)
	mov r11,r18
	ldd r30,Y+17
	andi r30,lo8(-1)
	mov r12,r30
	ldd r31,Y+18
	andi r31,lo8(-1)
	mov r13,r31
	ldd r18,Y+19
	andi r18,lo8(0)
	mov r14,r18
	ldd r30,Y+20
	andi r30,lo8(0)
	mov r15,r30
	movw r30,r24
	st Z,r8
	movw r30,r24
	std Z+1,r9
	movw r30,r24
	std Z+2,r10
	movw r30,r24
	std Z+3,r11
	movw r30,r24
	std Z+4,r12
	movw r30,r24
	std Z+5,r13
	movw r30,r24
	std Z+6,r14
	movw r30,r24
	std Z+7,r15
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,16
	brge .+2
	rjmp .L3
	nop
/* epilogue start */
	adiw r28,20
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
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (GNU) 7.3.0"
