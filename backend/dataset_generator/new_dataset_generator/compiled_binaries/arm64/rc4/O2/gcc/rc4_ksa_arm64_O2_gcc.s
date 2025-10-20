	.arch armv8-a
	.file	"rc4_ksa.c"
	.text
	.align	2
	.p2align 4,,11
	.global	rc4_ksa
	.type	rc4_ksa, %function
rc4_ksa:
.LFB0:
	.cfi_startproc
	adrp	x3, .LC0
	add	x4, x0, 256
	movi	v16.4s, 0x10
	movi	v7.4s, 0x4
	movi	v6.4s, 0x8
	movi	v5.4s, 0xc
	ldr	q2, [x3, #:lo12:.LC0]
	mov	x3, x0
	.p2align 3,,7
.L2:
	mov	v0.16b, v2.16b
	add	v2.4s, v2.4s, v16.4s
	add	v1.4s, v0.4s, v6.4s
	add	v3.4s, v0.4s, v5.4s
	add	v4.4s, v0.4s, v7.4s
	uzp1	v1.8h, v1.8h, v3.8h
	uzp1	v0.8h, v0.8h, v4.8h
	uzp1	v0.16b, v0.16b, v1.16b
	str	q0, [x3], 16
	cmp	x3, x4
	bne	.L2
	mov	x3, 0
	mov	w4, 0
	.p2align 3,,7
.L3:
	udiv	x5, x3, x2
	ldrb	w6, [x0, x3]
	add	w4, w4, w6
	msub	x5, x5, x2, x3
	ldrb	w5, [x1, x5]
	add	w4, w5, w4
	and	w4, w4, 255
	ldrb	w5, [x0, w4, uxtw]
	strb	w5, [x0, x3]
	add	x3, x3, 1
	strb	w6, [x0, w4, uxtw]
	cmp	x3, 256
	bne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	rc4_ksa, .-rc4_ksa
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
