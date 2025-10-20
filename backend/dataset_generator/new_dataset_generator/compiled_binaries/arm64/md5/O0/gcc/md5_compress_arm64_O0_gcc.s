	.arch armv8-a
	.file	"md5_compress.c"
	.text
	.align	2
	.global	md5_compress
	.type	md5_compress, %function
md5_compress:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 20]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	str	w0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	b	.L2
.L3:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	and	w1, w1, w0
	ldr	w0, [sp, 24]
	mvn	w2, w0
	ldr	w0, [sp, 32]
	and	w0, w2, w0
	orr	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	lsl	w0, w0, 7
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	str	w0, [sp, 20]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 15
	ble	.L3
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [sp, 24]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	w1, [sp, 28]
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w1, [sp, 32]
	add	w1, w2, w1
	str	w1, [x0]
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
