	.file	"aes_key_expansion.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_key_expansion
	.type	aes_key_expansion, @function
aes_key_expansion:
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r16,r24
	movw r26,r22
	movw r20,r24
	subi r20,-16
	sbci r21,-1
	movw r24,r22
.L2:
	movw r30,r16
	ld r18,Z+
	movw r16,r30
	movw r30,r24
	st Z+,r18
	movw r24,r30
	cp r16,r20
	cpc r17,r21
	brne .L2
	ldi r24,lo8(rcon+1)
	mov r14,r24
	ldi r24,hi8(rcon+1)
	mov r15,r24
	ldi r25,lo8(rcon+10)
	mov r12,r25
	ldi r25,hi8(rcon+10)
	mov r13,r25
	ldi r25,lo8(1)
	movw r22,r28
	subi r22,-5
	sbci r23,-1
.L3:
	movw r18,r26
	subi r18,-12
	sbci r19,-1
	movw r16,r28
	subi r16,-1
	sbci r17,-1
.L4:
	movw r30,r18
	ld r20,Z+
	movw r18,r30
	movw r30,r16
	st Z+,r20
	movw r16,r30
	cp r30,r22
	cpc r31,r23
	brne .L4
	ldd r18,Y+1
	ldd r24,Y+2
	ldd r19,Y+3
	std Y+2,r19
	ldd r19,Y+4
	std Y+3,r19
	std Y+4,r18
	eor r25,r24
	std Y+1,r25
	movw r16,r26
	subi r16,-16
	sbci r17,-1
	movw r20,r16
	ldi r19,0
	ldi r18,0
	rjmp .L6
.L11:
	movw r30,r18
	andi r30,3
	clr r31
	ldi r24,lo8(1)
	ldi r25,0
	add r24,r28
	adc r25,r29
	add r30,r24
	adc r31,r25
	ld r25,Z
.L6:
	ld r24,X+
	eor r24,r25
	movw r30,r20
	st Z+,r24
	movw r20,r30
	subi r18,-1
	sbci r19,-1
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L11
	cp r12,r14
	cpc r13,r15
	breq .L1
	movw r30,r14
	ld r25,Z+
	movw r14,r30
	movw r26,r16
	rjmp .L3
.L1:
/* epilogue start */
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
	ret
	.size	aes_key_expansion, .-aes_key_expansion
	.section	.rodata
	.type	rcon, @object
	.size	rcon, 10
rcon:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
