	.file	"prng_seed.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	prng_seed
	.type	prng_seed, @function
prng_seed:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,1812434944
	addi	a5,a5,-1691
	xor	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,4(a5)
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,821329920
	addi	a5,a5,-624
	xor	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,1597333504
	addi	a5,a5,1173
	xor	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,12(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	prng_seed, .-prng_seed
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
