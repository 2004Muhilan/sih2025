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
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	sll	$2, $1, 13
	lw	$1, 0($fp)
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	srl	$2, $1, 17
	lw	$1, 0($fp)
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	sll	$2, $1, 5
	lw	$1, 0($fp)
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sw	$1, 0($2)
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
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
