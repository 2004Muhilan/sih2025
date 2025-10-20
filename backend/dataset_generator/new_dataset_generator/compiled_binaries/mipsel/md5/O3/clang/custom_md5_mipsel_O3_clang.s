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
	.frame	$sp,88,$ra
	.mask 	0x001f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -88
	sw	$20, 84($sp)                    # 4-byte Folded Spill
	sw	$19, 80($sp)                    # 4-byte Folded Spill
	sw	$18, 76($sp)                    # 4-byte Folded Spill
	sw	$17, 72($sp)                    # 4-byte Folded Spill
	sw	$16, 68($sp)                    # 4-byte Folded Spill
	lw	$6, 12($4)
	lw	$3, 8($4)
	lw	$2, 4($4)
	lw	$7, 0($4)
	addiu	$8, $zero, 0
	addiu	$9, $sp, 4
	addiu	$10, $zero, 64
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $8
	lwl	$11, 3($1)
	lwr	$11, 0($1)
	addu	$1, $9, $8
	addiu	$8, $8, 4
	bne	$8, $10, $BB0_1
	sw	$11, 0($1)
# %bb.2:
	not	$5, $2
	and	$1, $2, $3
	lw	$24, 8($sp)
	lw	$25, 12($sp)
	lw	$gp, 16($sp)
	lw	$16, 20($sp)
	lw	$17, 24($sp)
	lw	$18, 28($sp)
	lw	$14, 32($sp)
	lw	$13, 36($sp)
	lw	$12, 40($sp)
	lw	$11, 44($sp)
	lw	$10, 48($sp)
	lw	$9, 52($sp)
	lw	$8, 56($sp)
	and	$5, $6, $5
	or	$1, $1, $5
	lw	$5, 4($sp)
	addu	$1, $1, $7
	addu	$1, $1, $5
	lw	$5, 60($sp)
	rotr	$15, $1, 25
	lw	$1, 64($sp)
	addu	$15, $15, $2
	not	$20, $15
	and	$19, $15, $2
	and	$20, $3, $20
	or	$19, $19, $20
	addu	$19, $19, $6
	addu	$24, $19, $24
	rotr	$24, $24, 25
	addu	$24, $24, $15
	not	$20, $24
	and	$19, $24, $15
	and	$20, $2, $20
	or	$19, $19, $20
	addu	$19, $19, $3
	addu	$25, $19, $25
	rotr	$25, $25, 25
	addu	$25, $25, $24
	not	$20, $25
	and	$19, $25, $24
	and	$20, $15, $20
	or	$19, $19, $20
	addu	$19, $19, $2
	addu	$gp, $19, $gp
	rotr	$gp, $gp, 25
	addu	$gp, $gp, $25
	not	$20, $gp
	and	$19, $gp, $25
	and	$20, $24, $20
	or	$19, $19, $20
	lw	$20, 84($sp)                    # 4-byte Folded Reload
	addu	$15, $19, $15
	addu	$15, $15, $16
	rotr	$15, $15, 25
	addu	$15, $15, $gp
	not	$19, $15
	and	$16, $15, $gp
	and	$19, $25, $19
	or	$16, $16, $19
	lw	$19, 80($sp)                    # 4-byte Folded Reload
	addu	$24, $16, $24
	addu	$24, $24, $17
	rotr	$24, $24, 25
	addu	$24, $24, $15
	not	$17, $24
	and	$16, $24, $15
	and	$17, $gp, $17
	or	$16, $16, $17
	addu	$25, $16, $25
	addu	$25, $25, $18
	lw	$18, 76($sp)                    # 4-byte Folded Reload
	rotr	$25, $25, 25
	addu	$25, $25, $24
	not	$17, $25
	and	$16, $25, $24
	and	$17, $15, $17
	or	$16, $16, $17
	lw	$17, 72($sp)                    # 4-byte Folded Reload
	addu	$gp, $16, $gp
	addu	$14, $gp, $14
	rotr	$14, $14, 25
	addu	$14, $14, $25
	not	$16, $14
	and	$gp, $14, $25
	and	$16, $24, $16
	or	$gp, $gp, $16
	lw	$16, 68($sp)                    # 4-byte Folded Reload
	addu	$15, $gp, $15
	addu	$13, $15, $13
	rotr	$13, $13, 25
	addu	$13, $13, $14
	not	$gp, $13
	and	$15, $13, $14
	and	$gp, $25, $gp
	or	$15, $15, $gp
	addu	$15, $15, $24
	addu	$12, $15, $12
	rotr	$12, $12, 25
	addu	$12, $12, $13
	not	$24, $12
	and	$15, $12, $13
	and	$24, $14, $24
	or	$15, $15, $24
	addu	$15, $15, $25
	addu	$11, $15, $11
	rotr	$11, $11, 25
	addu	$11, $11, $12
	not	$24, $11
	and	$15, $11, $12
	and	$24, $13, $24
	or	$15, $15, $24
	addu	$14, $15, $14
	addu	$10, $14, $10
	rotr	$10, $10, 25
	addu	$10, $10, $11
	not	$15, $10
	and	$14, $10, $11
	and	$15, $12, $15
	or	$14, $14, $15
	addu	$13, $14, $13
	addu	$9, $13, $9
	rotr	$9, $9, 25
	addu	$9, $9, $10
	not	$14, $9
	and	$13, $9, $10
	addu	$7, $9, $7
	and	$14, $11, $14
	sw	$7, 0($4)
	or	$13, $13, $14
	addu	$12, $13, $12
	addu	$8, $12, $8
	rotr	$8, $8, 25
	addu	$8, $8, $9
	not	$13, $8
	and	$12, $8, $9
	addu	$6, $8, $6
	and	$7, $10, $13
	sw	$6, 12($4)
	or	$7, $12, $7
	addu	$7, $7, $11
	addu	$5, $7, $5
	rotr	$5, $5, 25
	addu	$5, $5, $8
	and	$7, $5, $8
	not	$8, $5
	addu	$3, $5, $3
	and	$6, $9, $8
	sw	$3, 8($4)
	or	$3, $7, $6
	addu	$3, $3, $10
	addu	$1, $3, $1
	rotr	$1, $1, 25
	addu	$1, $1, $5
	addu	$1, $1, $2
	sw	$1, 4($4)
	jr	$ra
	addiu	$sp, $sp, 88
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
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 39098
	lui	$2, 4146
	ori	$2, $2, 21622
	ori	$1, $1, 56574
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
	.end	md5_init
$func_end1:
	.size	md5_init, ($func_end1)-md5_init
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
