	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"prng_xorshift.c"
	.globl	prng_xorshift                   # -- Begin function prng_xorshift
	.p2align	2
	.type	prng_xorshift,@function
	.set	nomicromips
	.set	nomips16
	.ent	prng_xorshift
prng_xorshift:                          # @prng_xorshift
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$1, 0($4)
	sll	$2, $1, 13
	xor	$1, $2, $1
	srl	$2, $1, 17
	xor	$1, $2, $1
	sll	$2, $1, 5
	xor	$2, $2, $1
	jr	$ra
	sw	$2, 0($4)
	.set	at
	.set	macro
	.set	reorder
	.end	prng_xorshift
$func_end0:
	.size	prng_xorshift, ($func_end0)-prng_xorshift
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
