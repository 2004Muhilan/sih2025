	.file	"des_feistel_function.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_feistel
	.type	des_feistel, @function
des_feistel:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	sd	zero,-24(s0)
	sw	zero,-32(s0)
	j	.L2
.L3:
	li	a5,32
	lw	a4,-32(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-36(s0)
	srlw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	li	a4,47
	lw	a3,-32(s0)
	subw	a4,a4,a3
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,-24(s0)
	or	a5,a4,a5
	sd	a5,-24(s0)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,47
	ble	a4,a5,.L3
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	xor	a5,a4,a5
	sd	a5,-24(s0)
	sw	zero,-28(s0)
	lw	a5,-28(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
