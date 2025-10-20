	.arch armv8-a
	.file	"md5_compress.c"
	.text
	.align	2
	.global	md5_compress
	.type	md5_compress, %function
md5_compress:
.LFB0:
	.cfi_startproc
	ldr	w12, [x0]
	ldr	w11, [x0, 4]
	ldr	w10, [x0, 8]
	ldr	w9, [x0, 12]
	mov	x4, x1
	add	x8, x1, 64
	mov	w2, w9
	mov	w5, w10
	mov	w3, w11
	mov	w6, w12
	b	.L2
.L3:
	mov	w2, w5
	mov	w5, w3
	mov	w3, w1
.L2:
	eor	w1, w5, w2
	and	w1, w1, w3
	eor	w1, w1, w2
	ldr	w7, [x4], 4
	add	w1, w1, w7
	add	w1, w1, w6
	add	w1, w3, w1, lsl 7
	mov	w6, w2
	cmp	x4, x8
	bne	.L3
	add	w12, w12, w2
	str	w12, [x0]
	add	w11, w11, w1
	str	w11, [x0, 4]
	add	w10, w10, w3
	str	w10, [x0, 8]
	add	w9, w9, w5
	str	w9, [x0, 12]
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
