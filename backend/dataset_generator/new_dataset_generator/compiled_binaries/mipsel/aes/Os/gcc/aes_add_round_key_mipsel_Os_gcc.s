	.file	1 "aes_add_round_key.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	aes_add_round_key
	.set	nomips16
	.set	nomicromips
	.ent	aes_add_round_key
	.type	aes_add_round_key, @function
aes_add_round_key:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$7,16			# 0x10
$L2:
	addu	$6,$4,$2
	addu	$3,$5,$2
	addiu	$2,$2,1
	lbu	$8,0($6)
	lbu	$3,0($3)
	xor	$3,$3,$8
	bne	$2,$7,$L2
	sb	$3,0($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	aes_add_round_key
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
