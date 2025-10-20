	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_permutation_choice.c"
	.globl	des_pc1                         # -- Begin function des_pc1
	.p2align	2
	.type	des_pc1,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_pc1
des_pc1:                                # @des_pc1
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	addiu	$7, $zero, 55
	addiu	$6, $zero, -1
	addiu	$3, $zero, 0
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addiu	$1, $7, 9
	move	$9, $5
	andi	$8, $1, 32
	movn	$9, $4, $8
	addiu	$8, $7, -1
	srlv	$1, $9, $1
	andi	$1, $1, 1
	sllv	$1, $1, $7
	andi	$7, $7, 32
	move	$9, $1
	movn	$9, $zero, $7
	or	$3, $9, $3
	addiu	$9, $zero, 0
	movn	$9, $1, $7
	move	$7, $8
	bne	$8, $6, $BB0_1
	or	$2, $9, $2
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	des_pc1
$func_end0:
	.size	des_pc1, ($func_end0)-des_pc1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
