	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"base64_decode_urlsafe.c"
	.globl	base64_url_char_value           # -- Begin function base64_url_char_value
	.p2align	2
	.type	base64_url_char_value,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_url_char_value
base64_url_char_value:                  # @base64_url_char_value
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
	xori	$1, $4, 95
	addiu	$2, $zero, -1
	addiu	$3, $zero, 63
	movz	$2, $3, $1
	xori	$1, $4, 45
	addiu	$3, $zero, 62
	jr	$ra
	movz	$2, $3, $1
	.set	at
	.set	macro
	.set	reorder
	.end	base64_url_char_value
$func_end0:
	.size	base64_url_char_value, ($func_end0)-base64_url_char_value
                                        # -- End function
	.globl	base64_decode_urlsafe           # -- Begin function base64_decode_urlsafe
	.p2align	2
	.type	base64_decode_urlsafe,@function
	.set	nomicromips
	.set	nomips16
	.ent	base64_decode_urlsafe
base64_decode_urlsafe:                  # @base64_decode_urlsafe
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$6, 0($4)
	beqz	$6, $BB1_9
	nop
# %bb.1:
	addiu	$7, $4, 1
	addiu	$2, $zero, 63
	b	$BB1_4
	addiu	$3, $zero, 62
$BB1_2:                                 #   in Loop: Header=BB1_4 Depth=1
	addiu	$7, $6, -71
$BB1_3:                                 #   in Loop: Header=BB1_4 Depth=1
	sb	$7, 0($5)
	addiu	$7, $4, 1
	lbu	$6, 0($4)
	beqz	$6, $BB1_9
	addiu	$5, $5, 1
$BB1_4:                                 # =>This Inner Loop Header: Depth=1
	move	$4, $7
	addiu	$7, $6, -65
	andi	$1, $7, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_3
	nop
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	addiu	$1, $6, -97
	andi	$1, $1, 255
	sltiu	$1, $1, 26
	bnez	$1, $BB1_2
	nop
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	addiu	$1, $6, -48
	andi	$1, $1, 255
	sltiu	$1, $1, 10
	beqz	$1, $BB1_8
	nop
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	b	$BB1_3
	addiu	$7, $6, 4
$BB1_8:                                 #   in Loop: Header=BB1_4 Depth=1
	andi	$1, $6, 255
	addiu	$7, $zero, -1
	xori	$6, $1, 95
	xori	$1, $1, 45
	movz	$7, $2, $6
	b	$BB1_3
	movz	$7, $3, $1
$BB1_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	base64_decode_urlsafe
$func_end1:
	.size	base64_decode_urlsafe, ($func_end1)-base64_decode_urlsafe
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
