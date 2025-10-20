	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"base64_decode_standard.c"
	.globl	base64_char_value               # -- Begin function base64_char_value
	.p2align	2
	.type	base64_char_value,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_char_value
base64_char_value:                      # @base64_char_value
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $4, -65
	andi	$1, $2, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB0_2
	nop
# %bb.1:
	jr	$ra
	nop
$BB0_2:
	addiu	$1, $4, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB0_4
	nop
# %bb.3:
	jr	$ra
	addiu	$2, $4, -71
$BB0_4:
	addiu	$1, $4, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB0_6
	nop
# %bb.5:
	jr	$ra
	addiu	$2, $4, 4
$BB0_6:
	xori	$1, $4, 47
	addiu	$2, $zero, -1
	addiu	$3, $zero, 63
	movz	$2, $3, $1
	xori	$1, $4, 43
	addiu	$3, $zero, 62
	jr	$ra
	movz	$2, $3, $1
	.set	at
	.set	macro
	.set	reorder
	.end	base64_char_value
$func_end0:
	.size	base64_char_value, ($func_end0)-base64_char_value
                                        # -- End function
	.globl	base64_decode_standard          # -- Begin function base64_decode_standard
	.p2align	2
	.type	base64_decode_standard,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_decode_standard
base64_decode_standard:                 # @base64_decode_standard
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $4, 3
	addiu	$3, $zero, 61
	addiu	$4, $zero, 63
	addiu	$7, $zero, 62
	b	$BB1_3
	sw	$zero, 0($6)
$BB1_1:                                 #   in Loop: Header=BB1_3 Depth=1
	addiu	$11, $12, -71
$BB1_2:                                 #   in Loop: Header=BB1_3 Depth=1
	sll	$1, $9, 6
	sll	$8, $8, 12
	addiu	$2, $2, 4
	or	$1, $8, $1
	lw	$8, 0($6)
	or	$1, $10, $1
	sll	$1, $1, 6
	addiu	$9, $8, 1
	addu	$8, $5, $8
	or	$1, $11, $1
	sw	$9, 0($6)
	srl	$9, $1, 16
	sb	$9, 0($8)
	lw	$8, 0($6)
	addiu	$9, $8, 1
	addu	$8, $5, $8
	sw	$9, 0($6)
	srl	$9, $1, 8
	sb	$9, 0($8)
	lw	$8, 0($6)
	addiu	$9, $8, 1
	addu	$8, $5, $8
	sw	$9, 0($6)
	sb	$1, 0($8)
$BB1_3:                                 # =>This Inner Loop Header: Depth=1
	lbu	$9, -3($2)
	beqz	$9, $BB1_29
	nop
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	beq	$9, $3, $BB1_29
	nop
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $9, -65
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB1_7
	seb	$8, $9
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_12
	addiu	$8, $8, -65
$BB1_7:                                 #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $9, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB1_9
	nop
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_12
	addiu	$8, $8, -71
$BB1_9:                                 #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $9, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB1_11
	nop
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_12
	addiu	$8, $8, 4
$BB1_11:                                #   in Loop: Header=BB1_3 Depth=1
	xori	$1, $9, 47
	addiu	$8, $zero, -1
	movz	$8, $4, $1
	xori	$1, $9, 43
	movz	$8, $7, $1
$BB1_12:                                #   in Loop: Header=BB1_3 Depth=1
	lb	$10, -2($2)
	addiu	$9, $10, -65
	andi	$1, $9, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_18
	nop
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $10, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB1_15
	nop
# %bb.14:                               #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_18
	addiu	$9, $10, -71
$BB1_15:                                #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $10, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB1_17
	nop
# %bb.16:                               #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_18
	addiu	$9, $10, 4
$BB1_17:                                #   in Loop: Header=BB1_3 Depth=1
	xori	$1, $10, 47
	addiu	$9, $zero, -1
	movz	$9, $4, $1
	xori	$1, $10, 43
	movz	$9, $7, $1
$BB1_18:                                #   in Loop: Header=BB1_3 Depth=1
	lb	$11, -1($2)
	addiu	$10, $11, -65
	andi	$1, $10, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_24
	nop
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $11, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	beqz	$1, $BB1_21
	nop
# %bb.20:                               #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_24
	addiu	$10, $11, -71
$BB1_21:                                #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $11, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB1_23
	nop
# %bb.22:                               #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_24
	addiu	$10, $11, 4
$BB1_23:                                #   in Loop: Header=BB1_3 Depth=1
	xori	$1, $11, 47
	addiu	$10, $zero, -1
	movz	$10, $4, $1
	xori	$1, $11, 43
	movz	$10, $7, $1
$BB1_24:                                #   in Loop: Header=BB1_3 Depth=1
	lb	$12, 0($2)
	addiu	$11, $12, -65
	andi	$1, $11, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_2
	nop
# %bb.25:                               #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $12, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_1
	nop
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=1
	addiu	$1, $12, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB1_28
	nop
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=1
	b	$BB1_2
	addiu	$11, $12, 4
$BB1_28:                                #   in Loop: Header=BB1_3 Depth=1
	xori	$1, $12, 47
	addiu	$11, $zero, -1
	movz	$11, $4, $1
	xori	$1, $12, 43
	b	$BB1_2
	movz	$11, $7, $1
$BB1_29:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	base64_decode_standard
$func_end1:
	.size	base64_decode_standard, ($func_end1)-base64_decode_standard
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
