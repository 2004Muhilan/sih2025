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
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_17
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sll	$1, $1, 16
	sw	$1, 8($fp)
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_5
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_6
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 12($fp)
	addiu	$3, $zero, 1
	addu	$2, $2, $3
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sll	$2, $1, 8
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 2
	addu	$1, $1, $2
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_9
	nop
$BB0_8:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 12($fp)
	addiu	$3, $zero, 2
	addu	$2, $2, $3
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$2, $1, 255
	lw	$1, 8($fp)
	or	$1, $1, $2
	sw	$1, 8($fp)
$BB0_9:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 8($fp)
	srl	$2, $2, 18
	addiu	$3, $zero, 63
	and	$3, $2, $3
	lw	$2, %got(b64)($1)
	addiu	$2, $2, %lo(b64)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 20($fp)
	lw	$4, 16($fp)
	addiu	$5, $zero, 1
	addu	$5, $4, $5
	sw	$5, 16($fp)
	addu	$3, $3, $4
	sb	$2, 0($3)
	lw	$2, 8($fp)
	srl	$2, $2, 12
	addiu	$3, $zero, 63
	and	$2, $2, $3
	lw	$1, %got(b64)($1)
	addiu	$1, $1, %lo(b64)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 20($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 1
	addu	$4, $3, $4
	sw	$4, 16($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_11
	nop
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_12
	nop
$BB0_11:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 8($fp)
	srl	$2, $2, 6
	addiu	$3, $zero, 63
	and	$2, $2, $3
	lw	$1, %got(b64)($1)
	addiu	$1, $1, %lo(b64)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 20($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 1
	addu	$4, $3, $4
	sw	$4, 16($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
$BB0_12:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 2
	addu	$1, $1, $2
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_14
	nop
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_15
	nop
$BB0_14:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 8($fp)
	addiu	$3, $zero, 63
	and	$2, $2, $3
	lw	$1, %got(b64)($1)
	addiu	$1, $1, %lo(b64)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 20($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 1
	addu	$4, $3, $4
	sw	$4, 16($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
$BB0_15:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_16
	nop
$BB0_16:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 3
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_1
	nop
$BB0_17:
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	addiu	$2, $zero, 0
	sb	$zero, 0($1)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	base64_encode_no_padding
$func_end0:
	.size	base64_encode_no_padding, ($func_end0)-base64_encode_no_padding
                                        # -- End function
	.type	b64,@object                     # @b64
	.section	.rodata,"a",@progbits
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym b64
	.text
