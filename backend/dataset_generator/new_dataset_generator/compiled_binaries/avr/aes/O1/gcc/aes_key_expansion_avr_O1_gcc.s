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
/* stack size = 15 */
.L__stack_usage = 15
	movw r30,r24
	movw r26,r22
	movw r18,r24
	subi r18,-16
	sbci r19,-1
.L2:
	ld r25,Z+
	st X+,r25
	cp r30,r18
	cpc r31,r19
	brne .L2
	subi r22,-16
	sbci r23,-1
	ldi r16,lo8(rcon)
	ldi r17,hi8(rcon)
	mov __tmp_reg__,r31
	ldi r31,lo8(rcon+10)
	mov r14,r31
	ldi r31,hi8(rcon+10)
	mov r15,r31
	mov r31,__tmp_reg__
	movw r20,r28
	subi r20,-5
	sbci r21,-1
	rjmp .L3
.L5:
	clr r10
	inc r10
	mov r11,__zero_reg__
	add r10,r28
	adc r11,r29
	add r24,r10
	adc r25,r11
	movw r30,r24
	ld r24,Z
	eor r24,r13
	movw r30,r8
	st Z+,r24
	movw r8,r30
	subi r18,-1
	sbci r19,-1
	cpi r18,16
	cpc r19,__zero_reg__
	breq .L11
.L6:
	ld r13,X+
	movw r24,r18
	andi r24,3
	andi r25,128
	tst r25
	brge .L5
	sbiw r24,1
	ori r24,252
	ori r25,255
	adiw r24,1
	rjmp .L5
.L11:
	subi r22,-16
	sbci r23,-1
	cp r16,r14
	cpc r17,r15
	breq .L1
.L3:
	movw r26,r22
	sbiw r26,4
	movw r30,r28
	adiw r30,1
.L4:
	ld r24,X+
	st Z+,r24
	cp r30,r20
	cpc r31,r21
	brne .L4
	ldd r25,Y+1
	ldd r24,Y+2
	ldd r18,Y+3
	std Y+2,r18
	ldd r18,Y+4
	std Y+3,r18
	std Y+4,r25
	movw r30,r16
	ld r25,Z+
	movw r16,r30
	eor r24,r25
	std Y+1,r24
	movw r26,r22
	sbiw r26,16
	movw r8,r22
	ldi r19,0
	ldi r18,0
	rjmp .L6
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
