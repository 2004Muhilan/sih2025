	.text
	.file	"sha1_padding.c"
	.globl	sha1_padding                    // -- Begin function sha1_padding
	.p2align	2
	.type	sha1_padding,@function
sha1_padding:                           // @sha1_padding
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
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #8
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w10, [sp, #4]
	mov	w9, #8                          // =0x8
	mul	w10, w9, w10
	mov	w9, #56                         // =0x38
	subs	w9, w9, w10
                                        // kill: def $x9 killed $w9
	lsr	x8, x8, x9
	and	x8, x8, #0xff
	ldr	x9, [sp, #24]
	ldur	x10, [x29, #-16]
	add	x10, x10, #1
	ldr	x11, [sp, #16]
	add	x10, x10, x11
	ldrsw	x11, [sp, #4]
	add	x10, x10, x11
                                        // kill: def $w8 killed $w8 killed $x8
	strb	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	sha1_padding, .Lfunc_end0-sha1_padding
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
