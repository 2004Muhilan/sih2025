	.file	1 "array_max.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	array_max
	.set	nomips16
	.set	nomicromips
	.ent	array_max
	.type	array_max, @function
array_max:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L6
	move	$2,$0

	lw	$2,0($4)
	li	$3,1			# 0x1
$L3:
	bne	$3,$5,$L4
	sll	$6,$3,2

$L6:
	jr	$31
	nop

$L4:
	addiu	$3,$3,1
	addu	$6,$4,$6
	lw	$6,0($6)
	slt	$7,$2,$6
	.option	pic0
	b	$L3
	.option	pic2
	movn	$2,$6,$7

	.set	macro
	.set	reorder
	.end	array_max
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
