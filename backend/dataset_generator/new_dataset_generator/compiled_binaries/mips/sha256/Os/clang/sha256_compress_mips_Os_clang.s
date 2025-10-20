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
	.frame	$sp,312,$ra
	.mask 	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -312
	sw	$ra, 308($sp)                   # 4-byte Folded Spill
	sw	$23, 304($sp)                   # 4-byte Folded Spill
	sw	$22, 300($sp)                   # 4-byte Folded Spill
	sw	$21, 296($sp)                   # 4-byte Folded Spill
	sw	$20, 292($sp)                   # 4-byte Folded Spill
	sw	$19, 288($sp)                   # 4-byte Folded Spill
	sw	$18, 284($sp)                   # 4-byte Folded Spill
	sw	$17, 280($sp)                   # 4-byte Folded Spill
	sw	$16, 276($sp)                   # 4-byte Folded Spill
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
	lw	$4, 20($sp)
	addiu	$3, $zero, 192
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $17, $2
	lw	$5, 4($1)
	rotr	$6, $5, 18
	rotr	$7, $5, 7
	xor	$6, $7, $6
	srl	$7, $5, 3
	xor	$6, $6, $7
	lw	$7, 56($1)
	rotr	$8, $7, 19
	rotr	$9, $7, 17
	xor	$8, $9, $8
	srl	$7, $7, 10
	xor	$7, $8, $7
	addu	$4, $6, $4
	lw	$6, 36($1)
	addiu	$2, $2, 4
	addu	$4, $4, $6
	addu	$4, $4, $7
	sw	$4, 64($1)
	bne	$2, $3, $BB0_1
	move	$4, $5
# %bb.2:
	lw	$4, 28($16)
	lw	$5, 24($16)
	lw	$6, 20($16)
	lw	$7, 16($16)
	lw	$8, 12($16)
	lw	$10, 8($16)
	addiu	$11, $zero, 0
	lw	$3, 4($16)
	lw	$2, 0($16)
	addiu	$12, $zero, 256
	lui	$1, 17034
	ori	$13, $1, 12184
	move	$18, $2
	move	$9, $3
	move	$20, $4
	move	$22, $5
	move	$23, $6
	move	$21, $7
	move	$19, $8
	move	$gp, $10
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	move	$25, $gp
	move	$24, $21
	move	$15, $23
	move	$14, $22
	move	$gp, $9
	move	$9, $18
	and	$1, $23, $21
	rotr	$18, $21, 11
	rotr	$21, $21, 6
	xor	$18, $21, $18
	rotr	$21, $24, 25
	xor	$18, $18, $21
	addu	$1, $1, $18
	and	$18, $gp, $25
	xor	$21, $gp, $25
	and	$21, $9, $21
	not	$22, $24
	addu	$1, $1, $20
	xor	$18, $21, $18
	and	$20, $14, $22
	rotr	$21, $9, 13
	rotr	$22, $9, 2
	xor	$21, $22, $21
	rotr	$22, $9, 22
	xor	$21, $21, $22
	addu	$18, $21, $18
	addu	$1, $1, $20
	addu	$20, $17, $11
	lw	$20, 0($20)
	addiu	$11, $11, 4
	addu	$1, $1, $20
	addu	$1, $1, $13
	addu	$18, $18, $1
	addu	$21, $1, $19
	move	$20, $14
	move	$22, $23
	move	$23, $24
	bne	$11, $12, $BB0_3
	move	$19, $25
# %bb.4:
	addu	$1, $gp, $10
	addu	$8, $25, $8
	addu	$7, $21, $7
	addu	$6, $24, $6
	addu	$5, $15, $5
	addu	$4, $14, $4
	sw	$4, 28($16)
	sw	$5, 24($16)
	sw	$6, 20($16)
	sw	$7, 16($16)
	sw	$8, 12($16)
	sw	$1, 8($16)
	addu	$1, $9, $3
	sw	$1, 4($16)
	addu	$1, $18, $2
	sw	$1, 0($16)
	lw	$16, 276($sp)                   # 4-byte Folded Reload
	lw	$17, 280($sp)                   # 4-byte Folded Reload
	lw	$18, 284($sp)                   # 4-byte Folded Reload
	lw	$19, 288($sp)                   # 4-byte Folded Reload
	lw	$20, 292($sp)                   # 4-byte Folded Reload
	lw	$21, 296($sp)                   # 4-byte Folded Reload
	lw	$22, 300($sp)                   # 4-byte Folded Reload
	lw	$23, 304($sp)                   # 4-byte Folded Reload
	lw	$ra, 308($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 312
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
