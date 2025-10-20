	.text
	.file	"xor_rotating.c"
	.globl	xor_cipher_rotating             // -- Begin function xor_cipher_rotating
	.p2align	2
	.type	xor_cipher_rotating,@function
xor_cipher_rotating:                    // @xor_cipher_rotating
	.cfi_startproc
// %bb.0:
	cbz	x1, .LBB0_3
// %bb.1:
	mov	x8, xzr
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x3
	ldrb	w11, [x0, x8]
	msub	x9, x9, x3, x8
	ldrb	w10, [x2, x9]
	lsr	w12, w10, #7
	eor	w11, w11, w10
	strb	w11, [x0, x8]
	add	x8, x8, #1
	orr	w10, w12, w10, lsl #1
	cmp	x1, x8
	strb	w10, [x2, x9]
	b.ne	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	xor_cipher_rotating, .Lfunc_end0-xor_cipher_rotating
	.cfi_endproc
                                        // -- End function
	.globl	xor_encrypt_rotating            // -- Begin function xor_encrypt_rotating
	.p2align	2
	.type	xor_encrypt_rotating,@function
xor_encrypt_rotating:                   // @xor_encrypt_rotating
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, #256]            // 16-byte Folded Spill
	str	x28, [sp, #272]                 // 8-byte Folded Spill
	stp	x22, x21, [sp, #288]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            // 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w28, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	x21, x1
	mov	x22, x2
	mov	x1, x0
	mov	x0, x4
	mov	x2, x21
	mov	x19, x4
	mov	x20, x3
	bl	memcpy
	mov	x0, sp
	mov	x1, x22
	mov	x2, x20
	mov	x22, sp
	bl	memcpy
	cbz	x21, .LBB1_3
// %bb.1:
	mov	x8, xzr
.LBB1_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x20
	ldrb	w11, [x19, x8]
	msub	x9, x9, x20, x8
	ldrb	w10, [x22, x9]
	lsr	w12, w10, #7
	eor	w11, w11, w10
	strb	w11, [x19, x8]
	add	x8, x8, #1
	orr	w10, w12, w10, lsl #1
	cmp	x21, x8
	strb	w10, [x22, x9]
	b.ne	.LBB1_2
.LBB1_3:
	.cfi_def_cfa wsp, 320
	ldp	x20, x19, [sp, #304]            // 16-byte Folded Reload
	ldr	x28, [sp, #272]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #288]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #256]            // 16-byte Folded Reload
	add	sp, sp, #320
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	xor_encrypt_rotating, .Lfunc_end1-xor_encrypt_rotating
	.cfi_endproc
                                        // -- End function
	.globl	xor_decrypt_rotating            // -- Begin function xor_decrypt_rotating
	.p2align	2
	.type	xor_decrypt_rotating,@function
xor_decrypt_rotating:                   // @xor_decrypt_rotating
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #320
	.cfi_def_cfa_offset 320
	stp	x29, x30, [sp, #256]            // 16-byte Folded Spill
	str	x28, [sp, #272]                 // 8-byte Folded Spill
	stp	x22, x21, [sp, #288]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            // 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w28, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	mov	x21, x1
	mov	x22, x2
	mov	x1, x0
	mov	x0, x4
	mov	x2, x21
	mov	x19, x4
	mov	x20, x3
	bl	memcpy
	mov	x0, sp
	mov	x1, x22
	mov	x2, x20
	mov	x22, sp
	bl	memcpy
	cbz	x21, .LBB2_3
// %bb.1:
	mov	x8, xzr
.LBB2_2:                                // =>This Inner Loop Header: Depth=1
	udiv	x9, x8, x20
	ldrb	w11, [x19, x8]
	msub	x9, x9, x20, x8
	ldrb	w10, [x22, x9]
	lsr	w12, w10, #7
	eor	w11, w11, w10
	strb	w11, [x19, x8]
	add	x8, x8, #1
	orr	w10, w12, w10, lsl #1
	cmp	x21, x8
	strb	w10, [x22, x9]
	b.ne	.LBB2_2
.LBB2_3:
	.cfi_def_cfa wsp, 320
	ldp	x20, x19, [sp, #304]            // 16-byte Folded Reload
	ldr	x28, [sp, #272]                 // 8-byte Folded Reload
	ldp	x22, x21, [sp, #288]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #256]            // 16-byte Folded Reload
	add	sp, sp, #320
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	xor_decrypt_rotating, .Lfunc_end2-xor_decrypt_rotating
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
