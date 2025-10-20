	.arch armv8-a
	.file	"aes_shift_rows.c"
	.text
	.align	2
	.global	aes_shift_rows
	.type	aes_shift_rows, %function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	strb	w0, [sp, 31]
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 5]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 5
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 9]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 9
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 13]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 13
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 2]
	strb	w0, [sp, 31]
	ldr	x0, [sp, 8]
	add	x0, x0, 2
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 10]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 10
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 6]
	strb	w0, [sp, 31]
	ldr	x0, [sp, 8]
	add	x0, x0, 6
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 14]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 14
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 15]
	strb	w0, [sp, 31]
	ldr	x0, [sp, 8]
	add	x0, x0, 15
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 11]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 11
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 7]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 7
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 3]
	strb	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 3
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
