	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"prng_seed.c"
	.globl	prng_seed                       # -- Begin function prng_seed
	.p2align	2
	.type	prng_seed,@function
	.set	nomicromips
	.set	nomips16
	.ent	prng_seed
prng_seed:                              # @prng_seed
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 24373
	ori	$1, $1, 25749
	xor	$1, $5, $1
	lui	$2, 12532
	sw	$5, 0($4)
	sw	$1, 12($4)
	ori	$1, $2, 32144
	xor	$1, $5, $1
	sw	$1, 8($4)
	lui	$1, 27655
	ori	$1, $1, 35173
	xor	$1, $5, $1
	jr	$ra
	sw	$1, 4($4)
	.set	at
	.set	macro
	.set	reorder
	.end	prng_seed
$func_end0:
	.size	prng_seed, ($func_end0)-prng_seed
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
