	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"xor_counter_mode.c"
	.globl	xor_counter_mode                # -- Begin function xor_counter_mode
	.p2align	2
	.type	xor_counter_mode,@function
	.set	nomicromips
	.set	nomips16
	.ent	xor_counter_mode
xor_counter_mode:                       # @xor_counter_mode
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
	lw	$2, 60($fp)
	lw	$1, 56($fp)
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	sw	$7, 16($fp)
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	addiu	$1, $zero, 0
	sw	$zero, 4($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 24($fp)
	sltu	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	lw	$3, 4($fp)
	lw	$2, 16($fp)
	divu	$zero, $3, $2
	teq	$2, $zero, 7
	mfhi	$2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 12($fp)
	addu	$2, $2, $3
	andi	$2, $2, 255
	andi	$2, $2, 255
	xor	$1, $1, $2
	sb	$1, 3($fp)
	lbu	$1, 3($fp)
	andi	$3, $1, 255
	lw	$1, 28($fp)
	lw	$2, 4($fp)
	addu	$2, $1, $2
	lbu	$1, 0($2)
	andi	$1, $1, 255
	xor	$1, $1, $3
	sb	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 4($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 4($fp)
	b	$BB0_1
	nop
$BB0_5:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	xor_counter_mode
$func_end0:
	.size	xor_counter_mode, ($func_end0)-xor_counter_mode
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
