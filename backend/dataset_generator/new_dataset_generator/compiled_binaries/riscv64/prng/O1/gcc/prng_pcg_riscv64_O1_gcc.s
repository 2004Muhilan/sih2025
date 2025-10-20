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
	ld	a4,0(a0)
	li	a5,1445888
	addi	a5,a5,1149
	slli	a5,a5,14
	addi	a5,a5,725
	slli	a5,a5,13
	addi	a5,a5,-1749
	slli	a5,a5,15
	addi	a5,a5,-211
	mul	a5,a4,a5
	addi	a5,a5,1
	sd	a5,0(a0)
	srli	a5,a4,18
	xor	a5,a5,a4
	srli	a5,a5,27
	srli	a4,a4,59
	srlw	a0,a5,a4
	negw	a4,a4
	sllw	a5,a5,a4
	or	a0,a0,a5
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE0:
	.size	prng_pcg, .-prng_pcg
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
