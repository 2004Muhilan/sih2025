	.file	"md5_compress.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_compress
	.type	md5_compress, @function
md5_compress:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-44(s0)
	ld	a5,-56(s0)
	lw	a5,4(a5)
	sw	a5,-40(s0)
	ld	a5,-56(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	ld	a5,-56(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L3:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	not	a5,a5
	sext.w	a5,a5
	lw	a3,-32(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-64(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	slliw	a5,a5,7
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L3
	ld	a5,-56(s0)
	lw	a5,0(a5)
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-56(s0)
	sw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,4
	lw	a3,-40(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,8
	lw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,8
	lw	a3,-36(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,12
	lw	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,12
	lw	a3,-32(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
