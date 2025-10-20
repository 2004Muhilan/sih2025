	.file	"rsa_pkcs1_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	li	a4,2
	sub	a3,a3,a1
	sb	a4,1(a2)
	mv	a5,a2
	sb	zero,0(a2)
	addi	a4,a3,-1
	li	a2,2
	li	a6,-1
.L2:
	bgtu	a4,a2,.L3
	add	a4,a5,a4
	mv	a2,a1
	sb	zero,0(a4)
	mv	a1,a0
	add	a0,a5,a3
	tail	memcpy@plt
.L3:
	add	a7,a5,a2
	sb	a6,0(a7)
	addi	a2,a2,1
	j	.L2
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
