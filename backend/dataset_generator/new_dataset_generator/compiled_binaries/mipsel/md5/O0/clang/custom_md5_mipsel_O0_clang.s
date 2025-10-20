	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_md5.c"
	.globl	md5_transform                   # -- Begin function md5_transform
	.p2align	2
	.type	md5_transform,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_transform
md5_transform:                          # @md5_transform
	.frame	$fp,120,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$fp, 112($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 108($fp)
	sw	$5, 104($fp)
	lw	$1, 108($fp)
	lw	$1, 0($1)
	sw	$1, 100($fp)
	lw	$1, 108($fp)
	lw	$1, 4($1)
	sw	$1, 96($fp)
	lw	$1, 108($fp)
	lw	$1, 8($1)
	sw	$1, 92($fp)
	lw	$1, 108($fp)
	lw	$1, 12($1)
	sw	$1, 88($fp)
	addiu	$1, $zero, 0
	sw	$zero, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 104($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	lw	$2, 104($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 8
	or	$1, $1, $2
	lw	$2, 104($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 2
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 16
	or	$1, $1, $2
	lw	$2, 104($fp)
	lw	$3, 16($fp)
	addiu	$4, $zero, 3
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 24
	or	$1, $1, $2
	lw	$3, 20($fp)
	addiu	$2, $fp, 24
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	lw	$1, 16($fp)
	addiu	$2, $zero, 4
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 0
	sw	$zero, 12($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 96($fp)
	lw	$2, 92($fp)
	and	$1, $1, $2
	lw	$2, 96($fp)
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lw	$3, 88($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 88($fp)
	sw	$1, 4($fp)
	lw	$1, 92($fp)
	sw	$1, 88($fp)
	lw	$1, 96($fp)
	sw	$1, 92($fp)
	lw	$1, 96($fp)
	lw	$2, 100($fp)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	lw	$4, 12($fp)
	addiu	$3, $fp, 24
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	addu	$2, $2, $3
	sll	$2, $2, 7
	lw	$3, 100($fp)
	lw	$4, 8($fp)
	addu	$3, $3, $4
	lw	$5, 12($fp)
	addiu	$4, $fp, 24
	sll	$5, $5, 2
	addu	$4, $4, $5
	lw	$4, 0($4)
	addu	$3, $3, $4
	srl	$3, $3, 25
	or	$2, $2, $3
	addu	$1, $1, $2
	sw	$1, 96($fp)
	lw	$1, 4($fp)
	sw	$1, 100($fp)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 12($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 12($fp)
	b	$BB0_6
	nop
$BB0_10:
	lw	$3, 100($fp)
	lw	$2, 108($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	lw	$3, 96($fp)
	lw	$2, 108($fp)
	lw	$1, 4($2)
	addu	$1, $1, $3
	sw	$1, 4($2)
	lw	$3, 92($fp)
	lw	$2, 108($fp)
	lw	$1, 8($2)
	addu	$1, $1, $3
	sw	$1, 8($2)
	lw	$3, 88($fp)
	lw	$2, 108($fp)
	lw	$1, 12($2)
	addu	$1, $1, $3
	sw	$1, 12($2)
	move	$sp, $fp
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 120
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	md5_transform
$func_end0:
	.size	md5_transform, ($func_end0)-md5_transform
                                        # -- End function
	.globl	md5_init                        # -- Begin function md5_init
	.p2align	2
	.type	md5_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_init
md5_init:                               # @md5_init
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	lw	$2, 4($fp)
	lui	$1, 26437
	ori	$1, $1, 8961
	sw	$1, 0($2)
	lw	$2, 4($fp)
	lui	$1, 61389
	ori	$1, $1, 43913
	sw	$1, 4($2)
	lw	$2, 4($fp)
	lui	$1, 39098
	ori	$1, $1, 56574
	sw	$1, 8($2)
	lw	$2, 4($fp)
	lui	$1, 4146
	ori	$1, $1, 21622
	sw	$1, 12($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	md5_init
$func_end1:
	.size	md5_init, ($func_end1)-md5_init
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
