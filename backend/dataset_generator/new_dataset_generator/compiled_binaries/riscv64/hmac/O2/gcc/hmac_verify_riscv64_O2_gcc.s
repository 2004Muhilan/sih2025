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
	beq	a2,zero,.L4
	add	a2,a0,a2
	li	a4,0
.L3:
	lbu	a5,0(a0)
	lbu	a3,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	xor	a5,a5,a3
	or	a4,a4,a5
	bne	a2,a0,.L3
	sext.w	a0,a4
	seqz	a0,a0
	ret
.L4:
	li	a0,1
	ret
	.cfi_endproc
.LFE0:
	.size	hmac_verify, .-hmac_verify
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
