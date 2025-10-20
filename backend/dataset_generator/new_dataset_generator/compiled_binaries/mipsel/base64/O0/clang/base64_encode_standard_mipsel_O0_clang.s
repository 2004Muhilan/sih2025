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
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	addu	$1, $2, $25
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sw	$4, 52($fp)
	sw	$5, 48($fp)
	sw	$6, 44($fp)
	addiu	$1, $zero, 0
	sw	$zero, 40($fp)
	addiu	$1, $zero, 0
	sw	$zero, 36($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 40($fp)
	lw	$2, 48($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_16
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 40($fp)
	lw	$2, 48($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_5
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_6
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 52($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 1
	addu	$3, $2, $3
	sw	$3, 40($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	$BB0_7
	nop
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $zero, 0
	sw	$1, 12($fp)                     # 4-byte Folded Spill
	b	$BB0_7
	nop
$BB0_7:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	lw	$2, 48($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_9
	nop
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_10
	nop
$BB0_9:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 52($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 1
	addu	$3, $2, $3
	sw	$3, 40($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	$BB0_11
	nop
$BB0_10:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $zero, 0
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	b	$BB0_11
	nop
$BB0_11:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	sw	$1, 28($fp)
	lw	$1, 40($fp)
	lw	$2, 48($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_13
	nop
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_14
	nop
$BB0_13:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 52($fp)
	lw	$2, 40($fp)
	addiu	$3, $zero, 1
	addu	$3, $2, $3
	sw	$3, 40($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	$BB0_15
	nop
$BB0_14:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	$BB0_15
	nop
$BB0_15:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	lw	$2, 4($fp)                      # 4-byte Folded Reload
	sw	$2, 24($fp)
	lw	$2, 32($fp)
	sll	$2, $2, 16
	lw	$3, 28($fp)
	sll	$3, $3, 8
	addu	$2, $2, $3
	lw	$3, 24($fp)
	addu	$2, $2, $3
	sw	$2, 20($fp)
	lw	$2, 20($fp)
	srl	$2, $2, 18
	addiu	$3, $zero, 63
	and	$3, $2, $3
	lw	$2, %got(b64)($1)
	addiu	$2, $2, %lo(b64)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 44($fp)
	lw	$4, 36($fp)
	addiu	$5, $zero, 1
	addu	$5, $4, $5
	sw	$5, 36($fp)
	addu	$3, $3, $4
	sb	$2, 0($3)
	lw	$2, 20($fp)
	srl	$2, $2, 12
	addiu	$3, $zero, 63
	and	$3, $2, $3
	lw	$2, %got(b64)($1)
	addiu	$2, $2, %lo(b64)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 44($fp)
	lw	$4, 36($fp)
	addiu	$5, $zero, 1
	addu	$5, $4, $5
	sw	$5, 36($fp)
	addu	$3, $3, $4
	sb	$2, 0($3)
	lw	$2, 20($fp)
	srl	$2, $2, 6
	addiu	$3, $zero, 63
	and	$3, $2, $3
	lw	$2, %got(b64)($1)
	addiu	$2, $2, %lo(b64)
	addu	$2, $2, $3
	lbu	$2, 0($2)
	lw	$3, 44($fp)
	lw	$4, 36($fp)
	addiu	$5, $zero, 1
	addu	$5, $4, $5
	sw	$5, 36($fp)
	addu	$3, $3, $4
	sb	$2, 0($3)
	lw	$2, 20($fp)
	addiu	$3, $zero, 63
	and	$2, $2, $3
	lw	$1, %got(b64)($1)
	addiu	$1, $1, %lo(b64)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 44($fp)
	lw	$3, 36($fp)
	addiu	$4, $zero, 1
	addu	$4, $3, $4
	sw	$4, 36($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	b	$BB0_1
	nop
$BB0_16:
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
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
	.section	.rodata,"a",@progbits
b64:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	b64, 65

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym b64
	.text
