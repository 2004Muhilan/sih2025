	.text
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             // -- Begin function xor_cipher_rotating
	.p2align	2
	.type	xor_cipher_rotating,@function
xor_cipher_rotating:                    // @xor_cipher_rotating
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
	str	xzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	ldr	x11, [sp, #16]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	ldrb	w10, [sp, #7]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	ldrb	w0, [sp, #7]
	mov	w1, #1                          // =0x1
	bl	rotate_left
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	ldr	x11, [sp, #16]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	strb	w0, [x8, x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
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
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function rotate_left
	.type	rotate_left,@function
rotate_left:                            // @rotate_left
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	str	w1, [sp, #8]
	ldrb	w8, [sp, #15]
	ldr	w9, [sp, #8]
	lsl	w8, w8, w9
	ldrb	w9, [sp, #15]
	ldr	w11, [sp, #8]
	mov	w10, #8                         // =0x8
	subs	w10, w10, w11
	asr	w9, w9, w10
	orr	w0, w8, w9
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	rotate_left, .Lfunc_end1-rotate_left
	.cfi_endproc
                                        // -- End function
	.globl	xor_encrypt_rotating            // -- Begin function xor_encrypt_rotating
	.p2align	2
	.type	xor_encrypt_rotating,@function
xor_encrypt_rotating:                   // @xor_encrypt_rotating
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, #304]            // 16-byte Folded Spill
	str	x28, [sp, #320]                 // 8-byte Folded Spill
	add	x29, sp, #304
	.cfi_def_cfa w29, 32
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	bl	memcpy
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	add	x0, sp, #8
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-16]
	ldur	x3, [x29, #-32]
	bl	xor_cipher_rotating
	.cfi_def_cfa wsp, 336
	ldr	x28, [sp, #320]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #304]            // 16-byte Folded Reload
	add	sp, sp, #336
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	xor_encrypt_rotating, .Lfunc_end2-xor_encrypt_rotating
	.cfi_endproc
                                        // -- End function
	.globl	xor_decrypt_rotating            // -- Begin function xor_decrypt_rotating
	.p2align	2
	.type	xor_decrypt_rotating,@function
xor_decrypt_rotating:                   // @xor_decrypt_rotating
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
	str	x4, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	ldr	x4, [sp, #8]
	bl	xor_encrypt_rotating
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	xor_decrypt_rotating, .Lfunc_end3-xor_decrypt_rotating
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_rotating
	.addrsig_sym rotate_left
	.addrsig_sym xor_encrypt_rotating
