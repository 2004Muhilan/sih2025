	.file	"custom_sha1.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	sha1_transform
	.type	sha1_transform, @function
sha1_transform:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-416
	.cfi_def_cfa_offset 416
	sd	ra,408(sp)
	sd	s0,400(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,416
	.cfi_def_cfa 8, 0
	sd	a0,-408(s0)
	sd	a1,-416(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-408(s0)
	lw	a5,0(a5)
	sw	a5,-388(s0)
	ld	a5,-408(s0)
	lw	a5,4(a5)
	sw	a5,-384(s0)
	ld	a5,-408(s0)
	lw	a5,8(a5)
	sw	a5,-380(s0)
	ld	a5,-408(s0)
	lw	a5,12(a5)
	sw	a5,-376(s0)
	ld	a5,-408(s0)
	lw	a5,16(a5)
	sw	a5,-372(s0)
	sw	zero,-368(s0)
	j	.L2
.L3:
	lw	a5,-368(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-416(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,24
	sext.w	a4,a5
	lw	a5,-368(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	addi	a5,a5,1
	ld	a3,-416(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,16
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-368(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	addi	a5,a5,2
	ld	a3,-416(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-368(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	addi	a5,a5,3
	ld	a3,-416(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sext.w	a4,a5
	lw	a5,-368(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-328(a5)
	lw	a5,-368(s0)
	addiw	a5,a5,1
	sw	a5,-368(s0)
.L2:
	lw	a5,-368(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L3
	li	a5,16
	sw	a5,-364(s0)
	j	.L4
.L5:
	lw	a5,-364(s0)
	addiw	a5,a5,-3
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-328(a5)
	lw	a5,-364(s0)
	addiw	a5,a5,-8
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-328(a5)
	xor	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-364(s0)
	addiw	a5,a5,-14
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-328(a5)
	xor	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-364(s0)
	addiw	a5,a5,-16
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-328(a5)
	xor	a5,a4,a5
	sext.w	a5,a5
	slliw	a4,a5,1
	srliw	a5,a5,31
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-364(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-328(a5)
	lw	a5,-364(s0)
	addiw	a5,a5,1
	sw	a5,-364(s0)
.L4:
	lw	a5,-364(s0)
	sext.w	a4,a5
	li	a5,79
	ble	a4,a5,.L5
	sw	zero,-360(s0)
	j	.L6
.L11:
	lw	a5,-360(s0)
	sext.w	a4,a5
	li	a5,19
	bgt	a4,a5,.L7
	lw	a5,-384(s0)
	mv	a4,a5
	lw	a5,-380(s0)
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-384(s0)
	not	a5,a5
	sext.w	a5,a5
	lw	a3,-376(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-356(s0)
	li	a5,1518501888
	addi	a5,a5,-1639
	sw	a5,-352(s0)
	j	.L8
.L7:
	lw	a5,-360(s0)
	sext.w	a4,a5
	li	a5,39
	bgt	a4,a5,.L9
	lw	a5,-384(s0)
	mv	a4,a5
	lw	a5,-380(s0)
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-376(s0)
	xor	a5,a4,a5
	sw	a5,-356(s0)
	li	a5,1859776512
	addi	a5,a5,-1119
	sw	a5,-352(s0)
	j	.L8
.L9:
	lw	a5,-360(s0)
	sext.w	a4,a5
	li	a5,59
	bgt	a4,a5,.L10
	lw	a5,-380(s0)
	mv	a4,a5
	lw	a5,-376(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-384(s0)
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-380(s0)
	mv	a3,a5
	lw	a5,-376(s0)
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-356(s0)
	li	a5,-1894006784
	addi	a5,a5,-804
	sw	a5,-352(s0)
	j	.L8
.L10:
	lw	a5,-384(s0)
	mv	a4,a5
	lw	a5,-380(s0)
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-376(s0)
	xor	a5,a4,a5
	sw	a5,-356(s0)
	li	a5,-899497984
	addi	a5,a5,470
	sw	a5,-352(s0)
.L8:
	lw	a5,-388(s0)
	slliw	a4,a5,5
	srliw	a5,a5,27
	or	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-356(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-372(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-352(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-360(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-328(a5)
	addw	a5,a4,a5
	sw	a5,-348(s0)
	lw	a5,-376(s0)
	sw	a5,-372(s0)
	lw	a5,-380(s0)
	sw	a5,-376(s0)
	lw	a5,-384(s0)
	srliw	a4,a5,2
	slliw	a5,a5,30
	or	a5,a4,a5
	sw	a5,-380(s0)
	lw	a5,-388(s0)
	sw	a5,-384(s0)
	lw	a5,-348(s0)
	sw	a5,-388(s0)
	lw	a5,-360(s0)
	addiw	a5,a5,1
	sw	a5,-360(s0)
.L6:
	lw	a5,-360(s0)
	sext.w	a4,a5
	li	a5,79
	ble	a4,a5,.L11
	ld	a5,-408(s0)
	lw	a5,0(a5)
	lw	a4,-388(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-408(s0)
	sw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,4
	lw	a3,-384(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,8
	lw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,8
	lw	a3,-380(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,12
	lw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,12
	lw	a3,-376(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,16
	lw	a4,0(a5)
	ld	a5,-408(s0)
	addi	a5,a5,16
	lw	a3,-372(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	ld	ra,408(sp)
	.cfi_restore 1
	ld	s0,400(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 416
	addi	sp,sp,416
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sha1_transform, .-sha1_transform
	.align	1
	.globl	sha1_init
	.type	sha1_init, @function
sha1_init:
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
	ld	a5,-24(s0)
	li	a4,-1009590272
	addi	a4,a4,496
	sw	a4,16(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	sha1_init, .-sha1_init
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
