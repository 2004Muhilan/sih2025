	.file	"rsa_miller_rabin.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_miller_rabin
	.type	rsa_miller_rabin, @function
rsa_miller_rabin:
.LFB0:
	.cfi_startproc
	li	a3,1
	mv	a5,a0
	bleu	a0,a3,.L3
	addi	a4,a0,-2
	li	a0,1
	bleu	a4,a3,.L2
	andi	a0,a5,1
	ret
.L3:
	li	a0,0
.L2:
	ret
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
