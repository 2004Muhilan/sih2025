	.file	1 "array_sum.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	array_sum
	.set	nomips16
	.set	nomicromips
	.ent	array_sum
	.type	array_sum, @function
array_sum:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$0
	move	$2,$0
$L2:
	bne	$3,$5,$L3
	sll	$6,$3,2

	jr	$31
	nop

$L3:
	addiu	$3,$3,1
	addu	$6,$4,$6
	lw	$6,0($6)
	.option	pic0
	b	$L2
	.option	pic2
	addu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	array_sum
	.size	array_sum, .-array_sum
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
