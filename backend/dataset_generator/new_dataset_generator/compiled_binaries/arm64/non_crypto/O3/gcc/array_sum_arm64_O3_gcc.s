	.arch armv8-a
	.file	"array_sum.c"
	.text
	.align	2
	.p2align 4,,11
	.global	array_sum
	.type	array_sum, %function
array_sum:
.LFB0:
	.cfi_startproc
	mov	x4, x0
	cbz	x1, .L7
	sub	x0, x1, #1
	cmp	x0, 2
	bls	.L8
	lsr	x3, x1, 2
	mov	x2, x4
	movi	v0.4s, 0
	add	x3, x4, x3, lsl 4
	.p2align 3,,7
.L4:
	ldr	q1, [x2], 16
	add	v0.4s, v0.4s, v1.4s
	cmp	x2, x3
	bne	.L4
	addv	s0, v0.4s
	and	x2, x1, -4
	fmov	w0, s0
	tst	x1, 3
	beq	.L1
.L3:
	ldr	w5, [x4, x2, lsl 2]
	add	x3, x2, 1
	lsl	x6, x2, 2
	add	w0, w0, w5
	cmp	x1, x3
	bls	.L1
	add	x4, x4, x6
	add	x2, x2, 2
	ldr	w3, [x4, 4]
	add	w0, w0, w3
	cmp	x1, x2
	bls	.L1
	ldr	w1, [x4, 8]
	add	w0, w0, w1
.L1:
	ret
	.p2align 2,,3
.L7:
	mov	w0, 0
	ret
.L8:
	mov	x2, 0
	mov	w0, 0
	b	.L3
	.cfi_endproc
.LFE0:
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
