	.arch armv8-a
	.file	"aes_shift_rows.c"
	.text
	.align	2
	.global	aes_shift_rows
	.type	aes_shift_rows, %function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 5]
	strb	w2, [x0, 1]
	ldrb	w2, [x0, 9]
	strb	w2, [x0, 5]
	ldrb	w2, [x0, 13]
	strb	w2, [x0, 9]
	strb	w1, [x0, 13]
	ldrb	w1, [x0, 2]
	ldrb	w2, [x0, 10]
	strb	w2, [x0, 2]
	strb	w1, [x0, 10]
	ldrb	w1, [x0, 6]
	ldrb	w2, [x0, 14]
	strb	w2, [x0, 6]
	strb	w1, [x0, 14]
	ldrb	w1, [x0, 15]
	ldrb	w2, [x0, 11]
	strb	w2, [x0, 15]
	ldrb	w2, [x0, 7]
	strb	w2, [x0, 11]
	ldrb	w2, [x0, 3]
	strb	w2, [x0, 7]
	strb	w1, [x0, 3]
	ret
	.cfi_endproc
.LFE0:
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
