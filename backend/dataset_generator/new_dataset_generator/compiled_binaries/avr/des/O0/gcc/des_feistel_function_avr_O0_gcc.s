	.file	"des_feistel_function.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_feistel
	.type	des_feistel, @function
des_feistel:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,26
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 26 */
/* stack size = 32 */
.L__stack_usage = 32
	std Y+15,r22
	std Y+16,r23
	std Y+17,r24
	std Y+18,r25
	std Y+19,r14
	std Y+20,r15
	std Y+21,r16
	std Y+22,r17
	std Y+23,r18
	std Y+24,r19
	std Y+25,r20
	std Y+26,r21
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	std Y+8,__zero_reg__
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	rjmp .L2
.L3:
	ldi r18,lo8(32)
	ldi r19,0
	ldd r24,Y+9
	ldd r25,Y+10
	sub r18,r24
	sbc r19,r25
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r18
	brpl 1b
	andi r24,1
	clr r25
	clr r26
	clr r27
	ldi r20,lo8(47)
	ldi r21,0
	ldd r18,Y+9
	ldd r19,Y+10
	movw r22,r20
	sub r22,r18
	sbc r23,r19
	movw r18,r22
	rjmp 2f
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	2:
	dec r18
	brpl 1b
	movw r18,r24
	movw r20,r26
	ldi r22,0
	ldi r23,0
	movw r24,r22
	ldd r30,Y+1
	or r30,r18
	std Y+1,r30
	ldd r30,Y+2
	or r30,r19
	std Y+2,r30
	ldd r30,Y+3
	or r30,r20
	std Y+3,r30
	ldd r30,Y+4
	or r30,r21
	std Y+4,r30
	ldd r30,Y+5
	or r30,r22
	std Y+5,r30
	ldd r30,Y+6
	or r30,r23
	std Y+6,r30
	ldd r30,Y+7
	or r30,r24
	std Y+7,r30
	ldd r30,Y+8
	mov r24,r30
	or r24,r25
	std Y+8,r24
	ldd r24,Y+9
	ldd r25,Y+10
	adiw r24,1
	std Y+10,r25
	std Y+9,r24
.L2:
	ldd r24,Y+9
	ldd r25,Y+10
	sbiw r24,48
	brge .+2
	rjmp .L3
	ldd r25,Y+1
	ldd r24,Y+19
	eor r24,r25
	std Y+1,r24
	ldd r25,Y+2
	ldd r24,Y+20
	eor r24,r25
	std Y+2,r24
	ldd r25,Y+3
	ldd r24,Y+21
	eor r24,r25
	std Y+3,r24
	ldd r25,Y+4
	ldd r24,Y+22
	eor r24,r25
	std Y+4,r24
	ldd r25,Y+5
	ldd r24,Y+23
	eor r24,r25
	std Y+5,r24
	ldd r25,Y+6
	ldd r24,Y+24
	eor r24,r25
	std Y+6,r24
	ldd r25,Y+7
	ldd r24,Y+25
	eor r24,r25
	std Y+7,r24
	ldd r25,Y+8
	ldd r24,Y+26
	eor r24,r25
	std Y+8,r24
	std Y+11,__zero_reg__
	std Y+12,__zero_reg__
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	movw r22,r24
	movw r24,r26
/* epilogue start */
	adiw r28,26
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
	ret
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (GNU) 7.3.0"
