	.file	1 "bubblesort.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	bubblesort
	.set	nomips16
	.set	nomicromips
	.ent	bubblesort
	.type	bubblesort, @function
bubblesort:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1			# 0x1
	beq	$5,$2,$L9
	sll	$2,$5,2

	addiu	$9,$4,4
	addu	$7,$4,$2
	li	$8,1			# 0x1
$L5:
	move	$2,$9
$L4:
	lw	$3,-4($2)
	lw	$4,0($2)
	slt	$6,$4,$3
	beq	$6,$0,$L3
	nop

	sw	$4,-4($2)
	sw	$3,0($2)
$L3:
	addiu	$2,$2,4
	bne	$7,$2,$L4
	nop

	addiu	$5,$5,-1
	bne	$5,$8,$L5
	addiu	$7,$7,-4

$L9:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bubblesort
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
