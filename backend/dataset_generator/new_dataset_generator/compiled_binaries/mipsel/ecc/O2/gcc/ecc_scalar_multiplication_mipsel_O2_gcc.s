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
	lw	$3,24($sp)
	move	$2,$4
	lw	$5,28($sp)
	sw	$6,8($sp)
	or	$4,$3,$5
	beq	$4,$0,$L2
	sw	$7,12($sp)

	sll	$6,$5,31
$L10:
	srl	$3,$3,1
	srl	$5,$5,1
	or	$3,$6,$3
	or	$6,$3,$5
	bne	$6,$0,$L10
	sll	$6,$5,31

$L2:
	move	$4,$0
	move	$5,$0
	sw	$4,0($2)
	sw	$5,4($2)
	sw	$4,8($2)
	jr	$31
	sw	$5,12($2)

	.set	macro
	.set	reorder
	.end	ecc_scalar_mult
	.size	ecc_scalar_mult, .-ecc_scalar_mult
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
