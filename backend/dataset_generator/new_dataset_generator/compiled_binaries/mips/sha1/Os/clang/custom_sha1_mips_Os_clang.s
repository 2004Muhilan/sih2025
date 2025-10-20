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
	.frame	$sp,336,$ra
	.mask 	0x000f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -336
	sw	$19, 332($sp)                   # 4-byte Folded Spill
	sw	$18, 328($sp)                   # 4-byte Folded Spill
	sw	$17, 324($sp)                   # 4-byte Folded Spill
	sw	$16, 320($sp)                   # 4-byte Folded Spill
	lw	$6, 16($4)
	lw	$7, 12($4)
	lw	$8, 8($4)
	lw	$3, 4($4)
	lw	$2, 0($4)
	addiu	$10, $zero, 0
	addiu	$9, $sp, 0
	addiu	$11, $zero, 64
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $10
	lwl	$12, 0($1)
	lwr	$12, 3($1)
	addu	$1, $9, $10
	addiu	$10, $10, 4
	bne	$10, $11, $BB0_1
	sw	$12, 0($1)
# %bb.2:
	addiu	$5, $zero, 0
	addiu	$10, $zero, 256
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $9, $5
	lw	$11, 52($1)
	lw	$12, 32($1)
	xor	$11, $12, $11
	lw	$12, 8($1)
	xor	$11, $11, $12
	lw	$12, 0($1)
	xor	$11, $11, $12
	rotr	$11, $11, 31
	addiu	$5, $5, 4
	bne	$5, $10, $BB0_3
	sw	$11, 64($1)
# %bb.4:
	addiu	$5, $zero, 0
	lui	$1, 23170
	ori	$10, $1, 31129
	addiu	$11, $zero, 80
	lui	$1, 28377
	ori	$12, $1, 60321
	lui	$1, 36635
	ori	$13, $1, 48348
	lui	$1, 51810
	ori	$14, $1, 49622
	move	$17, $2
	move	$gp, $6
	move	$19, $7
	move	$18, $8
	move	$15, $3
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	move	$16, $15
	move	$25, $18
	move	$24, $19
	sltiu	$1, $5, 20
	beqz	$1, $BB0_7
	move	$15, $17
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	and	$1, $25, $16
	not	$17, $16
	and	$17, $24, $17
	or	$17, $17, $1
	b	$BB0_12
	move	$18, $10
$BB0_7:                                 #   in Loop: Header=BB0_5 Depth=1
	sltiu	$1, $5, 40
	beqz	$1, $BB0_9
	nop
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xor	$1, $25, $16
	xor	$17, $1, $24
	b	$BB0_12
	move	$18, $12
$BB0_9:                                 #   in Loop: Header=BB0_5 Depth=1
	sltiu	$1, $5, 60
	beqz	$1, $BB0_11
	nop
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	and	$1, $24, $25
	or	$17, $24, $25
	and	$17, $17, $16
	or	$17, $17, $1
	b	$BB0_12
	move	$18, $13
$BB0_11:                                #   in Loop: Header=BB0_5 Depth=1
	xor	$1, $25, $16
	xor	$17, $1, $24
	move	$18, $14
$BB0_12:                                #   in Loop: Header=BB0_5 Depth=1
	rotr	$1, $15, 27
	addu	$1, $1, $gp
	addu	$1, $1, $17
	addu	$1, $1, $18
	lw	$gp, 0($9)
	addu	$17, $1, $gp
	addiu	$9, $9, 4
	addiu	$5, $5, 1
	rotr	$18, $16, 2
	move	$gp, $24
	bne	$5, $11, $BB0_5
	move	$19, $25
# %bb.13:
	addu	$1, $18, $8
	addu	$5, $25, $7
	addu	$6, $24, $6
	sw	$6, 16($4)
	sw	$5, 12($4)
	sw	$1, 8($4)
	addu	$1, $15, $3
	sw	$1, 4($4)
	addu	$1, $17, $2
	sw	$1, 0($4)
	lw	$16, 320($sp)                   # 4-byte Folded Reload
	lw	$17, 324($sp)                   # 4-byte Folded Reload
	lw	$18, 328($sp)                   # 4-byte Folded Reload
	lw	$19, 332($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 336
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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 39098
	ori	$1, $1, 56574
	lui	$2, 4146
	ori	$2, $2, 21622
	lui	$3, 50130
	ori	$3, $3, 57840
	sw	$3, 16($4)
	sw	$2, 12($4)
	sw	$1, 8($4)
	lui	$1, 61389
	ori	$1, $1, 43913
	sw	$1, 4($4)
	lui	$1, 26437
	ori	$1, $1, 8961
	jr	$ra
	sw	$1, 0($4)
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
