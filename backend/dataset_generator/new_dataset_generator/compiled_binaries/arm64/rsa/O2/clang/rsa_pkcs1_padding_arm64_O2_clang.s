	.text
	.file	"rsa_pkcs1_padding.c"
	.globl	rsa_pkcs1_pad                   // -- Begin function rsa_pkcs1_pad
	.p2align	2
	.type	rsa_pkcs1_pad,@function
rsa_pkcs1_pad:                          // @rsa_pkcs1_pad
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
	mvn	x8, x1
	mov	x22, x3
	mov	x19, x2
	add	x23, x8, x3
	mov	x20, x1
	mov	x21, x0
	mov	w8, #512                        // =0x200
	cmp	x23, #3
	strh	w8, [x2]
	b.lo	.LBB0_2
// %bb.1:
	sub	x8, x22, x20
	add	x0, x19, #2
	mov	w1, #255                        // =0xff
	sub	x2, x8, #3
	bl	memset
.LBB0_2:
	add	x8, x19, x22
	mov	x1, x21
	mov	x2, x20
	sub	x0, x8, x20
	strb	wzr, [x19, x23]
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
	b	memcpy
.Lfunc_end0:
	.size	rsa_pkcs1_pad, .Lfunc_end0-rsa_pkcs1_pad
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
