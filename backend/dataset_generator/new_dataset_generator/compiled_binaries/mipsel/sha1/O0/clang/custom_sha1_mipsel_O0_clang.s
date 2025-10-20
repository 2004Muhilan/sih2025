	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"custom_sha1.c"
	.globl	sha1_transform                  # -- Begin function sha1_transform
	.p2align	2
	.type	sha1_transform,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_transform
sha1_transform:                         # @sha1_transform
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
	lw	$1, 372($fp)
	lw	$1, 0($1)
	sw	$1, 364($fp)
	lw	$1, 372($fp)
	lw	$1, 4($1)
	sw	$1, 360($fp)
	lw	$1, 372($fp)
	lw	$1, 8($1)
	sw	$1, 356($fp)
	lw	$1, 372($fp)
	lw	$1, 12($1)
	sw	$1, 352($fp)
	lw	$1, 372($fp)
	lw	$1, 16($1)
	sw	$1, 348($fp)
	addiu	$1, $zero, 0
	sw	$zero, 24($fp)
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 16
	slt	$1, $1, $2
	bgtz	$1, $BB0_3
	nop
# %bb.2:
	b	$BB0_5
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 368($fp)
	lw	$2, 24($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lbu	$1, 0($1)
	andi	$1, $1, 255
	sll	$1, $1, 24
	lw	$2, 368($fp)
	lw	$3, 24($fp)
	sll	$3, $3, 2
	addiu	$4, $zero, 1
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 16
	or	$1, $1, $2
	lw	$2, 368($fp)
	lw	$3, 24($fp)
	sll	$3, $3, 2
	addiu	$4, $zero, 2
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	sll	$2, $2, 8
	or	$1, $1, $2
	lw	$2, 368($fp)
	lw	$3, 24($fp)
	sll	$3, $3, 2
	addiu	$4, $zero, 3
	addu	$3, $3, $4
	addu	$2, $2, $3
	lbu	$2, 0($2)
	andi	$2, $2, 255
	or	$1, $1, $2
	lw	$3, 24($fp)
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 24($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 24($fp)
	b	$BB0_1
	nop
$BB0_5:
	addiu	$1, $zero, 16
	sw	$1, 20($fp)
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 80
	slt	$1, $1, $2
	bgtz	$1, $BB0_8
	nop
# %bb.7:
	b	$BB0_10
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 3
	subu	$2, $1, $2
	addiu	$1, $fp, 28
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 20($fp)
	addiu	$3, $zero, 8
	subu	$3, $2, $3
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	lw	$2, 20($fp)
	addiu	$3, $zero, 14
	subu	$3, $2, $3
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	lw	$2, 20($fp)
	addiu	$3, $zero, 16
	subu	$3, $2, $3
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	xor	$1, $1, $2
	sll	$1, $1, 1
	lw	$2, 20($fp)
	addiu	$3, $zero, 3
	subu	$3, $2, $3
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lw	$3, 20($fp)
	addiu	$4, $zero, 8
	subu	$4, $3, $4
	addiu	$3, $fp, 28
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	xor	$2, $2, $3
	lw	$3, 20($fp)
	addiu	$4, $zero, 14
	subu	$4, $3, $4
	addiu	$3, $fp, 28
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	xor	$2, $2, $3
	lw	$3, 20($fp)
	addiu	$4, $zero, 16
	subu	$4, $3, $4
	addiu	$3, $fp, 28
	sll	$4, $4, 2
	addu	$3, $3, $4
	lw	$3, 0($3)
	xor	$2, $2, $3
	srl	$2, $2, 31
	or	$1, $1, $2
	lw	$3, 20($fp)
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 20($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 20($fp)
	b	$BB0_6
	nop
$BB0_10:
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
	lw	$1, 360($fp)
	lw	$2, 356($fp)
	and	$1, $1, $2
	lw	$2, 360($fp)
	lui	$3, 65535
	ori	$3, $3, 65535
	xor	$2, $2, $3
	lw	$3, 352($fp)
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
	lw	$1, 360($fp)
	lw	$2, 356($fp)
	xor	$1, $1, $2
	lw	$2, 352($fp)
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
	lw	$1, 360($fp)
	lw	$2, 356($fp)
	and	$1, $1, $2
	lw	$2, 360($fp)
	lw	$3, 352($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	lw	$2, 356($fp)
	lw	$3, 352($fp)
	and	$2, $2, $3
	or	$1, $1, $2
	sw	$1, 12($fp)
	lui	$1, 36635
	ori	$1, $1, 48348
	sw	$1, 8($fp)
	b	$BB0_23
	nop
$BB0_22:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 360($fp)
	lw	$2, 356($fp)
	xor	$1, $1, $2
	lw	$2, 352($fp)
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
	lw	$1, 364($fp)
	sll	$1, $1, 5
	lw	$2, 364($fp)
	srl	$2, $2, 27
	or	$1, $1, $2
	lw	$2, 12($fp)
	addu	$1, $1, $2
	lw	$2, 348($fp)
	addu	$1, $1, $2
	lw	$2, 8($fp)
	addu	$1, $1, $2
	lw	$3, 16($fp)
	addiu	$2, $fp, 28
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	addu	$1, $1, $2
	sw	$1, 4($fp)
	lw	$1, 352($fp)
	sw	$1, 348($fp)
	lw	$1, 356($fp)
	sw	$1, 352($fp)
	lw	$1, 360($fp)
	sll	$1, $1, 30
	lw	$2, 360($fp)
	srl	$2, $2, 2
	or	$1, $1, $2
	sw	$1, 356($fp)
	lw	$1, 364($fp)
	sw	$1, 360($fp)
	lw	$1, 4($fp)
	sw	$1, 364($fp)
# %bb.26:                               #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 16($fp)
	addiu	$2, $zero, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	b	$BB0_11
	nop
$BB0_27:
	lw	$3, 364($fp)
	lw	$2, 372($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	lw	$3, 360($fp)
	lw	$2, 372($fp)
	lw	$1, 4($2)
	addu	$1, $1, $3
	sw	$1, 4($2)
	lw	$3, 356($fp)
	lw	$2, 372($fp)
	lw	$1, 8($2)
	addu	$1, $1, $3
	sw	$1, 8($2)
	lw	$3, 352($fp)
	lw	$2, 372($fp)
	lw	$1, 12($2)
	addu	$1, $1, $3
	sw	$1, 12($2)
	lw	$3, 348($fp)
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
	.end	sha1_transform
$func_end0:
	.size	sha1_transform, ($func_end0)-sha1_transform
                                        # -- End function
	.globl	sha1_init                       # -- Begin function sha1_init
	.p2align	2
	.type	sha1_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha1_init
sha1_init:                              # @sha1_init
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
	lw	$2, 4($fp)
	lui	$1, 50130
	ori	$1, $1, 57840
	sw	$1, 16($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sha1_init
$func_end1:
	.size	sha1_init, ($func_end1)-sha1_init
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
