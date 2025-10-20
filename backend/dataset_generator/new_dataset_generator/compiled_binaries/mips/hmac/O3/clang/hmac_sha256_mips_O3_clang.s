	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_sha256.c"
	.globl	hmac_sha256                     # -- Begin function hmac_sha256
	.p2align	2
	.type	hmac_sha256,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_sha256
hmac_sha256:                            # @hmac_sha256
	.frame	$sp,128,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -128
	lw	$2, 144($sp)
	addiu	$3, $zero, 0
	addiu	$6, $sp, 0
	addiu	$7, $sp, 64
	b	$BB0_2
	addiu	$8, $zero, 64
$BB0_1:                                 #   in Loop: Header=BB0_2 Depth=1
	addu	$1, $6, $3
	xori	$10, $10, 92
	sb	$10, 0($1)
	addu	$1, $7, $3
	addiu	$3, $3, 1
	beq	$3, $8, $BB0_4
	sb	$9, 0($1)
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	sltu	$1, $3, $5
	addiu	$9, $zero, 54
	beqz	$1, $BB0_1
	addiu	$10, $zero, 0
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addu	$1, $4, $3
	lbu	$10, 0($1)
	b	$BB0_1
	xori	$9, $10, 54
$BB0_4:
	lbu	$1, 64($sp)
	lbu	$3, 0($sp)
	xor	$1, $3, $1
	sb	$1, 0($2)
	lbu	$1, 65($sp)
	lbu	$3, 1($sp)
	xor	$1, $3, $1
	sb	$1, 1($2)
	lbu	$1, 66($sp)
	lbu	$3, 2($sp)
	xor	$1, $3, $1
	sb	$1, 2($2)
	lbu	$1, 67($sp)
	lbu	$3, 3($sp)
	xor	$1, $3, $1
	sb	$1, 3($2)
	lbu	$1, 68($sp)
	lbu	$3, 4($sp)
	xor	$1, $3, $1
	sb	$1, 4($2)
	lbu	$1, 69($sp)
	lbu	$3, 5($sp)
	xor	$1, $3, $1
	sb	$1, 5($2)
	lbu	$1, 70($sp)
	lbu	$3, 6($sp)
	xor	$1, $3, $1
	sb	$1, 6($2)
	lbu	$1, 71($sp)
	lbu	$3, 7($sp)
	xor	$1, $3, $1
	sb	$1, 7($2)
	lbu	$1, 72($sp)
	lbu	$3, 8($sp)
	xor	$1, $3, $1
	sb	$1, 8($2)
	lbu	$1, 73($sp)
	lbu	$3, 9($sp)
	xor	$1, $3, $1
	sb	$1, 9($2)
	lbu	$1, 74($sp)
	lbu	$3, 10($sp)
	xor	$1, $3, $1
	sb	$1, 10($2)
	lbu	$1, 75($sp)
	lbu	$3, 11($sp)
	xor	$1, $3, $1
	sb	$1, 11($2)
	lbu	$1, 76($sp)
	lbu	$3, 12($sp)
	xor	$1, $3, $1
	sb	$1, 12($2)
	lbu	$1, 77($sp)
	lbu	$3, 13($sp)
	xor	$1, $3, $1
	sb	$1, 13($2)
	lbu	$1, 78($sp)
	lbu	$3, 14($sp)
	xor	$1, $3, $1
	sb	$1, 14($2)
	lbu	$1, 79($sp)
	lbu	$3, 15($sp)
	xor	$1, $3, $1
	sb	$1, 15($2)
	lbu	$1, 80($sp)
	lbu	$3, 16($sp)
	xor	$1, $3, $1
	sb	$1, 16($2)
	lbu	$1, 81($sp)
	lbu	$3, 17($sp)
	xor	$1, $3, $1
	sb	$1, 17($2)
	lbu	$1, 82($sp)
	lbu	$3, 18($sp)
	xor	$1, $3, $1
	sb	$1, 18($2)
	lbu	$1, 83($sp)
	lbu	$3, 19($sp)
	xor	$1, $3, $1
	sb	$1, 19($2)
	lbu	$1, 84($sp)
	lbu	$3, 20($sp)
	xor	$1, $3, $1
	sb	$1, 20($2)
	lbu	$1, 85($sp)
	lbu	$3, 21($sp)
	xor	$1, $3, $1
	sb	$1, 21($2)
	lbu	$1, 86($sp)
	lbu	$3, 22($sp)
	xor	$1, $3, $1
	sb	$1, 22($2)
	lbu	$1, 87($sp)
	lbu	$3, 23($sp)
	xor	$1, $3, $1
	sb	$1, 23($2)
	lbu	$1, 88($sp)
	lbu	$3, 24($sp)
	xor	$1, $3, $1
	sb	$1, 24($2)
	lbu	$1, 89($sp)
	lbu	$3, 25($sp)
	xor	$1, $3, $1
	sb	$1, 25($2)
	lbu	$1, 90($sp)
	lbu	$3, 26($sp)
	xor	$1, $3, $1
	sb	$1, 26($2)
	lbu	$1, 91($sp)
	lbu	$3, 27($sp)
	xor	$1, $3, $1
	sb	$1, 27($2)
	lbu	$1, 92($sp)
	lbu	$3, 28($sp)
	xor	$1, $3, $1
	sb	$1, 28($2)
	lbu	$1, 93($sp)
	lbu	$3, 29($sp)
	xor	$1, $3, $1
	sb	$1, 29($2)
	lbu	$1, 94($sp)
	lbu	$3, 30($sp)
	xor	$1, $3, $1
	sb	$1, 30($2)
	lbu	$1, 95($sp)
	lbu	$3, 31($sp)
	xor	$1, $3, $1
	sb	$1, 31($2)
	jr	$ra
	addiu	$sp, $sp, 128
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_sha256
$func_end0:
	.size	hmac_sha256, ($func_end0)-hmac_sha256
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
