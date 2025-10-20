	.file	1 "factorial.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	factorial
	.set	nomips16
	.set	nomicromips
	.ent	factorial
	.type	factorial, @function
factorial:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L2
	nop

	lw	$3,24($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L3
	nop

$L2:
	li	$2,1			# 0x1
	move	$3,$0
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L3:
	li	$2,1			# 0x1
	move	$3,$0
	sw	$2,8($fp)
	sw	$3,12($fp)
	li	$2,2			# 0x2
	sw	$2,4($fp)
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L6:
	lw	$2,4($fp)
	move	$6,$2
	move	$7,$0
	lw	$2,12($fp)
	mul	$3,$2,$6
	lw	$2,8($fp)
	mul	$2,$2,$7
	addu	$4,$3,$2
	lw	$2,8($fp)
	multu	$2,$6
	mflo	$2
	mfhi	$3
	addu	$4,$4,$3
	move	$3,$4
	sw	$2,8($fp)
	sw	$3,12($fp)
	sw	$2,8($fp)
	sw	$3,12($fp)
	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L5:
	lw	$3,4($fp)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L6
	nop

	lw	$2,8($fp)
	lw	$3,12($fp)
$L4:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	factorial
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
