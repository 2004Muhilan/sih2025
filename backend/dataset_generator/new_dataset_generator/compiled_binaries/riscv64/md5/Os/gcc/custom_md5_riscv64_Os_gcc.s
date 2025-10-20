	.file	"custom_md5.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_transform
	.type	md5_transform, @function
md5_transform:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	lw	t5,0(a0)
	lw	t4,4(a0)
	lw	t1,8(a0)
	lw	a7,12(a0)
	la	t3,__stack_chk_guard
	addi	a6,sp,8
	sd	ra,88(sp)
	.cfi_offset 1, -8
	ld	a5, 0(t3)
	sd	a5, 72(sp)
	li	a5, 0
	addi	a2,a1,64
	mv	a4,a6
.L2:
	lbu	a5,1(a1)
	lbu	a3,2(a1)
	addi	a1,a1,4
	slliw	a5,a5,8
	slliw	a3,a3,16
	or	a5,a5,a3
	lbu	a3,-4(a1)
	or	a5,a5,a3
	lbu	a3,-1(a1)
	slliw	a3,a3,24
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a4,a4,4
	bne	a2,a1,.L2
	addi	t0,a6,64
	mv	a1,a7
	mv	a3,t1
	mv	a4,t4
	mv	t6,t5
.L3:
	lw	a5,0(a6)
	xor	a2,a3,a1
	and	a2,a2,a4
	xor	a2,a1,a2
	addw	a5,a5,a2
	addw	a5,a5,t6
	slliw	a2,a5,7
	srliw	a5,a5,25
	or	a5,a2,a5
	sext.w	a4,a4
	addi	a6,a6,4
	addw	t2,a5,a4
	sext.w	t6,a1
	sext.w	a2,a4
	sext.w	a3,a3
	bne	t0,a6,.L5
	addw	t1,t1,a4
	addw	t5,t5,a1
	addw	t4,t4,t2
	addw	a7,a7,a3
	sw	t5,0(a0)
	sw	t4,4(a0)
	sw	t1,8(a0)
	sw	a7,12(a0)
	ld	a4, 72(sp)
	ld	a5, 0(t3)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L4
	call	__stack_chk_fail@plt
.L5:
	mv	a1,a3
	mv	a4,t2
	mv	a3,a2
	j	.L3
.L4:
	ld	ra,88(sp)
	.cfi_restore 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.align	1
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB15:
	.cfi_startproc
	li	a5,1732583424
	addi	a5,a5,769
	sw	a5,0(a0)
	li	a5,-271732736
	addi	a5,a5,-1143
	sw	a5,4(a0)
	li	a5,-1732583424
	addi	a5,a5,-770
	sw	a5,8(a0)
	li	a5,271732736
	addi	a5,a5,1142
	sw	a5,12(a0)
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
