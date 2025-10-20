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
	beq	a0,zero,.L4
	mv	a5,a0
	lw	a4,0(a0)
	li	a0,1
	beq	a4,a1,.L7
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	ble	a4,a1,.L3
	ld	a0,8(a5)
	call	binary_tree_search
.L2:
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	ld	a0,16(a5)
	call	binary_tree_search
	j	.L2
.L4:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	li	a0,0
	ret
.L7:
	ret
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
