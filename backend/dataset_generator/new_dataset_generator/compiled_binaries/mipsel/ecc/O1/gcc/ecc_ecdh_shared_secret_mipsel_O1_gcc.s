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
	sw	$31,28($sp)
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($sp)
	sw	$5,36($sp)
	sw	$6,40($sp)
	sw	$7,44($sp)
	lw	$3,48($sp)
	mult	$5,$3
	lw	$2,52($sp)
	madd	$4,$2
	mflo	$2
	multu	$4,$3
	mflo	$4
	mfhi	$5
	addu	$5,$2,$5
	lw	$25,%call16(__umoddi3)($28)
	li	$6,-1			# 0xffffffffffffffff
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,__umoddi3
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	ecc_ecdh_shared
	.size	ecc_ecdh_shared, .-ecc_ecdh_shared
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
