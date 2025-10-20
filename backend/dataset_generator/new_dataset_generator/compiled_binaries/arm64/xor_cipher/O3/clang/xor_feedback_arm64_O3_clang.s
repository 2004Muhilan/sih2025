	.text
	.file	"xor_feedback.c"
	.globl	xor_cipher_feedback             // -- Begin function xor_cipher_feedback
	.p2align	2
	.type	xor_cipher_feedback,@function
xor_cipher_feedback:                    // @xor_cipher_feedback
	.cfi_startproc
// %bb.0:
	cbz	x4, .LBB0_2
// %bb.1:
	ldrb	w8, [x4]
	cbnz	x1, .LBB0_3
	b	.LBB0_5
.LBB0_2:
	mov	w8, wzr
	cbz	x1, .LBB0_5
.LBB0_3:
	mov	x9, xzr
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	udiv	x10, x9, x3
	ldrb	w11, [x0, x9]
	eor	w8, w8, w11
	msub	x10, x10, x3, x9
	ldrb	w10, [x2, x10]
	eor	w8, w10, w8
	strb	w8, [x0, x9]
	add	x9, x9, #1
	cmp	x1, x9
	mov	w8, w11
	b.ne	.LBB0_4
.LBB0_5:
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
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	x22, x1
	mov	x21, x2
	mov	x1, x0
	mov	x0, x5
	mov	x2, x22
	mov	x19, x5
	mov	w23, w4
	mov	x20, x3
	bl	memcpy
	cbz	x22, .LBB1_3
// %bb.1:
	mov	x8, xzr
.LBB1_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x20
	ldrb	w10, [x19, x8]
	eor	w11, w23, w10
	mov	w23, w10
	msub	x9, x9, x20, x8
	ldrb	w9, [x21, x9]
	eor	w9, w9, w11
	strb	w9, [x19, x8]
	add	x8, x8, #1
	cmp	x22, x8
	b.ne	.LBB1_2
.LBB1_3:
	.cfi_def_cfa wsp, 64
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
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
	cbz	x1, .LBB2_3
// %bb.1:
	mov	x8, xzr
.LBB2_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x3
	ldrb	w10, [x0, x8]
	eor	w11, w4, w10
	mov	w4, w10
	msub	x9, x9, x3, x8
	ldrb	w9, [x2, x9]
	eor	w9, w9, w11
	strb	w9, [x5, x8]
	add	x8, x8, #1
	cmp	x1, x8
	b.ne	.LBB2_2
.LBB2_3:
	ret
.Lfunc_end2:
	.size	xor_decrypt_feedback, .Lfunc_end2-xor_decrypt_feedback
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
