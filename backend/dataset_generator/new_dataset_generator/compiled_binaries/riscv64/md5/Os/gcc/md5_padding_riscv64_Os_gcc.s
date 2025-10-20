	.file	"md5_padding.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_padding
	.type	md5_padding, @function
md5_padding:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s1,40(sp)
	sd	s4,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	mv	s1,a2
	la	s4,__stack_chk_guard
	mv	a2,a1
	sd	s0,48(sp)
	sd	s2,32(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	mv	s0,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	mv	a1,a0
	li	s2,55
	mv	a0,s1
	sd	ra,56(sp)
	sd	s3,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	sub	s2,s2,s0
	call	memcpy@plt
	add	a5,s1,s0
	li	a4,-128
	addi	s3,s0,1
	andi	s2,s2,63
	sb	a4,0(a5)
	mv	a2,s2
	li	a1,0
	add	a0,s1,s3
	call	memset@plt
	add	a0,s3,s2
	slli	s0,s0,3
	li	a2,8
	mv	a1,sp
	add	a0,s1,a0
	sd	s0,0(sp)
	call	memcpy@plt
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L2
	call	__stack_chk_fail@plt
.L2:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	md5_padding, .-md5_padding
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
