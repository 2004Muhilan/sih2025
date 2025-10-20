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
	li	$5,2			# 0x2

	li	$2,1			# 0x1
	move	$3,$0
$L3:
	mul	$6,$3,$5
	multu	$2,$5
	mfhi	$3
	addu	$3,$6,$3
	addiu	$5,$5,1
	sltu	$6,$4,$5
	beq	$6,$0,$L3
	mflo	$2

	jr	$31
	nop

$L4:
	li	$2,1			# 0x1
	jr	$31
	move	$3,$0

	.set	macro
	.set	reorder
	.end	factorial
	.size	factorial, .-factorial
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
