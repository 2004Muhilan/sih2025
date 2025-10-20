	.file	"aes_shift_rows.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	aes_shift_rows
	.type	aes_shift_rows, @function
aes_shift_rows:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	lbu	a5,1(a5)
	sb	a5,-17(s0)
	ld	a5,-40(s0)
	addi	a5,a5,1
	ld	a4,-40(s0)
	lbu	a4,5(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,5
	ld	a4,-40(s0)
	lbu	a4,9(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,9
	ld	a4,-40(s0)
	lbu	a4,13(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,13
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,2(a5)
	sb	a5,-17(s0)
	ld	a5,-40(s0)
	addi	a5,a5,2
	ld	a4,-40(s0)
	lbu	a4,10(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,10
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,6(a5)
	sb	a5,-17(s0)
	ld	a5,-40(s0)
	addi	a5,a5,6
	ld	a4,-40(s0)
	lbu	a4,14(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,14
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,15(a5)
	sb	a5,-17(s0)
	ld	a5,-40(s0)
	addi	a5,a5,15
	ld	a4,-40(s0)
	lbu	a4,11(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,11
	ld	a4,-40(s0)
	lbu	a4,7(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,7
	ld	a4,-40(s0)
	lbu	a4,3(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,3
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	aes_shift_rows, .-aes_shift_rows
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
