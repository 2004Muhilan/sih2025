	.arch armv8-a
	.file	"md5_compress.c"
	.text
	.align	2
	.p2align 4,,11
	.global	md5_compress
	.type	md5_compress, %function
md5_compress:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	ldp	w7, w8, [x0, 8]
	ldp	w9, w6, [x0]
	eor	w2, w7, w8
	ldp	w3, w10, [x1]
	and	w2, w2, w6
	eor	w2, w2, w8
	eor	w4, w6, w7
	add	w3, w9, w3
	add	w10, w8, w10
	add	w2, w2, w3
	ldp	w5, w13, [x1, 8]
	add	w2, w6, w2, lsl 7
	and	w4, w4, w2
	eor	w3, w6, w2
	eor	w4, w4, w7
	add	w5, w7, w5
	add	w4, w4, w10
	add	w13, w6, w13
	ldp	w12, w11, [x1, 16]
	add	w4, w2, w4, lsl 7
	and	w3, w3, w4
	eor	w10, w2, w4
	eor	w3, w3, w6
	add	w12, w2, w12
	add	w3, w3, w5
	add	w11, w4, w11
	ldp	w30, w18, [x1, 24]
	add	w3, w4, w3, lsl 7
	and	w10, w10, w3
	eor	w5, w4, w3
	eor	w2, w10, w2
	add	w30, w3, w30
	add	w2, w2, w13
	ldp	w17, w16, [x1, 32]
	add	w2, w3, w2, lsl 7
	and	w5, w5, w2
	eor	w10, w3, w2
	eor	w4, w5, w4
	add	w18, w2, w18
	add	w4, w4, w12
	ldp	w15, w14, [x1, 40]
	add	w4, w2, w4, lsl 7
	and	w10, w10, w4
	eor	w5, w2, w4
	eor	w3, w10, w3
	add	w17, w4, w17
	add	w3, w3, w11
	ldp	w13, w12, [x1, 48]
	add	w3, w4, w3, lsl 7
	and	w5, w5, w3
	add	w16, w3, w16
	eor	w2, w5, w2
	add	w2, w2, w30
	ldp	w11, w10, [x1, 56]
	add	w2, w3, w2, lsl 7
	eor	w1, w4, w3
	eor	w5, w3, w2
	and	w1, w1, w2
	add	w15, w2, w15
	eor	w1, w1, w4
	add	w1, w1, w18
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	add	w1, w2, w1, lsl 7
	and	w5, w5, w1
	eor	w4, w2, w1
	eor	w5, w5, w3
	add	w14, w1, w14
	add	w5, w5, w17
	add	w5, w1, w5, lsl 7
	and	w4, w4, w5
	eor	w3, w1, w5
	eor	w4, w4, w2
	add	w13, w5, w13
	add	w4, w4, w16
	add	w4, w5, w4, lsl 7
	and	w3, w3, w4
	eor	w2, w5, w4
	eor	w3, w3, w1
	add	w12, w4, w12
	add	w3, w3, w15
	add	w3, w4, w3, lsl 7
	and	w2, w2, w3
	eor	w1, w4, w3
	eor	w2, w2, w5
	add	w11, w3, w11
	add	w2, w2, w14
	add	w2, w3, w2, lsl 7
	and	w1, w1, w2
	eor	w5, w3, w2
	eor	w1, w1, w4
	add	w10, w2, w10
	add	w1, w1, w13
	add	w1, w2, w1, lsl 7
	and	w4, w5, w1
	eor	w5, w2, w1
	eor	w3, w4, w3
	add	w9, w9, w1
	add	w3, w3, w12
	add	w3, w1, w3, lsl 7
	and	w4, w5, w3
	eor	w5, w1, w3
	eor	w2, w4, w2
	add	w8, w8, w3
	add	w2, w2, w11
	add	w2, w3, w2, lsl 7
	and	w3, w5, w2
	add	w6, w6, w2
	eor	w1, w3, w1
	add	w7, w7, w2
	add	w1, w1, w10
	stp	w7, w8, [x0, 8]
	add	w1, w6, w1, lsl 7
	stp	w9, w1, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
