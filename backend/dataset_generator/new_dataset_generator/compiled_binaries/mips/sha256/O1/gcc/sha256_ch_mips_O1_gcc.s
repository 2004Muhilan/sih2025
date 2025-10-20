	.file	1 "sha256_ch.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	sha256_ch
	.set	nomips16
	.set	nomicromips
	.ent	sha256_ch
	.type	sha256_ch, @function
sha256_ch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	nor	$2,$0,$4
	and	$2,$2,$6
	and	$4,$4,$5
	jr	$31
	xor	$2,$2,$4

	.set	macro
	.set	reorder
	.end	sha256_ch
	.size	sha256_ch, .-sha256_ch
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
