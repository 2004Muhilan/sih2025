	.arch armv8-a
	.file	"custom_md5.c"
	.text
	.align	2
	.p2align 4,,11
	.global	md5_transform
	.type	md5_transform, %function
md5_transform:
.LFB14:
	.cfi_startproc
	ld4	{v4.16b - v7.16b}, [x1]
	ldp	w6, w7, [x0, 8]
	uxtl	v1.8h, v4.8b
	shll	v0.8h, v5.8b, 8
	eor	w1, w6, w7
	uxtl	v16.8h, v6.8b
	uxtl	v3.8h, v7.8b
	uxtl	v20.4s, v1.4h
	uxtl	v2.4s, v0.4h
	shll	v19.4s, v16.4h, 16
	uxtl	v18.4s, v3.4h
	ldp	w8, w5, [x0]
	orr	v2.16b, v2.16b, v20.16b
	shl	v18.4s, v18.4s, 24
	and	w1, w1, w5
	eor	w1, w1, w7
	eor	w2, w5, w6
	uxtl2	v17.4s, v1.8h
	orr	v2.16b, v2.16b, v19.16b
	uxtl2	v1.4s, v0.8h
	uxtl2	v3.4s, v3.8h
	shll2	v0.4s, v16.8h, 16
	orr	v2.16b, v2.16b, v18.16b
	orr	v1.16b, v1.16b, v17.16b
	shl	v3.4s, v3.4s, 24
	uxtl2	v16.8h, v4.16b
	fmov	w3, s2
	umov	w10, v2.s[2]
	orr	v1.16b, v1.16b, v0.16b
	umov	w9, v2.s[3]
	shll2	v0.8h, v5.16b, 8
	uxtl	v4.4s, v16.4h
	add	w1, w1, w3
	add	w1, w1, w8
	umov	w3, v2.s[1]
	orr	v1.16b, v1.16b, v3.16b
	add	w10, w10, w6
	add	w9, w9, w5
	ror	w1, w1, 25
	uxtl2	v3.8h, v6.16b
	add	w1, w1, w5
	and	w2, w2, w1
	eor	w4, w1, w5
	add	w3, w3, w7
	eor	w2, w2, w6
	add	w2, w2, w3
	fmov	w11, s1
	umov	w12, v1.s[1]
	uxtl2	v2.8h, v7.16b
	ror	w2, w2, 25
	shll	v5.4s, v3.4h, 16
	add	w2, w1, w2
	and	w4, w4, w2
	eor	w3, w1, w2
	uxtl2	v16.4s, v16.8h
	eor	w4, w4, w5
	add	w4, w4, w10
	add	w12, w12, w2
	shll2	v3.4s, v3.8h, 16
	ror	w4, w4, 25
	add	w4, w4, w2
	and	w3, w3, w4
	eor	w10, w2, w4
	eor	w3, w3, w1
	add	w1, w1, w11
	add	w3, w3, w9
	umov	w11, v1.s[2]
	ror	w3, w3, 25
	add	w3, w4, w3
	and	w9, w10, w3
	eor	w10, w4, w3
	eor	w9, w9, w2
	umov	w2, v1.s[3]
	add	w1, w9, w1
	add	w11, w11, w4
	uxtl	v1.4s, v0.4h
	uxtl2	v0.4s, v0.8h
	ror	w1, w1, 25
	add	w1, w3, w1
	and	w10, w10, w1
	eor	w9, w3, w1
	eor	w10, w10, w4
	add	w2, w2, w3
	orr	v1.16b, v1.16b, v4.16b
	add	w10, w10, w12
	uxtl	v4.4s, v2.4h
	orr	v0.16b, v0.16b, v16.16b
	ror	w10, w10, 25
	uxtl2	v2.4s, v2.8h
	add	w10, w1, w10
	and	w9, w9, w10
	eor	w4, w1, w10
	orr	v1.16b, v1.16b, v5.16b
	eor	w9, w9, w3
	shl	v4.4s, v4.4s, 24
	add	w9, w9, w11
	orr	v0.16b, v0.16b, v3.16b
	shl	v2.4s, v2.4s, 24
	ror	w9, w9, 25
	add	w9, w10, w9
	orr	v1.16b, v1.16b, v4.16b
	and	w4, w4, w9
	eor	w4, w4, w1
	eor	w3, w10, w9
	orr	v0.16b, v0.16b, v2.16b
	add	w2, w4, w2
	fmov	w4, s1
	ror	w2, w2, 25
	add	w2, w9, w2
	umov	w12, v1.s[2]
	and	w3, w3, w2
	eor	w11, w9, w2
	eor	w3, w3, w10
	umov	w13, v0.s[1]
	add	w1, w1, w4
	umov	w4, v1.s[1]
	add	w1, w3, w1
	umov	w3, v1.s[3]
	ror	w1, w1, 25
	add	w1, w2, w1
	and	w11, w11, w1
	add	w10, w4, w10
	eor	w11, w11, w9
	eor	w4, w2, w1
	add	w11, w11, w10
	add	w9, w12, w9
	add	w3, w3, w2
	umov	w12, v0.s[2]
	ror	w11, w11, 25
	add	w11, w1, w11
	and	w4, w4, w11
	eor	w10, w1, w11
	eor	w4, w4, w2
	add	w4, w4, w9
	fmov	w9, s0
	ror	w4, w4, 25
	add	w4, w11, w4
	and	w10, w10, w4
	eor	w2, w11, w4
	eor	w10, w10, w1
	add	w1, w1, w9
	add	w10, w10, w3
	ror	w10, w10, 25
	add	w10, w4, w10
	and	w3, w2, w10
	eor	w2, w4, w10
	eor	w3, w3, w11
	add	w11, w13, w11
	add	w3, w3, w1
	umov	w1, v0.s[3]
	ror	w3, w3, 25
	add	w3, w10, w3
	and	w2, w2, w3
	eor	w9, w10, w3
	eor	w2, w2, w4
	add	w8, w8, w3
	add	w2, w2, w11
	str	w8, [x0]
	add	w11, w12, w4
	add	w1, w1, w10
	ror	w2, w2, 25
	add	w2, w3, w2
	and	w8, w9, w2
	add	w9, w7, w2
	eor	w8, w8, w10
	eor	w4, w3, w2
	add	w7, w8, w11
	str	w9, [x0, 12]
	ror	w7, w7, 25
	add	w2, w2, w7
	and	w4, w4, w2
	add	w5, w5, w2
	eor	w3, w4, w3
	add	w6, w6, w2
	add	w1, w3, w1
	ror	w1, w1, 25
	add	w1, w1, w5
	stp	w1, w6, [x0, 4]
	ret
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.align	2
	.p2align 4,,11
	.global	md5_init
	.type	md5_init, %function
md5_init:
.LFB15:
	.cfi_startproc
	adrp	x1, .LC0
	ldr	q0, [x1, #:lo12:.LC0]
	str	q0, [x0]
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	1732584193
	.word	-271733879
	.word	-1732584194
	.word	271733878
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
