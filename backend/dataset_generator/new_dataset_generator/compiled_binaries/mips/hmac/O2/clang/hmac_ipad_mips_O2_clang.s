	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_ipad.c"
	.globl	hmac_create_ipad                # -- Begin function hmac_create_ipad
	.p2align	2
	.type	hmac_create_ipad,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_create_ipad
hmac_create_ipad:                       # @hmac_create_ipad
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	b	$BB0_2
	addiu	$3, $zero, 64
$BB0_1:                                 #   in Loop: Header=BB0_2 Depth=1
	addu	$1, $6, $2
	xori	$7, $7, 54
	addiu	$2, $2, 1
	beq	$2, $3, $BB0_4
	sb	$7, 0($1)
$BB0_2:                                 # =>This Inner Loop Header: Depth=1
	sltu	$1, $2, $5
	beqz	$1, $BB0_1
	addiu	$7, $zero, 0
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addu	$1, $4, $2
	lbu	$7, 0($1)
	b	$BB0_1
	nop
$BB0_4:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_create_ipad
$func_end0:
	.size	hmac_create_ipad, ($func_end0)-hmac_create_ipad
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
