	.text
	.file	"xor_simple.c"
	.globl	xor_cipher_simple               // -- Begin function xor_cipher_simple
	.p2align	2
	.type	xor_cipher_simple,@function
xor_cipher_simple:                      // @xor_cipher_simple
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_3
// %bb.1:
	mov	x8, xzr
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x3
	ldrb	w10, [x0, x8]
	msub	x9, x9, x3, x8
	ldrb	w9, [x2, x9]
	eor	w9, w10, w9
	strb	w9, [x0, x8]
	add	x8, x8, #1
	cmp	x1, x8
	b.ne	.LBB0_2
.LBB0_3:
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
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x22, x1
	mov	x21, x2
	mov	x1, x0
	mov	x0, x4
	mov	x2, x22
	mov	x19, x4
	mov	x20, x3
	bl	memcpy
	cbz	x22, .LBB1_3
// %bb.1:
	mov	x8, xzr
.LBB1_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x20
	ldrb	w10, [x19, x8]
	msub	x9, x9, x20, x8
	ldrb	w9, [x21, x9]
	eor	w9, w10, w9
	strb	w9, [x19, x8]
	add	x8, x8, #1
	cmp	x22, x8
	b.ne	.LBB1_2
.LBB1_3:
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
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
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x22, x1
	mov	x21, x2
	mov	x1, x0
	mov	x0, x4
	mov	x2, x22
	mov	x19, x4
	mov	x20, x3
	bl	memcpy
	cbz	x22, .LBB2_3
// %bb.1:
	mov	x8, xzr
.LBB2_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x20
	ldrb	w10, [x19, x8]
	msub	x9, x9, x20, x8
	ldrb	w9, [x21, x9]
	eor	w9, w10, w9
	strb	w9, [x19, x8]
	add	x8, x8, #1
	cmp	x22, x8
	b.ne	.LBB2_2
.LBB2_3:
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
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
