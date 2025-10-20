	.file	1 "ecc_ecdh_shared_secret.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.globl	__umoddi3
	.align	2
	.globl	ecc_ecdh_shared
	.set	nomips16
	.set	nomicromips
	.ent	ecc_ecdh_shared
	.type	ecc_ecdh_shared, @function
ecc_ecdh_shared:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	lui	$28,%hi(__gnu_local_gp)
	lw	$8,52($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$3,48($sp)
	sw	$4,32($sp)
	mult	$4,$8
	sw	$5,36($sp)
	madd	$5,$3
	sw	$6,40($sp)
	sw	$7,44($sp)
	move	$6,$0
	sw	$31,28($sp)
	li	$7,-1			# 0xffffffffffffffff
	.cprestore	16
	mflo	$3
	lw	$25,%call16(__umoddi3)($28)
	multu	$5,$8
	mfhi	$4
	mflo	$5
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	addu	$4,$3,$4

	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	ecc_ecdh_shared
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
