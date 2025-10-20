	.text
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               // -- Begin function xor_cipher_simple
	.p2align	2
	.type	xor_cipher_simple,@function
xor_cipher_simple:                      // @xor_cipher_simple
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	xzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
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
	ldrb	w10, [x8, x9]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	add	x9, x8, x9
	ldrb	w8, [x9]
	eor	w8, w8, w10
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	xor_cipher_simple, .Lfunc_end0-xor_cipher_simple
	.cfi_endproc
                                        // -- End function
	.globl	xor_encrypt_simple              // -- Begin function xor_encrypt_simple
	.p2align	2
	.type	xor_encrypt_simple,@function
xor_encrypt_simple:                     // @xor_encrypt_simple
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
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	bl	memcpy
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	xor_cipher_simple
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	xor_encrypt_simple, .Lfunc_end1-xor_encrypt_simple
	.cfi_endproc
                                        // -- End function
	.globl	xor_decrypt_simple              // -- Begin function xor_decrypt_simple
	.p2align	2
	.type	xor_decrypt_simple,@function
xor_decrypt_simple:                     // @xor_decrypt_simple
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
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldur	x2, [x29, #-16]
	bl	memcpy
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	xor_cipher_simple
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	xor_decrypt_simple, .Lfunc_end2-xor_decrypt_simple
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xor_cipher_simple
