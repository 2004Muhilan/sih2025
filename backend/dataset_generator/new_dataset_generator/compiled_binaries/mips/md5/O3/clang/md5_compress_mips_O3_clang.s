	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"md5_compress.c"
	.globl	md5_compress                    # -- Begin function md5_compress
	.p2align	2
	.type	md5_compress,@function
	.set	nomicromips
	.set	nomips16
	.ent	md5_compress
md5_compress:                           # @md5_compress
	.frame	$sp,32,$ra
	.mask 	0x007f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$22, 28($sp)                    # 4-byte Folded Spill
	sw	$21, 24($sp)                    # 4-byte Folded Spill
	sw	$20, 20($sp)                    # 4-byte Folded Spill
	sw	$19, 16($sp)                    # 4-byte Folded Spill
	sw	$18, 12($sp)                    # 4-byte Folded Spill
	sw	$17, 8($sp)                     # 4-byte Folded Spill
	sw	$16, 4($sp)                     # 4-byte Folded Spill
	lw	$2, 4($4)
	lw	$1, 8($4)
	lw	$3, 12($4)
	lw	$8, 0($5)
	lw	$16, 4($5)
	lw	$17, 8($5)
	lw	$18, 12($5)
	lw	$19, 16($5)
	lw	$20, 20($5)
	lw	$24, 24($5)
	lw	$15, 28($5)
	lw	$14, 32($5)
	lw	$13, 36($5)
	lw	$12, 40($5)
	lw	$11, 44($5)
	lw	$10, 48($5)
	lw	$9, 52($5)
	not	$7, $2
	and	$6, $2, $1
	and	$7, $3, $7
	or	$6, $6, $7
	lw	$7, 0($4)
	addu	$6, $6, $7
	addu	$25, $6, $8
	lw	$6, 60($5)
	lw	$8, 56($5)
	sll	$5, $2, 1
	sll	$gp, $25, 7
	addu	$gp, $gp, $2
	not	$22, $gp
	and	$21, $gp, $2
	and	$22, $1, $22
	or	$21, $21, $22
	addu	$21, $21, $3
	addu	$16, $21, $16
	addu	$25, $25, $16
	sll	$16, $25, 7
	addu	$16, $16, $2
	not	$22, $16
	and	$21, $16, $gp
	and	$22, $2, $22
	or	$21, $21, $22
	addu	$21, $21, $1
	addu	$17, $21, $17
	addu	$25, $25, $17
	sll	$17, $25, 7
	addu	$17, $17, $2
	not	$22, $17
	and	$21, $17, $16
	and	$22, $gp, $22
	or	$21, $21, $22
	addu	$21, $21, $2
	addu	$18, $21, $18
	addu	$25, $25, $18
	sll	$18, $25, 7
	addu	$18, $18, $2
	not	$22, $18
	and	$21, $18, $17
	and	$22, $16, $22
	or	$21, $21, $22
	lw	$22, 28($sp)                    # 4-byte Folded Reload
	addu	$gp, $21, $gp
	addu	$gp, $gp, $19
	addu	$25, $25, $gp
	sll	$gp, $25, 7
	addu	$gp, $gp, $2
	not	$21, $gp
	and	$19, $gp, $18
	and	$21, $17, $21
	or	$19, $19, $21
	lw	$21, 24($sp)                    # 4-byte Folded Reload
	addu	$16, $19, $16
	addu	$16, $16, $20
	addu	$25, $25, $16
	sll	$16, $25, 7
	addu	$16, $16, $2
	not	$20, $16
	and	$19, $16, $gp
	and	$20, $18, $20
	or	$19, $19, $20
	lw	$20, 20($sp)                    # 4-byte Folded Reload
	addu	$17, $19, $17
	addu	$24, $17, $24
	addu	$24, $25, $24
	sll	$25, $24, 7
	addu	$25, $25, $2
	not	$19, $25
	and	$17, $25, $16
	and	$19, $gp, $19
	or	$17, $17, $19
	lw	$19, 16($sp)                    # 4-byte Folded Reload
	addu	$17, $17, $18
	addu	$15, $17, $15
	addu	$15, $24, $15
	sll	$24, $15, 7
	addu	$24, $24, $2
	not	$18, $24
	and	$17, $24, $25
	and	$18, $16, $18
	or	$17, $17, $18
	lw	$18, 12($sp)                    # 4-byte Folded Reload
	addu	$gp, $17, $gp
	addu	$14, $gp, $14
	addu	$14, $15, $14
	sll	$15, $14, 7
	addu	$15, $15, $2
	not	$17, $15
	and	$gp, $15, $24
	and	$17, $25, $17
	or	$gp, $gp, $17
	lw	$17, 8($sp)                     # 4-byte Folded Reload
	addu	$gp, $gp, $16
	addu	$13, $gp, $13
	addu	$13, $14, $13
	sll	$14, $13, 7
	addu	$14, $14, $2
	not	$16, $14
	and	$gp, $14, $15
	and	$16, $24, $16
	or	$gp, $gp, $16
	lw	$16, 4($sp)                     # 4-byte Folded Reload
	addu	$25, $gp, $25
	addu	$12, $25, $12
	addu	$12, $13, $12
	sll	$13, $12, 7
	addu	$13, $13, $2
	not	$gp, $13
	and	$25, $13, $14
	and	$gp, $15, $gp
	or	$25, $25, $gp
	addu	$24, $25, $24
	addu	$11, $24, $11
	addu	$11, $12, $11
	sll	$12, $11, 7
	addu	$12, $12, $2
	not	$25, $12
	and	$24, $12, $13
	and	$25, $14, $25
	or	$24, $24, $25
	addu	$15, $24, $15
	addu	$10, $15, $10
	addu	$10, $11, $10
	sll	$11, $10, 7
	addu	$11, $11, $2
	not	$24, $11
	and	$15, $11, $12
	addu	$7, $11, $7
	and	$24, $13, $24
	sw	$7, 0($4)
	or	$15, $15, $24
	addu	$14, $15, $14
	addu	$9, $14, $9
	addu	$9, $10, $9
	sll	$10, $9, 7
	addu	$10, $10, $2
	not	$14, $10
	and	$7, $10, $11
	addu	$3, $10, $3
	and	$14, $12, $14
	sw	$3, 12($4)
	or	$7, $7, $14
	addu	$7, $7, $13
	addu	$7, $7, $8
	addu	$7, $9, $7
	sll	$8, $7, 7
	addu	$2, $8, $2
	not	$8, $2
	addu	$1, $2, $1
	and	$3, $2, $10
	and	$8, $11, $8
	sw	$1, 8($4)
	or	$1, $3, $8
	addu	$1, $1, $12
	addu	$1, $1, $6
	addu	$1, $7, $1
	sll	$1, $1, 7
	addu	$1, $1, $5
	sw	$1, 4($4)
	jr	$ra
	addiu	$sp, $sp, 32
	.set	at
	.set	macro
	.set	reorder
	.end	md5_compress
$func_end0:
	.size	md5_compress, ($func_end0)-md5_compress
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
