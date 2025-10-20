	.file	"sha256_ch.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha256_ch
	.type	sha256_ch, @function
sha256_ch:
.LFB0:
	.cfi_startproc
	not	a5,a0
	and	a5,a5,a2
	and	a0,a0,a1
	xor	a0,a5,a0
	ret
	.cfi_endproc
.LFE0:
	.size	sha256_ch, .-sha256_ch
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
