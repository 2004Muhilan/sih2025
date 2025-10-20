	.file	"xor_multi_key.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	xor_multi_key
	.type	xor_multi_key, @function
xor_multi_key:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sd	a4,-72(s0)
	sd	zero,-24(s0)
	j	.L2
.L3:
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	ld	a4,-24(s0)
	ld	a5,-72(s0)
	remu	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a2,-40(s0)
	ld	a5,-24(s0)
	add	a5,a2,a5
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	ld	a4,-24(s0)
	ld	a5,-72(s0)
	remu	a5,a4,a5
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a2,-40(s0)
	ld	a5,-24(s0)
	add	a5,a2,a5
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L2:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L3
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	xor_multi_key, .-xor_multi_key
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
