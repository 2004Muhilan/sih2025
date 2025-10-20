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
	.frame	$fp,168,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -168
	sw	$ra, 164($sp)                   # 4-byte Folded Spill
	sw	$fp, 160($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	lw	$1, 184($fp)
	sw	$4, 156($fp)
	sw	$5, 152($fp)
	sw	$6, 148($fp)
	sw	$7, 144($fp)
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 64
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_13
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	lw	$2, 152($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_5
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_6
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 156($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	$BB0_7
	nop
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $zero, 0
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	b	$BB0_7
	nop
$BB0_7:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	addiu	$2, $zero, 54
	xor	$1, $1, $2
	lw	$3, 12($fp)
	addiu	$2, $fp, 80
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 12($fp)
	lw	$2, 152($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_9
	nop
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_10
	nop
$BB0_9:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 156($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	$BB0_11
	nop
$BB0_10:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$1, $zero, 0
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	b	$BB0_11
	nop
$BB0_11:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	addiu	$2, $zero, 92
	xor	$1, $1, $2
	lw	$3, 12($fp)
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_1
	nop
$BB0_13:
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_14:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 32
	slt	$1, $1, $2
	bgtz	$1, $BB0_16
	nop
# %bb.15:
	b	$BB0_18
	nop
$BB0_16:                                #   in Loop: Header=BB0_14 Depth=1
	lw	$2, 8($fp)
	addiu	$1, $fp, 80
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lw	$3, 8($fp)
	addiu	$2, $fp, 16
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	xor	$1, $1, $2
	lw	$2, 184($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_14
	nop
$BB0_18:
	move	$sp, $fp
	lw	$fp, 160($sp)                   # 4-byte Folded Reload
	lw	$ra, 164($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 168
	jr	$ra
	nop
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
