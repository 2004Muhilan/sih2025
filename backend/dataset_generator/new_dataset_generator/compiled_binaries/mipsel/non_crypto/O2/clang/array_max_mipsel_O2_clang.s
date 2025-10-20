	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"array_max.c"
	.globl	array_max                       # -- Begin function array_max
	.p2align	2
	.type	array_max,@function
	.set	nomicromips
	.set	nomips16
	.ent	array_max
array_max:                              # @array_max
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$5, $BB0_5
	nop
# %bb.1:
	lw	$2, 0($4)
	addiu	$1, $zero, 1
	beq	$5, $1, $BB0_4
	nop
# %bb.2:
	addiu	$3, $4, 4
	addiu	$4, $5, -1
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	slt	$5, $2, $1
	movn	$2, $1, $5
	addiu	$4, $4, -1
	bnez	$4, $BB0_3
	addiu	$3, $3, 4
$BB0_4:
	jr	$ra
	nop
$BB0_5:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	array_max
$func_end0:
	.size	array_max, ($func_end0)-array_max
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
