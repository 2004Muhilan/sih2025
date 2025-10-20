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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$9, $4, 1588
	addiu	$2, $zero, 397
	addiu	$3, $zero, -624
	lui	$1, 6721
	ori	$5, $1, 42011
	lui	$1, 32767
	ori	$6, $1, 65534
	lui	$7, 32768
	lui	$1, 39176
	ori	$8, $1, 45279
	move	$10, $4
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	srl	$1, $2, 4
	multu	$1, $5
	mfhi	$1
	addiu	$11, $3, 625
	addiu	$3, $3, 1
	movz	$11, $zero, $3
	sll	$11, $11, 2
	addu	$11, $4, $11
	lw	$11, 0($11)
	lw	$12, 0($10)
	and	$13, $11, $6
	and	$12, $12, $7
	srl	$1, $1, 2
	sll	$14, $1, 6
	sll	$15, $1, 9
	subu	$14, $15, $14
	sll	$1, $1, 11
	addiu	$15, $10, 4
	or	$12, $13, $12
	andi	$11, $11, 1
	addiu	$2, $2, 1
	addiu	$13, $9, 4
	srl	$12, $12, 1
	addu	$1, $1, $14
	subu	$1, $9, $1
	lw	$1, 0($1)
	xor	$1, $12, $1
	xor	$9, $1, $8
	movz	$9, $1, $11
	sw	$9, 0($10)
	move	$10, $15
	bnez	$3, $BB0_1
	move	$9, $13
# %bb.2:
	jr	$ra
	sw	$zero, 2496($4)
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
