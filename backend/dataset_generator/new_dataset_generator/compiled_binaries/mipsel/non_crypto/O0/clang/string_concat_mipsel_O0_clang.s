	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"string_concat.c"
	.globl	string_concat                   # -- Begin function string_concat
	.p2align	2
	.type	string_concat,@function
	.set	nomicromips
	.set	nomips16
	.ent	string_concat
string_concat:                          # @string_concat
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
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$3, 20($fp)
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	bgtz	$1, $BB0_3
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	b	$BB0_4
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	seb	$1, $1
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	sw	$1, 8($fp)                      # 4-byte Folded Spill
$BB0_4:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	bgtz	$1, $BB0_6
	nop
# %bb.5:
	b	$BB0_7
	nop
$BB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_1
	nop
$BB0_7:
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_8:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 20($fp)
	addiu	$3, $zero, 1
	subu	$3, $2, $3
	addiu	$2, $zero, 0
	sltu	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	bgtz	$1, $BB0_10
	nop
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	b	$BB0_11
	nop
$BB0_10:                                #   in Loop: Header=BB0_8 Depth=1
	lw	$1, 24($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	seb	$1, $1
	addiu	$2, $zero, 0
	xor	$1, $1, $zero
	sltu	$1, $zero, $1
	sw	$1, 4($fp)                      # 4-byte Folded Spill
$BB0_11:                                #   in Loop: Header=BB0_8 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	bgtz	$1, $BB0_13
	nop
# %bb.12:
	b	$BB0_14
	nop
$BB0_13:                                #   in Loop: Header=BB0_8 Depth=1
	lw	$1, 24($fp)
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	lw	$2, 28($fp)
	lw	$3, 16($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_8
	nop
$BB0_14:
	lw	$1, 28($fp)
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
	.end	string_concat
$func_end0:
	.size	string_concat, ($func_end0)-string_concat
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
