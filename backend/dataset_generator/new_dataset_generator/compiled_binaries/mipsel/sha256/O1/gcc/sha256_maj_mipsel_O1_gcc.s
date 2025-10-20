	.file	1 "sha256_maj.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_maj
	.set	nomips16
	.set	nomicromips
	.ent	sha256_maj
	.type	sha256_maj, @function
sha256_maj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	xor	$2,$5,$6
	and	$2,$2,$4
	and	$5,$5,$6
	jr	$31
	xor	$2,$2,$5

	.set	macro
	.set	reorder
	.end	sha256_maj
	.size	sha256_maj, .-sha256_maj
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
