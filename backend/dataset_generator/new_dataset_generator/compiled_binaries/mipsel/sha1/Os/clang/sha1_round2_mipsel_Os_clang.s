	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha1_round2.c"
	.globl	sha1_round2                     # -- Begin function sha1_round2
	.p2align	2
	.type	sha1_round2,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_round2
sha1_round2:                            # @sha1_round2
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	xor	$1, $6, $5
	xor	$1, $1, $7
	rotr	$2, $4, 27
	addu	$1, $2, $1
	lw	$2, 16($sp)
	addu	$1, $1, $2
	lw	$2, 20($sp)
	addu	$1, $1, $2
	lui	$2, 28377
	ori	$2, $2, 60321
	jr	$ra
	addu	$2, $1, $2
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_round2
$func_end0:
	.size	sha1_round2, ($func_end0)-sha1_round2
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
