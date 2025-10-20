	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"rc4_standard.c"
	.globl	rc4_init                        # -- Begin function rc4_init
	.p2align	2
	.type	rc4_init,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_init
rc4_init:                               # @rc4_init
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
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
	addiu	$7, $zero, 0
$BB0_3:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $6
	teq	$6, $zero, 7
	mfhi	$1
	addu	$8, $4, $2
	lbu	$9, 0($8)
	addu	$7, $9, $7
	addu	$1, $5, $1
	lbu	$1, 0($1)
	addu	$7, $7, $1
	andi	$1, $7, 255
	addiu	$2, $2, 1
	addu	$1, $4, $1
	lbu	$10, 0($1)
	sb	$10, 0($8)
	bne	$2, $3, $BB0_3
	sb	$9, 0($1)
# %bb.4:
	sb	$zero, 257($4)
	jr	$ra
	sb	$zero, 256($4)
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_init
$func_end0:
	.size	rc4_init, ($func_end0)-rc4_init
                                        # -- End function
	.globl	rc4_crypt                       # -- Begin function rc4_crypt
	.p2align	2
	.type	rc4_crypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_crypt
rc4_crypt:                              # @rc4_crypt
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
	.end	rc4_crypt
$func_end1:
	.size	rc4_crypt, ($func_end1)-rc4_crypt
                                        # -- End function
	.globl	rc4_encrypt                     # -- Begin function rc4_encrypt
	.p2align	2
	.type	rc4_encrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_encrypt
rc4_encrypt:                            # @rc4_encrypt
	.frame	$sp,296,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -296
	sw	$ra, 292($sp)                   # 4-byte Folded Spill
	sw	$18, 288($sp)                   # 4-byte Folded Spill
	sw	$17, 284($sp)                   # 4-byte Folded Spill
	sw	$16, 280($sp)                   # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$16, $7
	lw	$17, 312($sp)
	addiu	$2, $zero, 0
	addiu	$18, $sp, 22
	addiu	$3, $zero, 256
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	sb	$2, 0($1)
	addiu	$2, $2, 1
	bne	$2, $3, $BB2_1
	nop
# %bb.2:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
	addiu	$7, $zero, 0
$BB2_3:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $5
	teq	$5, $zero, 7
	mfhi	$1
	addu	$8, $18, $2
	lbu	$9, 0($8)
	addu	$7, $9, $7
	addu	$1, $4, $1
	lbu	$1, 0($1)
	addu	$7, $7, $1
	andi	$1, $7, 255
	addiu	$2, $2, 1
	addu	$1, $18, $1
	lbu	$10, 0($1)
	sb	$10, 0($8)
	bne	$2, $3, $BB2_3
	sb	$9, 0($1)
# %bb.4:
	lw	$25, %call16(memcpy)($gp)
	move	$4, $17
	move	$5, $6
	.reloc ($tmp0), R_MIPS_JALR, memcpy
$tmp0:
	jalr	$25
	move	$6, $16
	beqz	$16, $BB2_7
	nop
# %bb.5:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB2_6:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	andi	$1, $3, 255
	addu	$1, $18, $1
	lbu	$4, 0($1)
	addu	$2, $4, $2
	andi	$5, $2, 255
	addu	$5, $18, $5
	addiu	$6, $17, 1
	addiu	$16, $16, -1
	lbu	$7, 0($5)
	sb	$7, 0($1)
	sb	$4, 0($5)
	lbu	$1, 0($1)
	addu	$1, $1, $4
	lbu	$4, 0($17)
	andi	$1, $1, 255
	addu	$1, $18, $1
	lbu	$1, 0($1)
	xor	$1, $4, $1
	sb	$1, 0($17)
	bnez	$16, $BB2_6
	move	$17, $6
$BB2_7:
	lw	$16, 280($sp)                   # 4-byte Folded Reload
	lw	$17, 284($sp)                   # 4-byte Folded Reload
	lw	$18, 288($sp)                   # 4-byte Folded Reload
	lw	$ra, 292($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 296
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_encrypt
$func_end2:
	.size	rc4_encrypt, ($func_end2)-rc4_encrypt
                                        # -- End function
	.globl	rc4_decrypt                     # -- Begin function rc4_decrypt
	.p2align	2
	.type	rc4_decrypt,@function
	.set	nomicromips
	.set	nomips16
	.ent	rc4_decrypt
rc4_decrypt:                            # @rc4_decrypt
	.frame	$sp,296,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -296
	sw	$ra, 292($sp)                   # 4-byte Folded Spill
	sw	$18, 288($sp)                   # 4-byte Folded Spill
	sw	$17, 284($sp)                   # 4-byte Folded Spill
	sw	$16, 280($sp)                   # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$16, $7
	lw	$17, 312($sp)
	addiu	$2, $zero, 0
	addiu	$18, $sp, 22
	addiu	$3, $zero, 256
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	sb	$2, 0($1)
	addiu	$2, $2, 1
	bne	$2, $3, $BB3_1
	nop
# %bb.2:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 256
	addiu	$7, $zero, 0
$BB3_3:                                 # =>This Inner Loop Header: Depth=1
	divu	$zero, $2, $5
	teq	$5, $zero, 7
	mfhi	$1
	addu	$8, $18, $2
	lbu	$9, 0($8)
	addu	$7, $9, $7
	addu	$1, $4, $1
	lbu	$1, 0($1)
	addu	$7, $7, $1
	andi	$1, $7, 255
	addiu	$2, $2, 1
	addu	$1, $18, $1
	lbu	$10, 0($1)
	sb	$10, 0($8)
	bne	$2, $3, $BB3_3
	sb	$9, 0($1)
# %bb.4:
	lw	$25, %call16(memcpy)($gp)
	move	$4, $17
	move	$5, $6
	.reloc ($tmp1), R_MIPS_JALR, memcpy
$tmp1:
	jalr	$25
	move	$6, $16
	beqz	$16, $BB3_7
	nop
# %bb.5:
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB3_6:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	andi	$1, $3, 255
	addu	$1, $18, $1
	lbu	$4, 0($1)
	addu	$2, $4, $2
	andi	$5, $2, 255
	addu	$5, $18, $5
	addiu	$6, $17, 1
	addiu	$16, $16, -1
	lbu	$7, 0($5)
	sb	$7, 0($1)
	sb	$4, 0($5)
	lbu	$1, 0($1)
	addu	$1, $1, $4
	lbu	$4, 0($17)
	andi	$1, $1, 255
	addu	$1, $18, $1
	lbu	$1, 0($1)
	xor	$1, $4, $1
	sb	$1, 0($17)
	bnez	$16, $BB3_6
	move	$17, $6
$BB3_7:
	lw	$16, 280($sp)                   # 4-byte Folded Reload
	lw	$17, 284($sp)                   # 4-byte Folded Reload
	lw	$18, 288($sp)                   # 4-byte Folded Reload
	lw	$ra, 292($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 296
	.set	at
	.set	macro
	.set	reorder
	.end	rc4_decrypt
$func_end3:
	.size	rc4_decrypt, ($func_end3)-rc4_decrypt
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
