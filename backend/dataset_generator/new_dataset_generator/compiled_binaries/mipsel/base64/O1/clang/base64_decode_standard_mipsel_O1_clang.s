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
	sw	$zero, 0($6)
	addiu	$2, $zero, 0
	addiu	$3, $zero, 61
	addiu	$7, $zero, 4
	addiu	$8, $zero, 63
	addiu	$9, $zero, 62
	b	$BB1_2
	move	$10, $4
$BB1_1:                                 #   in Loop: Header=BB1_2 Depth=1
	lw	$1, 0($6)
	addiu	$12, $1, 1
	sw	$12, 0($6)
	addu	$1, $5, $1
	srl	$12, $11, 16
	sb	$12, 0($1)
	lw	$1, 0($6)
	addiu	$12, $1, 1
	sw	$12, 0($6)
	addu	$1, $5, $1
	addiu	$10, $10, 4
	addiu	$2, $2, 4
	srl	$12, $11, 8
	sb	$12, 0($1)
	lw	$1, 0($6)
	addiu	$12, $1, 1
	sw	$12, 0($6)
	addu	$1, $5, $1
	sb	$11, 0($1)
$BB1_2:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	addu	$1, $4, $2
	lbu	$11, 0($1)
	beqz	$11, $BB1_12
	nop
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	beq	$11, $3, $BB1_12
	nop
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	addiu	$12, $zero, 0
	b	$BB1_7
	addiu	$11, $zero, 0
$BB1_5:                                 #   in Loop: Header=BB1_7 Depth=2
	addiu	$14, $13, -71
$BB1_6:                                 #   in Loop: Header=BB1_7 Depth=2
	sll	$1, $11, 6
	addiu	$12, $12, 1
	beq	$12, $7, $BB1_1
	or	$11, $14, $1
$BB1_7:                                 #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $10, $12
	lb	$13, 0($1)
	addiu	$14, $13, -65
	andi	$1, $14, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_6
	nop
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	addiu	$1, $13, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_5
	nop
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	addiu	$1, $13, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB1_11
	nop
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=2
	b	$BB1_6
	addiu	$14, $13, 4
$BB1_11:                                #   in Loop: Header=BB1_7 Depth=2
	xori	$1, $13, 47
	addiu	$14, $zero, -1
	movz	$14, $8, $1
	xori	$1, $13, 43
	b	$BB1_6
	movz	$14, $9, $1
$BB1_12:
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
