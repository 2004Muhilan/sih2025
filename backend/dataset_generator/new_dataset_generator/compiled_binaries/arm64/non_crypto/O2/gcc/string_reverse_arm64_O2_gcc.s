	.arch armv8-a
	.file	"string_reverse.c"
	.text
	.align	2
	.p2align 4,,11
	.global	string_reverse
	.type	string_reverse, %function
string_reverse:
.LFB0:
	.cfi_startproc
	subs	x1, x1, #1
	beq	.L1
	mov	x2, 0
	.p2align 3,,7
.L3:
	ldrb	w4, [x0, x1]
	ldrb	w3, [x0, x2]
	strb	w4, [x0, x2]
	add	x2, x2, 1
	strb	w3, [x0, x1]
	sub	x1, x1, #1
	cmp	x2, x1
	bcc	.L3
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
