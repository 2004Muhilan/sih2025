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
.L5:
	beq	a0,zero,.L7
	lw	a5,0(a0)
	beq	a5,a1,.L8
	ble	a5,a1,.L4
	ld	a0,8(a0)
	j	.L5
.L4:
	ld	a0,16(a0)
	j	.L5
.L7:
	li	a0,0
	ret
.L8:
	li	a0,1
	ret
	.cfi_endproc
.LFE0:
	.size	binary_tree_search, .-binary_tree_search
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
