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
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$6,8($sp)
	sw	$7,12($sp)
	lw	$5,24($sp)
	lw	$6,28($sp)
	or	$3,$5,$6
	beq	$3,$0,$L2
	move	$2,$4

	sll	$7,$5,31
$L6:
	srl	$3,$6,1
	or	$3,$7,$3
	srl	$5,$5,1
	move	$6,$3
	or	$3,$5,$3
	bne	$3,$0,$L6
	sll	$7,$5,31

$L2:
	move	$5,$0
	move	$4,$0
	sw	$5,4($2)
	sw	$4,0($2)
	sw	$5,12($2)
	jr	$31
	sw	$4,8($2)

	.set	macro
	.set	reorder
	.end	ecc_scalar_mult
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
