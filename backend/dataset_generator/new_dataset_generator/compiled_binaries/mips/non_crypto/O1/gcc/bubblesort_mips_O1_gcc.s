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
	beq	$5,$2,$L12
	sll	$8,$5,2

	addu	$8,$4,$8
	.option	pic0
	b	$L3
	.option	pic2
	li	$9,1			# 0x1

$L4:
	addiu	$2,$2,4
	beq	$2,$8,$L11
	nop

$L5:
	lw	$3,-4($2)
	lw	$6,0($2)
	slt	$7,$6,$3
	beq	$7,$0,$L4
	nop

	sw	$6,-4($2)
	.option	pic0
	b	$L4
	.option	pic2
	sw	$3,0($2)

$L11:
	addiu	$5,$5,-1
	beq	$5,$9,$L12
	addiu	$8,$8,-4

$L3:
	bne	$5,$9,$L5
	addiu	$2,$4,4

	addiu	$5,$5,-1
	.option	pic0
	b	$L3
	.option	pic2
	addiu	$8,$8,-4

$L12:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bubblesort
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
