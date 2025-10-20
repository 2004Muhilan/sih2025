	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_md5.c"
	.globl	hmac_md5                        # -- Begin function hmac_md5
	.p2align	2
	.type	hmac_md5,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_md5
hmac_md5:                               # @hmac_md5
	.frame	$sp,128,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -128
	lw	$2, 144($sp)
	addiu	$7, $zero, 0
	addiu	$3, $sp, 0
	addiu	$6, $sp, 64
	addiu	$8, $zero, 64
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	sltu	$1, $7, $5
	addiu	$9, $zero, 54
	beqz	$1, $BB0_3
	addiu	$10, $zero, 0
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addu	$1, $4, $7
	lbu	$10, 0($1)
	xori	$9, $10, 54
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	addu	$1, $3, $7
	xori	$10, $10, 92
	sb	$10, 0($1)
	addu	$1, $6, $7
	addiu	$7, $7, 1
	bne	$7, $8, $BB0_1
	sb	$9, 0($1)
# %bb.4:
	addiu	$4, $zero, 0
	addiu	$5, $zero, 16
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $6, $4
	lbu	$1, 0($1)
	addu	$7, $3, $4
	lbu	$7, 0($7)
	xor	$1, $7, $1
	addu	$7, $2, $4
	addiu	$4, $4, 1
	bne	$4, $5, $BB0_5
	sb	$1, 0($7)
# %bb.6:
	jr	$ra
	addiu	$sp, $sp, 128
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_md5
$func_end0:
	.size	hmac_md5, ($func_end0)-hmac_md5
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
