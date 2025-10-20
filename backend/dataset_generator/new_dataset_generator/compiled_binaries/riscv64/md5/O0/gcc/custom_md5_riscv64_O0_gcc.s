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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-136(s0)
	lw	a5,0(a5)
	sw	a5,-124(s0)
	ld	a5,-136(s0)
	lw	a5,4(a5)
	sw	a5,-120(s0)
	ld	a5,-136(s0)
	lw	a5,8(a5)
	sw	a5,-116(s0)
	ld	a5,-136(s0)
	lw	a5,12(a5)
	sw	a5,-112(s0)
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	j	.L2
.L3:
	lw	a5,-104(s0)
	ld	a4,-144(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	lw	a5,-104(s0)
	addi	a5,a5,1
	ld	a3,-144(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-104(s0)
	addi	a5,a5,2
	ld	a3,-144(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,16
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-104(s0)
	addi	a5,a5,3
	ld	a3,-144(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,24
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sext.w	a4,a5
	lw	a5,-108(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-72(a5)
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sw	a5,-108(s0)
	lw	a5,-104(s0)
	addiw	a5,a5,4
	sw	a5,-104(s0)
.L2:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L3
	sw	zero,-100(s0)
	j	.L4
.L5:
	lw	a5,-120(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-120(s0)
	not	a5,a5
	sext.w	a5,a5
	lw	a3,-112(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-96(s0)
	lw	a5,-112(s0)
	sw	a5,-92(s0)
	lw	a5,-116(s0)
	sw	a5,-112(s0)
	lw	a5,-120(s0)
	sw	a5,-116(s0)
	lw	a5,-124(s0)
	mv	a4,a5
	lw	a5,-96(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-100(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-72(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	slliw	a4,a5,7
	srliw	a5,a5,25
	or	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-120(s0)
	addw	a5,a4,a5
	sw	a5,-120(s0)
	lw	a5,-92(s0)
	sw	a5,-124(s0)
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
.L4:
	lw	a5,-100(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L5
	ld	a5,-136(s0)
	lw	a5,0(a5)
	lw	a4,-124(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-136(s0)
	sw	a4,0(a5)
	ld	a5,-136(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-136(s0)
	addi	a5,a5,4
	lw	a3,-120(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-136(s0)
	addi	a5,a5,8
	lw	a4,0(a5)
	ld	a5,-136(s0)
	addi	a5,a5,8
	lw	a3,-116(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-136(s0)
	addi	a5,a5,12
	lw	a4,0(a5)
	ld	a5,-136(s0)
	addi	a5,a5,12
	lw	a3,-112(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	md5_transform, .-md5_transform
	.align	1
	.globl	md5_init
	.type	md5_init, @function
md5_init:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	li	a4,1732583424
	addi	a4,a4,769
	sw	a4,0(a5)
	ld	a5,-24(s0)
	li	a4,-271732736
	addi	a4,a4,-1143
	sw	a4,4(a5)
	ld	a5,-24(s0)
	li	a4,-1732583424
	addi	a4,a4,-770
	sw	a4,8(a5)
	ld	a5,-24(s0)
	li	a4,271732736
	addi	a4,a4,1142
	sw	a4,12(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	md5_init, .-md5_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
