	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_sigma.c"
	.globl	sha256_sigma0                   # -- Begin function sha256_sigma0
	.p2align	2
	.type	sha256_sigma0,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_sigma0
sha256_sigma0:                          # @sha256_sigma0
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	rotr	$1, $4, 13
	rotr	$2, $4, 2
	xor	$1, $2, $1
	rotr	$2, $4, 22
	jr	$ra
	xor	$2, $1, $2
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_sigma0
$func_end0:
	.size	sha256_sigma0, ($func_end0)-sha256_sigma0
                                        # -- End function
	.globl	sha256_sigma1                   # -- Begin function sha256_sigma1
	.p2align	2
	.type	sha256_sigma1,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_sigma1
sha256_sigma1:                          # @sha256_sigma1
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	rotr	$1, $4, 11
	rotr	$2, $4, 6
	xor	$1, $2, $1
	rotr	$2, $4, 25
	jr	$ra
	xor	$2, $1, $2
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_sigma1
$func_end1:
	.size	sha256_sigma1, ($func_end1)-sha256_sigma1
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
