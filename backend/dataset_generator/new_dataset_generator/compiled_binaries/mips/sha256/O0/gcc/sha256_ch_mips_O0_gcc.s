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
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	and	$3,$3,$2
	lw	$2,8($fp)
	nor	$4,$0,$2
	lw	$2,16($fp)
	and	$2,$4,$2
	xor	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sha256_ch
	.size	sha256_ch, .-sha256_ch
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
