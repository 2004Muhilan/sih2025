	.file	"rsa_crt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_crt_decrypt
	.type	rsa_crt_decrypt, @function
rsa_crt_decrypt:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	ld	a5,-72(s0)
	addi	a5,a5,-1
	ld	a4,-64(s0)
	remu	a5,a4,a5
	sd	a5,-48(s0)
	ld	a5,-80(s0)
	addi	a5,a5,-1
	ld	a4,-64(s0)
	remu	a5,a4,a5
	sd	a5,-40(s0)
	ld	a4,-56(s0)
	ld	a5,-72(s0)
	remu	a5,a4,a5
	sd	a5,-32(s0)
	ld	a4,-56(s0)
	ld	a5,-80(s0)
	remu	a5,a4,a5
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-80(s0)
	mul	a4,a4,a5
	ld	a3,-24(s0)
	ld	a5,-72(s0)
	mul	a5,a3,a5
	add	a4,a4,a5
	ld	a3,-72(s0)
	ld	a5,-80(s0)
	mul	a5,a3,a5
	remu	a5,a4,a5
	mv	a0,a5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	rsa_crt_decrypt, .-rsa_crt_decrypt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
