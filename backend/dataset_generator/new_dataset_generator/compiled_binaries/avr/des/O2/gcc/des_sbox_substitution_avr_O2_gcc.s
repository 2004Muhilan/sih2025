	.file	"des_sbox_substitution.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	des_sbox
	.type	des_sbox, @function
des_sbox:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	ldi r19,0
	movw r30,r18
	asr r31
	ror r30
	asr r31
	ror r30
	asr r31
	ror r30
	asr r31
	ror r30
	andi r30,2
	clr r31
	mov r20,r24
	andi r20,1
	ldi r21,0
	or r30,r20
	or r31,r21
	asr r19
	ror r18
	andi r18,15
	clr r19
	swap r30
	swap r31
	andi r31,0xf0
	eor r31,r30
	andi r30,0xf0
	eor r31,r30
	subi r30,lo8(-(S1))
	sbci r31,hi8(-(S1))
	add r30,r18
	adc r31,r19
	ld r24,Z
/* epilogue start */
	ret
	.size	des_sbox, .-des_sbox
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
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
