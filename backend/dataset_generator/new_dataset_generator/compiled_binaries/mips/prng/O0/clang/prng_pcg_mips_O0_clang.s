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
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 36($fp)
	lw	$2, 36($fp)
	lw	$1, 0($2)
	lw	$2, 4($2)
	sw	$2, 28($fp)
	sw	$1, 24($fp)
	lw	$2, 24($fp)
	lw	$1, 28($fp)
	lui	$3, 22609
	ori	$3, $3, 62509
	mul	$4, $1, $3
	lui	$3, 19605
	ori	$3, $3, 32557
	multu	$1, $3
	mflo	$1
	sw	$1, 8($fp)                      # 8-byte Folded Spill
	mfhi	$1
	sw	$1, 12($fp)                     # 8-byte Folded Spill
	mfhi	$1
	addu	$1, $1, $4
	mul	$2, $2, $3
	lw	$3, 8($fp)                      # 8-byte Folded Reload
	mtlo	$3
	lw	$3, 12($fp)                     # 8-byte Folded Reload
	mthi	$3
	addu	$1, $1, $2
	mflo	$2
	addiu	$3, $2, 1
	sltiu	$2, $3, 1
	addu	$1, $1, $2
	lw	$2, 36($fp)
	sw	$3, 4($2)
	sw	$1, 0($2)
	lw	$2, 28($fp)
	lw	$1, 24($fp)
	sll	$3, $1, 5
	srl	$2, $2, 27
	or	$2, $2, $3
	srl	$1, $1, 13
	xor	$1, $1, $2
	sw	$1, 20($fp)
	lw	$1, 24($fp)
	srl	$1, $1, 27
	sw	$1, 16($fp)
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	srlv	$1, $1, $2
	lw	$2, 20($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 0
	negu	$3, $3
	addiu	$4, $zero, 31
	and	$3, $3, $4
	sllv	$2, $2, $3
	or	$2, $1, $2
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
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
