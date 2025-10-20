	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha1_compress.c"
	.globl	sha1_compress                   # -- Begin function sha1_compress
	.p2align	2
	.type	sha1_compress,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_compress
sha1_compress:                          # @sha1_compress
	.frame	$fp,384,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -384
	sw	$ra, 380($sp)                   # 4-byte Folded Spill
	sw	$fp, 376($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 372($fp)
	sw	$5, 368($fp)
	addiu	$1, $zero, 0
	sw	$zero, 44($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 44($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 368($fp)
	lw	$2, 44($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$3, 44($fp)
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 44($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 44($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 16
	sw	$1, 40($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 40($fp)
	addiu	$2, $zero, 80
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 40($fp)
	addiu	$2, $zero, 3
	subu	$2, $1, $2
	addiu	$1, $fp, 48
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 40($fp)
	addiu	$3, $zero, 8
	subu	$3, $2, $3
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	lw	$2, 40($fp)
	addiu	$3, $zero, 14
	subu	$3, $2, $3
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	lw	$2, 40($fp)
	addiu	$3, $zero, 16
	subu	$3, $2, $3
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	sll	$1, $1, 1
	lw	$2, 40($fp)
	addiu	$3, $zero, 3
	subu	$3, $2, $3
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lw	$3, 40($fp)
	addiu	$4, $zero, 8
	subu	$4, $3, $4
	addiu	$3, $fp, 48
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	xor	$2, $2, $3
	lw	$3, 40($fp)
	addiu	$4, $zero, 14
	subu	$4, $3, $4
	addiu	$3, $fp, 48
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	xor	$2, $2, $3
	lw	$3, 40($fp)
	addiu	$4, $zero, 16
	subu	$4, $3, $4
	addiu	$3, $fp, 48
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	xor	$2, $2, $3
	srl	$2, $2, 31
	or	$1, $1, $2
	lw	$3, 40($fp)
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 40($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 40($fp)
	b	$BB0_6
	nop
$BB0_10:
	lw	$1, 372($fp)
	lw	$1, 0($1)
	sw	$1, 36($fp)
	lw	$1, 372($fp)
	lw	$1, 4($1)
	sw	$1, 32($fp)
	lw	$1, 372($fp)
	lw	$1, 8($1)
	sw	$1, 28($fp)
	lw	$1, 372($fp)
	lw	$1, 12($1)
	sw	$1, 24($fp)
	lw	$1, 372($fp)
	lw	$1, 16($1)
	sw	$1, 20($fp)
	addiu	$1, $zero, 0
	sw	$zero, 16($fp)
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 80
	slt	$1, $1, $2
	bgtz	$1, $BB0_13
	nop
# %bb.12:
	b	$BB0_27
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 20
	slt	$1, $1, $2
	bgtz	$1, $BB0_15
	nop
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	b	$BB0_16
	nop
$BB0_15:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	and	$1, $1, $2
	lw	$2, 32($fp)
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lw	$3, 24($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 12($fp)
	lui	$1, 23170
	ori	$1, $1, 31129
	sw	$1, 8($fp)
	b	$BB0_25
	nop
$BB0_16:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 40
	slt	$1, $1, $2
	bgtz	$1, $BB0_18
	nop
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	b	$BB0_19
	nop
$BB0_18:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	xor	$1, $1, $2
	lw	$2, 24($fp)
	xor	$1, $1, $2
	sw	$1, 12($fp)
	lui	$1, 28377
	ori	$1, $1, 60321
	sw	$1, 8($fp)
	b	$BB0_24
	nop
$BB0_19:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 60
	slt	$1, $1, $2
	bgtz	$1, $BB0_21
	nop
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=1
	b	$BB0_22
	nop
$BB0_21:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	and	$1, $1, $2
	lw	$2, 32($fp)
	lw	$3, 24($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	lw	$2, 28($fp)
	lw	$3, 24($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 12($fp)
	lui	$1, 36635
	ori	$1, $1, 48348
	sw	$1, 8($fp)
	b	$BB0_23
	nop
$BB0_22:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	xor	$1, $1, $2
	lw	$2, 24($fp)
	xor	$1, $1, $2
	sw	$1, 12($fp)
	lui	$1, 51810
	ori	$1, $1, 49622
	sw	$1, 8($fp)
$BB0_23:                                #   in Loop: Header=BB0_11 Depth=1
	b	$BB0_24
	nop
$BB0_24:                                #   in Loop: Header=BB0_11 Depth=1
	b	$BB0_25
	nop
$BB0_25:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 36($fp)
	sll	$1, $1, 5
	lw	$2, 36($fp)
	srl	$2, $2, 27
	or	$1, $1, $2
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lw	$2, 20($fp)
	addu	$1, $1, $2
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lw	$3, 16($fp)
	addiu	$2, $fp, 48
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 24($fp)
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	sw	$1, 24($fp)
	lw	$1, 32($fp)
	sll	$1, $1, 30
	lw	$2, 32($fp)
	srl	$2, $2, 2
	or	$1, $1, $2
	sw	$1, 28($fp)
	lw	$1, 36($fp)
	sw	$1, 32($fp)
	lw	$1, 4($fp)
	sw	$1, 36($fp)
# %bb.26:                               #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_11
	nop
$BB0_27:
	lw	$3, 36($fp)
	lw	$2, 372($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	lw	$3, 32($fp)
	lw	$2, 372($fp)
	lw	$1, 4($2)
	addu	$1, $1, $3
	sw	$1, 4($2)
	lw	$3, 28($fp)
	lw	$2, 372($fp)
	lw	$1, 8($2)
	addu	$1, $1, $3
	sw	$1, 8($2)
	lw	$3, 24($fp)
	lw	$2, 372($fp)
	lw	$1, 12($2)
	addu	$1, $1, $3
	sw	$1, 12($2)
	lw	$3, 20($fp)
	lw	$2, 372($fp)
	lw	$1, 16($2)
	addu	$1, $1, $3
	sw	$1, 16($2)
	move	$sp, $fp
	lw	$fp, 376($sp)                   # 4-byte Folded Reload
	lw	$ra, 380($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 384
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_compress
$func_end0:
	.size	sha1_compress, ($func_end0)-sha1_compress
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
