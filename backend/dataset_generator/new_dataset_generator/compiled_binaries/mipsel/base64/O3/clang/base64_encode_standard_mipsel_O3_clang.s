	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"base64_encode_standard.c"
	.globl	base64_encode_standard          # -- Begin function base64_encode_standard
	.p2align	2
	.type	base64_encode_standard,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_encode_standard
base64_encode_standard:                 # @base64_encode_standard
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	beqz	$5, $BB0_8
	addu	$3, $2, $25
# %bb.1:
	lw	$1, %got(b64)($3)
	addiu	$2, $6, 3
	addiu	$7, $zero, 0
	b	$BB0_3
	addiu	$3, $1, %lo(b64)
$BB0_2:                                 #   in Loop: Header=BB0_3 Depth=1
	addu	$1, $4, $7
	sll	$7, $8, 8
	lbu	$1, 0($1)
	or	$8, $9, $7
	andi	$9, $9, 63
	ext	$8, $8, 6, 6
	addu	$9, $3, $9
	srl	$10, $1, 2
	sll	$1, $1, 16
	addu	$8, $3, $8
	lbu	$9, 0($9)
	addu	$10, $3, $10
	or	$1, $7, $1
	lbu	$7, 0($8)
	lbu	$8, 0($10)
	ext	$1, $1, 12, 6
	sb	$9, 0($2)
	addu	$1, $3, $1
	sb	$8, -3($2)
	sb	$7, -1($2)
	move	$7, $6
	lbu	$1, 0($1)
	sb	$1, -2($2)
	sltu	$1, $6, $5
	beqz	$1, $BB0_8
	addiu	$2, $2, 4
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	addiu	$6, $7, 1
	sltu	$1, $6, $5
	beqz	$1, $BB0_6
	nop
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addu	$1, $4, $6
	addiu	$6, $7, 2
	lbu	$8, 0($1)
	sltu	$1, $6, $5
	beqz	$1, $BB0_2
	addiu	$9, $zero, 0
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	b	$BB0_7
	nop
$BB0_6:                                 #   in Loop: Header=BB0_3 Depth=1
	addiu	$8, $zero, 0
	sltu	$1, $6, $5
	beqz	$1, $BB0_2
	addiu	$9, $zero, 0
$BB0_7:                                 #   in Loop: Header=BB0_3 Depth=1
	addu	$1, $4, $6
	lbu	$9, 0($1)
	b	$BB0_2
	addiu	$6, $6, 1
$BB0_8:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	base64_encode_standard
$func_end0:
	.size	base64_encode_standard, ($func_end0)-base64_encode_standard
                                        # -- End function
	.type	b64,@object                     # @b64
	.section	.rodata.str1.1,"aMS",@progbits,1
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
