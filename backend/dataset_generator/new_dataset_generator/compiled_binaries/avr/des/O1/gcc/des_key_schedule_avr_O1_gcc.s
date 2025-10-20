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
/* stack size = 10 */
.L__stack_usage = 10
	mov r10,r18
	mov r11,r19
	mov r12,r20
	mov r13,r21
	mov r14,r22
	mov r15,r23
	mov r29,r24
	mov r28,r25
	movw r30,r16
	ldi r27,0
	ldi r26,0
.L2:
	mov r18,r10
	mov r19,r11
	mov r20,r12
	mov r21,r13
	mov r22,r14
	mov r23,r15
	mov r24,r29
	mov r25,r28
	mov r16,r26
	call __lshrdi3
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	adiw r30,8
	adiw r26,4
	cpi r26,64
	cpc r27,__zero_reg__
	brne .L2
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
	ret
	.size	des_key_schedule, .-des_key_schedule
	.ident	"GCC: (GNU) 7.3.0"
