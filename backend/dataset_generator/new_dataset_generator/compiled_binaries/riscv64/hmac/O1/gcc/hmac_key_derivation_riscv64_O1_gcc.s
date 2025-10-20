	.file	"hmac_key_derivation.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_key_derive
	.type	hmac_key_derive, @function
hmac_key_derive:
.LFB0:
	.cfi_startproc
	li	a5,0
	li	t3,32
.L2:
	add	t1,a4,a5
	remu	a6,a5,a1
	add	a6,a0,a6
	remu	a7,a5,a3
	add	a7,a2,a7
	lbu	a6,0(a6)
	lbu	a7,0(a7)
	xor	a6,a6,a7
	sb	a6,0(t1)
	addi	a5,a5,1
	bne	a5,t3,.L2
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_key_derive, .-hmac_key_derive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
