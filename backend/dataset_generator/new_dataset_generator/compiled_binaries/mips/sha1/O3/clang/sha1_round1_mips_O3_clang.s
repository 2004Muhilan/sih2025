	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha1_round1.c"
	.globl	sha1_round1                     # -- Begin function sha1_round1
	.p2align	2
	.type	sha1_round1,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_round1
sha1_round1:                            # @sha1_round1
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	not	$1, $5
	and	$2, $6, $5
	rotr	$3, $4, 27
	and	$1, $1, $7
	addu	$2, $3, $2
	addu	$1, $2, $1
	lw	$2, 16($sp)
	addu	$1, $1, $2
	lw	$2, 20($sp)
	addu	$1, $1, $2
	lui	$2, 23170
	ori	$2, $2, 31129
	jr	$ra
	addu	$2, $1, $2
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_round1
$func_end0:
	.size	sha1_round1, ($func_end0)-sha1_round1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
