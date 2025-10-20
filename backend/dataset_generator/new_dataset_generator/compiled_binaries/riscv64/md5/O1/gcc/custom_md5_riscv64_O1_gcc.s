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
	sd	ra,88(sp)
	.cfi_offset 1, -8
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 72(sp)
	li	a4, 0
	lw	t4,0(a0)
	lw	t3,4(a0)
	lw	t1,8(a0)
	lw	a7,12(a0)
	addi	a6,sp,8
	addi	t5,sp,72
	mv	a4,a6
.L2:
	lbu	a5,1(a1)
	slliw	a5,a5,8
	lbu	a3,2(a1)
	slliw	a3,a3,16
	or	a5,a5,a3
	lbu	a3,0(a1)
	or	a5,a5,a3
	lbu	a3,3(a1)
	slliw	a3,a3,24
	or	a5,a5,a3
	sw	a5,0(a4)
	addi	a1,a1,4
	addi	a4,a4,4
	bne	a4,t5,.L2
	mv	a1,a7
	mv	a2,t1
	mv	a3,t3
	mv	t6,t4
	j	.L3
.L5:
	mv	a1,a2
	mv	a2,a4
	mv	a3,t0
.L3:
	xor	a4,a2,a1
	and	a4,a4,a3
	xor	a4,a1,a4
	lw	a5,0(a6)
	addw	a5,a5,a4
	addw	a5,a5,t6
	slliw	a4,a5,7
	srliw	a5,a5,25
	or	a5,a4,a5
	sext.w	a3,a3
	addw	a5,a5,a3
	sext.w	t0,a5
	addi	a6,a6,4
	sext.w	t6,a1
	sext.w	a4,a3
	sext.w	a2,a2
	bne	a6,t5,.L5
	addw	t4,t4,a1
	sw	t4,0(a0)
	addw	t3,t3,a5
	sw	t3,4(a0)
	addw	t1,t1,a3
	sw	t1,8(a0)
	addw	a7,a7,a2
	sw	a7,12(a0)
	la	a5,__stack_chk_guard
	ld	a4, 72(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L8
	ld	ra,88(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L8:
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
