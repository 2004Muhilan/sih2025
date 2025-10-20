	.text
	.file	"custom_rsa.c"
	.globl	mod_exp                         // -- Begin function mod_exp
	.p2align	2
	.type	mod_exp,@function
mod_exp:                                // @mod_exp
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	mov	x8, #1                          // =0x1
	str	x8, [sp]
	ldr	x8, [sp, #24]
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	b.ls	.LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	mov	x10, #2                         // =0x2
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	subs	x8, x8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	mul	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	lsr	x8, x8, #1
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	mul	x8, x8, x9
	ldr	x10, [sp, #8]
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_5:
	ldr	x0, [sp]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	mod_exp, .Lfunc_end0-mod_exp
	.cfi_endproc
                                        // -- End function
	.globl	extended_gcd                    // -- Begin function extended_gcd
	.p2align	2
	.type	extended_gcd,@function
extended_gcd:                           // @extended_gcd
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
	cbnz	x8, .LBB1_2
	b	.LBB1_1
.LBB1_1:
	ldr	x8, [sp, #32]
	str	xzr, [x8]
	ldr	x9, [sp, #24]
	mov	x8, #1                          // =0x1
	str	x8, [x9]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB1_3
.LBB1_2:
	ldur	x8, [x29, #-24]
	ldur	x10, [x29, #-16]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x0, x8, x9
	ldur	x1, [x29, #-16]
	add	x2, sp, #16
	add	x3, sp, #8
	bl	extended_gcd
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
	b	.LBB1_3
.LBB1_3:
	ldur	x0, [x29, #-8]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	extended_gcd, .Lfunc_end1-extended_gcd
	.cfi_endproc
                                        // -- End function
	.globl	rsa_encrypt                     // -- Begin function rsa_encrypt
	.p2align	2
	.type	rsa_encrypt,@function
rsa_encrypt:                            // @rsa_encrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	mod_exp
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	rsa_encrypt, .Lfunc_end2-rsa_encrypt
	.cfi_endproc
                                        // -- End function
	.globl	rsa_decrypt                     // -- Begin function rsa_decrypt
	.p2align	2
	.type	rsa_decrypt,@function
rsa_decrypt:                            // @rsa_decrypt
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	mod_exp
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mod_exp
	.addrsig_sym extended_gcd
