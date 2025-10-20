	.text
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                // -- Begin function rsa_extended_gcd
	.p2align	2
	.type	rsa_extended_gcd,@function
rsa_extended_gcd:                       // @rsa_extended_gcd
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #32]
	str	xzr, [x8]
	ldr	x9, [sp, #24]
	mov	x8, #1                          // =0x1
	str	x8, [x9]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldur	x10, [x29, #-16]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x0, x8, x9
	ldur	x1, [x29, #-16]
	add	x2, sp, #16
	add	x3, sp, #8
	bl	rsa_extended_gcd
	str	x0, [sp]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-24]
	ldur	x10, [x29, #-16]
	sdiv	x9, x9, x10
	ldr	x10, [sp, #16]
	mul	x9, x9, x10
	subs	x8, x8, x9
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rsa_extended_gcd
