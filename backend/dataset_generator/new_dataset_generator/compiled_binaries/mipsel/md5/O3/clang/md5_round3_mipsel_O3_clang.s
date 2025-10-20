	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"md5_round3.c"
	.globl	md5_round3                      # -- Begin function md5_round3
	.p2align	2
	.type	md5_round3,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_round3
md5_round3:                             # @md5_round3
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	xor	$1, $6, $7
	lw	$2, 16($sp)
	xor	$1, $1, $5
	addu	$1, $1, $2
	lw	$2, 24($sp)
	addu	$1, $1, $2
	lw	$2, 0($4)
	addu	$1, $1, $2
	lw	$2, 20($sp)
	sllv	$1, $1, $2
	addu	$1, $1, $5
	jr	$ra
	sw	$1, 0($4)
	.set	at
	.set	macro
	.set	reorder
	.end	md5_round3
$func_end0:
	.size	md5_round3, ($func_end0)-md5_round3
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
