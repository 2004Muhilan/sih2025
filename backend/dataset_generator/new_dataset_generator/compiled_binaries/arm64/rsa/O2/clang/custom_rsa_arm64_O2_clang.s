	.text
	.file	"custom_rsa.c"
	.globl	mod_exp                         // -- Begin function mod_exp
	.p2align	2
	.type	mod_exp,@function
mod_exp:                                // @mod_exp
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_6
// %bb.1:
	mov	x8, x0
	mov	w0, #1                          // =0x1
	b	.LBB0_3
.LBB0_2:                                //   in Loop: Header=BB0_3 Depth=1
	mul	x8, x8, x8
	lsr	x9, x1, #1
	cmp	x1, #1
	mov	x1, x9
	b.ls	.LBB0_5
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x2
	msub	x8, x9, x2, x8
	tbz	w1, #0, .LBB0_2
// %bb.4:                               //   in Loop: Header=BB0_3 Depth=1
	mul	x9, x8, x0
	udiv	x10, x9, x2
	msub	x0, x10, x2, x9
	b	.LBB0_2
.LBB0_5:
	ret
.LBB0_6:
	mov	w0, #1                          // =0x1
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
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	str	x21, [sp, #32]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x19, x3
	mov	x20, x2
	mov	x8, x0
	mov	x0, x1
	cbz	x8, .LBB1_2
// %bb.1:
	sdiv	x21, x0, x8
	add	x2, x29, #24
	add	x3, sp, #8
	mov	x1, x8
	msub	x0, x21, x8, x0
	bl	extended_gcd
	ldr	x8, [x29, #24]
	ldr	x9, [sp, #8]
	msub	x9, x8, x21, x9
	b	.LBB1_3
.LBB1_2:
	mov	x9, xzr
	mov	w8, #1                          // =0x1
.LBB1_3:
	str	x9, [x20]
	str	x8, [x19]
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x21, [sp, #32]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
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
	cbz	x1, .LBB2_6
// %bb.1:
	mov	x8, x0
	mov	w0, #1                          // =0x1
	b	.LBB2_3
.LBB2_2:                                //   in Loop: Header=BB2_3 Depth=1
	mul	x8, x8, x8
	lsr	x9, x1, #1
	cmp	x1, #1
	mov	x1, x9
	b.ls	.LBB2_5
.LBB2_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x2
	msub	x8, x9, x2, x8
	tbz	w1, #0, .LBB2_2
// %bb.4:                               //   in Loop: Header=BB2_3 Depth=1
	mul	x9, x8, x0
	udiv	x10, x9, x2
	msub	x0, x10, x2, x9
	b	.LBB2_2
.LBB2_5:
	ret
.LBB2_6:
	mov	w0, #1                          // =0x1
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
	cbz	x1, .LBB3_6
// %bb.1:
	mov	x8, x0
	mov	w0, #1                          // =0x1
	b	.LBB3_3
.LBB3_2:                                //   in Loop: Header=BB3_3 Depth=1
	mul	x8, x8, x8
	lsr	x9, x1, #1
	cmp	x1, #1
	mov	x1, x9
	b.ls	.LBB3_5
.LBB3_3:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x2
	msub	x8, x9, x2, x8
	tbz	w1, #0, .LBB3_2
// %bb.4:                               //   in Loop: Header=BB3_3 Depth=1
	mul	x9, x8, x0
	udiv	x10, x9, x2
	msub	x0, x10, x2, x9
	b	.LBB3_2
.LBB3_5:
	ret
.LBB3_6:
	mov	w0, #1                          // =0x1
	ret
.Lfunc_end3:
	.size	rsa_decrypt, .Lfunc_end3-rsa_decrypt
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
