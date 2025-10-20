	.file	"md5_compress.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	md5_compress
	.type	md5_compress, @function
md5_compress:
.LFB0:
	.cfi_startproc
	lw	t0,0(a0)
	lw	t6,4(a0)
	lw	t5,8(a0)
	lw	t4,12(a0)
	mv	a6,a1
	addi	t3,a1,64
	mv	a1,t4
	mv	a2,t5
	mv	a4,t6
	mv	a7,t0
	j	.L2
.L3:
	mv	a1,a2
	mv	a2,a3
	mv	a4,t1
.L2:
	xor	a3,a2,a1
	and	a3,a3,a4
	xor	a3,a1,a3
	lw	a5,0(a6)
	addw	a5,a5,a3
	addw	a5,a5,a7
	slliw	a5,a5,7
	sext.w	a4,a4
	addw	a5,a5,a4
	sext.w	t1,a5
	addi	a6,a6,4
	sext.w	a7,a1
	sext.w	a3,a4
	sext.w	a2,a2
	bne	a6,t3,.L3
	addw	t0,t0,a1
	sw	t0,0(a0)
	addw	t6,t6,a5
	sw	t6,4(a0)
	addw	t5,t5,a4
	sw	t5,8(a0)
	addw	t4,t4,a2
	sw	t4,12(a0)
	ret
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
