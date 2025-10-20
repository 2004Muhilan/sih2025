	.file	1 "rsa_pkcs1_padding.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	rsa_pkcs1_pad
	.set	nomips16
	.set	nomicromips
	.ent	rsa_pkcs1_pad
	.type	rsa_pkcs1_pad, @function
rsa_pkcs1_pad:
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
	sb	$0,0($6)
	li	$2,2			# 0x2
	sb	$2,1($6)
	subu	$7,$7,$5
	addiu	$10,$7,-1
	sltu	$2,$10,3
	bne	$2,$0,$L2
	move	$9,$6

	addiu	$2,$6,2
	addu	$8,$6,$10
	li	$3,-1			# 0xffffffffffffffff
$L3:
	sb	$3,0($2)
	addiu	$2,$2,1
	bne	$2,$8,$L3
	nop

$L2:
	addu	$10,$9,$10
	sb	$0,0($10)
	move	$6,$5
	move	$5,$4
	addu	$4,$9,$7
	lw	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($sp)
	lw	$31,28($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	rsa_pkcs1_pad
	.size	rsa_pkcs1_pad, .-rsa_pkcs1_pad
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
