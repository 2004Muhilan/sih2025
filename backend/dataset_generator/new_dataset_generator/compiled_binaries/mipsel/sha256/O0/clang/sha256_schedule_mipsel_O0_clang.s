	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_schedule.c"
	.globl	sha256_message_schedule         # -- Begin function sha256_message_schedule
	.p2align	2
	.type	sha256_message_schedule,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_message_schedule
sha256_message_schedule:                # @sha256_message_schedule
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
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	lw	$2, 12($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 16($fp)
	lw	$3, 12($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 16
	sw	$1, 8($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 64
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	addiu	$3, $zero, 15
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	srl	$1, $1, 7
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 15
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sll	$2, $2, 25
	or	$1, $1, $2
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 15
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 18
	lw	$3, 16($fp)
	lw	$4, 8($fp)
	addiu	$5, $zero, 15
	subu	$4, $4, $5
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	sll	$3, $3, 14
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 15
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 3
	xor	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	addiu	$3, $zero, 2
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	srl	$1, $1, 17
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 2
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	sll	$2, $2, 15
	or	$1, $1, $2
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 2
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 19
	lw	$3, 16($fp)
	lw	$4, 8($fp)
	addiu	$5, $zero, 2
	subu	$4, $4, $5
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	sll	$3, $3, 13
	or	$2, $2, $3
	xor	$1, $1, $2
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 2
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	srl	$2, $2, 10
	xor	$1, $1, $2
	sw	$1, 0($fp)
	lw	$1, 16($fp)
	lw	$2, 8($fp)
	addiu	$3, $zero, 16
	subu	$2, $2, $3
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 4($fp)
	addu	$1, $1, $2
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	addiu	$4, $zero, 7
	subu	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	addu	$1, $1, $2
	lw	$2, 0($fp)
	addu	$1, $1, $2
	lw	$2, 16($fp)
	lw	$3, 8($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 8($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 8($fp)
	b	$BB0_6
	nop
$BB0_10:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_message_schedule
$func_end0:
	.size	sha256_message_schedule, ($func_end0)-sha256_message_schedule
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
