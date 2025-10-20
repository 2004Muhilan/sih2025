	.file	"prng_pcg.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	prng_pcg
	.type	prng_pcg, @function
prng_pcg:
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
	ld	a5,0(a5)
	sd	a5,-24(s0)
	ld	a4,-24(s0)
	lla	a5,.LC0
	ld	a5,0(a5)
	mul	a5,a4,a5
	addi	a4,a5,1
	ld	a5,-40(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	srli	a4,a5,18
	ld	a5,-24(s0)
	xor	a5,a4,a5
	srli	a5,a5,27
	sw	a5,-32(s0)
	ld	a5,-24(s0)
	srli	a5,a5,59
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	srlw	a4,a5,a4
	lw	a3,-28(s0)
	negw	a3,a3
	andi	a3,a3,31
	sllw	a5,a5,a3
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	prng_pcg, .-prng_pcg
	.section	.rodata
	.align	3
.LC0:
	.dword	6364136223846793005
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
