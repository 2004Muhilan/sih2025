	.file	"hmac_verify.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	hmac_verify
	.type	hmac_verify, @function
hmac_verify:
.LFB0:
	.cfi_startproc
	li	a5,0
	li	a4,0
.L2:
	bne	a5,a2,.L3
	seqz	a0,a4
	ret
.L3:
	add	a3,a0,a5
	add	a6,a1,a5
	lbu	a3,0(a3)
	lbu	a6,0(a6)
	addi	a5,a5,1
	xor	a3,a3,a6
	or	a4,a4,a3
	j	.L2
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
