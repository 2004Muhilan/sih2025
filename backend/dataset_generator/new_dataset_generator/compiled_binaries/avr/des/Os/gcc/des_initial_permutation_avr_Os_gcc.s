	.file	"des_initial_permutation.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
	push r2
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
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 5 */
/* stack size = 23 */
.L__stack_usage = 23
	mov r9,r18
	mov r8,r19
	mov r7,r20
	mov r6,r21
	mov r5,r22
	mov r4,r23
	mov r3,r24
	mov r2,r25
	ldi r24,lo8(IP)
	mov r10,r24
	ldi r24,hi8(IP)
	mov r11,r24
	ldi r30,lo8(63)
	ldi r31,0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r17,0
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+5,__zero_reg__
.L3:
	movw r26,r10
	ld r24,X+
	movw r10,r26
	ldi r26,lo8(64)
	ldi r27,0
	sub r26,r24
	sbc r27,__zero_reg__
	mov r18,r9
	mov r19,r8
	mov r20,r7
	mov r21,r6
	mov r22,r5
	mov r23,r4
	mov r24,r3
	mov r25,r2
	mov r16,r26
	call __lshrdi3
	andi r18,lo8(1)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ldi r26,0
	call __cmpdi2_s8
	breq .L2
	ldi r18,lo8(1)
	mov r16,r30
	call __ashldi3
	or r12,r18
	or r13,r19
	or r14,r20
	or r15,r21
	or r17,r22
	ldd r27,Y+4
	or r27,r23
	std Y+4,r27
	ldd r27,Y+3
	or r27,r24
	std Y+3,r27
	ldd r27,Y+5
	or r27,r25
	std Y+5,r27
.L2:
	sbiw r30,1
	brcc .L3
	movw r18,r12
	movw r20,r14
	mov r22,r17
	ldd r23,Y+4
	ldd r24,Y+3
	ldd r25,Y+5
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	pop r2
	ret
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.type	IP, @object
	.size	IP, 64
IP:
	.byte	58
	.byte	50
	.byte	42
	.byte	34
	.byte	26
	.byte	18
	.byte	10
	.byte	2
	.byte	60
	.byte	52
	.byte	44
	.byte	36
	.byte	28
	.byte	20
	.byte	12
	.byte	4
	.byte	62
	.byte	54
	.byte	46
	.byte	38
	.byte	30
	.byte	22
	.byte	14
	.byte	6
	.byte	64
	.byte	56
	.byte	48
	.byte	40
	.byte	32
	.byte	24
	.byte	16
	.byte	8
	.byte	57
	.byte	49
	.byte	41
	.byte	33
	.byte	25
	.byte	17
	.byte	9
	.byte	1
	.byte	59
	.byte	51
	.byte	43
	.byte	35
	.byte	27
	.byte	19
	.byte	11
	.byte	3
	.byte	61
	.byte	53
	.byte	45
	.byte	37
	.byte	29
	.byte	21
	.byte	13
	.byte	5
	.byte	63
	.byte	55
	.byte	47
	.byte	39
	.byte	31
	.byte	23
	.byte	15
	.byte	7
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
