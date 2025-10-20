	.file	1 "des3_triple.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des3_encrypt
	.set	nomips16
	.set	nomicromips
	.ent	des3_encrypt
	.type	des3_encrypt, @function
des3_encrypt:
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
	sw	$7,20($fp)
	lw	$5,8($fp)
	lw	$4,16($fp)
	xor	$10,$5,$4
	lw	$5,12($fp)
	lw	$4,20($fp)
	xor	$11,$5,$4
	sw	$10,8($fp)
	sw	$11,12($fp)
	lw	$5,8($fp)
	lw	$4,24($fp)
	xor	$8,$5,$4
	lw	$5,12($fp)
	lw	$4,28($fp)
	xor	$9,$5,$4
	sw	$8,8($fp)
	sw	$9,12($fp)
	lw	$5,8($fp)
	lw	$4,32($fp)
	xor	$2,$5,$4
	lw	$5,12($fp)
	lw	$4,36($fp)
	xor	$3,$5,$4
	sw	$2,8($fp)
	sw	$3,12($fp)
	lw	$2,8($fp)
	lw	$3,12($fp)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des3_encrypt
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
