	.file	"des_initial_permutation.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	des_initial_permutation
	.type	des_initial_permutation, @function
des_initial_permutation:
.LFB0:
	.cfi_startproc
	mv	a2,a0
	lla	a3,.LANCHOR0
	li	a4,0
	li	a0,0
	li	a6,64
	li	a7,-1
	slli	a7,a7,63
	li	a1,64
	j	.L3
.L2:
	addiw	a4,a4,1
	addi	a3,a3,1
	beq	a4,a1,.L5
.L3:
	lbu	a5,0(a3)
	subw	a5,a6,a5
	srl	a5,a2,a5
	andi	a5,a5,1
	beq	a5,zero,.L2
	srl	a5,a7,a4
	or	a0,a0,a5
	j	.L2
.L5:
	ret
	.cfi_endproc
.LFE0:
	.size	des_initial_permutation, .-des_initial_permutation
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	IP, @object
	.size	IP, 64
IP:
	.ascii	":2*\"\032\022\n\002<4,$\034\024\f\004>6.&\036\026\016\006@80"
	.ascii	"( \030\020\b91)!\031\021\t\001;3+#\033\023\013\003=5-%\035\025"
	.ascii	"\r\005?7/'\037\027\017\007"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
