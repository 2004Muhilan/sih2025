	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"prng_lcg.c"
	.globl	prng_lcg                        # -- Begin function prng_lcg
	.p2align	2
	.type	prng_lcg,@function
	.set	nomicromips
	.set	nomips16
	.ent	prng_lcg
prng_lcg:                               # @prng_lcg
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 16838
	ori	$1, $1, 20077
	lw	$2, 0($4)
	mul	$1, $2, $1
	addiu	$1, $1, 12345
	ext	$2, $1, 0, 31
	jr	$ra
	sw	$2, 0($4)
	.set	at
	.set	macro
	.set	reorder
	.end	prng_lcg
$func_end0:
	.size	prng_lcg, ($func_end0)-prng_lcg
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
