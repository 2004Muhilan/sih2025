	.arch armv8-a
	.file	"string_concat.c"
	.text
	.align	2
	.p2align 4,,11
	.global	string_concat
	.type	string_concat, %function
string_concat:
.LFB0:
	.cfi_startproc
	mov	x3, 0
	cbnz	x2, .L2
	b	.L3
	.p2align 2,,3
.L5:
	add	x3, x3, 1
	cmp	x2, x3
	beq	.L14
.L2:
	ldrb	w4, [x0, x3]
	cbnz	w4, .L5
	sub	x4, x2, #1
	cmp	x4, x3
	bls	.L12
.L3:
	sub	x2, x2, #1
	sub	x4, x1, x3
	b	.L6
	.p2align 2,,3
.L7:
	strb	w1, [x0, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bls	.L12
.L6:
	ldrb	w1, [x4, x3]
	cbnz	w1, .L7
.L12:
	add	x0, x0, x3
	strb	wzr, [x0]
	ret
	.p2align 2,,3
.L14:
	add	x0, x0, x2
	strb	wzr, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
