	.arch armv8-a
	.file	"string_reverse.c"
	.text
	.align	2
	.global	string_reverse
	.type	string_reverse, %function
string_reverse:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	x1, [sp]
	str	xzr, [sp, 32]
	ldr	x0, [sp]
	sub	x0, x0, #1
	str	x0, [sp, 40]
	b	.L2
.L3:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 40]
	add	x1, x1, x0
	ldr	x2, [sp, 8]
	ldr	x0, [sp, 32]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	str	x0, [sp, 40]
.L2:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L3
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	string_reverse, .-string_reverse
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
