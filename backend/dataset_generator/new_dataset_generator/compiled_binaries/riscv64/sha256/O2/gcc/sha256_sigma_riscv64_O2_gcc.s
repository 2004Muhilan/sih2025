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
	slliw	a2,a0,30
	slliw	a4,a0,19
	srliw	a5,a0,2
	srliw	a3,a0,13
	or	a3,a3,a4
	or	a5,a5,a2
	slliw	a4,a0,10
	srliw	a0,a0,22
	xor	a5,a5,a3
	or	a4,a4,a0
	xor	a0,a5,a4
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_sigma0, .-sha256_sigma0
	.align	1
	.globl	sha256_sigma1
	.type	sha256_sigma1, @function
sha256_sigma1:
.LFB1:
	.cfi_startproc
	slliw	a2,a0,26
	slliw	a4,a0,21
	srliw	a5,a0,6
	srliw	a3,a0,11
	or	a3,a3,a4
	or	a5,a5,a2
	slliw	a4,a0,7
	srliw	a0,a0,25
	xor	a5,a5,a3
	or	a4,a4,a0
	xor	a0,a5,a4
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE1:
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
