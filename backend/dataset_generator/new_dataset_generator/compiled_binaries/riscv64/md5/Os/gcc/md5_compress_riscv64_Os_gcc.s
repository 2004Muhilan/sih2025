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
	lw	t4,0(a0)
	lw	t3,4(a0)
	lw	t1,8(a0)
	lw	a7,12(a0)
	addi	t6,a1,64
	mv	a3,t1
	mv	a2,a7
	mv	a4,t3
	mv	t5,t4
.L2:
	lw	a5,0(a1)
	xor	a6,a3,a2
	and	a6,a6,a4
	xor	a6,a2,a6
	addw	a5,a5,a6
	addw	a5,a5,t5
	sext.w	a4,a4
	slliw	a5,a5,7
	addi	a1,a1,4
	addw	t0,a5,a4
	sext.w	t5,a2
	sext.w	a6,a4
	sext.w	a3,a3
	bne	t6,a1,.L3
	addw	t4,t4,a2
	addw	t3,t3,t0
	addw	t1,t1,a4
	addw	a7,a7,a3
	sw	t4,0(a0)
	sw	t3,4(a0)
	sw	t1,8(a0)
	sw	a7,12(a0)
	ret
.L3:
	mv	a2,a3
	mv	a4,t0
	mv	a3,a6
	j	.L2
	.cfi_endproc
.LFE0:
	.size	md5_compress, .-md5_compress
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
