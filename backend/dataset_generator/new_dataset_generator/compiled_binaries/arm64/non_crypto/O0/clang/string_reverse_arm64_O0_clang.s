	.text
	.file	"string_reverse.c"
	.globl	string_reverse                  // -- Begin function string_reverse
	.p2align	2
	.type	string_reverse,@function
string_reverse:                         // @string_reverse
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	xzr, [sp, #24]
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hs	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #24]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #24]
	add	x9, x9, x10
	strb	w8, [x9]
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #40]
	ldr	x10, [sp, #16]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_3:
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	string_reverse, .Lfunc_end0-string_reverse
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
