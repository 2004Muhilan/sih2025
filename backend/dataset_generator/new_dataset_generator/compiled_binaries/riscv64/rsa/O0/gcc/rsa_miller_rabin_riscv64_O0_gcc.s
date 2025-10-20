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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	ld	a4,-40(s0)
	li	a5,1
	bgtu	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	ld	a4,-40(s0)
	li	a5,2
	beq	a4,a5,.L4
	ld	a4,-40(s0)
	li	a5,3
	bne	a4,a5,.L5
.L4:
	li	a5,1
	j	.L3
.L5:
	ld	a5,-40(s0)
	andi	a5,a5,1
	bne	a5,zero,.L6
	li	a5,0
	j	.L3
.L6:
	ld	a5,-40(s0)
	addi	a5,a5,-1
	sd	a5,-24(s0)
	j	.L7
.L8:
	ld	a5,-24(s0)
	srli	a5,a5,1
	sd	a5,-24(s0)
.L7:
	ld	a5,-24(s0)
	andi	a5,a5,1
	beq	a5,zero,.L8
	li	a5,1
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rsa_miller_rabin, .-rsa_miller_rabin
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
