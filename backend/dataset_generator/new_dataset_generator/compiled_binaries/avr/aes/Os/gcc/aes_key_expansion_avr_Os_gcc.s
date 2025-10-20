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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r30,r22
	movw r18,r24
	subi r18,-16
	sbci r19,-1
	movw r16,r22
.L2:
	movw r26,r24
	ld r20,X+
	movw r24,r26
	movw r26,r16
	st X+,r20
	movw r16,r26
	cp r24,r18
	cpc r25,r19
	brne .L2
	ldi r20,lo8(rcon)
	ldi r21,hi8(rcon)
	subi r22,96
	sbci r23,-1
	movw r14,r28
	ldi r27,5
	add r14,r27
	adc r15,__zero_reg__
.L3:
	movw r24,r30
	adiw r24,12
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r12,r18
	movw r16,r18
.L4:
	movw r26,r24
	ld r18,X+
	movw r24,r26
	movw r26,r12
	st X+,r18
	movw r12,r26
	cp r26,r14
	cpc r27,r15
	brne .L4
	ldd r25,Y+1
	ldd r24,Y+2
	ldd r18,Y+3
	std Y+2,r18
	ldd r18,Y+4
	std Y+3,r18
	std Y+4,r25
	movw r26,r20
	ld r25,X+
	movw r20,r26
	eor r24,r25
	std Y+1,r24
	movw r8,r30
	ldi r27,16
	add r8,r27
	adc r9,__zero_reg__
	movw r12,r8
	ldi r25,0
	ldi r24,0
.L5:
	ld r19,Z+
	movw r10,r24
	ldi r18,3
	and r10,r18
	clr r11
	add r10,r16
	adc r11,r17
	movw r26,r10
	ld r18,X
	eor r18,r19
	movw r26,r12
	st X+,r18
	movw r12,r26
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	brne .L5
	movw r30,r8
	cp r22,r8
	cpc r23,r9
	brne .L3
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
	pop r11
	pop r10
	pop r9
	pop r8
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
