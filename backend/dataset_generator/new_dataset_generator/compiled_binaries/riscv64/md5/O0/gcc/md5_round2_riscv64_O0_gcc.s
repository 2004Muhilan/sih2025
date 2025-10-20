	.file	"md5_round2.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_round2
	.type	md5_round2, @function
md5_round2:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a7,a1
	mv	a0,a2
	mv	a1,a3
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,a7
	sw	a5,-28(s0)
	mv	a5,a0
	sw	a5,-32(s0)
	mv	a5,a1
	sw	a5,-36(s0)
	mv	a5,a2
	sw	a5,-40(s0)
	mv	a5,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	ld	a5,-24(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-36(s0)
	and	a5,a3,a5
	sext.w	a3,a5
	lw	a5,-36(s0)
	not	a5,a5
	sext.w	a5,a5
	lw	a2,-32(s0)
	and	a5,a2,a5
	sext.w	a5,a5
	or	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-48(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-44(s0)
	sllw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	md5_round2, .-md5_round2
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
