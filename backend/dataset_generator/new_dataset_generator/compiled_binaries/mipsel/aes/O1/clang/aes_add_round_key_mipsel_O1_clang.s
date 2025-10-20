	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"aes_add_round_key.c"
	.globl	aes_add_round_key               # -- Begin function aes_add_round_key
	.p2align	2
	.type	aes_add_round_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	aes_add_round_key
aes_add_round_key:                      # @aes_add_round_key
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 16
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lbu	$1, 0($1)
	addu	$6, $4, $2
	lbu	$7, 0($6)
	xor	$1, $7, $1
	addiu	$2, $2, 1
	bne	$2, $3, $BB0_1
	sb	$1, 0($6)
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	aes_add_round_key
$func_end0:
	.size	aes_add_round_key, ($func_end0)-aes_add_round_key
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
