	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"array_sum.c"
	.globl	array_sum                       # -- Begin function array_sum
	.p2align	2
	.type	array_sum,@function
	.set	nomicromips
	.set	nomips16
	.ent	array_sum
array_sum:                              # @array_sum
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$5, $BB0_2
	addiu	$2, $zero, 0
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB0_1
	addu	$2, $1, $2
$BB0_2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	array_sum
$func_end0:
	.size	array_sum, ($func_end0)-array_sum
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
