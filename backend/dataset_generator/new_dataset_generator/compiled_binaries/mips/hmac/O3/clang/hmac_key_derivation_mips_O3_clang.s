	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_key_derivation.c"
	.globl	hmac_key_derive                 # -- Begin function hmac_key_derive
	.p2align	2
	.type	hmac_key_derive,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_key_derive
hmac_key_derive:                        # @hmac_key_derive
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$3, 16($sp)
	addiu	$2, $zero, 0
	addiu	$8, $zero, 32
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $7
	teq	$7, $zero, 7
	mfhi	$1
	divu	$zero, $2, $5
	teq	$5, $zero, 7
	addu	$1, $6, $1
	lbu	$1, 0($1)
	mfhi	$9
	addu	$9, $4, $9
	lbu	$9, 0($9)
	xor	$1, $1, $9
	addu	$9, $3, $2
	addiu	$2, $2, 1
	bne	$2, $8, $BB0_1
	sb	$1, 0($9)
# %bb.2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_key_derive
$func_end0:
	.size	hmac_key_derive, ($func_end0)-hmac_key_derive
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
