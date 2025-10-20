	.arch armv8-a
	.file	"md5_compress.c"
	.text
	.align	2
	.global	md5_compress
	.type	md5_compress, %function
md5_compress:
.LFB0:
	.cfi_startproc
	ldp	w9, w8, [x0]
	mov	x10, 0
	ldp	w7, w5, [x0, 8]
	mov	w3, w8
	mov	w11, w9
	mov	w4, w5
	mov	w6, w7
.L2:
	eor	w2, w6, w4
	ldr	w12, [x1, x10, lsl 2]
	and	w2, w2, w3
	add	x10, x10, 1
	eor	w2, w2, w4
	add	w2, w2, w12
	add	w2, w2, w11
	mov	w11, w4
	add	w2, w3, w2, lsl 7
	cmp	x10, 16
	bne	.L3
	add	w9, w9, w4
	add	w8, w8, w2
	add	w7, w7, w3
	add	w5, w5, w6
	stp	w9, w8, [x0]
	stp	w7, w5, [x0, 8]
	ret
.L3:
	mov	w4, w6
	mov	w6, w3
	mov	w3, w2
	b	.L2
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
