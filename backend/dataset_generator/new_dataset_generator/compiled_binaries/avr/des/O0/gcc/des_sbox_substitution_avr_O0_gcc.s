	.file	"des_sbox_substitution.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	S1, @object
	.size	S1, 64
S1:
	.byte	14
	.byte	4
	.byte	13
	.byte	1
	.byte	2
	.byte	15
	.byte	11
	.byte	8
	.byte	3
	.byte	10
	.byte	6
	.byte	12
	.byte	5
	.byte	9
	.byte	0
	.byte	7
	.byte	0
	.byte	15
	.byte	7
	.byte	4
	.byte	14
	.byte	2
	.byte	13
	.byte	1
	.byte	10
	.byte	6
	.byte	12
	.byte	11
	.byte	9
	.byte	5
	.byte	3
	.byte	8
	.byte	4
	.byte	1
	.byte	14
	.byte	8
	.byte	13
	.byte	6
	.byte	2
	.byte	11
	.byte	15
	.byte	12
	.byte	9
	.byte	7
	.byte	3
	.byte	10
	.byte	5
	.byte	0
	.byte	15
	.byte	12
	.byte	8
	.byte	2
	.byte	4
	.byte	9
	.byte	1
	.byte	7
	.byte	5
	.byte	11
	.byte	3
	.byte	14
	.byte	10
	.byte	0
	.byte	6
	.byte	13
	.text
.global	des_sbox
	.type	des_sbox, @function
des_sbox:
	push r28
	push r29
	rcall .
	rcall .
	rcall .
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+5,r24
	std Y+7,r23
	std Y+6,r22
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	movw r18,r24
	andi r18,2
	clr r19
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	andi r24,1
	clr r25
	or r24,r18
	or r25,r19
	std Y+2,r25
	std Y+1,r24
	ldd r24,Y+5
	mov r24,r24
	ldi r25,0
	asr r25
	ror r24
	andi r24,15
	clr r25
	std Y+4,r25
	std Y+3,r24
	ldd r24,Y+1
	ldd r25,Y+2
	movw r18,r24
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	subi r24,lo8(-(S1))
	sbci r25,hi8(-(S1))
	movw r30,r24
	ld r24,Z
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	des_sbox, .-des_sbox
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
