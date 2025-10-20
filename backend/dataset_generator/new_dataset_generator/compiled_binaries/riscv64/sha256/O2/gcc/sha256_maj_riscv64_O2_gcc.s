	.file	"sha256_maj.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha256_maj
	.type	sha256_maj, @function
sha256_maj:
.LFB0:
	.cfi_startproc
	xor	a5,a1,a2
	and	a0,a5,a0
	and	a1,a1,a2
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_maj, .-sha256_maj
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
