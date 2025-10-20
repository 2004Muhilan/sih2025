	.file	1 "des_feistel_function.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_feistel
	.set	nomips16
	.set	nomicromips
	.ent	des_feistel
	.type	des_feistel, @function
des_feistel:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	move	$4,$0
	move	$5,$0
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$0,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	li	$5,32			# 0x20
	lw	$4,0($fp)
	subu	$4,$5,$4
	lw	$5,24($fp)
	srl	$4,$5,$4
	andi	$5,$4,0x1
	li	$6,47			# 0x2f
	lw	$4,0($fp)
	subu	$4,$6,$4
	sll	$4,$5,$4
	move	$2,$4
	move	$3,$0
	lw	$4,8($fp)
	or	$10,$4,$2
	lw	$4,12($fp)
	or	$11,$4,$3
	sw	$10,8($fp)
	sw	$11,12($fp)
	lw	$4,0($fp)
	addiu	$4,$4,1
	sw	$4,0($fp)
$L2:
	lw	$4,0($fp)
	slt	$4,$4,48
	bne	$4,$0,$L3
	nop

	lw	$3,8($fp)
	lw	$2,32($fp)
	xor	$8,$3,$2
	lw	$3,12($fp)
	lw	$2,36($fp)
	xor	$9,$3,$2
	sw	$8,8($fp)
	sw	$9,12($fp)
	sw	$0,4($fp)
	lw	$2,4($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_feistel
	.size	des_feistel, .-des_feistel
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
