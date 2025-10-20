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
	sltu	$2,$4,2
	bne	$2,$0,$L4
	li	$3,1			# 0x1

	move	$2,$0
	li	$5,2			# 0x2
$L3:
	mul	$7,$2,$5
	multu	$3,$5
	addiu	$5,$5,1
	sltu	$6,$4,$5
	mfhi	$2
	mflo	$3
	beq	$6,$0,$L3
	addu	$2,$7,$2

	jr	$31
	nop

$L4:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	factorial
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
