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
	addiu	$5,$5,-1
$L8:
	beq	$5,$0,$L9
	move	$3,$0

	move	$2,$4
$L4:
	lw	$6,0($2)
	lw	$7,4($2)
	slt	$8,$7,$6
	beq	$8,$0,$L3
	addiu	$3,$3,1

	sw	$7,0($2)
	sw	$6,4($2)
$L3:
	sltu	$6,$3,$5
	bne	$6,$0,$L4
	addiu	$2,$2,4

	.option	pic0
	b	$L8
	.option	pic2
	addiu	$5,$5,-1

$L9:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	bubblesort
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
