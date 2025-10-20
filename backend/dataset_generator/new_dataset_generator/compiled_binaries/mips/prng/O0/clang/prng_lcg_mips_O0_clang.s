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
	lw	$1, 4($fp)
	lw	$1, 0($1)
	lui	$2, 16838
	ori	$2, $2, 20077
	mul	$1, $1, $2
	addiu	$2, $zero, 12345
	addu	$1, $1, $2
	lui	$2, 32767
	ori	$2, $2, 65535
	and	$1, $1, $2
	lw	$2, 4($fp)
	sw	$1, 0($2)
	lw	$1, 4($fp)
	lw	$2, 0($1)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
