	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	2
	.type	factorial,@function
	.set	nomicromips
	.set	nomips16
	.ent	factorial
factorial:                              # @factorial
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	sltiu	$1, $4, 2
	beqz	$1, $BB0_2
	nop
# %bb.1:
	addiu	$3, $zero, 0
	jr	$ra
	addiu	$2, $zero, 1
$BB0_2:
	addiu	$1, $4, 1
	sltiu	$2, $1, 4
	addiu	$4, $zero, 3
	movz	$4, $1, $2
	addiu	$3, $zero, 0
	addiu	$2, $zero, 1
	addiu	$5, $zero, 2
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	multu	$2, $5
	mflo	$2
	mfhi	$1
	mul	$3, $3, $5
	addiu	$5, $5, 1
	bne	$4, $5, $BB0_3
	addu	$3, $1, $3
# %bb.4:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	factorial
$func_end0:
	.size	factorial, ($func_end0)-factorial
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
