	.file	"binary_tree_search.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	binary_tree_search
	.type	binary_tree_search, @function
binary_tree_search:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	ld	a5,-24(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,a4,.L4
	li	a5,1
	j	.L3
.L4:
	ld	a5,-24(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bge	a5,a4,.L5
	ld	a5,-24(s0)
	ld	a5,8(a5)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	binary_tree_search
	mv	a5,a0
	j	.L3
.L5:
	ld	a5,-24(s0)
	ld	a5,16(a5)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	binary_tree_search
	mv	a5,a0
.L3:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
