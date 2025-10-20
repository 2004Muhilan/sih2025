	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"hmac_opad.c"
	.globl	hmac_create_opad                # -- Begin function hmac_create_opad
	.p2align	2
	.type	hmac_create_opad,@function
	.set	nomicromips
	.set	nomips16
	.ent	hmac_create_opad
hmac_create_opad:                       # @hmac_create_opad
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	addiu	$1, $zero, 0
	sw	$zero, 8($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 64
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_9
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 8($fp)
	lw	$2, 16($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_5
	nop
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_6
	nop
$BB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	lw	$2, 8($fp)
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
	addiu	$2, $zero, 92
	xor	$1, $1, $2
	lw	$2, 12($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_1
	nop
$BB0_9:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	hmac_create_opad
$func_end0:
	.size	hmac_create_opad, ($func_end0)-hmac_create_opad
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
