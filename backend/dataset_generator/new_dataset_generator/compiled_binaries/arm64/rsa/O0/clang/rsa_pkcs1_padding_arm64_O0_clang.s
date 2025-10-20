	.text
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   // -- Begin function rsa_pkcs1_pad
	.p2align	2
	.type	rsa_pkcs1_pad,@function
rsa_pkcs1_pad:                          // @rsa_pkcs1_pad
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
	str	x3, [sp, #16]
	ldr	x8, [sp, #24]
	strb	wzr, [x8]
	ldr	x9, [sp, #24]
	mov	w8, #2                          // =0x2
	strb	w8, [x9, #1]
	mov	x8, #2                          // =0x2
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	ldur	x10, [x29, #-16]
	subs	x9, x9, x10
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	add	x9, x8, x9
	mov	w8, #255                        // =0xff
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	ldur	x10, [x29, #-16]
	subs	x9, x9, x10
	subs	x9, x9, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	subs	x0, x8, x9
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	bl	memcpy
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	rsa_pkcs1_pad, .Lfunc_end0-rsa_pkcs1_pad
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
