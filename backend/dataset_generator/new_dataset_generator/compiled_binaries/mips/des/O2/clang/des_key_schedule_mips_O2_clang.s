	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"des_key_schedule.c"
	.globl	des_key_schedule                # -- Begin function des_key_schedule
	.p2align	2
	.type	des_key_schedule,@function
	.set	nomicromips
	.set	nomips16
	.ent	des_key_schedule
des_key_schedule:                       # @des_key_schedule
	.frame	$sp,40,$ra
	.mask 	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$fp, 36($sp)                    # 4-byte Folded Spill
	sw	$23, 32($sp)                    # 4-byte Folded Spill
	sw	$22, 28($sp)                    # 4-byte Folded Spill
	sw	$21, 24($sp)                    # 4-byte Folded Spill
	sw	$20, 20($sp)                    # 4-byte Folded Spill
	sw	$19, 16($sp)                    # 4-byte Folded Spill
	sw	$18, 12($sp)                    # 4-byte Folded Spill
	sw	$17, 8($sp)                     # 4-byte Folded Spill
	sw	$16, 4($sp)                     # 4-byte Folded Spill
	sll	$1, $4, 4
	srl	$2, $5, 28
	srl	$3, $4, 28
	sll	$7, $4, 8
	sll	$8, $4, 12
	sll	$9, $4, 16
	sll	$10, $4, 20
	sll	$11, $4, 24
	sll	$12, $4, 28
	srl	$13, $4, 8
	srl	$14, $4, 12
	or	$1, $2, $1
	andi	$2, $4, 65535
	ext	$15, $4, 4, 16
	ext	$24, $4, 8, 16
	ext	$25, $4, 12, 16
	srl	$gp, $4, 4
	srl	$16, $4, 16
	srl	$17, $4, 20
	srl	$18, $4, 24
	srl	$19, $5, 24
	srl	$20, $5, 20
	srl	$21, $5, 16
	srl	$22, $5, 12
	srl	$23, $5, 8
	srl	$fp, $5, 4
	or	$12, $fp, $12
	or	$11, $23, $11
	or	$10, $22, $10
	or	$9, $21, $9
	or	$8, $20, $8
	or	$7, $19, $7
	sw	$4, 68($6)
	sw	$5, 4($6)
	sw	$3, 124($6)
	sw	$18, 116($6)
	sw	$17, 108($6)
	sw	$16, 100($6)
	sw	$14, 92($6)
	sw	$13, 84($6)
	sw	$gp, 76($6)
	sw	$3, 56($6)
	sw	$18, 48($6)
	sw	$17, 40($6)
	sw	$16, 32($6)
	sw	$25, 24($6)
	sw	$24, 16($6)
	sw	$15, 8($6)
	sw	$2, 0($6)
	sw	$1, 60($6)
	sw	$7, 52($6)
	sw	$8, 44($6)
	sw	$9, 36($6)
	sw	$10, 28($6)
	sw	$11, 20($6)
	sw	$12, 12($6)
	sw	$zero, 120($6)
	sw	$zero, 112($6)
	sw	$zero, 104($6)
	sw	$zero, 96($6)
	sw	$zero, 88($6)
	sw	$zero, 80($6)
	sw	$zero, 72($6)
	sw	$zero, 64($6)
	lw	$16, 4($sp)                     # 4-byte Folded Reload
	lw	$17, 8($sp)                     # 4-byte Folded Reload
	lw	$18, 12($sp)                    # 4-byte Folded Reload
	lw	$19, 16($sp)                    # 4-byte Folded Reload
	lw	$20, 20($sp)                    # 4-byte Folded Reload
	lw	$21, 24($sp)                    # 4-byte Folded Reload
	lw	$22, 28($sp)                    # 4-byte Folded Reload
	lw	$23, 32($sp)                    # 4-byte Folded Reload
	lw	$fp, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	des_key_schedule
$func_end0:
	.size	des_key_schedule, ($func_end0)-des_key_schedule
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
