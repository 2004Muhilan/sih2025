	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"string_concat.c"
	.globl	string_concat                   # -- Begin function string_concat
	.p2align	2
	.type	string_concat,@function
	.set	nomicromips
	.set	nomips16
	.ent	string_concat
string_concat:                          # @string_concat
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$6, $BB0_4
	addiu	$2, $zero, 0
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $2
	lbu	$1, 0($1)
	beqz	$1, $BB0_4
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$2, $2, 1
	bne	$6, $2, $BB0_1
	nop
# %bb.3:
	move	$2, $6
$BB0_4:
	addiu	$3, $6, -1
	sltu	$1, $2, $3
	beqz	$1, $BB0_7
	nop
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	lbu	$6, 0($5)
	beqz	$6, $BB0_7
	nop
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	addu	$1, $4, $2
	sb	$6, 0($1)
	addiu	$2, $2, 1
	bne	$3, $2, $BB0_5
	addiu	$5, $5, 1
$BB0_7:
	addu	$1, $4, $2
	jr	$ra
	sb	$zero, 0($1)
	.set	at
	.set	macro
	.set	reorder
	.end	string_concat
$func_end0:
	.size	string_concat, ($func_end0)-string_concat
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
