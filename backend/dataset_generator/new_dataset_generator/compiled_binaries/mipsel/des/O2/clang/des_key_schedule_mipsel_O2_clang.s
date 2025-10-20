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
	sll	$1, $5, 4
	srl	$2, $4, 28
	srl	$3, $5, 20
	srl	$7, $5, 28
	sll	$8, $5, 8
	sll	$9, $5, 12
	sll	$10, $5, 16
	sll	$11, $5, 20
	sll	$12, $5, 24
	or	$1, $2, $1
	andi	$2, $5, 65535
	ext	$13, $5, 4, 16
	ext	$14, $5, 8, 16
	ext	$15, $5, 12, 16
	srl	$24, $5, 8
	srl	$25, $5, 16
	srl	$gp, $5, 4
	srl	$16, $5, 12
	srl	$17, $5, 24
	srl	$18, $4, 24
	srl	$19, $4, 20
	srl	$20, $4, 16
	srl	$21, $4, 12
	srl	$22, $4, 8
	sll	$23, $5, 28
	srl	$fp, $4, 4
	or	$23, $fp, $23
	or	$12, $22, $12
	or	$11, $21, $11
	or	$10, $20, $10
	or	$9, $19, $9
	or	$8, $18, $8
	sw	$5, 64($6)
	sw	$4, 0($6)
	sw	$7, 120($6)
	sw	$17, 112($6)
	sw	$3, 104($6)
	sw	$25, 96($6)
	sw	$16, 88($6)
	sw	$24, 80($6)
	sw	$gp, 72($6)
	sw	$7, 60($6)
	sw	$17, 52($6)
	sw	$3, 44($6)
	sw	$25, 36($6)
	sw	$15, 28($6)
	sw	$14, 20($6)
	sw	$13, 12($6)
	sw	$2, 4($6)
	sw	$1, 56($6)
	sw	$8, 48($6)
	sw	$9, 40($6)
	sw	$10, 32($6)
	sw	$11, 24($6)
	sw	$12, 16($6)
	sw	$23, 8($6)
	sw	$zero, 124($6)
	sw	$zero, 116($6)
	sw	$zero, 108($6)
	sw	$zero, 100($6)
	sw	$zero, 92($6)
	sw	$zero, 84($6)
	sw	$zero, 76($6)
	sw	$zero, 68($6)
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
