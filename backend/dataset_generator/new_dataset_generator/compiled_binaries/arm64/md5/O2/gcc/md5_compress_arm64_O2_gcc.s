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
	ldr	q2, [x0]
	add	x6, x1, 64
	ldr	w3, [x0, 4]
	ldp	s1, s0, [x0, 8]
	fmov	w4, s2
	b	.L2
	.p2align 2,,3
.L3:
	fmov	s0, s1
	fmov	s1, w3
	mov	w3, w2
.L2:
	eor	v3.8b, v1.8b, v0.8b
	fmov	w7, s0
	ldr	w5, [x1], 4
	fmov	w2, s3
	and	w2, w2, w3
	eor	w2, w2, w7
	add	w2, w2, w5
	add	w2, w2, w4
	fmov	w4, s0
	add	w2, w3, w2, lsl 7
	cmp	x6, x1
	bne	.L3
	ins	v0.s[1], w2
	ins	v0.s[2], w3
	ins	v0.s[3], v1.s[0]
	add	v0.4s, v0.4s, v2.4s
	str	q0, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
