	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"binary_tree_search.c"
	.globl	binary_tree_search              # -- Begin function binary_tree_search
	.p2align	2
	.type	binary_tree_search,@function
	.set	nomicromips
	.set	nomips16
	.ent	binary_tree_search
binary_tree_search:                     # @binary_tree_search
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$4, $BB0_3
	addiu	$2, $zero, 4
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$3, 0($4)
	beq	$3, $5, $BB0_4
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	slt	$1, $5, $3
	addiu	$3, $zero, 8
	movn	$3, $2, $1
	addu	$1, $4, $3
	lw	$4, 0($1)
	bnez	$4, $BB0_1
	nop
$BB0_3:
	jr	$ra
	addiu	$2, $zero, 0
$BB0_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	binary_tree_search
$func_end0:
	.size	binary_tree_search, ($func_end0)-binary_tree_search
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
