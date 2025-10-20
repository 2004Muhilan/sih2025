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
	beq	$5,$0,$L4
	li	$3,1			# 0x1

	beq	$5,$3,$L8
	lw	$2,0($4)

	sll	$5,$5,2
	addiu	$3,$4,4
	addu	$4,$4,$5
$L3:
	lw	$5,0($3)
	addiu	$3,$3,4
	slt	$6,$2,$5
	bne	$3,$4,$L3
	movn	$2,$5,$6

$L8:
	jr	$31
	nop

$L4:
	move	$2,$0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	array_max
	.size	array_max, .-array_max
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
