	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha1_round3.c"
	.globl	sha1_round3                     # -- Begin function sha1_round3
	.p2align	2
	.type	sha1_round3,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_round3
sha1_round3:                            # @sha1_round3
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	and	$1, $7, $6
	or	$2, $7, $6
	and	$2, $2, $5
	or	$1, $2, $1
	rotr	$2, $4, 27
	lw	$3, 16($sp)
	addu	$2, $2, $3
	lw	$3, 20($sp)
	addu	$2, $2, $3
	addu	$1, $2, $1
	lui	$2, 36635
	ori	$2, $2, 48348
	jr	$ra
	addu	$2, $1, $2
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_round3
$func_end0:
	.size	sha1_round3, ($func_end0)-sha1_round3
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
