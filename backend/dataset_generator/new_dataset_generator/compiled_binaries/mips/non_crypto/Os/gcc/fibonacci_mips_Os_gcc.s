	.file	1 "fibonacci.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	fibonacci
	.set	nomips16
	.set	nomicromips
	.ent	fibonacci
	.type	fibonacci, @function
fibonacci:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$3,$4,2
	bne	$3,$0,$L7
	move	$2,$4

	li	$3,2			# 0x2
	li	$2,1			# 0x1
	move	$5,$0
	addiu	$3,$3,1
$L6:
	move	$6,$2
	addu	$2,$2,$5
	move	$5,$6
	sltu	$6,$4,$3
	beq	$6,$0,$L6
	addiu	$3,$3,1

$L7:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	fibonacci
	.size	fibonacci, .-fibonacci
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
