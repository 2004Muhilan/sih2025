	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_maj.c"
	.globl	sha256_maj                      # -- Begin function sha256_maj
	.p2align	2
	.type	sha256_maj,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_maj
sha256_maj:                             # @sha256_maj
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	and	$1, $6, $5
	xor	$2, $6, $5
	and	$2, $2, $4
	jr	$ra
	xor	$2, $2, $1
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_maj
$func_end0:
	.size	sha256_maj, ($func_end0)-sha256_maj
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
