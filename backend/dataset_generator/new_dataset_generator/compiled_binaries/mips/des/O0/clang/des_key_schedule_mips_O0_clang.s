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
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 8($fp)
	sw	$5, 12($fp)
	sw	$6, 4($fp)
	addiu	$1, $zero, 0
	sw	$zero, 0($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$2, 8($fp)
	lw	$1, 12($fp)
	lw	$4, 0($fp)
	sll	$3, $4, 2
	srlv	$5, $1, $3
	sll	$1, $2, 1
	xori	$6, $3, 31
	sllv	$1, $1, $6
	or	$1, $1, $5
	srlv	$2, $2, $3
	andi	$3, $3, 32
	movn	$1, $2, $3
	addiu	$5, $zero, 0
	movn	$2, $zero, $3
	andi	$3, $2, 65535
	lw	$2, 4($fp)
	sll	$4, $4, 3
	addu	$2, $2, $4
	sw	$3, 0($2)
	sw	$1, 4($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 0($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 0($fp)
	b	$BB0_1
	nop
$BB0_5:
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
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
