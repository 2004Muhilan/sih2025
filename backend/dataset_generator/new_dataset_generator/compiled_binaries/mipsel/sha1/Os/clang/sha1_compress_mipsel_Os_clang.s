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
	.frame	$sp,360,$ra
	.mask 	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -360
	sw	$ra, 356($sp)                   # 4-byte Folded Spill
	sw	$19, 352($sp)                   # 4-byte Folded Spill
	sw	$18, 348($sp)                   # 4-byte Folded Spill
	sw	$17, 344($sp)                   # 4-byte Folded Spill
	sw	$16, 340($sp)                   # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$16, $4
	addiu	$17, $sp, 20
	lw	$25, %call16(memcpy)($gp)
	move	$4, $17
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	addiu	$6, $zero, 64
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $17, $2
	lw	$4, 52($1)
	lw	$5, 32($1)
	xor	$4, $5, $4
	lw	$5, 8($1)
	xor	$4, $4, $5
	lw	$5, 0($1)
	xor	$4, $4, $5
	rotr	$4, $4, 31
	addiu	$2, $2, 4
	bne	$2, $3, $BB0_1
	sw	$4, 64($1)
# %bb.2:
	lw	$4, 16($16)
	lw	$5, 12($16)
	lw	$6, 8($16)
	lw	$3, 4($16)
	addiu	$7, $zero, 0
	lw	$2, 0($16)
	lui	$1, 23170
	ori	$8, $1, 31129
	addiu	$9, $zero, 80
	lui	$1, 28377
	ori	$10, $1, 60321
	lui	$1, 36635
	ori	$11, $1, 48348
	lui	$1, 51810
	ori	$12, $1, 49622
	move	$25, $4
	move	$19, $5
	move	$18, $6
	move	$24, $3
	move	$gp, $2
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	move	$13, $gp
	move	$15, $18
	sltiu	$1, $7, 20
	beqz	$1, $BB0_5
	move	$14, $19
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	and	$1, $15, $24
	not	$gp, $24
	and	$gp, $14, $gp
	or	$gp, $gp, $1
	b	$BB0_10
	move	$18, $8
$BB0_5:                                 #   in Loop: Header=BB0_3 Depth=1
	sltiu	$1, $7, 40
	beqz	$1, $BB0_7
	nop
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	xor	$1, $15, $24
	xor	$gp, $1, $14
	b	$BB0_10
	move	$18, $10
$BB0_7:                                 #   in Loop: Header=BB0_3 Depth=1
	sltiu	$1, $7, 60
	beqz	$1, $BB0_9
	nop
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	and	$1, $14, $15
	or	$gp, $14, $15
	and	$gp, $gp, $24
	or	$gp, $gp, $1
	b	$BB0_10
	move	$18, $11
$BB0_9:                                 #   in Loop: Header=BB0_3 Depth=1
	xor	$1, $15, $24
	xor	$gp, $1, $14
	move	$18, $12
$BB0_10:                                #   in Loop: Header=BB0_3 Depth=1
	rotr	$1, $13, 27
	addu	$1, $25, $1
	addu	$1, $1, $gp
	addu	$1, $1, $18
	lw	$25, 0($17)
	addu	$gp, $1, $25
	addiu	$17, $17, 4
	addiu	$7, $7, 1
	rotr	$18, $24, 2
	move	$25, $14
	move	$19, $15
	bne	$7, $9, $BB0_3
	move	$24, $13
# %bb.11:
	addu	$1, $18, $6
	addu	$5, $15, $5
	addu	$4, $14, $4
	sw	$4, 16($16)
	sw	$5, 12($16)
	sw	$1, 8($16)
	addu	$1, $13, $3
	sw	$1, 4($16)
	addu	$1, $gp, $2
	sw	$1, 0($16)
	lw	$16, 340($sp)                   # 4-byte Folded Reload
	lw	$17, 344($sp)                   # 4-byte Folded Reload
	lw	$18, 348($sp)                   # 4-byte Folded Reload
	lw	$19, 352($sp)                   # 4-byte Folded Reload
	lw	$ra, 356($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 360
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
