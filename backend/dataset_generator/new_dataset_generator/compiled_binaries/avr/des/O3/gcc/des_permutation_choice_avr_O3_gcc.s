	.file	"des_permutation_choice.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_pc1
	.type	des_pc1, @function
des_pc1:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 17 */
.L__stack_usage = 17
	mov r3,r18
	mov r4,r19
	mov r5,r20
	mov r6,r21
	mov r7,r22
	mov r8,r23
	mov r9,r24
	mov r12,r25
	ldi r30,lo8(55)
	ldi r31,0
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r17,0
	ldi r29,0
	ldi r28,0
	ldi r27,0
	ldi r26,0
.L2:
	movw r10,r30
	ldi r24,9
	add r10,r24
	adc r11,__zero_reg__
	mov r18,r3
	mov r19,r4
	mov r20,r5
	mov r21,r6
	mov r22,r7
	mov r23,r8
	mov r24,r9
	mov r25,r12
	mov r16,r10
	call __lshrdi3
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	mov r16,r30
	call __ashldi3
	or r13,r18
	or r14,r19
	or r15,r20
	or r17,r21
	or r29,r22
	or r28,r23
	or r27,r24
	or r26,r25
	sbiw r30,1
	brcc .L2
	mov r18,r13
	mov r19,r14
	mov r20,r15
	mov r21,r17
	mov r22,r29
	mov r23,r28
	mov r24,r27
	mov r25,r26
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
	pop r6
	pop r5
	pop r4
	pop r3
	ret
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (GNU) 7.3.0"
