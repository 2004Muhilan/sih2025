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
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sw	$1, 0($2)
	lw	$1, 0($fp)
	lui	$2, 27655
	ori	$2, $2, 35173
	xor	$1, $1, $2
	lw	$2, 4($fp)
	sw	$1, 4($2)
	lw	$1, 0($fp)
	lui	$2, 12532
	ori	$2, $2, 32144
	xor	$1, $1, $2
	lw	$2, 4($fp)
	sw	$1, 8($2)
	lw	$1, 0($fp)
	lui	$2, 24373
	ori	$2, $2, 25749
	xor	$1, $1, $2
	lw	$2, 4($fp)
	sw	$1, 12($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
