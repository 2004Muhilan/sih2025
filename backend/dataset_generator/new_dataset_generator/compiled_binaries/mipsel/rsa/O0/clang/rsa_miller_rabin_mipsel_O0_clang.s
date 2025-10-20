	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rsa_miller_rabin.c"
	.globl	rsa_miller_rabin                # -- Begin function rsa_miller_rabin
	.p2align	2
	.type	rsa_miller_rabin,@function
	.set	nomicromips
	.set	nomips16
	.ent	rsa_miller_rabin
rsa_miller_rabin:                       # @rsa_miller_rabin
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 16($fp)
	sw	$5, 20($fp)
	sw	$6, 12($fp)
	lw	$3, 20($fp)
	lw	$2, 16($fp)
	addiu	$1, $zero, 1
	sltu	$2, $1, $2
	sltu	$1, $zero, $3
	movz	$1, $2, $3
	bnez	$1, $BB0_3
	nop
# %bb.1:
	b	$BB0_2
	nop
$BB0_2:
	addiu	$1, $zero, 0
	sb	$zero, 31($fp)
	b	$BB0_16
	nop
$BB0_3:
	lw	$2, 20($fp)
	lw	$1, 16($fp)
	xori	$1, $1, 2
	or	$1, $1, $2
	beqz	$1, $BB0_7
	nop
# %bb.4:
	b	$BB0_5
	nop
$BB0_5:
	lw	$2, 20($fp)
	lw	$1, 16($fp)
	xori	$1, $1, 3
	or	$1, $1, $2
	bnez	$1, $BB0_8
	nop
# %bb.6:
	b	$BB0_7
	nop
$BB0_7:
	addiu	$1, $zero, 1
	sb	$1, 31($fp)
	b	$BB0_16
	nop
$BB0_8:
	lbu	$1, 16($fp)
	andi	$1, $1, 1
	bnez	$1, $BB0_11
	nop
# %bb.9:
	b	$BB0_10
	nop
$BB0_10:
	addiu	$1, $zero, 0
	sb	$zero, 31($fp)
	b	$BB0_16
	nop
$BB0_11:
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	sltiu	$3, $2, 1
	subu	$1, $1, $3
	addiu	$2, $2, -1
	sw	$2, 0($fp)
	sw	$1, 4($fp)
$BB0_12:                                # =>This Inner Loop Header: Depth=1
	lbu	$1, 0($fp)
	andi	$1, $1, 1
	bnez	$1, $BB0_15
	nop
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	b	$BB0_14
	nop
$BB0_14:                                #   in Loop: Header=BB0_12 Depth=1
	lw	$1, 0($fp)
	lw	$2, 4($fp)
	sll	$3, $2, 31
	srl	$1, $1, 1
	or	$1, $1, $3
	srl	$2, $2, 1
	sw	$2, 4($fp)
	sw	$1, 0($fp)
	b	$BB0_12
	nop
$BB0_15:
	addiu	$1, $zero, 1
	sb	$1, 31($fp)
$BB0_16:
	lbu	$1, 31($fp)
	andi	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rsa_miller_rabin
$func_end0:
	.size	rsa_miller_rabin, ($func_end0)-rsa_miller_rabin
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
