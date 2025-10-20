	.text
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             // -- Begin function xor_cipher_feedback
	.p2align	2
	.type	xor_cipher_feedback,@function
xor_cipher_feedback:                    // @xor_cipher_feedback
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	x2, [sp, #40]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	mov	w8, wzr
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	strb	w8, [sp, #23]
	str	xzr, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.hs	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	ldr	x11, [sp, #32]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	ldrb	w8, [x8, x9]
	ldrb	w9, [sp, #23]
	eor	w8, w8, w9
	strb	w8, [sp, #7]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #8]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #6]
	ldrb	w10, [sp, #7]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #8]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	ldrb	w8, [sp, #6]
	strb	w8, [sp, #23]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_4
.LBB0_7:
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	xor_cipher_feedback, .Lfunc_end0-xor_cipher_feedback
	.cfi_endproc
                                        // -- End function
	.globl	xor_encrypt_feedback            // -- Begin function xor_encrypt_feedback
	.p2align	2
	.type	xor_encrypt_feedback,@function
xor_encrypt_feedback:                   // @xor_encrypt_feedback
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	add	x8, sp, #31
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	strb	w4, [sp, #31]
	str	x5, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	bl	memcpy
	ldr	x4, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	bl	xor_cipher_feedback
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	xor_encrypt_feedback, .Lfunc_end1-xor_encrypt_feedback
	.cfi_endproc
                                        // -- End function
	.globl	xor_decrypt_feedback            // -- Begin function xor_decrypt_feedback
	.p2align	2
	.type	xor_decrypt_feedback,@function
xor_decrypt_feedback:                   // @xor_decrypt_feedback
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	str	x2, [sp, #56]
	str	x3, [sp, #48]
	strb	w4, [sp, #47]
	str	x5, [sp, #32]
	ldrb	w8, [sp, #47]
	strb	w8, [sp, #31]
	str	xzr, [sp, #16]
	b	.LBB2_1
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.hs	.LBB2_4
	b	.LBB2_2
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #16]
	ldr	x11, [sp, #48]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	ldrb	w8, [x8, x9]
	ldrb	w9, [sp, #31]
	eor	w8, w8, w9
	strb	w8, [sp, #15]
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #31]
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #16]
	ldrb	w8, [x8, x9]
	ldrb	w9, [sp, #15]
	eor	w8, w8, w9
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #16]
	strb	w8, [x9, x10]
	b	.LBB2_3
.LBB2_3:                                //   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB2_1
.LBB2_4:
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_feedback
