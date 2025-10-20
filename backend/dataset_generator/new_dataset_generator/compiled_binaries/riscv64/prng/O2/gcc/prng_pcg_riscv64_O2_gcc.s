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
	li	a5,1445888
	addi	a5,a5,1149
	slli	a5,a5,14
	addi	a5,a5,725
	slli	a5,a5,13
	ld	a1,0(a0)
	addi	a5,a5,-1749
	slli	a5,a5,15
	addi	a5,a5,-211
	mul	a5,a1,a5
	srli	a4,a1,18
	srli	a3,a1,59
	xor	a4,a4,a1
	srli	a4,a4,27
	negw	a1,a3
	srlw	a3,a4,a3
	sllw	a4,a4,a1
	mv	a2,a0
	or	a3,a3,a4
	addi	a5,a5,1
	sext.w	a0,a3
	sd	a5,0(a2)
	ret
	.cfi_endproc
.LFE0:
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
