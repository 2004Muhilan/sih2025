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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$8,16($sp)
	lw	$2,24($sp)
	xor	$8,$8,$2
	lw	$3,20($sp)
	lw	$2,28($sp)
	xor	$3,$3,$2
	xor	$8,$8,$6
	xor	$3,$3,$7
	xor	$5,$3,$5
	xor	$2,$8,$4
	jr	$31
	move	$3,$5

	.set	macro
	.set	reorder
	.end	des3_encrypt
	.size	des3_encrypt, .-des3_encrypt
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
