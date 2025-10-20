	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"base64_no_padding.c"
	.globl	base64_encode_no_padding        # -- Begin function base64_encode_no_padding
	.p2align	2
	.type	base64_encode_no_padding,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_encode_no_padding
base64_encode_no_padding:               # @base64_encode_no_padding
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	beqz	$5, $BB0_12
	addu	$3, $2, $25
# %bb.1:
	addiu	$2, $zero, 0
	lw	$3, %got(b64)($3)
	addiu	$7, $3, %lo(b64)
	b	$BB0_4
	addiu	$8, $zero, 0
$BB0_2:                                 #   in Loop: Header=BB0_4 Depth=1
	addu	$1, $6, $12
	andi	$8, $9, 63
	addiu	$9, $3, %lo(b64)
	addu	$8, $9, $8
	lbu	$8, 0($8)
	sb	$8, 0($1)
	addiu	$8, $12, 1
$BB0_3:                                 #   in Loop: Header=BB0_4 Depth=1
	addiu	$2, $2, 3
	sltu	$1, $2, $5
	beqz	$1, $BB0_13
	nop
$BB0_4:                                 # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, 1
	sltu	$10, $1, $5
	addu	$12, $4, $2
	lbu	$1, 0($12)
	beqz	$10, $BB0_6
	sll	$9, $1, 16
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	lbu	$1, 1($12)
	sll	$1, $1, 8
	or	$9, $1, $9
$BB0_6:                                 #   in Loop: Header=BB0_4 Depth=1
	addiu	$1, $2, 2
	sltu	$11, $1, $5
	beqz	$11, $BB0_8
	nop
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	lbu	$1, 2($12)
	or	$9, $9, $1
$BB0_8:                                 #   in Loop: Header=BB0_4 Depth=1
	srl	$1, $9, 18
	addu	$1, $7, $1
	addu	$12, $6, $8
	ext	$13, $9, 12, 6
	addu	$13, $7, $13
	lbu	$13, 0($13)
	sb	$13, 1($12)
	lbu	$1, 0($1)
	sb	$1, 0($12)
	beqz	$10, $BB0_10
	addiu	$12, $8, 2
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	addu	$1, $6, $12
	ext	$10, $9, 6, 6
	addiu	$12, $3, %lo(b64)
	addu	$10, $12, $10
	lbu	$10, 0($10)
	sb	$10, 0($1)
	addiu	$12, $8, 3
$BB0_10:                                #   in Loop: Header=BB0_4 Depth=1
	bnez	$11, $BB0_2
	nop
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	b	$BB0_3
	move	$8, $12
$BB0_12:
	addiu	$8, $zero, 0
$BB0_13:
	addu	$1, $6, $8
	jr	$ra
	sb	$zero, 0($1)
	.set	at
	.set	macro
	.set	reorder
	.end	base64_encode_no_padding
$func_end0:
	.size	base64_encode_no_padding, ($func_end0)-base64_encode_no_padding
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
