	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_drop.c"
	.globl	rc4_drop_init                   # -- Begin function rc4_drop_init
	.p2align	2
	.type	rc4_drop_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop_init
rc4_drop_init:                          # @rc4_drop_init
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $2
	sb	$2, 0($1)
	addiu	$2, $2, 1
	bne	$2, $3, $BB0_1
	nop
# %bb.2:
	addiu	$3, $zero, 0
	addiu	$2, $zero, 256
	addiu	$8, $zero, 0
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $8, $6
	teq	$6, $zero, 7
	mfhi	$1
	addu	$9, $4, $8
	lbu	$10, 0($9)
	addu	$3, $10, $3
	addu	$1, $5, $1
	lbu	$1, 0($1)
	addu	$3, $3, $1
	andi	$1, $3, 255
	addiu	$8, $8, 1
	addu	$1, $4, $1
	lbu	$11, 0($1)
	sb	$11, 0($9)
	bne	$8, $2, $BB0_3
	sb	$10, 0($1)
# %bb.4:
	sb	$zero, 257($4)
	beqz	$7, $BB0_8
	sb	$zero, 256($4)
# %bb.5:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	andi	$1, $3, 255
	addu	$1, $4, $1
	lbu	$5, 0($1)
	addu	$2, $5, $2
	andi	$6, $2, 255
	addu	$6, $4, $6
	addiu	$7, $7, -1
	lbu	$8, 0($6)
	sb	$8, 0($1)
	bnez	$7, $BB0_6
	sb	$5, 0($6)
# %bb.7:
	sb	$2, 257($4)
	sb	$3, 256($4)
$BB0_8:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop_init
$func_end0:
	.size	rc4_drop_init, ($func_end0)-rc4_drop_init
                                        # -- End function
	.globl	rc4_drop_crypt                  # -- Begin function rc4_drop_crypt
	.p2align	2
	.type	rc4_drop_crypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop_crypt
rc4_drop_crypt:                         # @rc4_drop_crypt
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	beqz	$6, $BB1_2
	nop
$BB1_1:                                 # =>This Inner Loop Header: Depth=1
	lbu	$1, 256($4)
	addiu	$1, $1, 1
	sb	$1, 256($4)
	andi	$1, $1, 255
	addu	$1, $4, $1
	lbu	$2, 0($1)
	lbu	$3, 257($4)
	addu	$3, $2, $3
	sb	$3, 257($4)
	andi	$3, $3, 255
	addiu	$7, $5, 1
	addiu	$6, $6, -1
	addu	$3, $4, $3
	lbu	$8, 0($3)
	sb	$8, 0($1)
	sb	$2, 0($3)
	lbu	$1, 0($1)
	addu	$1, $1, $2
	andi	$1, $1, 255
	addu	$1, $4, $1
	lbu	$1, 0($1)
	lbu	$2, 0($5)
	xor	$1, $2, $1
	sb	$1, 0($5)
	bnez	$6, $BB1_1
	move	$5, $7
$BB1_2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop_crypt
$func_end1:
	.size	rc4_drop_crypt, ($func_end1)-rc4_drop_crypt
                                        # -- End function
	.globl	rc4_drop_encrypt                # -- Begin function rc4_drop_encrypt
	.p2align	2
	.type	rc4_drop_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_drop_encrypt
rc4_drop_encrypt:                       # @rc4_drop_encrypt
	.frame	$sp,296,$ra
	.mask 	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -296
	sw	$ra, 292($sp)                   # 4-byte Folded Spill
	sw	$19, 288($sp)                   # 4-byte Folded Spill
	sw	$18, 284($sp)                   # 4-byte Folded Spill
	sw	$17, 280($sp)                   # 4-byte Folded Spill
	sw	$16, 276($sp)                   # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$16, $7
	lw	$17, 312($sp)
	addiu	$2, $zero, 0
	addiu	$18, $sp, 18
	addiu	$3, $zero, 256
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	sb	$2, 0($1)
	addiu	$2, $2, 1
	bne	$2, $3, $BB2_1
	nop
# %bb.2:
	addiu	$3, $zero, 0
	addiu	$2, $zero, 256
	addiu	$7, $zero, 0
$BB2_3:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $7, $5
	teq	$5, $zero, 7
	mfhi	$1
	addu	$8, $18, $7
	lbu	$9, 0($8)
	addu	$3, $9, $3
	addu	$1, $4, $1
	lbu	$1, 0($1)
	addu	$3, $3, $1
	andi	$1, $3, 255
	addiu	$7, $7, 1
	addu	$1, $18, $1
	lbu	$10, 0($1)
	sb	$10, 0($8)
	bne	$7, $2, $BB2_3
	sb	$9, 0($1)
# %bb.4:
	addiu	$19, $zero, 0
	addiu	$2, $zero, 768
	addiu	$3, $zero, 0
$BB2_5:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	andi	$1, $3, 255
	addu	$1, $18, $1
	lbu	$4, 0($1)
	addu	$19, $4, $19
	andi	$5, $19, 255
	addu	$5, $18, $5
	addiu	$2, $2, -1
	lbu	$7, 0($5)
	sb	$7, 0($1)
	bnez	$2, $BB2_5
	sb	$4, 0($5)
# %bb.6:
	lw	$25, %call16(memcpy)($gp)
	move	$4, $17
	move	$5, $6
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$6, $16
	beqz	$16, $BB2_9
	nop
# %bb.7:
	addiu	$2, $zero, 0
$BB2_8:                                 # =>This Inner Loop Header: Depth=1
	addiu	$2, $2, 1
	andi	$1, $2, 255
	addu	$1, $18, $1
	lbu	$3, 0($1)
	addu	$19, $3, $19
	andi	$4, $19, 255
	addu	$4, $18, $4
	addiu	$5, $17, 1
	addiu	$16, $16, -1
	lbu	$6, 0($4)
	sb	$6, 0($1)
	sb	$3, 0($4)
	lbu	$1, 0($1)
	addu	$1, $1, $3
	lbu	$3, 0($17)
	andi	$1, $1, 255
	addu	$1, $18, $1
	lbu	$1, 0($1)
	xor	$1, $3, $1
	sb	$1, 0($17)
	bnez	$16, $BB2_8
	move	$17, $5
$BB2_9:
	lw	$16, 276($sp)                   # 4-byte Folded Reload
	lw	$17, 280($sp)                   # 4-byte Folded Reload
	lw	$18, 284($sp)                   # 4-byte Folded Reload
	lw	$19, 288($sp)                   # 4-byte Folded Reload
	lw	$ra, 292($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 296
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_drop_encrypt
$func_end2:
	.size	rc4_drop_encrypt, ($func_end2)-rc4_drop_encrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
