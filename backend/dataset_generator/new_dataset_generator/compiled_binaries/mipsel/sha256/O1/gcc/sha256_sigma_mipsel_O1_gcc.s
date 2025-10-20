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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ror	$2,$4,2
	ror	$3,$4,13
	xor	$2,$2,$3
	ror	$4,$4,22
	jr	$31
	xor	$2,$2,$4

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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ror	$2,$4,6
	ror	$3,$4,11
	xor	$2,$2,$3
	ror	$4,$4,25
	jr	$31
	xor	$2,$2,$4

	.set	macro
	.set	reorder
	.end	sha256_sigma1
	.size	sha256_sigma1, .-sha256_sigma1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
