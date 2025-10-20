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
	lw	$1, 44($5)
	lw	$2, 48($5)
	lw	$3, 52($5)
	lw	$6, 56($5)
	lw	$7, 8($5)
	lw	$8, 12($5)
	lw	$9, 16($5)
	lw	$10, 20($5)
	lw	$11, 24($5)
	lw	$12, 28($5)
	lw	$13, 32($5)
	lw	$14, 36($5)
	lw	$15, 40($5)
	lw	$24, 60($5)
	sw	$24, 60($sp)
	sw	$6, 56($sp)
	sw	$3, 52($sp)
	sw	$2, 48($sp)
	sw	$1, 44($sp)
	sw	$15, 40($sp)
	sw	$14, 36($sp)
	sw	$13, 32($sp)
	sw	$12, 28($sp)
	sw	$11, 24($sp)
	sw	$10, 20($sp)
	sw	$9, 16($sp)
	sw	$8, 12($sp)
	sw	$7, 8($sp)
	lw	$1, 4($5)
	sw	$1, 4($sp)
	lw	$1, 0($5)
	sw	$1, 0($sp)
	addiu	$3, $zero, 0
	addiu	$2, $sp, 0
	addiu	$5, $zero, 256
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $3
	lw	$6, 52($1)
	lw	$7, 32($1)
	xor	$6, $7, $6
	lw	$7, 8($1)
	xor	$6, $6, $7
	lw	$7, 0($1)
	xor	$6, $6, $7
	rotr	$6, $6, 31
	addiu	$3, $3, 4
	bne	$3, $5, $BB0_1
	sw	$6, 64($1)
# %bb.2:
	lw	$6, 16($4)
	lw	$7, 12($4)
	lw	$8, 8($4)
	lw	$5, 4($4)
	addiu	$9, $zero, 0
	lw	$3, 0($4)
	lui	$1, 23170
	ori	$10, $1, 31129
	addiu	$11, $zero, 80
	lui	$1, 28377
	ori	$12, $1, 60321
	lui	$1, 36635
	ori	$13, $1, 48348
	lui	$1, 51810
	ori	$14, $1, 49622
	move	$16, $6
	move	$19, $7
	move	$18, $8
	move	$gp, $5
	b	$BB0_5
	move	$17, $3
$BB0_3:                                 #   in Loop: Header=BB0_5 Depth=1
	and	$1, $25, $gp
	not	$17, $gp
	and	$17, $24, $17
	or	$17, $17, $1
	move	$18, $10
$BB0_4:                                 #   in Loop: Header=BB0_5 Depth=1
	rotr	$1, $15, 27
	addu	$1, $16, $1
	addu	$1, $1, $17
	addu	$1, $1, $18
	lw	$16, 0($2)
	addu	$17, $1, $16
	addiu	$2, $2, 4
	addiu	$9, $9, 1
	rotr	$18, $gp, 2
	move	$16, $24
	move	$19, $25
	beq	$9, $11, $BB0_11
	move	$gp, $15
$BB0_5:                                 # =>This Inner Loop Header: Depth=1
	move	$15, $17
	move	$25, $18
	sltiu	$1, $9, 20
	bnez	$1, $BB0_3
	move	$24, $19
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	sltiu	$1, $9, 40
	beqz	$1, $BB0_8
	nop
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	xor	$1, $25, $gp
	xor	$17, $1, $24
	b	$BB0_4
	move	$18, $12
$BB0_8:                                 #   in Loop: Header=BB0_5 Depth=1
	sltiu	$1, $9, 60
	beqz	$1, $BB0_10
	nop
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	and	$1, $24, $25
	or	$17, $24, $25
	and	$17, $17, $gp
	or	$17, $17, $1
	b	$BB0_4
	move	$18, $13
$BB0_10:                                #   in Loop: Header=BB0_5 Depth=1
	xor	$1, $25, $gp
	xor	$17, $1, $24
	b	$BB0_4
	move	$18, $14
$BB0_11:
	addu	$1, $18, $8
	addu	$2, $25, $7
	addu	$6, $24, $6
	sw	$6, 16($4)
	sw	$2, 12($4)
	sw	$1, 8($4)
	addu	$1, $15, $5
	sw	$1, 4($4)
	addu	$1, $17, $3
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
	.end	sha1_compress
$func_end0:
	.size	sha1_compress, ($func_end0)-sha1_compress
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
