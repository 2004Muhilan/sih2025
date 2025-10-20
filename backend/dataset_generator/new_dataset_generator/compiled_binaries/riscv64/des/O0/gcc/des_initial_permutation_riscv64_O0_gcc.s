	.file	"des_initial_permutation.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	IP, @object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
	.text
	.align	1
	.globl	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	zero,-24(s0)
	sw	zero,-28(s0)
	j	.L2
.L4:
	lla	a4,IP
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,64
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	srl	a5,a5,a4
	andi	a5,a5,1
	beq	a5,zero,.L3
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,-1
	slli	a5,a5,63
	srl	a5,a5,a4
	ld	a4,-24(s0)
	or	a5,a4,a5
	sd	a5,-24(s0)
.L3:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,63
	ble	a4,a5,.L4
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
