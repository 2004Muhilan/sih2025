	.file	"custom_des.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_encrypt
	.type	des_encrypt, @function
des_encrypt:
.LFB14:
	.cfi_startproc
	li	a5,56
	li	a4,0
	li	a6,-8
.L2:
	lbu	a3,0(a0)
	sll	a3,a3,a5
	or	a4,a4,a3
	addi	a0,a0,1
	addiw	a5,a5,-8
	bne	a5,a6,.L2
	li	a0,0
	li	a7,16
.L3:
	srli	a5,a4,32
	xor	a5,a5,a4
	sext.w	a5,a5
	slli	a3,a4,32
	sraiw	a6,a0,31
	srliw	a6,a6,29
	addw	a4,a6,a0
	andi	a4,a4,7
	subw	a4,a4,a6
	add	a4,a1,a4
	lbu	a4,0(a4)
	xor	a5,a5,a4
	slli	a5,a5,32
	srli	a5,a5,32
	or	a4,a5,a3
	addiw	a0,a0,1
	bne	a0,a7,.L3
	li	a5,56
	li	a1,-8
.L4:
	srl	a3,a4,a5
	sb	a3,0(a2)
	addiw	a5,a5,-8
	addi	a2,a2,1
	bne	a5,a1,.L4
	ret
	.cfi_endproc
.LFE14:
	.size	des_encrypt, .-des_encrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
