	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"string_reverse.c"
	.globl	string_reverse                  # -- Begin function string_reverse
	.p2align	2
	.type	string_reverse,@function
	.set	nomicromips
	.set	nomips16
	.ent	string_reverse
string_reverse:                         # @string_reverse
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $5, -1
	beqz	$2, $BB0_3
	nop
# %bb.1:
	addiu	$3, $zero, 0
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	addu	$6, $4, $2
	addu	$1, $4, $3
	addiu	$2, $2, -1
	addiu	$3, $3, 1
	lbu	$7, 0($6)
	lbu	$5, 0($1)
	sb	$7, 0($1)
	sltu	$1, $3, $2
	bnez	$1, $BB0_2
	sb	$5, 0($6)
$BB0_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	string_reverse
$func_end0:
	.size	string_reverse, ($func_end0)-string_reverse
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
