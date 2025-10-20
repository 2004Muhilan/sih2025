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
	li	$6,55			# 0x37
	move	$9,$0
	move	$8,$0
	sll	$12,$4,1
	li	$11,-1			# 0xffffffffffffffff
$L2:
	addiu	$3,$6,9
	andi	$10,$3,0x20
	nor	$7,$0,$3
	sll	$7,$12,$7
	srl	$2,$5,$3
	or	$2,$7,$2
	srl	$3,$4,$3
	movn	$2,$3,$10
	andi	$2,$2,0x1
	andi	$7,$6,0x20
	sll	$3,$2,$6
	move	$2,$3
	movz	$2,$0,$7
	movn	$3,$0,$7
	or	$2,$9,$2
	or	$3,$8,$3
	move	$9,$2
	addiu	$6,$6,-1
	bne	$6,$11,$L2
	move	$8,$3

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	des_pc1
	.size	des_pc1, .-des_pc1
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
