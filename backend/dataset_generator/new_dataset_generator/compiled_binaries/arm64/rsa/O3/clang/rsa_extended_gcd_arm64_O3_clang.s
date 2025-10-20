	.text
	.file	"rsa_extended_gcd.c"
	.globl	rsa_extended_gcd                // -- Begin function rsa_extended_gcd
	.p2align	2
	.type	rsa_extended_gcd,@function
rsa_extended_gcd:                       // @rsa_extended_gcd
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
	cbz	x8, .LBB0_2
// %bb.1:
	sdiv	x21, x0, x8
	add	x2, x29, #24
	add	x3, sp, #8
	mov	x1, x8
	msub	x0, x21, x8, x0
	bl	rsa_extended_gcd
	ldr	x8, [x29, #24]
	ldr	x9, [sp, #8]
	msub	x9, x8, x21, x9
	b	.LBB0_3
.LBB0_2:
	mov	x9, xzr
	mov	w8, #1                          // =0x1
.LBB0_3:
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
.Lfunc_end0:
	.size	rsa_extended_gcd, .Lfunc_end0-rsa_extended_gcd
	.cfi_endproc
                                        // -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
