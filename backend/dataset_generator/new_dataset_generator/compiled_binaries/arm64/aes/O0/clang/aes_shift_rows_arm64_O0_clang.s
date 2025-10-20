	.text
	.file	"aes_shift_rows.c"
	.globl	aes_shift_rows                  // -- Begin function aes_shift_rows
	.p2align	2
	.type	aes_shift_rows,@function
aes_shift_rows:                         // @aes_shift_rows
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #1]
	strb	w8, [sp, #7]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #5]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #1]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #9]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #5]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #13]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #9]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #13]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #2]
	strb	w8, [sp, #7]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #10]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #2]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #10]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #6]
	strb	w8, [sp, #7]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #14]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #6]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #14]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #15]
	strb	w8, [sp, #7]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #11]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #15]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #7]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #11]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #3]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #7]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #8]
	strb	w8, [x9, #3]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	aes_shift_rows, .Lfunc_end0-aes_shift_rows
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
