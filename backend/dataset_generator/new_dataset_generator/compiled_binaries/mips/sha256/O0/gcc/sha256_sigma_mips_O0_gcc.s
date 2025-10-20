	.file	1 "sha256_sigma.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_sigma0
	.set	nomips16
	.set	nomicromips
	.ent	sha256_sigma0
	.type	sha256_sigma0, @function
sha256_sigma0:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	ror	$3,$2,2
	lw	$2,8($fp)
	ror	$2,$2,13
	xor	$3,$3,$2
	lw	$2,8($fp)
	ror	$2,$2,22
	xor	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_sigma0
	.size	sha256_sigma0, .-sha256_sigma0
	.align	2
	.globl	sha256_sigma1
	.set	nomips16
	.set	nomicromips
	.ent	sha256_sigma1
	.type	sha256_sigma1, @function
sha256_sigma1:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lw	$2,8($fp)
	ror	$3,$2,6
	lw	$2,8($fp)
	ror	$2,$2,11
	xor	$3,$3,$2
	lw	$2,8($fp)
	ror	$2,$2,25
	xor	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_sigma1
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
