	.text
	.file	"md5_padding.c"
	.globl	md5_padding                     // -- Begin function md5_padding
	.p2align	2
	.type	md5_padding,@function
md5_padding:                            // @md5_padding
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	bl	memcpy
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	add	x9, x8, x9
	mov	w8, #128                        // =0x80
	strb	w8, [x9]
	ldur	x8, [x29, #-16]
	mov	x10, #64                        // =0x40
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x9, x8, x9
	mov	x8, #55                         // =0x37
	subs	x8, x8, x9
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	x2, [sp, #16]
	add	x8, x8, x9
	add	x0, x8, #1
	mov	w1, wzr
	bl	memset
	ldur	x8, [x29, #-16]
	lsl	x8, x8, #3
	str	x8, [sp, #8]
	ldr	x9, [sp, #24]
	ldur	x11, [x29, #-16]
	ldr	x10, [sp, #16]
	ldr	x8, [sp, #8]
	add	x9, x9, x11
	add	x9, x9, #1
	str	x8, [x9, x10]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	md5_padding, .Lfunc_end0-md5_padding
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
