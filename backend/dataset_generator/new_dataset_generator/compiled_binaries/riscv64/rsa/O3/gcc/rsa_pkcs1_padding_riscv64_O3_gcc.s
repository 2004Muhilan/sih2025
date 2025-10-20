	.file	"rsa_pkcs1_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 1, -8
	li	a5,2
	sub	s1,a3,a1
	sb	zero,0(a2)
	sb	a5,1(a2)
	addi	s3,s1,-1
	mv	s2,a1
	mv	s0,a2
	mv	s4,a0
	bleu	s3,a5,.L2
	addi	a2,s1,-3
	li	a1,255
	addi	a0,s0,2
	call	memset@plt
.L2:
	add	s3,s0,s3
	sb	zero,0(s3)
	add	a0,s0,s1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s3,8(sp)
	.cfi_restore 19
	mv	a2,s2
	mv	a1,s4
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s4,0(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	tail	memcpy@plt
	.cfi_endproc
.LFE14:
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
