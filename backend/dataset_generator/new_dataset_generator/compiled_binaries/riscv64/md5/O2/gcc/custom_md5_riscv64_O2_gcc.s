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
	lw	t4,0(a0)
	lw	t3,4(a0)
	lw	t1,8(a0)
	lw	a7,12(a0)
	la	t5,__stack_chk_guard
	addi	a6,sp,8
	sd	ra,88(sp)
	.cfi_offset 1, -8
	ld	a5, 0(t5)
	sd	a5, 72(sp)
	li	a5, 0
	addi	t6,sp,72
	mv	a4,a6
.L2:
	lbu	a5,1(a1)
	lbu	a2,2(a1)
	lbu	t0,0(a1)
	lbu	a3,3(a1)
	slliw	a5,a5,8
	slliw	a2,a2,16
	or	a5,a5,a2
	or	a5,a5,t0
	slliw	a3,a3,24
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a4,a4,4
	addi	a1,a1,4
	bne	t6,a4,.L2
	mv	a1,a7
	mv	a2,t1
	mv	a3,t3
	mv	t0,t4
	j	.L3
.L5:
	mv	a1,a2
	mv	a3,t2
	mv	a2,a4
.L3:
	lw	a5,0(a6)
	xor	a4,a2,a1
	and	a4,a4,a3
	xor	a4,a1,a4
	addw	a5,a5,a4
	addw	a5,a5,t0
	slliw	a4,a5,7
	srliw	a5,a5,25
	sext.w	a3,a3
	or	a5,a4,a5
	addi	a6,a6,4
	addw	t2,a5,a3
	sext.w	t0,a1
	sext.w	a4,a3
	sext.w	a2,a2
	bne	t6,a6,.L5
	addw	t4,t4,a1
	addw	t3,t3,t2
	addw	t1,t1,a3
	addw	a7,a7,a2
	sw	t4,0(a0)
	sw	t3,4(a0)
	sw	t1,8(a0)
	sw	a7,12(a0)
	ld	a4, 72(sp)
	ld	a5, 0(t5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L9
	ld	ra,88(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE14:
	.size	md5_transform, .-md5_transform
	.align	1
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB15:
	.cfi_startproc
	li	a2,1732583424
	li	a3,-271732736
	li	a4,-1732583424
	li	a5,271732736
	addi	a2,a2,769
	addi	a3,a3,-1143
	addi	a4,a4,-770
	addi	a5,a5,1142
	sw	a2,0(a0)
	sw	a3,4(a0)
	sw	a4,8(a0)
	sw	a5,12(a0)
	ret
	.cfi_endproc
.LFE15:
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
