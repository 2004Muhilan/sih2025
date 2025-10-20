	.file	"sha256_sigma.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha256_sigma0
	.type	sha256_sigma0, @function
sha256_sigma0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a4,a5,2
	slliw	a5,a5,30
	or	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	srliw	a4,a5,13
	slliw	a5,a5,19
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	slliw	a4,a5,10
	srliw	a5,a5,22
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sha256_sigma0, .-sha256_sigma0
	.align	1
	.globl	sha256_sigma1
	.type	sha256_sigma1, @function
sha256_sigma1:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a4,a5,6
	slliw	a5,a5,26
	or	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	srliw	a4,a5,11
	slliw	a5,a5,21
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	slliw	a4,a5,7
	srliw	a5,a5,25
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
