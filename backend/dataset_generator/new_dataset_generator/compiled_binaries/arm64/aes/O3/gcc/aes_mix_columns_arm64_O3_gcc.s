	.arch armv8-a
	.file	"aes_mix_columns.c"
	.text
	.align	2
	.p2align 4,,11
	.global	aes_mix_columns
	.type	aes_mix_columns, %function
aes_mix_columns:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	w1, 27
	mov	x29, sp
	ldrb	w2, [x0]
	ldrb	w6, [x0, 1]
	ldrb	w17, [x0, 2]
	ldrb	w5, [x0, 3]
	ubfiz	w7, w2, 1, 7
	tst	x2, 128
	eor	w3, w7, w1
	ubfiz	w30, w6, 1, 7
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	ldrb	w22, [x0, 4]
	ldrb	w9, [x0, 5]
	csel	w7, w7, w3, eq
	eor	w3, w30, w1
	tst	x6, 128
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ubfiz	w24, w17, 1, 7
	ldrb	w12, [x0, 6]
	csel	w30, w30, w3, eq
	ubfiz	w10, w5, 1, 7
	eor	w3, w24, w1
	tst	x17, 128
	ldrb	w4, [x0, 7]
	csel	w24, w24, w3, eq
	eor	w3, w10, w1
	tst	x5, 128
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	ubfiz	w20, w22, 1, 7
	ldrb	w16, [x0, 8]
	csel	w10, w10, w3, eq
	ubfiz	w8, w9, 1, 7
	eor	w3, w20, w1
	tst	x22, 128
	csel	w20, w20, w3, eq
	ubfiz	w19, w12, 1, 7
	eor	w3, w8, w1
	tst	x9, 128
	csel	w8, w8, w3, eq
	eor	w11, w19, w1
	ldrb	w3, [x0, 9]
	tst	x12, 128
	ubfiz	w21, w4, 1, 7
	csel	w19, w19, w11, eq
	eor	w13, w21, w1
	ldrb	w11, [x0, 10]
	tst	x4, 128
	ubfiz	w14, w16, 1, 7
	ldrb	w18, [x0, 11]
	csel	w21, w21, w13, eq
	tst	x16, 128
	eor	w13, w14, w1
	csel	w14, w14, w13, eq
	eor	w23, w2, w6
	ubfiz	w13, w3, 1, 7
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	eor	w25, w6, w17
	str	x27, [sp, 80]
	.cfi_offset 27, -16
	eor	w27, w5, w7
	ldrb	w15, [x0, 12]
	eor	w26, w2, w17
	tst	x3, 128
	eor	w2, w13, w1
	ubfiz	w6, w11, 1, 7
	eor	w17, w17, w23
	eor	w25, w27, w25
	eor	w23, w5, w23
	eor	w5, w5, w30
	csel	w13, w13, w2, eq
	eor	w7, w7, w10
	tst	x11, 128
	eor	w25, w30, w25
	eor	w5, w5, w26
	ubfiz	w30, w18, 1, 7
	eor	w26, w24, w10
	eor	w10, w6, w1
	eor	w26, w23, w26
	csel	w6, w6, w10, eq
	eor	w23, w17, w7
	tst	x18, 128
	eor	w7, w30, w1
	ldrb	w2, [x0, 13]
	csel	w30, w30, w7, eq
	ubfiz	w7, w15, 1, 7
	ldrb	w10, [x0, 14]
	eor	w5, w24, w5
	tst	x15, 128
	eor	w24, w7, w1
	strb	w25, [x0]
	eor	w25, w12, w9
	eor	w9, w9, w22
	strb	w5, [x0, 1]
	csel	w7, w7, w24, eq
	strb	w26, [x0, 2]
	eor	w24, w20, w4
	ldrb	w17, [x0, 15]
	ubfiz	w5, w2, 1, 7
	strb	w23, [x0, 3]
	eor	w23, w12, w22
	eor	w22, w12, w9
	eor	w12, w4, w9
	eor	w4, w8, w4
	tst	x2, 128
	eor	w4, w4, w23
	eor	w20, w20, w21
	eor	w9, w5, w1
	eor	w21, w21, w19
	eor	w4, w4, w19
	ubfiz	w19, w10, 1, 7
	csel	w5, w5, w9, eq
	eor	w12, w12, w21
	eor	w9, w22, w20
	tst	x10, 128
	eor	w21, w19, w1
	ubfiz	w20, w17, 1, 7
	csel	w19, w19, w21, eq
	eor	w24, w24, w25
	tst	x17, 128
	eor	w1, w20, w1
	csel	w20, w20, w1, eq
	eor	w8, w8, w24
	eor	w1, w11, w3
	eor	w3, w3, w16
	eor	w21, w14, w18
	eor	w16, w11, w16
	strb	w8, [x0, 4]
	eor	w8, w3, w11
	eor	w11, w7, w17
	strb	w4, [x0, 5]
	eor	w4, w3, w18
	eor	w3, w2, w10
	eor	w21, w21, w1
	eor	w2, w2, w15
	eor	w1, w13, w18
	eor	w15, w15, w10
	eor	w18, w11, w3
	eor	w11, w5, w17
	eor	w3, w10, w2
	eor	w16, w1, w16
	eor	w14, w30, w14
	eor	w1, w30, w6
	eor	w11, w11, w15
	eor	w2, w2, w17
	eor	w15, w19, w20
	eor	w7, w7, w20
	ldp	x23, x24, [sp, 48]
	eor	w10, w4, w1
	ldp	x25, x26, [sp, 64]
	eor	w13, w21, w13
	ldp	x21, x22, [sp, 32]
	eor	w4, w19, w11
	ldp	x19, x20, [sp, 16]
	eor	w1, w2, w15
	ldr	x27, [sp, 80]
	eor	w6, w6, w16
	eor	w8, w8, w14
	eor	w5, w5, w18
	eor	w2, w3, w7
	strb	w12, [x0, 6]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	strb	w9, [x0, 7]
	strb	w13, [x0, 8]
	strb	w6, [x0, 9]
	strb	w10, [x0, 10]
	strb	w8, [x0, 11]
	strb	w5, [x0, 12]
	strb	w4, [x0, 13]
	strb	w1, [x0, 14]
	strb	w2, [x0, 15]
	ret
	.cfi_endproc
.LFE1:
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
