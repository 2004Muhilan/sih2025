	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"sha256_compress.c"
	.globl	sha256_compress                 # -- Begin function sha256_compress
	.p2align	2
	.type	sha256_compress,@function
	.set	nomicromips
	.set	nomips16
	.ent	sha256_compress
sha256_compress:                        # @sha256_compress
	.frame	$sp,288,$ra
	.mask 	0x00ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -288
	sw	$23, 284($sp)                   # 4-byte Folded Spill
	sw	$22, 280($sp)                   # 4-byte Folded Spill
	sw	$21, 276($sp)                   # 4-byte Folded Spill
	sw	$20, 272($sp)                   # 4-byte Folded Spill
	sw	$19, 268($sp)                   # 4-byte Folded Spill
	sw	$18, 264($sp)                   # 4-byte Folded Spill
	sw	$17, 260($sp)                   # 4-byte Folded Spill
	sw	$16, 256($sp)                   # 4-byte Folded Spill
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
	addiu	$5, $zero, 192
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $3
	lw	$6, 4($1)
	rotr	$7, $6, 18
	rotr	$8, $6, 7
	xor	$7, $8, $7
	lw	$8, 56($1)
	rotr	$9, $8, 19
	rotr	$10, $8, 17
	xor	$9, $10, $9
	srl	$6, $6, 3
	srl	$8, $8, 10
	xor	$8, $9, $8
	xor	$6, $7, $6
	lw	$7, 0($1)
	addu	$6, $6, $7
	lw	$7, 36($1)
	addiu	$3, $3, 4
	addu	$6, $6, $7
	addu	$6, $6, $8
	bne	$3, $5, $BB0_1
	sw	$6, 64($1)
# %bb.2:
	lw	$6, 28($4)
	lw	$7, 24($4)
	lw	$8, 20($4)
	lw	$9, 16($4)
	lw	$10, 12($4)
	lw	$12, 8($4)
	addiu	$13, $zero, 0
	lw	$5, 4($4)
	lw	$3, 0($4)
	addiu	$14, $zero, 256
	lui	$1, 17034
	ori	$15, $1, 12184
	move	$18, $3
	move	$11, $5
	move	$20, $6
	move	$22, $7
	move	$23, $8
	move	$21, $9
	move	$19, $10
	move	$17, $12
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	move	$16, $17
	move	$gp, $21
	move	$25, $23
	move	$24, $22
	move	$17, $11
	move	$11, $18
	and	$1, $23, $21
	rotr	$18, $21, 11
	rotr	$21, $21, 6
	xor	$18, $21, $18
	rotr	$21, $gp, 25
	xor	$18, $18, $21
	addu	$1, $1, $18
	and	$18, $17, $16
	xor	$21, $17, $16
	and	$21, $11, $21
	not	$22, $gp
	addu	$1, $1, $20
	xor	$18, $21, $18
	and	$20, $24, $22
	rotr	$21, $11, 13
	rotr	$22, $11, 2
	xor	$21, $22, $21
	rotr	$22, $11, 22
	xor	$21, $21, $22
	addu	$18, $21, $18
	addu	$1, $1, $20
	addu	$20, $2, $13
	lw	$20, 0($20)
	addiu	$13, $13, 4
	addu	$1, $1, $20
	addu	$1, $1, $15
	addu	$18, $18, $1
	addu	$21, $1, $19
	move	$20, $24
	move	$22, $23
	move	$23, $gp
	bne	$13, $14, $BB0_3
	move	$19, $16
# %bb.4:
	addu	$1, $17, $12
	addu	$2, $16, $10
	addu	$9, $21, $9
	addu	$8, $gp, $8
	addu	$7, $25, $7
	addu	$6, $24, $6
	sw	$6, 28($4)
	sw	$7, 24($4)
	sw	$8, 20($4)
	sw	$9, 16($4)
	sw	$2, 12($4)
	sw	$1, 8($4)
	addu	$1, $11, $5
	sw	$1, 4($4)
	addu	$1, $18, $3
	sw	$1, 0($4)
	lw	$16, 256($sp)                   # 4-byte Folded Reload
	lw	$17, 260($sp)                   # 4-byte Folded Reload
	lw	$18, 264($sp)                   # 4-byte Folded Reload
	lw	$19, 268($sp)                   # 4-byte Folded Reload
	lw	$20, 272($sp)                   # 4-byte Folded Reload
	lw	$21, 276($sp)                   # 4-byte Folded Reload
	lw	$22, 280($sp)                   # 4-byte Folded Reload
	lw	$23, 284($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 288
	.set	at
	.set	macro
	.set	reorder
	.end	sha256_compress
$func_end0:
	.size	sha256_compress, ($func_end0)-sha256_compress
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
