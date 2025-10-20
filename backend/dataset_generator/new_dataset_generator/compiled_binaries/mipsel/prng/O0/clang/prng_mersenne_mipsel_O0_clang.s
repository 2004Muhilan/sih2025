	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"prng_mersenne.c"
	.globl	prng_mersenne_twist             # -- Begin function prng_mersenne_twist
	.p2align	2
	.type	prng_mersenne_twist,@function
	.set	nomicromips
	.set	nomips16
	.ent	prng_mersenne_twist
prng_mersenne_twist:                    # @prng_mersenne_twist
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 12($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 624
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_8
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lui	$2, 32768
	and	$1, $1, $2
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 1
	addu	$4, $3, $4
	addiu	$3, $zero, 624
	div	$zero, $4, $3
	teq	$3, $zero, 7
	mfhi	$3
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lui	$3, 32767
	ori	$3, $3, 65535
	and	$2, $2, $3
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	addiu	$3, $zero, 397
	addu	$3, $2, $3
	addiu	$2, $zero, 624
	div	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 4($fp)
	srl	$2, $2, 1
	xor	$1, $1, $2
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	and	$1, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	bgtz	$1, $BB0_5
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_6
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	lw	$2, 8($fp)
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 0($2)
	lui	$3, 39176
	ori	$3, $3, 45279
	xor	$1, $1, $3
	sw	$1, 0($2)
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_7
	nop
$BB0_7:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_1
	nop
$BB0_8:
	lw	$1, 12($fp)
	addiu	$2, $zero, 0
	sw	$zero, 2496($1)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	prng_mersenne_twist
$func_end0:
	.size	prng_mersenne_twist, ($func_end0)-prng_mersenne_twist
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
