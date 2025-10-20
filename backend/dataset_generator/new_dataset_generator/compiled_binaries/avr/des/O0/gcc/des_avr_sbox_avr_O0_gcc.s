	.file	"des_avr_sbox.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	sbox_avr, @object
	.size	sbox_avr, 64
sbox_avr:
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
.global	des_sbox_avr
	.type	des_sbox_avr, @function
des_sbox_avr:
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
	ldd r24,Y+1
	mov r24,r24
	ldi r25,0
	andi r24,63
	clr r25
	subi r24,lo8(-(sbox_avr))
	sbci r25,hi8(-(sbox_avr))
	movw r30,r24
	ld r24,Z
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	des_sbox_avr, .-des_sbox_avr
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
