	.file	1 "ecc_scalar_multiplication.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	ecc_scalar_mult
	.set	nomips16
	.set	nomicromips
	.ent	ecc_scalar_mult
	.type	ecc_scalar_mult, @function
ecc_scalar_mult:
	.frame	$fp,40,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	move	$4,$0
	move	$5,$0
	sw	$4,0($fp)
	sw	$5,4($fp)
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$7,48($fp)
	lw	$6,52($fp)
	lw	$5,56($fp)
	lw	$4,60($fp)
	sw	$7,16($fp)
	sw	$6,20($fp)
	sw	$5,24($fp)
	sw	$4,28($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L3:
	lw	$4,64($fp)
	andi	$8,$4,0x1
	lw	$4,68($fp)
	andi	$9,$4,0
	lw	$4,68($fp)
	sll	$4,$4,31
	lw	$5,64($fp)
	srl	$2,$5,1
	or	$2,$4,$2
	lw	$4,68($fp)
	srl	$3,$4,1
	sw	$2,64($fp)
	sw	$3,68($fp)
$L2:
	lw	$4,64($fp)
	lw	$5,68($fp)
	or	$4,$4,$5
	bne	$4,$0,$L3
	nop

	lw	$2,40($fp)
	lw	$6,0($fp)
	lw	$5,4($fp)
	lw	$4,8($fp)
	lw	$3,12($fp)
	sw	$6,0($2)
	sw	$5,4($2)
	sw	$4,8($2)
	sw	$3,12($2)
	lw	$2,40($fp)
	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	ecc_scalar_mult
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
