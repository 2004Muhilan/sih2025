	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"prng_pcg.c"
	.globl	prng_pcg                        # -- Begin function prng_pcg
	.p2align	2
	.type	prng_pcg,@function
	.set	nomicromips
	.set	nomips16
	.ent	prng_pcg
prng_pcg:                               # @prng_pcg
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 19605
	lw	$2, 4($4)
	lui	$6, 22609
	ori	$1, $1, 32557
	ori	$6, $6, 62509
	multu	$2, $1
	mflo	$3
	mfhi	$5
	mul	$6, $2, $6
	srl	$2, $2, 27
	addu	$5, $5, $6
	lw	$6, 0($4)
	addiu	$3, $3, 1
	sw	$3, 4($4)
	mul	$1, $6, $1
	addu	$1, $5, $1
	sltiu	$5, $3, 1
	addu	$1, $1, $5
	sw	$1, 0($4)
	sll	$1, $6, 5
	or	$1, $2, $1
	srl	$2, $6, 13
	xor	$1, $2, $1
	srl	$2, $6, 27
	jr	$ra
	rotrv	$2, $1, $2
	.set	at
	.set	macro
	.set	reorder
	.end	prng_pcg
$func_end0:
	.size	prng_pcg, ($func_end0)-prng_pcg
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
