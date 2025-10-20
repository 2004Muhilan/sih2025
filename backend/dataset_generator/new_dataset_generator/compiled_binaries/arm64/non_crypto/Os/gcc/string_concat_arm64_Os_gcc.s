	.arch armv8-a
	.file	"string_concat.c"
	.text
	.align	2
	.global	string_concat
	.type	string_concat, %function
string_concat:
.LFB0:
	.cfi_startproc
	mov	x4, 0
.L2:
	cmp	x4, x2
	beq	.L8
	ldrb	w3, [x0, x4]
	cbnz	w3, .L4
.L8:
	mov	x3, x4
	sub	x2, x2, #1
	sub	x1, x1, x4
.L5:
	cmp	x2, x3
	bls	.L6
	ldrb	w4, [x1, x3]
	cbnz	w4, .L7
.L6:
	strb	wzr, [x0, x3]
	ret
.L4:
	add	x4, x4, 1
	b	.L2
.L7:
	strb	w4, [x0, x3]
	add	x3, x3, 1
	b	.L5
	.cfi_endproc
.LFE0:
	.size	string_concat, .-string_concat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
