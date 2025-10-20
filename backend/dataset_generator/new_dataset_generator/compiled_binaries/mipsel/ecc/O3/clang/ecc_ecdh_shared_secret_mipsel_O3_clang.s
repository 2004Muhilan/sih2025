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
	lw	$1, 16($sp)
	lw	$6, 20($sp)
	multu	$4, $1
	mflo	$2
	mfhi	$3
	mul	$4, $4, $6
	mul	$1, $5, $1
	addu	$3, $3, $4
	addu	$1, $3, $1
	addiu	$3, $zero, -1
	addu	$1, $2, $1
	sltu	$2, $1, $2
	addu	$2, $1, $2
	xor	$1, $2, $3
	addiu	$3, $zero, 0
	jr	$ra
	movz	$2, $zero, $1
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
