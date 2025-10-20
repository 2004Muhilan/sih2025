	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"fibonacci.c"
	.globl	fibonacci                       # -- Begin function fibonacci
	.p2align	2
	.type	fibonacci,@function
	.set	nomicromips
	.set	nomips16
	.ent	fibonacci
fibonacci:                              # @fibonacci
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	sltiu	$1, $4, 2
	bnez	$1, $BB0_3
	nop
# %bb.1:
	addiu	$1, $4, 1
	addiu	$3, $zero, 3
	addiu	$4, $zero, 1
	sltiu	$2, $1, 4
	movz	$3, $1, $2
	addiu	$2, $3, -2
	addiu	$3, $zero, 0
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	move	$1, $4
	addu	$4, $4, $3
	addiu	$2, $2, -1
	bnez	$2, $BB0_2
	move	$3, $1
$BB0_3:
	jr	$ra
	move	$2, $4
	.set	at
	.set	macro
	.set	reorder
	.end	fibonacci
$func_end0:
	.size	fibonacci, ($func_end0)-fibonacci
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
