	.arch armv8-a
	.file	"array_max.c"
	.text
	.align	2
	.p2align 4,,11
	.global	array_max
	.type	array_max, %function
array_max:
.LFB0:
	.cfi_startproc
	mov	x3, x0
	mov	w0, 0
	cbz	x1, .L1
	ldr	w0, [x3]
	cmp	x1, 1
	beq	.L1
	sub	x2, x1, #2
	sub	x4, x1, #1
	cmp	x2, 2
	bls	.L8
	lsr	x5, x4, 2
	dup	v0.4s, w0
	mov	x2, x3
	add	x0, x3, x5, lsl 4
	.p2align 3,,7
.L4:
	ldr	q1, [x2, 4]
	add	x2, x2, 16
	smax	v0.4s, v0.4s, v1.4s
	cmp	x2, x0
	bne	.L4
	smaxv	s0, v0.4s
	fmov	w0, s0
	tst	x4, 3
	beq	.L1
	and	x2, x4, -4
	add	x2, x2, 1
.L3:
	ldr	w5, [x3, x2, lsl 2]
	add	x4, x2, 1
	lsl	x6, x2, 2
	cmp	w0, w5
	csel	w0, w0, w5, ge
	cmp	x1, x4
	bls	.L1
	add	x3, x3, x6
	add	x2, x2, 2
	ldr	w4, [x3, 4]
	cmp	w0, w4
	csel	w0, w0, w4, ge
	cmp	x1, x2
	bls	.L1
	ldr	w1, [x3, 8]
	cmp	w0, w1
	csel	w0, w0, w1, ge
.L1:
	ret
.L8:
	mov	x2, 1
	b	.L3
	.cfi_endproc
.LFE0:
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
