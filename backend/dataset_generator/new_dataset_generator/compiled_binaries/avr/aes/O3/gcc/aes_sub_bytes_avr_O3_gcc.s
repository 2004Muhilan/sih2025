	.file	"aes_sub_bytes.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	aes_sub_bytes
	.type	aes_sub_bytes, @function
aes_sub_bytes:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r26,Z
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	st Z,r24
	ldd r26,Z+1
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+1,r24
	ldd r26,Z+2
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+2,r24
	ldd r26,Z+3
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+3,r24
	ldd r26,Z+4
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+4,r24
	ldd r26,Z+5
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+5,r24
	ldd r26,Z+6
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+6,r24
	ldd r26,Z+7
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+7,r24
	ldd r26,Z+8
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+8,r24
	ldd r26,Z+9
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+9,r24
	ldd r26,Z+10
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+10,r24
	ldd r26,Z+11
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+11,r24
	ldd r26,Z+12
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+12,r24
	ldd r26,Z+13
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+13,r24
	ldd r26,Z+14
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+14,r24
	ldd r26,Z+15
	ldi r27,0
	subi r26,lo8(-(sbox))
	sbci r27,hi8(-(sbox))
	ld r24,X
	std Z+15,r24
/* epilogue start */
	ret
	.size	aes_sub_bytes, .-aes_sub_bytes
.global	aes_inv_sub_bytes
	.type	aes_inv_sub_bytes, @function
aes_inv_sub_bytes:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r26,Z
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	st Z,r24
	ldd r26,Z+1
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+1,r24
	ldd r26,Z+2
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+2,r24
	ldd r26,Z+3
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+3,r24
	ldd r26,Z+4
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+4,r24
	ldd r26,Z+5
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+5,r24
	ldd r26,Z+6
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+6,r24
	ldd r26,Z+7
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+7,r24
	ldd r26,Z+8
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+8,r24
	ldd r26,Z+9
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+9,r24
	ldd r26,Z+10
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+10,r24
	ldd r26,Z+11
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+11,r24
	ldd r26,Z+12
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+12,r24
	ldd r26,Z+13
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+13,r24
	ldd r26,Z+14
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+14,r24
	ldd r26,Z+15
	ldi r27,0
	subi r26,lo8(-(inv_sbox.1501))
	sbci r27,hi8(-(inv_sbox.1501))
	ld r24,X
	std Z+15,r24
/* epilogue start */
	ret
	.size	aes_inv_sub_bytes, .-aes_inv_sub_bytes
	.section	.rodata
	.type	inv_sbox.1501, @object
	.size	inv_sbox.1501, 256
inv_sbox.1501:
	.byte	82
	.byte	9
	.byte	106
	.byte	-43
	.byte	48
	.byte	54
	.byte	-91
	.byte	56
	.zero	248
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.zero	240
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
