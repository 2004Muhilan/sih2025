	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_ch.c"
	.globl	sha256_ch                       # -- Begin function sha256_ch
	.p2align	2
	.type	sha256_ch,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_ch
sha256_ch:                              # @sha256_ch
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	and	$1, $5, $4
	not	$2, $4
	and	$2, $2, $6
	jr	$ra
	or	$2, $2, $1
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_ch
$func_end0:
	.size	sha256_ch, ($func_end0)-sha256_ch
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
