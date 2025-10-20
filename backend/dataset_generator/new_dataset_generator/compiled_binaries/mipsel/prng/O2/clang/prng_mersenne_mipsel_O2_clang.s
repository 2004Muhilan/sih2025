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
	addiu	$9, $zero, 0
	addiu	$2, $zero, 397
	lui	$1, 32767
	ori	$3, $1, 65534
	lui	$5, 32768
	lui	$1, 39176
	ori	$6, $1, 45279
	addiu	$7, $zero, 624
	move	$8, $4
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addiu	$1, $9, 1
	xori	$10, $9, 623
	move	$11, $1
	movz	$11, $zero, $10
	sll	$10, $11, 2
	addu	$10, $4, $10
	sltiu	$11, $9, 227
	addiu	$12, $zero, -227
	movn	$12, $2, $11
	addu	$9, $12, $9
	sll	$9, $9, 2
	addu	$9, $4, $9
	lw	$10, 0($10)
	lw	$11, 0($8)
	andi	$12, $10, 1
	lw	$9, 0($9)
	and	$10, $10, $3
	and	$11, $11, $5
	addiu	$13, $8, 4
	or	$10, $10, $11
	srl	$10, $10, 1
	xor	$9, $10, $9
	xor	$10, $9, $6
	movz	$10, $9, $12
	sw	$10, 0($8)
	move	$8, $13
	bne	$1, $7, $BB0_1
	move	$9, $1
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
