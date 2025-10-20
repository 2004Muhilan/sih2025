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
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$2,4($fp)
	lw	$3,16($fp)
	addu	$2,$3,$2
	lbu	$4,0($2)
	lw	$2,4($fp)
	lw	$3,20($fp)
	addu	$2,$3,$2
	lbu	$3,0($2)
	lw	$2,4($fp)
	lw	$5,16($fp)
	addu	$2,$5,$2
	xor	$3,$4,$3
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	slt	$2,$2,16
	bne	$2,$0,$L3
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	aes_add_round_key
	.size	aes_add_round_key, .-aes_add_round_key
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
