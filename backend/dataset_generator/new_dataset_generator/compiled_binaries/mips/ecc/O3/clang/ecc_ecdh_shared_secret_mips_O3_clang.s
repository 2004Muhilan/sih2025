	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"ecc_ecdh_shared_secret.c"
	.globl	ecc_ecdh_shared                 # -- Begin function ecc_ecdh_shared
	.p2align	2
	.type	ecc_ecdh_shared,@function
	.set	nomicromips
	.set	nomips16
	.ent	ecc_ecdh_shared
ecc_ecdh_shared:                        # @ecc_ecdh_shared
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$1, 20($sp)
	lw	$6, 16($sp)
	multu	$5, $1
	mflo	$2
	mfhi	$3
	mul	$5, $5, $6
	mul	$1, $4, $1
	addiu	$4, $zero, -1
	addu	$3, $3, $5
	addu	$1, $3, $1
	addu	$1, $2, $1
	sltu	$2, $1, $2
	addu	$3, $1, $2
	addiu	$2, $zero, 0
	xor	$1, $3, $4
	jr	$ra
	movz	$3, $zero, $1
	.set	at
	.set	macro
	.set	reorder
	.end	ecc_ecdh_shared
$func_end0:
	.size	ecc_ecdh_shared, ($func_end0)-ecc_ecdh_shared
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
