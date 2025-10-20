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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$5,$4,2
	li	$2,1			# 0x1
	bne	$5,$0,$L6
	move	$3,$0

	li	$5,2			# 0x2
$L3:
	mul	$6,$3,$5
	multu	$2,$5
	addiu	$5,$5,1
	mfhi	$3
	addu	$3,$6,$3
	sltu	$6,$4,$5
	beq	$6,$0,$L3
	mflo	$2

$L6:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	factorial
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
