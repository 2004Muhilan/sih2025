	.file	"des3_triple.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des3_encrypt
	.type	des3_encrypt, @function
des3_encrypt:
.LFB0:
	.cfi_startproc
	xor	a2,a2,a3
	xor	a2,a2,a1
	xor	a0,a2,a0
	ret
	.cfi_endproc
.LFE0:
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
