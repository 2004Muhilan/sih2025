	.file	1 "des_permutation_choice.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.module	arch=mips32r2
	.abicalls
	.text
	.align	2
	.globl	des_pc1
	.set	nomips16
	.set	nomicromips
	.ent	des_pc1
	.type	des_pc1, @function
des_pc1:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$7,55			# 0x37
	move	$2,$0
	move	$10,$0
	sll	$13,$4,1
	li	$12,-1			# 0xffffffffffffffff
$L2:
	addiu	$6,$7,9
	andi	$9,$7,0x20
	nor	$8,$0,$6
	srl	$3,$5,$6
	sll	$8,$13,$8
	srl	$11,$4,$6
	or	$3,$8,$3
	andi	$6,$6,0x20
	movn	$3,$11,$6
	andi	$3,$3,0x1
	sll	$3,$3,$7
	addiu	$7,$7,-1
	move	$6,$3
	movn	$3,$0,$9
	movz	$6,$0,$9
	or	$10,$10,$3
	bne	$7,$12,$L2
	or	$2,$2,$6

	jr	$31
	move	$3,$10

	.set	macro
	.set	reorder
	.end	des_pc1
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
