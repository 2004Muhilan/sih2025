	.file	"linked_list_insert.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	linked_list_insert
	.type	linked_list_insert, @function
linked_list_insert:
.LFB0:
	.cfi_startproc
	ld	a5,0(a0)
.L8:
	beq	a5,zero,.L1
	ld	a5,8(a5)
	j	.L8
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	linked_list_insert, .-linked_list_insert
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
