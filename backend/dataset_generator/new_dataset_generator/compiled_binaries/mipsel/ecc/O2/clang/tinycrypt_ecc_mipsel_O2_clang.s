	.text
	.abicalls
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.text
	.file	"tinycrypt_ecc.c"
	.globl	uECC_set_rng                    # -- Begin function uECC_set_rng
	.p2align	2
	.type	uECC_set_rng,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_set_rng
uECC_set_rng:                           # @uECC_set_rng
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lw	$1, %got(g_rng_function)($1)
	jr	$ra
	sw	$4, %lo(g_rng_function)($1)
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_set_rng
$func_end0:
	.size	uECC_set_rng, ($func_end0)-uECC_set_rng
                                        # -- End function
	.globl	uECC_get_rng                    # -- Begin function uECC_get_rng
	.p2align	2
	.type	uECC_get_rng,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_get_rng
uECC_get_rng:                           # @uECC_get_rng
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lw	$1, %got(g_rng_function)($1)
	jr	$ra
	lw	$2, %lo(g_rng_function)($1)
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_get_rng
$func_end1:
	.size	uECC_get_rng, ($func_end1)-uECC_get_rng
                                        # -- End function
	.globl	uECC_curve_private_key_size     # -- Begin function uECC_curve_private_key_size
	.p2align	2
	.type	uECC_curve_private_key_size,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_curve_private_key_size
uECC_curve_private_key_size:            # @uECC_curve_private_key_size
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lh	$1, 2($4)
	addiu	$1, $1, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	jr	$ra
	sra	$2, $1, 3
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_curve_private_key_size
$func_end2:
	.size	uECC_curve_private_key_size, ($func_end2)-uECC_curve_private_key_size
                                        # -- End function
	.globl	uECC_curve_public_key_size      # -- Begin function uECC_curve_public_key_size
	.p2align	2
	.type	uECC_curve_public_key_size,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_curve_public_key_size
uECC_curve_public_key_size:             # @uECC_curve_public_key_size
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lb	$1, 1($4)
	jr	$ra
	sll	$2, $1, 1
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_curve_public_key_size
$func_end3:
	.size	uECC_curve_public_key_size, ($func_end3)-uECC_curve_public_key_size
                                        # -- End function
	.globl	uECC_vli_clear                  # -- Begin function uECC_vli_clear
	.p2align	2
	.type	uECC_vli_clear,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_clear
uECC_vli_clear:                         # @uECC_vli_clear
	.frame	$sp,24,$ra
	.mask 	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	blez	$5, $BB4_2
	addu	$gp, $2, $25
# %bb.1:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	andi	$1, $5, 255
	sll	$6, $1, 2
	lw	$25, %call16(memset)($gp)
	.reloc ($tmp0), R_MIPS_JALR, memset
$tmp0:
	jalr	$25
	addiu	$5, $zero, 0
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
$BB4_2:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_clear
$func_end4:
	.size	uECC_vli_clear, ($func_end4)-uECC_vli_clear
                                        # -- End function
	.globl	uECC_vli_isZero                 # -- Begin function uECC_vli_isZero
	.p2align	2
	.type	uECC_vli_isZero,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_isZero
uECC_vli_isZero:                        # @uECC_vli_isZero
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$5, $BB5_4
	nop
# %bb.1:
	andi	$3, $5, 255
	addiu	$2, $zero, 0
$BB5_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB5_2
	addiu	$4, $4, 4
# %bb.3:
	jr	$ra
	sltiu	$2, $2, 1
$BB5_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_isZero
$func_end5:
	.size	uECC_vli_isZero, ($func_end5)-uECC_vli_isZero
                                        # -- End function
	.globl	uECC_vli_testBit                # -- Begin function uECC_vli_testBit
	.p2align	2
	.type	uECC_vli_testBit,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_testBit
uECC_vli_testBit:                       # @uECC_vli_testBit
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $zero, 1
	sllv	$1, $1, $5
	sra	$2, $5, 5
	sll	$2, $2, 2
	addu	$2, $4, $2
	lw	$2, 0($2)
	jr	$ra
	and	$2, $2, $1
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_testBit
$func_end6:
	.size	uECC_vli_testBit, ($func_end6)-uECC_vli_testBit
                                        # -- End function
	.globl	uECC_vli_numBits                # -- Begin function uECC_vli_numBits
	.p2align	2
	.type	uECC_vli_numBits,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_numBits
uECC_vli_numBits:                       # @uECC_vli_numBits
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $5, -1
	seb	$1, $1
	slti	$2, $1, -1
	addiu	$3, $zero, -1
	movn	$3, $1, $2
	addiu	$2, $3, 1
	andi	$5, $5, 255
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	move	$3, $5
	addiu	$5, $5, -1
	seb	$6, $5
	bltz	$6, $BB7_4
	nop
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$1, $4, $1
	lw	$1, 0($1)
	beqz	$1, $BB7_1
	nop
# %bb.3:
	b	$BB7_5
	move	$2, $3
$BB7_4:
	andi	$1, $2, 255
	beqz	$1, $BB7_11
	nop
$BB7_5:
	seb	$1, $2
	addiu	$2, $1, -1
	sll	$1, $2, 2
	addu	$1, $4, $1
	lw	$4, 0($1)
	beqz	$4, $BB7_9
	nop
# %bb.6:
	addiu	$3, $zero, 0
$BB7_7:                                 # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	srl	$1, $4, 1
	sltiu	$5, $4, 2
	beqz	$5, $BB7_7
	move	$4, $1
# %bb.8:
	b	$BB7_10
	nop
$BB7_9:
	addiu	$3, $zero, 0
$BB7_10:
	sll	$1, $2, 5
	addu	$2, $3, $1
	jr	$ra
	seh	$2, $2
$BB7_11:
	addiu	$2, $zero, 0
	jr	$ra
	seh	$2, $2
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_numBits
$func_end7:
	.size	uECC_vli_numBits, ($func_end7)-uECC_vli_numBits
                                        # -- End function
	.globl	uECC_vli_set                    # -- Begin function uECC_vli_set
	.p2align	2
	.type	uECC_vli_set,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_set
uECC_vli_set:                           # @uECC_vli_set
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$6, $BB8_3
	nop
# %bb.1:
	andi	$2, $6, 255
$BB8_2:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	sw	$1, 0($4)
	addiu	$2, $2, -1
	addiu	$4, $4, 4
	bnez	$2, $BB8_2
	addiu	$5, $5, 4
$BB8_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_set
$func_end8:
	.size	uECC_vli_set, ($func_end8)-uECC_vli_set
                                        # -- End function
	.globl	uECC_vli_cmp_unsafe             # -- Begin function uECC_vli_cmp_unsafe
	.p2align	2
	.type	uECC_vli_cmp_unsafe,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_cmp_unsafe
uECC_vli_cmp_unsafe:                    # @uECC_vli_cmp_unsafe
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	andi	$2, $6, 255
$BB9_1:                                 # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB9_5
	nop
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $4, $1
	lw	$3, 0($3)
	addu	$1, $5, $1
	lw	$6, 0($1)
	sltu	$1, $6, $3
	bnez	$1, $BB9_6
	nop
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	sltu	$1, $3, $6
	beqz	$1, $BB9_1
	addiu	$2, $2, -1
# %bb.4:
	addiu	$2, $zero, 255
	jr	$ra
	seb	$2, $2
$BB9_5:
	addiu	$2, $zero, 0
	jr	$ra
	seb	$2, $2
$BB9_6:
	addiu	$2, $zero, 1
	jr	$ra
	seb	$2, $2
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_cmp_unsafe
$func_end9:
	.size	uECC_vli_cmp_unsafe, ($func_end9)-uECC_vli_cmp_unsafe
                                        # -- End function
	.globl	uECC_vli_equal                  # -- Begin function uECC_vli_equal
	.p2align	2
	.type	uECC_vli_equal,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_equal
uECC_vli_equal:                         # @uECC_vli_equal
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$1, $6, -1
	seb	$2, $1
	bltz	$2, $BB10_4
	nop
# %bb.1:
	andi	$1, $2, 255
	sll	$3, $1, 2
	addiu	$2, $zero, 0
	addiu	$6, $zero, -4
$BB10_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $3
	lw	$1, 0($1)
	addu	$7, $5, $3
	lw	$7, 0($7)
	xor	$1, $7, $1
	addiu	$3, $3, -4
	bne	$3, $6, $BB10_2
	or	$2, $1, $2
# %bb.3:
	jr	$ra
	sltu	$2, $zero, $2
$BB10_4:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_equal
$func_end10:
	.size	uECC_vli_equal, ($func_end10)-uECC_vli_equal
                                        # -- End function
	.globl	cond_set                        # -- Begin function cond_set
	.p2align	2
	.type	cond_set,@function
	.set	nomicromips
	.set	nomips16
	.ent	cond_set
cond_set:                               # @cond_set
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	movn	$5, $zero, $6
	mul	$1, $6, $4
	jr	$ra
	or	$2, $5, $1
	.set	at
	.set	macro
	.set	reorder
	.end	cond_set
$func_end11:
	.size	cond_set, ($func_end11)-cond_set
                                        # -- End function
	.globl	uECC_vli_sub                    # -- Begin function uECC_vli_sub
	.p2align	2
	.type	uECC_vli_sub,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_sub
uECC_vli_sub:                           # @uECC_vli_sub
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$7, $BB12_4
	nop
# %bb.1:
	andi	$3, $7, 255
	addiu	$2, $zero, 0
$BB12_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($6)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($5)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($4)
	or	$2, $2, $8
	addiu	$3, $3, -1
	addiu	$4, $4, 4
	addiu	$6, $6, 4
	bnez	$3, $BB12_2
	addiu	$5, $5, 4
# %bb.3:
	jr	$ra
	nop
$BB12_4:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_sub
$func_end12:
	.size	uECC_vli_sub, ($func_end12)-uECC_vli_sub
                                        # -- End function
	.globl	uECC_vli_cmp                    # -- Begin function uECC_vli_cmp
	.p2align	2
	.type	uECC_vli_cmp,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_cmp
uECC_vli_cmp:                           # @uECC_vli_cmp
	.frame	$sp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$6, $BB13_6
	nop
# %bb.1:
	addiu	$sp, $sp, -32
	andi	$3, $6, 255
	addiu	$2, $zero, 0
	addiu	$6, $sp, 0
	move	$7, $3
$BB13_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$8, 0($4)
	sltu	$9, $8, $1
	or	$2, $2, $9
	subu	$1, $8, $1
	sw	$1, 0($6)
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$7, $7, -1
	bnez	$7, $BB13_2
	addiu	$6, $6, 4
# %bb.3:
	addiu	$4, $zero, 0
	addiu	$5, $sp, 0
$BB13_4:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	or	$4, $1, $4
	addiu	$3, $3, -1
	bnez	$3, $BB13_4
	addiu	$5, $5, 4
# %bb.5:
	addiu	$1, $zero, -2
	movz	$1, $zero, $2
	sltiu	$2, $4, 1
	or	$1, $1, $2
	xori	$2, $1, 1
	jr	$ra
	addiu	$sp, $sp, 32
$BB13_6:
	jr	$ra
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_cmp
$func_end13:
	.size	uECC_vli_cmp, ($func_end13)-uECC_vli_cmp
                                        # -- End function
	.globl	uECC_vli_modAdd                 # -- Begin function uECC_vli_modAdd
	.p2align	2
	.type	uECC_vli_modAdd,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modAdd
uECC_vli_modAdd:                        # @uECC_vli_modAdd
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$2, 16($sp)
	blez	$2, $BB14_7
	andi	$3, $2, 255
# %bb.1:
	addiu	$8, $zero, 0
	move	$9, $4
	move	$10, $3
$BB14_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$11, $1, $8
	lw	$12, 0($6)
	addu	$11, $11, $12
	xor	$12, $11, $1
	movn	$8, $zero, $12
	sltu	$1, $11, $1
	sw	$11, 0($9)
	or	$8, $8, $1
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	addiu	$10, $10, -1
	bnez	$10, $BB14_2
	addiu	$9, $9, 4
# %bb.3:
	bnez	$8, $BB14_8
	nop
# %bb.4:
	b	$BB14_7
	nop
$BB14_5:                                #   in Loop: Header=BB14_7 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$5, $7, $1
	lw	$5, 0($5)
	addu	$1, $4, $1
	lw	$6, 0($1)
	sltu	$1, $6, $5
	bnez	$1, $BB14_11
	nop
# %bb.6:                                #   in Loop: Header=BB14_7 Depth=1
	sltu	$1, $5, $6
	bnez	$1, $BB14_8
	addiu	$3, $3, -1
$BB14_7:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$5, $1
	bgez	$5, $BB14_5
	nop
$BB14_8:
	blez	$2, $BB14_11
	nop
# %bb.9:
	andi	$2, $2, 255
	addiu	$3, $zero, 0
$BB14_10:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($7)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$5, 0($4)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($4)
	or	$3, $3, $6
	addiu	$4, $4, 4
	addiu	$2, $2, -1
	bnez	$2, $BB14_10
	addiu	$7, $7, 4
$BB14_11:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modAdd
$func_end14:
	.size	uECC_vli_modAdd, ($func_end14)-uECC_vli_modAdd
                                        # -- End function
	.globl	uECC_vli_modSub                 # -- Begin function uECC_vli_modSub
	.p2align	2
	.type	uECC_vli_modSub,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modSub
uECC_vli_modSub:                        # @uECC_vli_modSub
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lw	$2, 16($sp)
	blez	$2, $BB15_6
	nop
# %bb.1:
	andi	$2, $2, 255
	addiu	$3, $zero, 0
	move	$8, $4
	move	$9, $2
$BB15_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($6)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$10, 0($5)
	sltu	$11, $10, $1
	subu	$1, $10, $1
	sw	$1, 0($8)
	or	$3, $3, $11
	addiu	$5, $5, 4
	addiu	$6, $6, 4
	addiu	$9, $9, -1
	bnez	$9, $BB15_2
	addiu	$8, $8, 4
# %bb.3:
	beqz	$3, $BB15_6
	nop
# %bb.4:
	addiu	$3, $zero, 0
$BB15_5:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$5, $1, $3
	lw	$6, 0($7)
	addu	$5, $5, $6
	xor	$6, $5, $1
	movn	$3, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($4)
	or	$3, $3, $1
	addiu	$4, $4, 4
	addiu	$2, $2, -1
	bnez	$2, $BB15_5
	addiu	$7, $7, 4
$BB15_6:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modSub
$func_end15:
	.size	uECC_vli_modSub, ($func_end15)-uECC_vli_modSub
                                        # -- End function
	.globl	uECC_vli_mmod                   # -- Begin function uECC_vli_mmod
	.p2align	2
	.type	uECC_vli_mmod,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_mmod
uECC_vli_mmod:                          # @uECC_vli_mmod
	.frame	$sp,192,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -192
	sw	$ra, 188($sp)                   # 4-byte Folded Spill
	sw	$fp, 184($sp)                   # 4-byte Folded Spill
	sw	$23, 180($sp)                   # 4-byte Folded Spill
	sw	$22, 176($sp)                   # 4-byte Folded Spill
	sw	$21, 172($sp)                   # 4-byte Folded Spill
	sw	$20, 168($sp)                   # 4-byte Folded Spill
	sw	$19, 164($sp)                   # 4-byte Folded Spill
	sw	$18, 160($sp)                   # 4-byte Folded Spill
	sw	$17, 156($sp)                   # 4-byte Folded Spill
	sw	$16, 152($sp)                   # 4-byte Folded Spill
	addu	$19, $2, $25
	move	$17, $7
	move	$18, $6
	move	$16, $4
	addiu	$1, $7, -1
	seb	$1, $1
	slti	$2, $1, -1
	addiu	$3, $zero, -1
	movn	$3, $1, $2
	addiu	$1, $sp, 24
	sw	$5, 20($sp)
	sw	$1, 16($sp)
	addiu	$2, $3, 1
	andi	$20, $7, 255
	sll	$21, $7, 1
	move	$4, $20
$BB16_1:                                # =>This Inner Loop Header: Depth=1
	move	$3, $4
	addiu	$4, $4, -1
	seb	$5, $4
	bltz	$5, $BB16_4
	nop
# %bb.2:                                #   in Loop: Header=BB16_1 Depth=1
	andi	$1, $5, 255
	sll	$1, $1, 2
	addu	$1, $18, $1
	lw	$1, 0($1)
	beqz	$1, $BB16_1
	nop
# %bb.3:
	b	$BB16_5
	move	$2, $3
$BB16_4:
	andi	$1, $2, 255
	beqz	$1, $BB16_39
	nop
$BB16_5:
	seb	$1, $2
	addiu	$2, $1, -1
	sll	$1, $2, 2
	addu	$1, $18, $1
	lw	$4, 0($1)
	beqz	$4, $BB16_9
	nop
# %bb.6:
	addiu	$3, $zero, 0
$BB16_7:                                # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, 1
	srl	$1, $4, 1
	sltiu	$5, $4, 2
	beqz	$5, $BB16_7
	move	$4, $1
# %bb.8:
	b	$BB16_10
	nop
$BB16_9:
	addiu	$3, $zero, 0
$BB16_10:
	sll	$1, $2, 5
	addu	$2, $3, $1
$BB16_11:
	sll	$1, $17, 6
	subu	$1, $1, $2
	seh	$22, $1
	ext	$2, $22, 26, 5
	addu	$2, $1, $2
	seh	$fp, $2
	andi	$2, $2, 65504
	subu	$1, $1, $2
	seh	$23, $1
	sra	$2, $fp, 5
	seb	$1, $2
	blez	$1, $BB16_13
	nop
# %bb.12:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	addiu	$4, $sp, 88
	lw	$25, %call16(memset)($19)
	addiu	$5, $zero, 0
	.reloc ($tmp1), R_MIPS_JALR, memset
$tmp1:
	jalr	$25
	move	$gp, $19
$BB16_13:
	blez	$23, $BB16_18
	ext	$3, $fp, 5, 16
# %bb.14:
	beqz	$17, $BB16_20
	nop
# %bb.15:
	addiu	$1, $zero, 32
	subu	$2, $1, $23
	seb	$1, $3
	sll	$1, $1, 2
	addiu	$3, $sp, 88
	addu	$3, $3, $1
	addiu	$4, $zero, 0
	move	$5, $17
$BB16_16:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($18)
	sllv	$6, $1, $23
	or	$4, $6, $4
	sw	$4, 0($3)
	srlv	$4, $1, $2
	addiu	$18, $18, 4
	addiu	$5, $5, -1
	bnez	$5, $BB16_16
	addiu	$3, $3, 4
# %bb.17:
	b	$BB16_20
	nop
$BB16_18:
	blez	$17, $BB16_20
	nop
# %bb.19:
	seb	$1, $3
	sll	$1, $1, 2
	addiu	$2, $sp, 88
	addu	$4, $2, $1
	sll	$6, $20, 2
	lw	$25, %call16(memcpy)($19)
	move	$5, $18
	.reloc ($tmp2), R_MIPS_JALR, memcpy
$tmp2:
	jalr	$25
	move	$gp, $19
$BB16_20:
	bltz	$22, $BB16_34
	addiu	$2, $sp, 16
# %bb.21:
	sll	$1, $20, 2
	addiu	$4, $sp, 88
	addu	$5, $4, $1
	sll	$3, $17, 2
	addu	$6, $4, $3
	addu	$7, $6, $1
	addiu	$8, $6, -4
	b	$BB16_25
	addiu	$3, $zero, 1
$BB16_22:                               #   in Loop: Header=BB16_25 Depth=1
	sltiu	$3, $3, 1
$BB16_23:                               #   in Loop: Header=BB16_25 Depth=1
	lw	$1, 0($8)
	lw	$9, 0($6)
	sll	$9, $9, 31
	or	$1, $1, $9
	sw	$1, 0($8)
$BB16_24:                               #   in Loop: Header=BB16_25 Depth=1
	addiu	$1, $22, -1
	seh	$9, $22
	blez	$9, $BB16_35
	move	$22, $1
$BB16_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_27 Depth 2
                                        #     Child Loop BB16_30 Depth 2
                                        #     Child Loop BB16_32 Depth 2
	blez	$17, $BB16_22
	nop
# %bb.26:                               #   in Loop: Header=BB16_25 Depth=1
	sll	$1, $3, 2
	addu	$1, $2, $1
	lw	$9, 0($1)
	xori	$1, $3, 1
	sll	$1, $1, 2
	addu	$1, $2, $1
	lw	$10, 0($1)
	addiu	$13, $zero, 0
	addiu	$11, $zero, 0
	addiu	$12, $zero, 0
$BB16_27:                               #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sll	$1, $13, 2
	addu	$13, $4, $1
	lw	$13, 0($13)
	addu	$13, $13, $12
	addu	$14, $9, $1
	lw	$15, 0($14)
	sltu	$14, $15, $13
	subu	$15, $15, $13
	addu	$1, $10, $1
	sw	$15, 0($1)
	movz	$14, $12, $13
	addiu	$11, $11, 1
	seb	$13, $11
	slt	$1, $13, $21
	bnez	$1, $BB16_27
	move	$12, $14
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	xor	$1, $3, $14
	blez	$17, $BB16_23
	sltiu	$3, $1, 1
# %bb.29:                               #   in Loop: Header=BB16_25 Depth=1
	addiu	$10, $zero, 0
	move	$9, $5
$BB16_30:                               #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($9)
	srl	$11, $1, 1
	or	$10, $11, $10
	sw	$10, -4($9)
	addiu	$9, $9, -4
	sltu	$11, $4, $9
	bnez	$11, $BB16_30
	sll	$10, $1, 31
# %bb.31:                               #   in Loop: Header=BB16_25 Depth=1
	lw	$1, 0($8)
	lw	$9, 0($6)
	sll	$9, $9, 31
	or	$1, $1, $9
	sw	$1, 0($8)
	addiu	$10, $zero, 0
	move	$9, $7
$BB16_32:                               #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($9)
	srl	$11, $1, 1
	or	$10, $11, $10
	sw	$10, -4($9)
	addiu	$9, $9, -4
	sltu	$11, $6, $9
	bnez	$11, $BB16_32
	sll	$10, $1, 31
# %bb.33:                               #   in Loop: Header=BB16_25 Depth=1
	b	$BB16_24
	nop
$BB16_34:
	addiu	$3, $zero, 1
$BB16_35:
	blez	$17, $BB16_38
	nop
# %bb.36:
	sll	$1, $3, 2
	addu	$1, $2, $1
	lw	$2, 0($1)
$BB16_37:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	sw	$1, 0($16)
	addiu	$2, $2, 4
	addiu	$20, $20, -1
	bnez	$20, $BB16_37
	addiu	$16, $16, 4
$BB16_38:
	lw	$16, 152($sp)                   # 4-byte Folded Reload
	lw	$17, 156($sp)                   # 4-byte Folded Reload
	lw	$18, 160($sp)                   # 4-byte Folded Reload
	lw	$19, 164($sp)                   # 4-byte Folded Reload
	lw	$20, 168($sp)                   # 4-byte Folded Reload
	lw	$21, 172($sp)                   # 4-byte Folded Reload
	lw	$22, 176($sp)                   # 4-byte Folded Reload
	lw	$23, 180($sp)                   # 4-byte Folded Reload
	lw	$fp, 184($sp)                   # 4-byte Folded Reload
	lw	$ra, 188($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 192
$BB16_39:
	b	$BB16_11
	addiu	$2, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_mmod
$func_end16:
	.size	uECC_vli_mmod, ($func_end16)-uECC_vli_mmod
                                        # -- End function
	.globl	uECC_vli_modMult                # -- Begin function uECC_vli_modMult
	.p2align	2
	.type	uECC_vli_modMult,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modMult
uECC_vli_modMult:                       # @uECC_vli_modMult
	.frame	$sp,104,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -104
	sw	$ra, 100($sp)                   # 4-byte Folded Spill
	sw	$20, 96($sp)                    # 4-byte Folded Spill
	sw	$19, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $7
	move	$18, $4
	lw	$19, 120($sp)
	lw	$1, %got(uECC_vli_mult)($16)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$20, $sp, 16
	move	$4, $20
	.reloc ($tmp3), R_MIPS_JALR, uECC_vli_mult
$tmp3:
	jalr	$25
	move	$7, $19
	lw	$25, %call16(uECC_vli_mmod)($16)
	move	$4, $18
	move	$5, $20
	move	$6, $17
	move	$7, $19
	.reloc ($tmp4), R_MIPS_JALR, uECC_vli_mmod
$tmp4:
	jalr	$25
	move	$gp, $16
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$19, 92($sp)                    # 4-byte Folded Reload
	lw	$20, 96($sp)                    # 4-byte Folded Reload
	lw	$ra, 100($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 104
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modMult
$func_end17:
	.size	uECC_vli_modMult, ($func_end17)-uECC_vli_modMult
                                        # -- End function
	.p2align	2                               # -- Begin function uECC_vli_mult
	.type	uECC_vli_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_mult
uECC_vli_mult:                          # @uECC_vli_mult
	.frame	$sp,8,$ra
	.mask 	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -8
	sw	$16, 4($sp)                     # 4-byte Folded Spill
	blez	$7, $BB18_6
	andi	$2, $7, 255
# %bb.1:
	addiu	$9, $zero, 0
	addiu	$10, $zero, -4
	addiu	$11, $zero, 0
	addiu	$12, $zero, 0
	addiu	$15, $zero, 0
$BB18_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	move	$13, $5
	move	$14, $9
	addiu	$3, $zero, 0
$BB18_3:                                #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $6, $14
	lw	$1, 0($1)
	lw	$8, 0($13)
	multu	$1, $8
	mfhi	$1
	mflo	$8
	addu	$24, $15, $8
	addu	$1, $12, $1
	sltu	$15, $24, $15
	addiu	$13, $13, 4
	addiu	$14, $14, -4
	addu	$8, $1, $15
	sltu	$1, $8, $12
	xor	$12, $8, $12
	movz	$1, $15, $12
	addu	$3, $3, $1
	move	$12, $8
	bne	$14, $10, $BB18_3
	move	$15, $24
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	sll	$1, $11, 2
	addu	$1, $4, $1
	sw	$24, 0($1)
	addiu	$9, $9, 4
	addiu	$11, $11, 1
	move	$12, $3
	bne	$11, $2, $BB18_2
	move	$15, $8
# %bb.5:
	b	$BB18_7
	nop
$BB18_6:
	addiu	$8, $zero, 0
	addiu	$3, $zero, 0
$BB18_7:
	sll	$1, $7, 1
	addiu	$9, $1, -1
	slt	$1, $7, $9
	beqz	$1, $BB18_15
	nop
# %bb.8:
	addiu	$10, $zero, 1
	move	$11, $7
	b	$BB18_11
	move	$15, $7
$BB18_9:                                #   in Loop: Header=BB18_11 Depth=1
	move	$25, $8
	move	$8, $3
$BB18_10:                               #   in Loop: Header=BB18_11 Depth=1
	sll	$1, $11, 2
	addu	$1, $4, $1
	sw	$25, 0($1)
	seb	$11, $12
	slt	$1, $11, $9
	addiu	$10, $10, 1
	move	$15, $12
	beqz	$1, $BB18_15
	move	$3, $13
$BB18_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_13 Depth 2
	addiu	$12, $15, 1
	subu	$1, $12, $7
	seb	$1, $1
	slt	$1, $1, $7
	beqz	$1, $BB18_9
	addiu	$13, $zero, 0
# %bb.12:                               #   in Loop: Header=BB18_11 Depth=1
	seb	$1, $10
	sll	$13, $1, 2
	addu	$14, $5, $13
	seb	$15, $15
	sll	$15, $15, 2
	subu	$13, $15, $13
	addu	$15, $6, $13
	addiu	$24, $1, 1
	addiu	$13, $zero, 0
	move	$gp, $8
$BB18_13:                               #   Parent Loop BB18_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($14)
	lw	$8, 0($15)
	multu	$8, $1
	mflo	$1
	mfhi	$8
	addu	$8, $3, $8
	addu	$25, $gp, $1
	sltu	$1, $25, $gp
	addu	$8, $8, $1
	addiu	$gp, $24, 1
	addiu	$14, $14, 4
	addiu	$15, $15, -4
	andi	$16, $24, 255
	sltu	$24, $8, $3
	xor	$3, $8, $3
	movz	$24, $1, $3
	addu	$13, $13, $24
	move	$24, $gp
	move	$3, $8
	bne	$16, $2, $BB18_13
	move	$gp, $25
# %bb.14:                               #   in Loop: Header=BB18_11 Depth=1
	b	$BB18_10
	nop
$BB18_15:
	sll	$1, $9, 2
	addu	$1, $4, $1
	sw	$8, 0($1)
	lw	$16, 4($sp)                     # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 8
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_mult
$func_end18:
	.size	uECC_vli_mult, ($func_end18)-uECC_vli_mult
                                        # -- End function
	.globl	uECC_vli_modMult_fast           # -- Begin function uECC_vli_modMult_fast
	.p2align	2
	.type	uECC_vli_modMult_fast,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modMult_fast
uECC_vli_modMult_fast:                  # @uECC_vli_modMult_fast
	.frame	$sp,96,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -96
	sw	$ra, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$1, $2, $25
	move	$16, $7
	move	$17, $4
	lb	$7, 0($7)
	lw	$1, %got(uECC_vli_mult)($1)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$18, $sp, 16
	.reloc ($tmp5), R_MIPS_JALR, uECC_vli_mult
$tmp5:
	jalr	$25
	move	$4, $18
	lw	$25, 172($16)
	move	$4, $17
	jalr	$25
	move	$5, $18
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$ra, 92($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 96
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modMult_fast
$func_end19:
	.size	uECC_vli_modMult_fast, ($func_end19)-uECC_vli_modMult_fast
                                        # -- End function
	.globl	uECC_vli_modInv                 # -- Begin function uECC_vli_modInv
	.p2align	2
	.type	uECC_vli_modInv,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_modInv
uECC_vli_modInv:                        # @uECC_vli_modInv
	.frame	$sp,184,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -184
	sw	$ra, 180($sp)                   # 4-byte Folded Spill
	sw	$fp, 176($sp)                   # 4-byte Folded Spill
	sw	$23, 172($sp)                   # 4-byte Folded Spill
	sw	$22, 168($sp)                   # 4-byte Folded Spill
	sw	$21, 164($sp)                   # 4-byte Folded Spill
	sw	$20, 160($sp)                   # 4-byte Folded Spill
	sw	$19, 156($sp)                   # 4-byte Folded Spill
	sw	$18, 152($sp)                   # 4-byte Folded Spill
	sw	$17, 148($sp)                   # 4-byte Folded Spill
	sw	$16, 144($sp)                   # 4-byte Folded Spill
	blez	$7, $BB20_81
	addu	$16, $2, $25
# %bb.1:
	move	$18, $6
	andi	$23, $7, 255
	sll	$17, $23, 2
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB20_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$17, $2, $BB20_2
	or	$3, $1, $3
# %bb.3:
	beqz	$3, $BB20_80
	nop
# %bb.4:
	addiu	$19, $sp, 112
	lw	$25, %call16(memcpy)($16)
	move	$fp, $4
	move	$4, $19
	move	$6, $17
	.reloc ($tmp6), R_MIPS_JALR, memcpy
$tmp6:
	jalr	$25
	move	$gp, $16
	addiu	$20, $sp, 80
	lw	$25, %call16(memcpy)($16)
	move	$4, $20
	move	$5, $18
	.reloc ($tmp7), R_MIPS_JALR, memcpy
$tmp7:
	jalr	$25
	move	$6, $17
	addiu	$21, $sp, 48
	lw	$25, %call16(memset)($16)
	move	$4, $21
	addiu	$5, $zero, 0
	move	$6, $17
	.reloc ($tmp8), R_MIPS_JALR, memset
$tmp8:
	jalr	$25
	move	$gp, $16
	addiu	$22, $sp, 16
	addiu	$1, $zero, 1
	sw	$1, 48($sp)
	lw	$25, %call16(memset)($16)
	move	$4, $22
	addiu	$5, $zero, 0
	.reloc ($tmp9), R_MIPS_JALR, memset
$tmp9:
	jalr	$25
	move	$6, $17
	move	$4, $fp
	addu	$2, $19, $17
	addu	$3, $21, $17
	addu	$5, $20, $17
	addiu	$6, $3, -4
	addu	$7, $22, $17
	addiu	$8, $7, -4
	lui	$9, 32768
	b	$BB20_6
	move	$11, $23
$BB20_5:                                #   in Loop: Header=BB20_6 Depth=1
	lw	$1, 0($12)
	or	$1, $1, $9
	sw	$1, 0($12)
	move	$11, $23
$BB20_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_52 Depth 2
                                        #     Child Loop BB20_54 Depth 2
                                        #     Child Loop BB20_56 Depth 2
                                        #     Child Loop BB20_60 Depth 2
                                        #     Child Loop BB20_62 Depth 2
                                        #     Child Loop BB20_74 Depth 2
                                        #     Child Loop BB20_76 Depth 2
                                        #     Child Loop BB20_65 Depth 2
                                        #     Child Loop BB20_30 Depth 2
                                        #     Child Loop BB20_32 Depth 2
                                        #     Child Loop BB20_34 Depth 2
                                        #     Child Loop BB20_38 Depth 2
                                        #     Child Loop BB20_40 Depth 2
                                        #     Child Loop BB20_68 Depth 2
                                        #     Child Loop BB20_70 Depth 2
                                        #     Child Loop BB20_43 Depth 2
                                        #     Child Loop BB20_17 Depth 2
                                        #     Child Loop BB20_46 Depth 2
                                        #     Child Loop BB20_48 Depth 2
                                        #     Child Loop BB20_20 Depth 2
                                        #     Child Loop BB20_10 Depth 2
                                        #     Child Loop BB20_23 Depth 2
                                        #     Child Loop BB20_25 Depth 2
                                        #     Child Loop BB20_13 Depth 2
	addiu	$11, $11, -1
	seb	$10, $11
	bltz	$10, $BB20_79
	nop
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	andi	$1, $10, 255
	sll	$1, $1, 2
	addu	$10, $20, $1
	lw	$10, 0($10)
	addu	$1, $19, $1
	lw	$12, 0($1)
	beq	$12, $10, $BB20_6
	nop
# %bb.8:                                #   in Loop: Header=BB20_6 Depth=1
	lbu	$1, 112($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_15
	nop
# %bb.9:                                #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $2
$BB20_10:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $19, $10
	bnez	$12, $BB20_10
	sll	$11, $1, 31
# %bb.11:                               #   in Loop: Header=BB20_6 Depth=1
	lbu	$1, 48($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_22
	nop
# %bb.12:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $3
$BB20_13:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $21, $10
	bnez	$12, $BB20_13
	sll	$11, $1, 31
# %bb.14:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	move	$11, $23
$BB20_15:                               #   in Loop: Header=BB20_6 Depth=1
	lbu	$1, 80($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_28
	nop
# %bb.16:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $5
$BB20_17:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $20, $10
	bnez	$12, $BB20_17
	sll	$11, $1, 31
# %bb.18:                               #   in Loop: Header=BB20_6 Depth=1
	lbu	$1, 16($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_45
	nop
# %bb.19:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $7
$BB20_20:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	addiu	$11, $sp, 16
	sltu	$12, $11, $10
	bnez	$12, $BB20_20
	sll	$11, $1, 31
# %bb.21:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	move	$11, $23
$BB20_22:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$12, $zero, 0
	addiu	$10, $zero, 0
$BB20_23:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$11, $sp, 48
	addu	$1, $11, $12
	lw	$13, 0($1)
	addu	$14, $13, $10
	addu	$15, $18, $12
	lw	$15, 0($15)
	addu	$14, $14, $15
	xor	$15, $14, $13
	sw	$14, 0($1)
	movn	$10, $zero, $15
	sltu	$1, $14, $13
	addiu	$12, $12, 4
	bne	$17, $12, $BB20_23
	or	$10, $10, $1
# %bb.24:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$13, $zero, 0
	move	$12, $3
$BB20_25:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($12)
	srl	$14, $1, 1
	or	$13, $14, $13
	sw	$13, -4($12)
	addiu	$12, $12, -4
	sltu	$14, $11, $12
	bnez	$14, $BB20_25
	sll	$13, $1, 31
# %bb.26:                               #   in Loop: Header=BB20_6 Depth=1
	move	$11, $23
	bnez	$10, $BB20_5
	move	$12, $6
# %bb.27:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	nop
$BB20_28:                               #   in Loop: Header=BB20_6 Depth=1
	sltu	$1, $10, $12
	beqz	$1, $BB20_51
	nop
# %bb.29:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$10, $zero, 0
	addiu	$11, $zero, 0
$BB20_30:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $20, $10
	lw	$1, 0($1)
	addu	$1, $1, $11
	addu	$12, $19, $10
	lw	$13, 0($12)
	subu	$14, $13, $1
	sw	$14, 0($12)
	sltu	$12, $13, $1
	movn	$11, $zero, $1
	addiu	$10, $10, 4
	bne	$17, $10, $BB20_30
	or	$11, $11, $12
# %bb.31:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $2
$BB20_32:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $19, $10
	bnez	$12, $BB20_32
	sll	$11, $1, 31
# %bb.33:                               #   in Loop: Header=BB20_6 Depth=1
	move	$10, $23
$BB20_34:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $10, -1
	seb	$11, $1
	bltz	$11, $BB20_39
	nop
# %bb.35:                               #   in Loop: Header=BB20_34 Depth=2
	andi	$1, $11, 255
	sll	$1, $1, 2
	addu	$11, $21, $1
	lw	$11, 0($11)
	addiu	$12, $sp, 16
	addu	$1, $12, $1
	lw	$12, 0($1)
	sltu	$1, $12, $11
	bnez	$1, $BB20_39
	nop
# %bb.36:                               #   in Loop: Header=BB20_34 Depth=2
	sltu	$1, $11, $12
	beqz	$1, $BB20_34
	addiu	$10, $10, -1
# %bb.37:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$10, $zero, 0
	move	$11, $21
	move	$12, $18
	move	$13, $23
$BB20_38:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($11)
	addu	$14, $1, $10
	lw	$15, 0($12)
	addu	$14, $14, $15
	xor	$15, $14, $1
	movn	$10, $zero, $15
	sltu	$1, $14, $1
	sw	$14, 0($11)
	or	$10, $10, $1
	addiu	$11, $11, 4
	addiu	$13, $13, -1
	bnez	$13, $BB20_38
	addiu	$12, $12, 4
$BB20_39:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$10, $zero, 0
	addiu	$11, $zero, 0
$BB20_40:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $sp, 16
	addu	$1, $1, $10
	lw	$1, 0($1)
	addu	$1, $1, $11
	addu	$12, $21, $10
	lw	$13, 0($12)
	subu	$14, $13, $1
	sw	$14, 0($12)
	sltu	$12, $13, $1
	movn	$11, $zero, $1
	addiu	$10, $10, 4
	bne	$17, $10, $BB20_40
	or	$11, $11, $12
# %bb.41:                               #   in Loop: Header=BB20_6 Depth=1
	lbu	$1, 48($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_67
	nop
# %bb.42:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $3
$BB20_43:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $21, $10
	bnez	$12, $BB20_43
	sll	$11, $1, 31
# %bb.44:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	move	$11, $23
$BB20_45:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$12, $zero, 0
	addiu	$10, $zero, 0
$BB20_46:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$11, $sp, 16
	addu	$1, $11, $12
	lw	$13, 0($1)
	addu	$14, $13, $10
	addu	$15, $18, $12
	lw	$15, 0($15)
	addu	$14, $14, $15
	xor	$15, $14, $13
	sw	$14, 0($1)
	movn	$10, $zero, $15
	sltu	$1, $14, $13
	addiu	$12, $12, 4
	bne	$17, $12, $BB20_46
	or	$10, $10, $1
# %bb.47:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$13, $zero, 0
	move	$12, $7
$BB20_48:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($12)
	srl	$14, $1, 1
	or	$13, $14, $13
	sw	$13, -4($12)
	addiu	$12, $12, -4
	sltu	$14, $11, $12
	bnez	$14, $BB20_48
	sll	$13, $1, 31
# %bb.49:                               #   in Loop: Header=BB20_6 Depth=1
	move	$11, $23
	bnez	$10, $BB20_5
	move	$12, $8
# %bb.50:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	nop
$BB20_51:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$10, $zero, 0
	addiu	$11, $zero, 0
$BB20_52:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $19, $10
	lw	$1, 0($1)
	addu	$1, $1, $11
	addu	$12, $20, $10
	lw	$13, 0($12)
	subu	$14, $13, $1
	sw	$14, 0($12)
	sltu	$12, $13, $1
	movn	$11, $zero, $1
	addiu	$10, $10, 4
	bne	$17, $10, $BB20_52
	or	$11, $11, $12
# %bb.53:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $5
$BB20_54:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $20, $10
	bnez	$12, $BB20_54
	sll	$11, $1, 31
# %bb.55:                               #   in Loop: Header=BB20_6 Depth=1
	move	$10, $23
$BB20_56:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addiu	$1, $10, -1
	seb	$11, $1
	bltz	$11, $BB20_61
	nop
# %bb.57:                               #   in Loop: Header=BB20_56 Depth=2
	andi	$1, $11, 255
	sll	$1, $1, 2
	addu	$11, $22, $1
	lw	$11, 0($11)
	addu	$1, $21, $1
	lw	$12, 0($1)
	sltu	$1, $12, $11
	bnez	$1, $BB20_61
	nop
# %bb.58:                               #   in Loop: Header=BB20_56 Depth=2
	sltu	$1, $11, $12
	beqz	$1, $BB20_56
	addiu	$10, $10, -1
# %bb.59:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$10, $zero, 0
	move	$11, $22
	move	$12, $18
	move	$13, $23
$BB20_60:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($11)
	addu	$14, $1, $10
	lw	$15, 0($12)
	addu	$14, $14, $15
	xor	$15, $14, $1
	movn	$10, $zero, $15
	sltu	$1, $14, $1
	sw	$14, 0($11)
	or	$10, $10, $1
	addiu	$11, $11, 4
	addiu	$13, $13, -1
	bnez	$13, $BB20_60
	addiu	$12, $12, 4
$BB20_61:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$10, $zero, 0
	addiu	$11, $zero, 0
$BB20_62:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $21, $10
	lw	$1, 0($1)
	addu	$1, $1, $11
	addu	$12, $22, $10
	lw	$13, 0($12)
	subu	$14, $13, $1
	sw	$14, 0($12)
	sltu	$12, $13, $1
	movn	$11, $zero, $1
	addiu	$10, $10, 4
	bne	$17, $10, $BB20_62
	or	$11, $11, $12
# %bb.63:                               #   in Loop: Header=BB20_6 Depth=1
	lbu	$1, 16($sp)
	andi	$1, $1, 1
	bnez	$1, $BB20_73
	nop
# %bb.64:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	move	$10, $7
$BB20_65:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($10)
	srl	$12, $1, 1
	or	$11, $12, $11
	sw	$11, -4($10)
	addiu	$10, $10, -4
	sltu	$12, $22, $10
	bnez	$12, $BB20_65
	sll	$11, $1, 31
# %bb.66:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	move	$11, $23
$BB20_67:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	addiu	$10, $zero, 0
$BB20_68:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $21, $11
	lw	$12, 0($1)
	addu	$13, $12, $10
	addu	$14, $18, $11
	lw	$14, 0($14)
	addu	$13, $13, $14
	xor	$14, $13, $12
	sw	$13, 0($1)
	movn	$10, $zero, $14
	sltu	$1, $13, $12
	addiu	$11, $11, 4
	bne	$17, $11, $BB20_68
	or	$10, $10, $1
# %bb.69:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$12, $zero, 0
	move	$11, $3
$BB20_70:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($11)
	srl	$13, $1, 1
	or	$12, $13, $12
	sw	$12, -4($11)
	addiu	$11, $11, -4
	sltu	$13, $21, $11
	bnez	$13, $BB20_70
	sll	$12, $1, 31
# %bb.71:                               #   in Loop: Header=BB20_6 Depth=1
	move	$11, $23
	bnez	$10, $BB20_5
	move	$12, $6
# %bb.72:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	nop
$BB20_73:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$11, $zero, 0
	addiu	$10, $zero, 0
$BB20_74:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $22, $11
	lw	$12, 0($1)
	addu	$13, $12, $10
	addu	$14, $18, $11
	lw	$14, 0($14)
	addu	$13, $13, $14
	xor	$14, $13, $12
	sw	$13, 0($1)
	movn	$10, $zero, $14
	sltu	$1, $13, $12
	addiu	$11, $11, 4
	bne	$17, $11, $BB20_74
	or	$10, $10, $1
# %bb.75:                               #   in Loop: Header=BB20_6 Depth=1
	addiu	$12, $zero, 0
	move	$11, $7
$BB20_76:                               #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, -4($11)
	srl	$13, $1, 1
	or	$12, $13, $12
	sw	$12, -4($11)
	addiu	$11, $11, -4
	sltu	$13, $22, $11
	bnez	$13, $BB20_76
	sll	$12, $1, 31
# %bb.77:                               #   in Loop: Header=BB20_6 Depth=1
	move	$11, $23
	bnez	$10, $BB20_5
	move	$12, $8
# %bb.78:                               #   in Loop: Header=BB20_6 Depth=1
	b	$BB20_6
	nop
$BB20_79:
	addiu	$5, $sp, 48
	lw	$25, %call16(memcpy)($16)
	.reloc ($tmp10), R_MIPS_JALR, memcpy
$tmp10:
	jalr	$25
	move	$6, $17
	b	$BB20_81
	nop
$BB20_80:
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	move	$6, $17
	.reloc ($tmp11), R_MIPS_JALR, memset
$tmp11:
	jalr	$25
	move	$gp, $16
$BB20_81:
	lw	$16, 144($sp)                   # 4-byte Folded Reload
	lw	$17, 148($sp)                   # 4-byte Folded Reload
	lw	$18, 152($sp)                   # 4-byte Folded Reload
	lw	$19, 156($sp)                   # 4-byte Folded Reload
	lw	$20, 160($sp)                   # 4-byte Folded Reload
	lw	$21, 164($sp)                   # 4-byte Folded Reload
	lw	$22, 168($sp)                   # 4-byte Folded Reload
	lw	$23, 172($sp)                   # 4-byte Folded Reload
	lw	$fp, 176($sp)                   # 4-byte Folded Reload
	lw	$ra, 180($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 184
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_modInv
$func_end20:
	.size	uECC_vli_modInv, ($func_end20)-uECC_vli_modInv
                                        # -- End function
	.globl	double_jacobian_default         # -- Begin function double_jacobian_default
	.p2align	2
	.type	double_jacobian_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	double_jacobian_default
double_jacobian_default:                # @double_jacobian_default
	.frame	$sp,208,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -208
	sw	$ra, 204($sp)                   # 4-byte Folded Spill
	sw	$fp, 200($sp)                   # 4-byte Folded Spill
	sw	$23, 196($sp)                   # 4-byte Folded Spill
	sw	$22, 192($sp)                   # 4-byte Folded Spill
	sw	$21, 188($sp)                   # 4-byte Folded Spill
	sw	$20, 184($sp)                   # 4-byte Folded Spill
	sw	$19, 180($sp)                   # 4-byte Folded Spill
	sw	$18, 176($sp)                   # 4-byte Folded Spill
	sw	$17, 172($sp)                   # 4-byte Folded Spill
	sw	$16, 168($sp)                   # 4-byte Folded Spill
	sw	$7, 36($sp)                     # 4-byte Folded Spill
	lbu	$22, 0($7)
	seb	$7, $22
	blez	$7, $BB21_63
	addu	$8, $2, $25
# %bb.1:
	move	$18, $6
	move	$20, $4
	sll	$19, $22, 2
	addiu	$2, $zero, 0
	addiu	$3, $zero, 0
$BB21_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$19, $2, $BB21_2
	or	$3, $1, $3
# %bb.3:
	beqz	$3, $BB21_63
	nop
# %bb.4:
	sw	$8, 20($sp)                     # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($8)
	sw	$1, 32($sp)                     # 4-byte Folded Spill
	addiu	$fp, $1, %lo(uECC_vli_mult)
	addiu	$23, $sp, 104
	move	$4, $23
	move	$6, $5
	move	$25, $fp
	.reloc ($tmp12), R_MIPS_JALR, uECC_vli_mult
$tmp12:
	jalr	$25
	sw	$5, 28($sp)
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	lw	$25, 172($17)
	addiu	$21, $sp, 72
	move	$4, $21
	jalr	$25
	move	$5, $23
	addiu	$16, $sp, 104
	lb	$7, 0($17)
	move	$4, $16
	move	$5, $20
	move	$6, $21
	move	$25, $fp
	.reloc ($tmp13), R_MIPS_JALR, uECC_vli_mult
$tmp13:
	jalr	$25
	sw	$fp, 24($sp)
	addiu	$23, $sp, 40
	lw	$25, 172($17)
	move	$4, $23
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 104
	lb	$7, 0($17)
	move	$4, $16
	move	$5, $21
	move	$25, $fp
	.reloc ($tmp14), R_MIPS_JALR, uECC_vli_mult
$tmp14:
	jalr	$25
	move	$6, $21
	lw	$25, 172($17)
	move	$4, $21
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 104
	lb	$7, 0($17)
	move	$4, $16
	lw	$fp, 28($sp)                    # 4-byte Folded Reload
	move	$5, $fp
	lw	$25, 24($sp)                    # 4-byte Folded Reload
	.reloc ($tmp15), R_MIPS_JALR, uECC_vli_mult
$tmp15:
	jalr	$25
	move	$6, $18
	lw	$25, 172($17)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 104
	lb	$7, 0($17)
	move	$4, $16
	move	$5, $18
	lw	$25, 24($sp)                    # 4-byte Folded Reload
	.reloc ($tmp16), R_MIPS_JALR, uECC_vli_mult
$tmp16:
	jalr	$25
	move	$6, $18
	lw	$25, 172($17)
	move	$4, $18
	jalr	$25
	move	$5, $16
	addiu	$3, $zero, 0
	addiu	$2, $zero, 0
$BB21_5:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $20, $3
	lw	$4, 0($1)
	addu	$5, $4, $2
	addu	$6, $18, $3
	lw	$6, 0($6)
	addu	$5, $5, $6
	xor	$6, $5, $4
	sw	$5, 0($1)
	movn	$2, $zero, $6
	sltu	$1, $5, $4
	addiu	$3, $3, 4
	bne	$19, $3, $BB21_5
	or	$2, $2, $1
# %bb.6:
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	beqz	$2, $BB21_64
	addiu	$fp, $1, 4
$BB21_7:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $fp
	move	$5, $22
$BB21_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_8
	addiu	$4, $4, 4
$BB21_9:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $22
$BB21_10:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	sll	$5, $1, 1
	addu	$5, $5, $2
	xor	$6, $5, $1
	movn	$2, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($3)
	or	$2, $2, $1
	addiu	$4, $4, -1
	bnez	$4, $BB21_10
	addiu	$3, $3, 4
# %bb.11:
	beqz	$2, $BB21_69
	nop
$BB21_12:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $22
$BB21_13:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_13
	addiu	$4, $4, 4
$BB21_14:
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_15:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	lw	$5, 0($1)
	addu	$5, $5, $3
	addu	$6, $20, $2
	lw	$6, 0($6)
	sltu	$7, $6, $5
	subu	$6, $6, $5
	movn	$3, $zero, $5
	sw	$6, 0($1)
	or	$3, $3, $7
	addiu	$4, $4, -1
	bnez	$4, $BB21_15
	addiu	$2, $2, 4
# %bb.16:
	beqz	$3, $BB21_19
	nop
# %bb.17:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $22
$BB21_18:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_18
	addiu	$4, $4, 4
$BB21_19:
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	lb	$7, 0($17)
	lw	$1, 32($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 104
	move	$4, $16
	move	$5, $20
	.reloc ($tmp17), R_MIPS_JALR, uECC_vli_mult
$tmp17:
	jalr	$25
	move	$6, $18
	lw	$25, 172($17)
	move	$4, $20
	jalr	$25
	move	$5, $16
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_20:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $20, $2
	lw	$1, 0($1)
	sll	$5, $1, 1
	addu	$5, $5, $3
	xor	$6, $5, $1
	movn	$3, $zero, $6
	sltu	$1, $5, $1
	addu	$6, $18, $2
	sw	$5, 0($6)
	or	$3, $3, $1
	addiu	$4, $4, -1
	bnez	$4, $BB21_20
	addiu	$2, $2, 4
# %bb.21:
	beqz	$3, $BB21_74
	nop
$BB21_22:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $22
$BB21_23:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_23
	addiu	$4, $4, 4
$BB21_24:
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_25:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $20, $2
	lw	$5, 0($1)
	addu	$6, $5, $3
	addu	$7, $18, $2
	lw	$7, 0($7)
	addu	$6, $6, $7
	xor	$7, $6, $5
	movn	$3, $zero, $7
	sltu	$5, $6, $5
	sw	$6, 0($1)
	or	$3, $3, $5
	addiu	$4, $4, -1
	bnez	$4, $BB21_25
	addiu	$2, $2, 4
# %bb.26:
	beqz	$3, $BB21_79
	nop
$BB21_27:
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $fp
	move	$5, $22
$BB21_28:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_28
	addiu	$4, $4, 4
$BB21_29:
	lbu	$1, 0($20)
	andi	$1, $1, 1
	bnez	$1, $BB21_33
	nop
# %bb.30:
	addu	$2, $20, $19
	addiu	$3, $zero, 0
$BB21_31:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -4($2)
	srl	$4, $1, 1
	or	$3, $4, $3
	sw	$3, -4($2)
	addiu	$2, $2, -4
	sltu	$4, $20, $2
	bnez	$4, $BB21_31
	sll	$3, $1, 31
# %bb.32:
	b	$BB21_38
	nop
$BB21_33:
	addiu	$3, $zero, 0
	move	$4, $22
	addiu	$2, $zero, 0
$BB21_34:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $20, $3
	lw	$5, 0($1)
	addu	$6, $5, $2
	addu	$7, $fp, $3
	lw	$7, 0($7)
	addu	$6, $6, $7
	xor	$7, $6, $5
	movn	$2, $zero, $7
	sltu	$5, $6, $5
	sw	$6, 0($1)
	or	$2, $2, $5
	addiu	$4, $4, -1
	bnez	$4, $BB21_34
	addiu	$3, $3, 4
# %bb.35:
	addu	$3, $20, $19
	addiu	$5, $zero, 0
	move	$4, $3
$BB21_36:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -4($4)
	srl	$6, $1, 1
	or	$5, $6, $5
	sw	$5, -4($4)
	addiu	$4, $4, -4
	sltu	$6, $20, $4
	bnez	$6, $BB21_36
	sll	$5, $1, 31
# %bb.37:
	sll	$1, $2, 31
	lw	$2, -4($3)
	or	$1, $2, $1
	sw	$1, -4($3)
$BB21_38:
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	lb	$7, 0($17)
	lw	$1, 32($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 104
	move	$4, $16
	move	$5, $20
	.reloc ($tmp18), R_MIPS_JALR, uECC_vli_mult
$tmp18:
	jalr	$25
	move	$6, $20
	lw	$25, 172($17)
	move	$4, $18
	jalr	$25
	move	$5, $16
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_39:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $23, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addu	$5, $18, $2
	lw	$6, 0($5)
	sltu	$7, $6, $1
	subu	$6, $6, $1
	movn	$3, $zero, $1
	sw	$6, 0($5)
	or	$3, $3, $7
	addiu	$4, $4, -1
	bnez	$4, $BB21_39
	addiu	$2, $2, 4
# %bb.40:
	beqz	$3, $BB21_43
	nop
# %bb.41:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $22
$BB21_42:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_42
	addiu	$4, $4, 4
$BB21_43:
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_44:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $23, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addu	$5, $18, $2
	lw	$6, 0($5)
	sltu	$7, $6, $1
	subu	$6, $6, $1
	movn	$3, $zero, $1
	sw	$6, 0($5)
	or	$3, $3, $7
	addiu	$4, $4, -1
	bnez	$4, $BB21_44
	addiu	$2, $2, 4
# %bb.45:
	beqz	$3, $BB21_48
	nop
# %bb.46:
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $fp
	move	$5, $22
$BB21_47:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB21_47
	addiu	$4, $4, 4
$BB21_48:
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_49:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	lw	$1, 0($1)
	addu	$1, $1, $3
	addu	$5, $23, $2
	lw	$6, 0($5)
	sltu	$7, $6, $1
	subu	$6, $6, $1
	movn	$3, $zero, $1
	sw	$6, 0($5)
	or	$3, $3, $7
	addiu	$4, $4, -1
	bnez	$4, $BB21_49
	addiu	$2, $2, 4
# %bb.50:
	beqz	$3, $BB21_53
	nop
# %bb.51:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $22
$BB21_52:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($23)
	addu	$5, $1, $2
	lw	$6, 0($3)
	addu	$5, $5, $6
	xor	$6, $5, $1
	movn	$2, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($23)
	or	$2, $2, $1
	addiu	$23, $23, 4
	addiu	$4, $4, -1
	bnez	$4, $BB21_52
	addiu	$3, $3, 4
$BB21_53:
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	lb	$7, 0($17)
	lw	$1, 32($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 104
	addiu	$6, $sp, 40
	move	$4, $16
	.reloc ($tmp19), R_MIPS_JALR, uECC_vli_mult
$tmp19:
	jalr	$25
	move	$5, $20
	lw	$25, 172($17)
	move	$4, $20
	jalr	$25
	move	$5, $16
	addiu	$2, $zero, 0
	move	$4, $22
	addiu	$3, $zero, 0
$BB21_54:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $21, $2
	lw	$5, 0($1)
	addu	$5, $5, $3
	addu	$6, $20, $2
	lw	$6, 0($6)
	sltu	$7, $6, $5
	subu	$6, $6, $5
	movn	$3, $zero, $5
	sw	$6, 0($1)
	or	$3, $3, $7
	addiu	$4, $4, -1
	bnez	$4, $BB21_54
	addiu	$2, $2, 4
# %bb.55:
	lw	$gp, 20($sp)                    # 4-byte Folded Reload
	beqz	$3, $BB21_58
	nop
# %bb.56:
	addiu	$2, $zero, 0
	move	$3, $22
$BB21_57:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($21)
	addu	$4, $1, $2
	lw	$5, 0($fp)
	addu	$4, $4, $5
	xor	$5, $4, $1
	movn	$2, $zero, $5
	sltu	$1, $4, $1
	sw	$4, 0($21)
	or	$2, $2, $1
	addiu	$21, $21, 4
	addiu	$3, $3, -1
	bnez	$3, $BB21_57
	addiu	$fp, $fp, 4
$BB21_58:
	move	$2, $18
	move	$3, $22
	lw	$4, 28($sp)                     # 4-byte Folded Reload
$BB21_59:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	sw	$1, 0($20)
	addiu	$2, $2, 4
	addiu	$3, $3, -1
	bnez	$3, $BB21_59
	addiu	$20, $20, 4
# %bb.60:
	addiu	$2, $zero, 0
$BB21_61:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $18, $2
	addu	$3, $4, $2
	lw	$3, 0($3)
	sw	$3, 0($1)
	addiu	$22, $22, -1
	bnez	$22, $BB21_61
	addiu	$2, $2, 4
# %bb.62:
	addiu	$5, $sp, 72
	lw	$25, %call16(memcpy)($gp)
	.reloc ($tmp20), R_MIPS_JALR, memcpy
$tmp20:
	jalr	$25
	move	$6, $19
$BB21_63:
	lw	$16, 168($sp)                   # 4-byte Folded Reload
	lw	$17, 172($sp)                   # 4-byte Folded Reload
	lw	$18, 176($sp)                   # 4-byte Folded Reload
	lw	$19, 180($sp)                   # 4-byte Folded Reload
	lw	$20, 184($sp)                   # 4-byte Folded Reload
	lw	$21, 188($sp)                   # 4-byte Folded Reload
	lw	$22, 192($sp)                   # 4-byte Folded Reload
	lw	$23, 196($sp)                   # 4-byte Folded Reload
	lw	$fp, 200($sp)                   # 4-byte Folded Reload
	lw	$ra, 204($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 208
$BB21_64:
	move	$2, $22
$BB21_65:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB21_7
	nop
# %bb.66:                               #   in Loop: Header=BB21_65 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $fp, $1
	lw	$3, 0($3)
	addu	$1, $20, $1
	lw	$4, 0($1)
	sltu	$1, $4, $3
	bnez	$1, $BB21_9
	nop
# %bb.67:                               #   in Loop: Header=BB21_65 Depth=1
	sltu	$1, $3, $4
	beqz	$1, $BB21_65
	addiu	$2, $2, -1
# %bb.68:
	b	$BB21_7
	nop
$BB21_69:
	move	$2, $22
$BB21_70:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB21_12
	nop
# %bb.71:                               #   in Loop: Header=BB21_70 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $fp, $1
	lw	$3, 0($3)
	addu	$1, $18, $1
	lw	$4, 0($1)
	sltu	$1, $4, $3
	bnez	$1, $BB21_14
	nop
# %bb.72:                               #   in Loop: Header=BB21_70 Depth=1
	sltu	$1, $3, $4
	beqz	$1, $BB21_70
	addiu	$2, $2, -1
# %bb.73:
	b	$BB21_12
	nop
$BB21_74:
	move	$2, $22
$BB21_75:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB21_22
	nop
# %bb.76:                               #   in Loop: Header=BB21_75 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $fp, $1
	lw	$3, 0($3)
	addu	$1, $18, $1
	lw	$4, 0($1)
	sltu	$1, $4, $3
	bnez	$1, $BB21_24
	nop
# %bb.77:                               #   in Loop: Header=BB21_75 Depth=1
	sltu	$1, $3, $4
	beqz	$1, $BB21_75
	addiu	$2, $2, -1
# %bb.78:
	b	$BB21_22
	nop
$BB21_79:
	move	$2, $22
$BB21_80:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB21_27
	nop
# %bb.81:                               #   in Loop: Header=BB21_80 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $fp, $1
	lw	$3, 0($3)
	addu	$1, $20, $1
	lw	$4, 0($1)
	sltu	$1, $4, $3
	bnez	$1, $BB21_29
	nop
# %bb.82:                               #   in Loop: Header=BB21_80 Depth=1
	sltu	$1, $3, $4
	beqz	$1, $BB21_80
	addiu	$2, $2, -1
# %bb.83:
	b	$BB21_27
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	double_jacobian_default
$func_end21:
	.size	double_jacobian_default, ($func_end21)-double_jacobian_default
                                        # -- End function
	.globl	x_side_default                  # -- Begin function x_side_default
	.p2align	2
	.type	x_side_default,@function
	.set	nomicromips
	.set	nomips16
	.ent	x_side_default
x_side_default:                         # @x_side_default
	.frame	$sp,120,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$fp, 112($sp)                   # 4-byte Folded Spill
	sw	$23, 108($sp)                   # 4-byte Folded Spill
	sw	$22, 104($sp)                   # 4-byte Folded Spill
	sw	$21, 100($sp)                   # 4-byte Folded Spill
	sw	$20, 96($sp)                    # 4-byte Folded Spill
	sw	$19, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$fp, $2, $25
	move	$18, $6
	move	$19, $5
	move	$16, $4
	lbu	$22, 0($6)
	lw	$1, %got(uECC_vli_mult)($fp)
	addiu	$20, $1, %lo(uECC_vli_mult)
	seb	$17, $22
	addiu	$21, $sp, 16
	move	$4, $21
	move	$6, $5
	move	$25, $20
	.reloc ($tmp21), R_MIPS_JALR, uECC_vli_mult
$tmp21:
	jalr	$25
	move	$7, $17
	lw	$25, 172($18)
	move	$4, $16
	jalr	$25
	move	$5, $21
	blez	$17, $BB22_6
	addiu	$23, $18, 4
# %bb.1:
	lw	$1, %got($__const.x_side_default._3)($fp)
	addiu	$3, $1, %lo($__const.x_side_default._3)
	addiu	$2, $zero, 0
	move	$4, $16
	move	$5, $22
$BB22_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($4)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($4)
	or	$2, $2, $7
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB22_2
	addiu	$3, $3, 4
# %bb.3:
	beqz	$2, $BB22_6
	nop
# %bb.4:
	addiu	$2, $zero, 0
	move	$3, $16
	move	$4, $23
	move	$5, $22
$BB22_5:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB22_5
	addiu	$4, $4, 4
$BB22_6:
	lb	$7, 0($18)
	addiu	$21, $sp, 16
	move	$4, $21
	move	$5, $16
	move	$25, $20
	.reloc ($tmp22), R_MIPS_JALR, uECC_vli_mult
$tmp22:
	jalr	$25
	move	$6, $19
	lw	$25, 172($18)
	move	$4, $16
	jalr	$25
	move	$5, $21
	blez	$17, $BB22_10
	nop
# %bb.7:
	addiu	$3, $18, 132
	addiu	$2, $zero, 0
	move	$4, $16
	move	$5, $22
$BB22_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$6, $1, $2
	lw	$7, 0($3)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($4)
	or	$2, $2, $1
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB22_8
	addiu	$3, $3, 4
# %bb.9:
	bnez	$2, $BB22_14
	nop
$BB22_10:
	move	$2, $22
$BB22_11:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $2, -1
	seb	$3, $1
	bltz	$3, $BB22_14
	nop
# %bb.12:                               #   in Loop: Header=BB22_11 Depth=1
	andi	$1, $3, 255
	sll	$1, $1, 2
	addu	$3, $23, $1
	lw	$3, 0($3)
	addu	$1, $16, $1
	lw	$4, 0($1)
	sltu	$1, $4, $3
	bnez	$1, $BB22_17
	nop
# %bb.13:                               #   in Loop: Header=BB22_11 Depth=1
	sltu	$1, $3, $4
	beqz	$1, $BB22_11
	addiu	$2, $2, -1
$BB22_14:
	blez	$17, $BB22_17
	nop
# %bb.15:
	addiu	$2, $zero, 0
$BB22_16:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($23)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$3, 0($16)
	sltu	$4, $3, $1
	subu	$1, $3, $1
	sw	$1, 0($16)
	or	$2, $2, $4
	addiu	$16, $16, 4
	addiu	$22, $22, -1
	bnez	$22, $BB22_16
	addiu	$23, $23, 4
$BB22_17:
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$19, 92($sp)                    # 4-byte Folded Reload
	lw	$20, 96($sp)                    # 4-byte Folded Reload
	lw	$21, 100($sp)                   # 4-byte Folded Reload
	lw	$22, 104($sp)                   # 4-byte Folded Reload
	lw	$23, 108($sp)                   # 4-byte Folded Reload
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 120
	.set	at
	.set	macro
	.set	reorder
	.end	x_side_default
$func_end22:
	.size	x_side_default, ($func_end22)-x_side_default
                                        # -- End function
	.globl	uECC_secp256r1                  # -- Begin function uECC_secp256r1
	.p2align	2
	.type	uECC_secp256r1,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_secp256r1
uECC_secp256r1:                         # @uECC_secp256r1
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$1, $2, $25
	lw	$1, %got(curve_secp256r1)($1)
	jr	$ra
	addiu	$2, $1, %lo(curve_secp256r1)
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_secp256r1
$func_end23:
	.size	uECC_secp256r1, ($func_end23)-uECC_secp256r1
                                        # -- End function
	.globl	vli_mmod_fast_secp256r1         # -- Begin function vli_mmod_fast_secp256r1
	.p2align	2
	.type	vli_mmod_fast_secp256r1,@function
	.set	nomicromips
	.set	nomips16
	.ent	vli_mmod_fast_secp256r1
vli_mmod_fast_secp256r1:                # @vli_mmod_fast_secp256r1
	.frame	$sp,40,$ra
	.mask 	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$fp, 36($sp)                    # 4-byte Folded Spill
	sw	$23, 32($sp)                    # 4-byte Folded Spill
	sw	$22, 28($sp)                    # 4-byte Folded Spill
	sw	$21, 24($sp)                    # 4-byte Folded Spill
	sw	$20, 20($sp)                    # 4-byte Folded Spill
	sw	$19, 16($sp)                    # 4-byte Folded Spill
	sw	$18, 12($sp)                    # 4-byte Folded Spill
	sw	$17, 8($sp)                     # 4-byte Folded Spill
	sw	$16, 4($sp)                     # 4-byte Folded Spill
	lw	$2, 0($5)
	sw	$2, 0($4)
	lw	$6, 4($5)
	sw	$6, 4($4)
	lw	$1, 8($5)
	sw	$1, 8($4)
	lw	$3, 12($5)
	sw	$3, 12($4)
	lw	$10, 16($5)
	sw	$10, 16($4)
	lw	$11, 20($5)
	sw	$11, 20($4)
	lw	$12, 24($5)
	sw	$12, 24($4)
	lw	$7, 28($5)
	sw	$7, 28($4)
	lw	$8, 44($5)
	srl	$13, $8, 31
	lw	$14, 48($5)
	sll	$9, $14, 1
	or	$15, $9, $13
	sll	$8, $8, 1
	addu	$8, $3, $8
	sltu	$3, $8, $3
	addu	$9, $10, $3
	addu	$9, $9, $15
	xor	$24, $15, $14
	xor	$25, $9, $10
	movn	$13, $zero, $24
	sltu	$14, $15, $14
	or	$13, $13, $14
	lw	$14, 56($5)
	lw	$15, 52($5)
	sll	$24, $15, 1
	or	$24, $24, $13
	movn	$3, $zero, $25
	sltu	$10, $9, $10
	lw	$25, 60($5)
	sll	$gp, $25, 1
	sw	$1, 8($4)
	sw	$6, 4($4)
	sw	$2, 0($4)
	or	$10, $3, $10
	addu	$3, $11, $10
	sw	$8, 12($4)
	addu	$3, $3, $24
	sltu	$16, $3, $11
	xor	$17, $24, $15
	sll	$18, $14, 1
	xor	$11, $3, $11
	movn	$10, $zero, $11
	sw	$9, 16($4)
	or	$11, $10, $16
	addu	$10, $12, $11
	movn	$13, $zero, $17
	sltu	$15, $24, $15
	or	$13, $13, $15
	or	$15, $18, $13
	addu	$10, $10, $15
	xor	$24, $10, $12
	movn	$11, $zero, $24
	sltu	$12, $10, $12
	sltu	$24, $15, $14
	xor	$14, $15, $14
	sw	$3, 20($4)
	or	$12, $11, $12
	movn	$13, $zero, $14
	sw	$10, 24($4)
	addu	$11, $7, $12
	or	$13, $13, $24
	addu	$14, $gp, $13
	addu	$11, $11, $14
	sw	$11, 28($4)
	xor	$15, $14, $25
	movn	$13, $zero, $15
	xor	$15, $11, $7
	sltu	$14, $14, $25
	lw	$24, 48($5)
	sll	$25, $24, 1
	movn	$12, $zero, $15
	sltu	$15, $11, $7
	or	$13, $13, $14
	addu	$7, $8, $25
	sltu	$14, $7, $8
	addu	$8, $9, $14
	srl	$24, $24, 31
	lw	$25, 52($5)
	sll	$gp, $25, 1
	or	$gp, $gp, $24
	addu	$8, $8, $gp
	xor	$16, $8, $9
	movn	$14, $zero, $16
	sltu	$9, $8, $9
	xor	$16, $gp, $25
	lw	$17, 60($5)
	lw	$18, 56($5)
	or	$12, $12, $15
	sll	$15, $18, 1
	sw	$1, 8($4)
	sw	$6, 4($4)
	or	$14, $14, $9
	movn	$24, $zero, $16
	sltu	$9, $gp, $25
	or	$24, $24, $9
	or	$15, $15, $24
	xor	$25, $15, $18
	sll	$gp, $17, 1
	sw	$7, 12($4)
	addu	$12, $12, $13
	addu	$9, $3, $14
	addu	$9, $9, $15
	xor	$13, $9, $3
	movn	$14, $zero, $13
	sltu	$3, $9, $3
	or	$3, $14, $3
	addu	$13, $10, $3
	movn	$24, $zero, $25
	sltu	$14, $15, $18
	or	$15, $24, $14
	or	$24, $gp, $15
	addu	$14, $13, $24
	xor	$13, $14, $10
	movn	$3, $zero, $13
	xor	$13, $24, $17
	sw	$8, 16($4)
	sltu	$10, $14, $10
	sw	$9, 20($4)
	sw	$14, 24($4)
	movn	$15, $zero, $13
	sltu	$13, $24, $17
	or	$10, $3, $10
	addu	$3, $11, $10
	or	$13, $15, $13
	addu	$24, $3, $13
	sw	$24, 28($4)
	xor	$3, $24, $11
	movn	$10, $zero, $3
	sltu	$11, $24, $11
	lw	$3, 32($5)
	addu	$25, $2, $3
	sltu	$13, $25, $2
	addu	$15, $6, $13
	lw	$gp, 36($5)
	addu	$gp, $15, $gp
	xor	$15, $gp, $6
	or	$10, $10, $11
	movn	$13, $zero, $15
	sltu	$6, $gp, $6
	lw	$11, 60($5)
	lw	$16, 56($5)
	lw	$15, 40($5)
	or	$6, $13, $6
	sw	$25, 0($4)
	sw	$gp, 4($4)
	addu	$10, $12, $10
	addu	$12, $1, $6
	addu	$17, $12, $15
	xor	$12, $17, $1
	movn	$6, $zero, $12
	sltu	$1, $17, $1
	or	$1, $6, $1
	addu	$15, $7, $1
	sltu	$1, $15, $7
	addu	$13, $8, $1
	sltu	$1, $13, $8
	sw	$17, 8($4)
	addu	$12, $9, $1
	sltu	$1, $12, $9
	addu	$6, $14, $1
	addu	$7, $6, $16
	sw	$15, 12($4)
	xor	$6, $7, $14
	movn	$1, $zero, $6
	sltu	$6, $7, $14
	sw	$13, 16($4)
	sw	$12, 20($4)
	sw	$7, 24($4)
	or	$14, $1, $6
	addu	$1, $24, $14
	addu	$9, $1, $11
	sw	$9, 28($4)
	xor	$1, $9, $24
	movn	$14, $zero, $1
	sltu	$11, $9, $24
	lw	$6, 36($5)
	addu	$1, $25, $6
	sltu	$24, $1, $25
	addu	$8, $gp, $24
	lw	$25, 40($5)
	addu	$8, $8, $25
	xor	$25, $8, $gp
	or	$11, $14, $11
	movn	$24, $zero, $25
	sltu	$14, $8, $gp
	lw	$25, 32($5)
	lw	$gp, 60($5)
	lw	$16, 56($5)
	lw	$18, 52($5)
	lw	$19, 44($5)
	or	$24, $24, $14
	sw	$1, 0($4)
	sw	$8, 4($4)
	addu	$10, $10, $11
	addu	$11, $17, $24
	addu	$14, $11, $19
	xor	$11, $14, $17
	movn	$24, $zero, $11
	sltu	$11, $14, $17
	or	$24, $24, $11
	addu	$11, $15, $24
	addu	$11, $11, $18
	xor	$17, $11, $15
	movn	$24, $zero, $17
	sltu	$15, $11, $15
	sw	$14, 8($4)
	or	$24, $24, $15
	addu	$15, $13, $24
	addu	$15, $15, $16
	xor	$16, $15, $13
	movn	$24, $zero, $16
	sltu	$13, $15, $13
	sw	$11, 12($4)
	or	$13, $24, $13
	addu	$24, $12, $13
	addu	$24, $24, $gp
	xor	$gp, $24, $12
	movn	$13, $zero, $gp
	sltu	$12, $24, $12
	sw	$15, 16($4)
	or	$12, $13, $12
	addu	$13, $7, $12
	addu	$13, $13, $18
	xor	$gp, $13, $7
	sw	$24, 20($4)
	sw	$13, 24($4)
	movn	$12, $zero, $gp
	sltu	$7, $13, $7
	or	$gp, $12, $7
	addu	$7, $9, $gp
	addu	$12, $7, $25
	sw	$12, 28($4)
	xor	$25, $12, $9
	lw	$7, 44($5)
	sltu	$16, $1, $7
	lw	$17, 48($5)
	addu	$17, $17, $16
	movn	$gp, $zero, $25
	sltu	$9, $12, $9
	movn	$16, $zero, $17
	sltu	$25, $8, $17
	or	$25, $16, $25
	lw	$16, 52($5)
	addu	$16, $16, $25
	movn	$25, $zero, $16
	sltu	$18, $14, $16
	or	$gp, $gp, $9
	or	$25, $25, $18
	subu	$9, $14, $16
	subu	$8, $8, $17
	subu	$14, $1, $7
	lw	$16, 40($5)
	lw	$17, 32($5)
	sw	$14, 0($4)
	sw	$8, 4($4)
	sw	$9, 8($4)
	addu	$1, $10, $gp
	sltu	$gp, $11, $25
	sltu	$18, $15, $gp
	sltu	$19, $24, $18
	addu	$17, $17, $19
	subu	$10, $13, $17
	subu	$24, $24, $18
	subu	$15, $15, $gp
	subu	$11, $11, $25
	sw	$11, 12($4)
	sw	$15, 16($4)
	sw	$24, 20($4)
	sw	$10, 24($4)
	movn	$19, $zero, $17
	sltu	$13, $13, $17
	or	$25, $19, $13
	addu	$gp, $16, $25
	subu	$17, $12, $gp
	sw	$17, 28($4)
	lw	$13, 48($5)
	sltu	$16, $14, $13
	lw	$18, 52($5)
	addu	$18, $18, $16
	movn	$16, $zero, $18
	sltu	$19, $8, $18
	or	$16, $16, $19
	lw	$19, 56($5)
	movn	$25, $zero, $gp
	sltu	$12, $12, $gp
	addu	$gp, $19, $16
	movn	$16, $zero, $gp
	sltu	$19, $9, $gp
	or	$16, $16, $19
	subu	$18, $8, $18
	subu	$14, $14, $13
	lw	$19, 44($5)
	lw	$8, 36($5)
	lw	$20, 60($5)
	sw	$14, 0($4)
	sw	$18, 4($4)
	or	$21, $25, $12
	addu	$20, $20, $16
	movn	$16, $zero, $20
	sltu	$12, $11, $20
	or	$25, $16, $12
	sltu	$12, $15, $25
	sltu	$22, $24, $12
	addu	$23, $8, $22
	subu	$8, $10, $23
	subu	$12, $24, $12
	subu	$25, $15, $25
	subu	$16, $11, $20
	subu	$11, $9, $gp
	sw	$11, 8($4)
	sw	$16, 12($4)
	sw	$25, 16($4)
	sw	$12, 20($4)
	sw	$8, 24($4)
	movn	$22, $zero, $23
	sltu	$9, $10, $23
	or	$10, $22, $9
	addu	$15, $19, $10
	subu	$9, $17, $15
	sw	$9, 28($4)
	movn	$10, $zero, $15
	sltu	$15, $17, $15
	lw	$24, 52($5)
	sltu	$gp, $14, $24
	lw	$17, 56($5)
	addu	$17, $17, $gp
	or	$10, $10, $15
	movn	$gp, $zero, $17
	sltu	$15, $18, $17
	or	$15, $gp, $15
	lw	$gp, 60($5)
	addu	$gp, $gp, $15
	movn	$15, $zero, $gp
	sltu	$19, $11, $gp
	addu	$10, $21, $10
	or	$15, $15, $19
	subu	$11, $11, $gp
	subu	$17, $18, $17
	subu	$14, $14, $24
	lw	$18, 48($5)
	lw	$gp, 40($5)
	lw	$19, 36($5)
	lw	$20, 32($5)
	sw	$14, 0($4)
	sw	$17, 4($4)
	sw	$11, 8($4)
	addu	$20, $20, $15
	movn	$15, $zero, $20
	sltu	$21, $16, $20
	or	$15, $15, $21
	addu	$19, $19, $15
	movn	$15, $zero, $19
	sltu	$21, $25, $19
	or	$21, $15, $21
	addu	$15, $gp, $21
	movn	$21, $zero, $15
	sltu	$22, $12, $15
	subu	$15, $12, $15
	subu	$gp, $25, $19
	subu	$12, $16, $20
	sw	$12, 12($4)
	sw	$gp, 16($4)
	sw	$15, 20($4)
	or	$25, $21, $22
	subu	$16, $8, $25
	sw	$16, 24($4)
	sltu	$8, $8, $25
	addu	$18, $18, $8
	subu	$19, $9, $18
	sw	$19, 28($4)
	lw	$25, 56($5)
	sltu	$20, $14, $25
	lw	$21, 60($5)
	addu	$21, $21, $20
	movn	$20, $zero, $21
	sltu	$22, $17, $21
	or	$20, $20, $22
	movn	$8, $zero, $18
	sltu	$18, $9, $18
	sltu	$22, $11, $20
	lw	$9, 36($5)
	addu	$23, $9, $22
	sltu	$fp, $12, $23
	subu	$9, $17, $21
	lw	$17, 44($5)
	lw	$21, 40($5)
	or	$18, $8, $18
	movn	$22, $zero, $23
	or	$8, $22, $fp
	addu	$21, $21, $8
	sltu	$22, $gp, $21
	movn	$8, $zero, $21
	or	$22, $8, $22
	addu	$17, $17, $22
	subu	$8, $12, $23
	subu	$12, $11, $20
	subu	$11, $14, $25
	lw	$5, 52($5)
	sw	$11, 0($4)
	sw	$9, 4($4)
	sw	$12, 8($4)
	addu	$10, $10, $18
	movn	$22, $zero, $17
	sltu	$11, $15, $17
	or	$11, $22, $11
	sltu	$18, $16, $11
	addu	$5, $5, $18
	movn	$18, $zero, $5
	sltu	$20, $19, $5
	subu	$5, $19, $5
	subu	$11, $16, $11
	subu	$14, $15, $17
	subu	$15, $gp, $21
	sw	$8, 12($4)
	sw	$15, 16($4)
	sw	$14, 20($4)
	sw	$11, 24($4)
	or	$gp, $18, $20
	addu	$10, $10, $gp
	subu	$10, $1, $10
	bltz	$10, $BB24_14
	sw	$5, 28($4)
# %bb.1:
	addu	$1, $3, $6
	addu	$1, $1, $2
	subu	$1, $1, $7
	subu	$1, $1, $13
	subu	$1, $1, $24
	subu	$1, $1, $25
	addiu	$6, $1, 1
	addiu	$2, $zero, -1
	b	$BB24_3
	addiu	$3, $zero, 1
$BB24_2:                                #   in Loop: Header=BB24_3 Depth=1
	sltu	$1, $zero, $7
	addiu	$6, $1, -1
	sltu	$13, $9, $6
	or	$1, $1, $13
	addiu	$13, $1, -1
	subu	$9, $9, $6
	sltu	$24, $12, $13
	addiu	$6, $7, 1
	sw	$7, 0($4)
	or	$1, $1, $24
	sltu	$7, $8, $1
	sltu	$24, $15, $7
	sltu	$25, $14, $24
	addiu	$25, $25, 1
	sltu	$gp, $11, $25
	addiu	$16, $gp, -1
	subu	$11, $11, $25
	subu	$14, $14, $24
	subu	$15, $15, $7
	subu	$8, $8, $1
	subu	$12, $12, $13
	sw	$9, 4($4)
	sw	$12, 8($4)
	sw	$8, 12($4)
	sw	$15, 16($4)
	sw	$14, 20($4)
	sw	$11, 24($4)
	sltu	$1, $5, $16
	subu	$5, $5, $16
	sw	$5, 28($4)
	or	$1, $gp, $1
	subu	$10, $10, $1
$BB24_3:                                # =>This Inner Loop Header: Depth=1
	bnez	$10, $BB24_2
	move	$7, $6
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	bne	$5, $2, $BB24_17
	nop
# %bb.5:                                #   in Loop: Header=BB24_3 Depth=1
	beqz	$11, $BB24_17
	nop
# %bb.6:                                #   in Loop: Header=BB24_3 Depth=1
	bne	$11, $3, $BB24_2
	nop
# %bb.7:                                #   in Loop: Header=BB24_3 Depth=1
	bnez	$14, $BB24_2
	nop
# %bb.8:                                #   in Loop: Header=BB24_3 Depth=1
	bnez	$15, $BB24_2
	nop
# %bb.9:                                #   in Loop: Header=BB24_3 Depth=1
	bnez	$8, $BB24_2
	nop
# %bb.10:                               #   in Loop: Header=BB24_3 Depth=1
	bne	$12, $2, $BB24_17
	nop
# %bb.11:                               #   in Loop: Header=BB24_3 Depth=1
	bne	$9, $2, $BB24_17
	nop
# %bb.12:                               #   in Loop: Header=BB24_3 Depth=1
	beqz	$7, $BB24_2
	nop
# %bb.13:
	b	$BB24_17
	nop
$BB24_14:
	addu	$1, $7, $13
	addu	$1, $1, $24
	addu	$1, $1, $25
	subu	$1, $1, $3
	subu	$1, $1, $6
	subu	$2, $1, $2
$BB24_15:                               # =>This Inner Loop Header: Depth=1
	sltu	$1, $zero, $2
	addu	$3, $9, $1
	addiu	$3, $3, -1
	xor	$6, $3, $9
	movn	$1, $zero, $6
	sltu	$6, $3, $9
	or	$1, $1, $6
	addiu	$2, $2, 1
	addu	$6, $12, $1
	addiu	$6, $6, -1
	xor	$7, $6, $12
	movn	$1, $zero, $7
	sltu	$7, $6, $12
	or	$1, $1, $7
	addu	$7, $8, $1
	sltu	$1, $7, $8
	addu	$13, $15, $1
	sltu	$1, $13, $15
	addu	$24, $14, $1
	sltu	$1, $24, $14
	addu	$8, $11, $1
	addiu	$25, $8, 1
	xor	$8, $25, $11
	movn	$1, $zero, $8
	sltu	$8, $25, $11
	or	$1, $1, $8
	addu	$8, $5, $1
	addiu	$gp, $8, -1
	xor	$8, $gp, $5
	movn	$1, $zero, $8
	sltu	$5, $gp, $5
	or	$1, $1, $5
	addu	$10, $1, $10
	move	$5, $gp
	move	$11, $25
	move	$14, $24
	move	$15, $13
	move	$8, $7
	move	$12, $6
	bltz	$10, $BB24_15
	move	$9, $3
# %bb.16:
	sw	$gp, 28($4)
	sw	$25, 24($4)
	sw	$24, 20($4)
	sw	$13, 16($4)
	sw	$7, 12($4)
	sw	$6, 8($4)
	sw	$3, 4($4)
	negu	$1, $2
	sw	$1, 0($4)
$BB24_17:
	lw	$16, 4($sp)                     # 4-byte Folded Reload
	lw	$17, 8($sp)                     # 4-byte Folded Reload
	lw	$18, 12($sp)                    # 4-byte Folded Reload
	lw	$19, 16($sp)                    # 4-byte Folded Reload
	lw	$20, 20($sp)                    # 4-byte Folded Reload
	lw	$21, 24($sp)                    # 4-byte Folded Reload
	lw	$22, 28($sp)                    # 4-byte Folded Reload
	lw	$23, 32($sp)                    # 4-byte Folded Reload
	lw	$fp, 36($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 40
	.set	at
	.set	macro
	.set	reorder
	.end	vli_mmod_fast_secp256r1
$func_end24:
	.size	vli_mmod_fast_secp256r1, ($func_end24)-vli_mmod_fast_secp256r1
                                        # -- End function
	.globl	EccPoint_isZero                 # -- Begin function EccPoint_isZero
	.p2align	2
	.type	EccPoint_isZero,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_isZero
EccPoint_isZero:                        # @EccPoint_isZero
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lbu	$1, 0($5)
	sll	$1, $1, 1
	seb	$2, $1
	blez	$2, $BB25_4
	nop
# %bb.1:
	andi	$3, $2, 255
	addiu	$2, $zero, 0
$BB25_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB25_2
	addiu	$4, $4, 4
# %bb.3:
	jr	$ra
	sltiu	$2, $2, 1
$BB25_4:
	jr	$ra
	addiu	$2, $zero, 1
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_isZero
$func_end25:
	.size	EccPoint_isZero, ($func_end25)-EccPoint_isZero
                                        # -- End function
	.globl	apply_z                         # -- Begin function apply_z
	.p2align	2
	.type	apply_z,@function
	.set	nomicromips
	.set	nomips16
	.ent	apply_z
apply_z:                                # @apply_z
	.frame	$sp,144,$ra
	.mask 	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -144
	sw	$ra, 140($sp)                   # 4-byte Folded Spill
	sw	$22, 136($sp)                   # 4-byte Folded Spill
	sw	$21, 132($sp)                   # 4-byte Folded Spill
	sw	$20, 128($sp)                   # 4-byte Folded Spill
	sw	$19, 124($sp)                   # 4-byte Folded Spill
	sw	$18, 120($sp)                   # 4-byte Folded Spill
	sw	$17, 116($sp)                   # 4-byte Folded Spill
	sw	$16, 112($sp)                   # 4-byte Folded Spill
	addu	$1, $2, $25
	move	$17, $7
	move	$19, $6
	move	$16, $5
	move	$20, $4
	lb	$7, 0($7)
	lw	$1, %got(uECC_vli_mult)($1)
	addiu	$18, $1, %lo(uECC_vli_mult)
	addiu	$21, $sp, 48
	move	$4, $21
	move	$25, $18
	.reloc ($tmp23), R_MIPS_JALR, uECC_vli_mult
$tmp23:
	jalr	$25
	move	$5, $6
	lw	$25, 172($17)
	addiu	$22, $sp, 16
	move	$4, $22
	jalr	$25
	move	$5, $21
	addiu	$21, $sp, 48
	lb	$7, 0($17)
	move	$4, $21
	move	$5, $20
	move	$25, $18
	.reloc ($tmp24), R_MIPS_JALR, uECC_vli_mult
$tmp24:
	jalr	$25
	move	$6, $22
	lw	$25, 172($17)
	move	$4, $20
	jalr	$25
	move	$5, $21
	addiu	$20, $sp, 48
	lb	$7, 0($17)
	move	$4, $20
	move	$5, $22
	move	$25, $18
	.reloc ($tmp25), R_MIPS_JALR, uECC_vli_mult
$tmp25:
	jalr	$25
	move	$6, $19
	lw	$25, 172($17)
	move	$4, $22
	jalr	$25
	move	$5, $20
	addiu	$19, $sp, 48
	lb	$7, 0($17)
	move	$4, $19
	move	$5, $16
	move	$25, $18
	.reloc ($tmp26), R_MIPS_JALR, uECC_vli_mult
$tmp26:
	jalr	$25
	move	$6, $22
	lw	$25, 172($17)
	move	$4, $16
	jalr	$25
	move	$5, $19
	lw	$16, 112($sp)                   # 4-byte Folded Reload
	lw	$17, 116($sp)                   # 4-byte Folded Reload
	lw	$18, 120($sp)                   # 4-byte Folded Reload
	lw	$19, 124($sp)                   # 4-byte Folded Reload
	lw	$20, 128($sp)                   # 4-byte Folded Reload
	lw	$21, 132($sp)                   # 4-byte Folded Reload
	lw	$22, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 144
	.set	at
	.set	macro
	.set	reorder
	.end	apply_z
$func_end26:
	.size	apply_z, ($func_end26)-apply_z
                                        # -- End function
	.globl	XYcZ_add                        # -- Begin function XYcZ_add
	.p2align	2
	.type	XYcZ_add,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_add
XYcZ_add:                               # @XYcZ_add
	.frame	$sp,184,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -184
	sw	$ra, 180($sp)                   # 4-byte Folded Spill
	sw	$fp, 176($sp)                   # 4-byte Folded Spill
	sw	$23, 172($sp)                   # 4-byte Folded Spill
	sw	$22, 168($sp)                   # 4-byte Folded Spill
	sw	$21, 164($sp)                   # 4-byte Folded Spill
	sw	$20, 160($sp)                   # 4-byte Folded Spill
	sw	$19, 156($sp)                   # 4-byte Folded Spill
	sw	$18, 152($sp)                   # 4-byte Folded Spill
	sw	$17, 148($sp)                   # 4-byte Folded Spill
	sw	$16, 144($sp)                   # 4-byte Folded Spill
	addu	$10, $2, $25
	move	$16, $7
	move	$19, $5
	move	$23, $4
	lw	$1, 200($sp)
	addiu	$18, $1, 4
	sw	$1, 40($sp)                     # 4-byte Folded Spill
	lbu	$17, 0($1)
	seb	$1, $17
	blez	$1, $BB27_6
	sw	$1, 44($sp)
# %bb.1:
	addiu	$3, $sp, 48
	addiu	$2, $zero, 0
	move	$11, $6
	move	$5, $23
	move	$9, $17
$BB27_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($11)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($3)
	or	$2, $2, $8
	addiu	$11, $11, 4
	addiu	$5, $5, 4
	addiu	$9, $9, -1
	bnez	$9, $BB27_2
	addiu	$3, $3, 4
# %bb.3:
	beqz	$2, $BB27_6
	nop
# %bb.4:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 48
	move	$9, $18
	move	$5, $17
$BB27_5:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$8, $1, $2
	lw	$7, 0($9)
	addu	$8, $8, $7
	xor	$7, $8, $1
	movn	$2, $zero, $7
	sltu	$1, $8, $1
	sw	$8, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_5
	addiu	$9, $9, 4
$BB27_6:
	sw	$10, 24($sp)                    # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($10)
	sw	$1, 36($sp)                     # 4-byte Folded Spill
	addiu	$20, $1, %lo(uECC_vli_mult)
	sw	$6, 32($sp)                     # 4-byte Folded Spill
	addiu	$fp, $sp, 80
	addiu	$22, $sp, 48
	move	$4, $fp
	move	$5, $22
	lw	$7, 44($sp)                     # 4-byte Folded Reload
	move	$25, $20
	.reloc ($tmp27), R_MIPS_JALR, uECC_vli_mult
$tmp27:
	jalr	$25
	move	$6, $22
	lw	$21, 40($sp)                    # 4-byte Folded Reload
	lw	$25, 172($21)
	move	$4, $22
	jalr	$25
	move	$5, $fp
	addiu	$fp, $sp, 80
	lb	$7, 0($21)
	move	$4, $fp
	move	$5, $23
	move	$25, $20
	.reloc ($tmp28), R_MIPS_JALR, uECC_vli_mult
$tmp28:
	jalr	$25
	move	$6, $22
	lw	$25, 172($21)
	sw	$23, 28($sp)                    # 4-byte Folded Spill
	move	$4, $23
	jalr	$25
	move	$5, $fp
	addiu	$fp, $sp, 80
	lb	$7, 0($21)
	move	$4, $fp
	lw	$23, 32($sp)                    # 4-byte Folded Reload
	move	$5, $23
	move	$6, $22
	move	$25, $20
	.reloc ($tmp29), R_MIPS_JALR, uECC_vli_mult
$tmp29:
	jalr	$25
	sw	$20, 20($sp)
	lw	$25, 172($21)
	move	$4, $23
	jalr	$25
	move	$5, $fp
	lw	$1, 44($sp)                     # 4-byte Folded Reload
	blez	$1, $BB27_28
	nop
# %bb.7:
	sll	$2, $17, 2
	addiu	$3, $zero, 0
	addiu	$4, $zero, 0
$BB27_8:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $19, $3
	lw	$1, 0($1)
	addu	$1, $1, $4
	addu	$5, $16, $3
	lw	$6, 0($5)
	subu	$7, $6, $1
	sw	$7, 0($5)
	sltu	$5, $6, $1
	movn	$4, $zero, $1
	addiu	$3, $3, 4
	bne	$2, $3, $BB27_8
	or	$4, $4, $5
# %bb.9:
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$21, 40($sp)                    # 4-byte Folded Reload
	lw	$20, 28($sp)                    # 4-byte Folded Reload
	beqz	$4, $BB27_12
	nop
# %bb.10:
	addiu	$2, $zero, 0
	move	$3, $16
	move	$4, $18
	move	$5, $17
$BB27_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_11
	addiu	$4, $4, 4
$BB27_12:
	lb	$7, 0($21)
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$23, $sp, 80
	move	$4, $23
	move	$5, $16
	.reloc ($tmp30), R_MIPS_JALR, uECC_vli_mult
$tmp30:
	jalr	$25
	move	$6, $16
	lw	$25, 172($21)
	move	$4, $22
	jalr	$25
	move	$5, $23
	addiu	$2, $zero, 0
	move	$3, $20
	move	$4, $17
$BB27_13:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($22)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($22)
	or	$2, $2, $6
	addiu	$22, $22, 4
	addiu	$4, $4, -1
	bnez	$4, $BB27_13
	addiu	$3, $3, 4
# %bb.14:
	beqz	$2, $BB27_17
	nop
# %bb.15:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 48
	move	$4, $18
	move	$5, $17
$BB27_16:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_16
	addiu	$4, $4, 4
$BB27_17:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 48
	move	$4, $fp
	move	$5, $17
$BB27_18:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_18
	addiu	$4, $4, 4
# %bb.19:
	beqz	$2, $BB27_22
	nop
# %bb.20:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 48
	move	$4, $18
	move	$5, $17
$BB27_21:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_21
	addiu	$4, $4, 4
$BB27_22:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $20
	move	$5, $17
$BB27_23:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_23
	addiu	$4, $4, 4
# %bb.24:
	beqz	$2, $BB27_29
	nop
# %bb.25:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $18
	move	$5, $17
$BB27_26:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_26
	addiu	$4, $4, 4
# %bb.27:
	b	$BB27_29
	nop
$BB27_28:
	lb	$7, 0($21)
	addiu	$22, $sp, 80
	move	$4, $22
	move	$5, $16
	lw	$25, 20($sp)                    # 4-byte Folded Reload
	.reloc ($tmp31), R_MIPS_JALR, uECC_vli_mult
$tmp31:
	jalr	$25
	move	$6, $16
	lw	$25, 172($21)
	addiu	$4, $sp, 48
	jalr	$25
	move	$5, $22
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$20, 28($sp)                    # 4-byte Folded Reload
$BB27_29:
	lb	$7, 0($21)
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	addiu	$22, $1, %lo(uECC_vli_mult)
	addiu	$23, $sp, 80
	move	$4, $23
	move	$5, $19
	move	$25, $22
	.reloc ($tmp32), R_MIPS_JALR, uECC_vli_mult
$tmp32:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($21)
	move	$4, $19
	jalr	$25
	move	$5, $23
	lw	$1, 44($sp)                     # 4-byte Folded Reload
	blez	$1, $BB27_41
	nop
# %bb.30:
	sll	$21, $17, 2
	addiu	$2, $zero, 0
	addiu	$3, $sp, 48
	addiu	$4, $zero, 0
$BB27_31:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $3, $2
	lw	$1, 0($1)
	addu	$1, $1, $4
	addu	$5, $20, $2
	lw	$5, 0($5)
	subu	$6, $5, $1
	addu	$7, $fp, $2
	sw	$6, 0($7)
	sltu	$5, $5, $1
	movn	$4, $zero, $1
	addiu	$2, $2, 4
	bne	$21, $2, $BB27_31
	or	$4, $4, $5
# %bb.32:
	beqz	$4, $BB27_35
	nop
# %bb.33:
	addiu	$2, $zero, 0
	move	$3, $fp
	move	$4, $18
	move	$5, $17
$BB27_34:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB27_34
	addiu	$4, $4, 4
$BB27_35:
	lw	$22, 40($sp)                    # 4-byte Folded Reload
	lb	$7, 0($22)
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$20, $sp, 80
	move	$4, $20
	move	$5, $16
	.reloc ($tmp33), R_MIPS_JALR, uECC_vli_mult
$tmp33:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($22)
	move	$4, $16
	jalr	$25
	move	$5, $20
	addiu	$2, $zero, 0
	move	$3, $16
	move	$4, $17
$BB27_36:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($19)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($3)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($3)
	or	$2, $2, $6
	addiu	$3, $3, 4
	addiu	$4, $4, -1
	bnez	$4, $BB27_36
	addiu	$19, $19, 4
# %bb.37:
	lw	$gp, 24($sp)                    # 4-byte Folded Reload
	beqz	$2, $BB27_40
	nop
# %bb.38:
	addiu	$2, $zero, 0
$BB27_39:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($16)
	addu	$3, $1, $2
	lw	$4, 0($18)
	addu	$3, $3, $4
	xor	$4, $3, $1
	movn	$2, $zero, $4
	sltu	$1, $3, $1
	sw	$3, 0($16)
	or	$2, $2, $1
	addiu	$16, $16, 4
	addiu	$17, $17, -1
	bnez	$17, $BB27_39
	addiu	$18, $18, 4
$BB27_40:
	addiu	$5, $sp, 48
	lw	$25, %call16(memcpy)($gp)
	move	$4, $fp
	.reloc ($tmp34), R_MIPS_JALR, memcpy
$tmp34:
	jalr	$25
	move	$6, $21
	b	$BB27_42
	nop
$BB27_41:
	lb	$7, 0($21)
	addiu	$18, $sp, 80
	move	$4, $18
	move	$5, $16
	move	$25, $22
	.reloc ($tmp35), R_MIPS_JALR, uECC_vli_mult
$tmp35:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($21)
	move	$4, $16
	jalr	$25
	move	$5, $18
$BB27_42:
	lw	$16, 144($sp)                   # 4-byte Folded Reload
	lw	$17, 148($sp)                   # 4-byte Folded Reload
	lw	$18, 152($sp)                   # 4-byte Folded Reload
	lw	$19, 156($sp)                   # 4-byte Folded Reload
	lw	$20, 160($sp)                   # 4-byte Folded Reload
	lw	$21, 164($sp)                   # 4-byte Folded Reload
	lw	$22, 168($sp)                   # 4-byte Folded Reload
	lw	$23, 172($sp)                   # 4-byte Folded Reload
	lw	$fp, 176($sp)                   # 4-byte Folded Reload
	lw	$ra, 180($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 184
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_add
$func_end27:
	.size	XYcZ_add, ($func_end27)-XYcZ_add
                                        # -- End function
	.globl	EccPoint_mult                   # -- Begin function EccPoint_mult
	.p2align	2
	.type	EccPoint_mult,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_mult
EccPoint_mult:                          # @EccPoint_mult
	.frame	$sp,376,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -376
	sw	$ra, 372($sp)                   # 4-byte Folded Spill
	sw	$fp, 368($sp)                   # 4-byte Folded Spill
	sw	$23, 364($sp)                   # 4-byte Folded Spill
	sw	$22, 360($sp)                   # 4-byte Folded Spill
	sw	$21, 356($sp)                   # 4-byte Folded Spill
	sw	$20, 352($sp)                   # 4-byte Folded Spill
	sw	$19, 348($sp)                   # 4-byte Folded Spill
	sw	$18, 344($sp)                   # 4-byte Folded Spill
	sw	$17, 340($sp)                   # 4-byte Folded Spill
	sw	$16, 336($sp)                   # 4-byte Folded Spill
	addu	$19, $2, $25
	move	$21, $7
	sw	$4, 36($sp)                     # 4-byte Folded Spill
	lw	$1, 392($sp)
	sw	$1, 68($sp)                     # 4-byte Folded Spill
	lw	$2, 396($sp)
	addiu	$1, $sp, 144
	addiu	$22, $1, 32
	move	$16, $2
	lbu	$23, 0($2)
	seb	$7, $23
	addiu	$18, $sp, 80
	sw	$23, 56($sp)                    # 4-byte Folded Spill
	sw	$5, 48($sp)                     # 4-byte Folded Spill
	blez	$7, $BB28_3
	sw	$6, 44($sp)
# %bb.1:
	move	$fp, $7
	sll	$20, $23, 2
	lw	$25, %call16(memcpy)($19)
	move	$4, $22
	move	$17, $5
	move	$6, $20
	.reloc ($tmp36), R_MIPS_JALR, memcpy
$tmp36:
	jalr	$25
	move	$gp, $19
	addu	$5, $17, $20
	addiu	$17, $18, 32
	lw	$25, %call16(memcpy)($19)
	move	$4, $17
	sw	$5, 52($sp)                     # 4-byte Folded Spill
	.reloc ($tmp37), R_MIPS_JALR, memcpy
$tmp37:
	jalr	$25
	move	$6, $20
	beqz	$21, $BB28_5
	nop
# %bb.2:
	addiu	$4, $sp, 208
	lw	$25, %call16(memcpy)($19)
	move	$5, $21
	.reloc ($tmp38), R_MIPS_JALR, memcpy
$tmp38:
	jalr	$25
	move	$6, $20
	b	$BB28_6
	nop
$BB28_3:
	sll	$1, $7, 2
	addu	$1, $5, $1
	sw	$1, 52($sp)                     # 4-byte Folded Spill
	beqz	$21, $BB28_19
	addiu	$17, $18, 32
# %bb.4:
	b	$BB28_7
	sw	$7, 32($sp)
$BB28_5:
	addiu	$4, $sp, 208
	lw	$25, %call16(memset)($19)
	addiu	$5, $zero, 0
	move	$6, $20
	.reloc ($tmp39), R_MIPS_JALR, memset
$tmp39:
	jalr	$25
	move	$gp, $19
	addiu	$1, $zero, 1
	sw	$1, 208($sp)
$BB28_6:
	addiu	$4, $sp, 144
	lw	$25, %call16(memmove)($19)
	move	$5, $22
	move	$6, $20
	.reloc ($tmp40), R_MIPS_JALR, memmove
$tmp40:
	jalr	$25
	move	$gp, $19
	addiu	$5, $18, 32
	lw	$25, %call16(memmove)($19)
	move	$4, $18
	.reloc ($tmp41), R_MIPS_JALR, memmove
$tmp41:
	jalr	$25
	move	$6, $20
	sw	$23, 32($sp)                    # 4-byte Folded Spill
	move	$7, $fp
$BB28_7:
	lw	$1, %got(uECC_vli_mult)($19)
	sw	$1, 40($sp)                     # 4-byte Folded Spill
	addiu	$23, $1, %lo(uECC_vli_mult)
	addiu	$18, $sp, 272
	sw	$19, 76($sp)                    # 4-byte Folded Spill
	addiu	$fp, $sp, 208
	move	$4, $18
	move	$5, $fp
	move	$6, $fp
	move	$25, $23
	.reloc ($tmp42), R_MIPS_JALR, uECC_vli_mult
$tmp42:
	jalr	$25
	sw	$7, 60($sp)
	lw	$25, 172($16)
	addiu	$21, $sp, 240
	move	$4, $21
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 272
	lb	$7, 0($16)
	move	$4, $18
	move	$5, $22
	move	$25, $23
	.reloc ($tmp43), R_MIPS_JALR, uECC_vli_mult
$tmp43:
	jalr	$25
	move	$6, $21
	lw	$25, 172($16)
	move	$4, $22
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 272
	lb	$7, 0($16)
	move	$4, $18
	move	$5, $21
	move	$25, $23
	.reloc ($tmp44), R_MIPS_JALR, uECC_vli_mult
$tmp44:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($16)
	move	$4, $21
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 272
	lb	$7, 0($16)
	move	$4, $18
	move	$5, $17
	move	$25, $23
	.reloc ($tmp45), R_MIPS_JALR, uECC_vli_mult
$tmp45:
	jalr	$25
	move	$6, $21
	lw	$25, 172($16)
	move	$4, $17
	jalr	$25
	move	$5, $18
	lw	$25, 164($16)
	sw	$22, 28($sp)                    # 4-byte Folded Spill
	move	$4, $22
	move	$5, $17
	move	$6, $fp
	jalr	$25
	move	$7, $16
	addiu	$17, $sp, 272
	lb	$7, 0($16)
	move	$4, $17
	move	$5, $fp
	move	$25, $23
	.reloc ($tmp46), R_MIPS_JALR, uECC_vli_mult
$tmp46:
	jalr	$25
	move	$6, $fp
	addiu	$20, $sp, 240
	lw	$25, 172($16)
	move	$4, $20
	jalr	$25
	move	$5, $17
	addiu	$17, $sp, 272
	addiu	$22, $sp, 144
	lb	$7, 0($16)
	move	$4, $17
	move	$5, $22
	move	$25, $23
	.reloc ($tmp47), R_MIPS_JALR, uECC_vli_mult
$tmp47:
	jalr	$25
	move	$6, $20
	lw	$25, 172($16)
	move	$4, $22
	jalr	$25
	move	$5, $17
	addiu	$17, $sp, 272
	lb	$7, 0($16)
	move	$4, $17
	move	$5, $20
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$25, $23
	.reloc ($tmp48), R_MIPS_JALR, uECC_vli_mult
$tmp48:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($16)
	move	$4, $20
	jalr	$25
	move	$5, $17
	addiu	$17, $sp, 272
	addiu	$fp, $sp, 80
	lb	$7, 0($16)
	move	$4, $17
	move	$5, $fp
	move	$25, $23
	.reloc ($tmp49), R_MIPS_JALR, uECC_vli_mult
$tmp49:
	jalr	$25
	move	$6, $20
	sw	$16, 72($sp)                    # 4-byte Folded Spill
	lw	$25, 172($16)
	move	$4, $fp
	jalr	$25
	move	$5, $17
	lw	$1, 68($sp)                     # 4-byte Folded Reload
	addiu	$1, $1, -2
	seh	$2, $1
	lw	$3, 44($sp)                     # 4-byte Folded Reload
	blez	$2, $BB28_10
	nop
# %bb.8:
	andi	$17, $2, 65535
	lui	$1, 8191
	ori	$1, $1, 65532
	sw	$1, 68($sp)                     # 4-byte Folded Spill
	lw	$1, 76($sp)                     # 4-byte Folded Reload
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$1, $1, %lo(XYcZ_addC)
	sw	$1, 64($sp)                     # 4-byte Folded Spill
	lw	$21, 72($sp)                    # 4-byte Folded Reload
$BB28_9:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $zero, 1
	sllv	$1, $1, $17
	srl	$2, $17, 3
	lw	$4, 68($sp)                     # 4-byte Folded Reload
	and	$2, $2, $4
	addu	$2, $3, $2
	lw	$2, 0($2)
	and	$1, $2, $1
	sltu	$2, $zero, $1
	sll	$2, $2, 5
	addu	$20, $22, $2
	addu	$23, $fp, $2
	sltiu	$1, $1, 1
	sll	$1, $1, 5
	addu	$16, $22, $1
	addu	$19, $fp, $1
	move	$4, $20
	move	$5, $23
	move	$6, $16
	move	$7, $19
	move	$8, $21
	lw	$25, 64($sp)                    # 4-byte Folded Reload
	.reloc ($tmp50), R_MIPS_JALR, XYcZ_addC
$tmp50:
	jalr	$25
	move	$18, $3
	sw	$21, 16($sp)
	lw	$gp, 76($sp)                    # 4-byte Folded Reload
	lw	$25, %call16(XYcZ_add)($gp)
	move	$4, $16
	move	$5, $19
	move	$6, $20
	.reloc ($tmp51), R_MIPS_JALR, XYcZ_add
$tmp51:
	jalr	$25
	move	$7, $23
	move	$3, $18
	addiu	$1, $17, -1
	sltiu	$2, $17, 2
	beqz	$2, $BB28_9
	move	$17, $1
$BB28_10:
	lw	$1, 0($3)
	andi	$1, $1, 1
	xori	$2, $1, 1
	sll	$1, $1, 5
	addu	$23, $22, $1
	addu	$17, $fp, $1
	sll	$1, $2, 5
	addu	$6, $22, $1
	addu	$7, $fp, $1
	lw	$1, 76($sp)                     # 4-byte Folded Reload
	move	$19, $1
	lw	$1, %got(XYcZ_addC)($1)
	addiu	$25, $1, %lo(XYcZ_addC)
	move	$4, $23
	move	$5, $17
	sw	$6, 68($sp)                     # 4-byte Folded Spill
	sw	$7, 64($sp)                     # 4-byte Folded Spill
	lw	$21, 72($sp)                    # 4-byte Folded Reload
	.reloc ($tmp52), R_MIPS_JALR, XYcZ_addC
$tmp52:
	jalr	$25
	move	$8, $21
	lw	$1, 60($sp)                     # 4-byte Folded Reload
	blez	$1, $BB28_16
	addiu	$18, $21, 4
# %bb.11:
	addiu	$2, $zero, 0
	lw	$3, 56($sp)                     # 4-byte Folded Reload
	lw	$6, 28($sp)                     # 4-byte Folded Reload
	lw	$7, 24($sp)                     # 4-byte Folded Reload
$BB28_12:                               # =>This Inner Loop Header: Depth=1
	lw	$1, -32($6)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$4, 0($6)
	sltu	$5, $4, $1
	subu	$1, $4, $1
	sw	$1, 0($7)
	or	$2, $2, $5
	addiu	$6, $6, 4
	addiu	$3, $3, -1
	bnez	$3, $BB28_12
	addiu	$7, $7, 4
# %bb.13:
	beqz	$2, $BB28_16
	nop
# %bb.14:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 208
	move	$4, $18
	lw	$5, 56($sp)                     # 4-byte Folded Reload
$BB28_15:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB28_15
	addiu	$4, $4, 4
$BB28_16:
	lb	$7, 0($21)
	lw	$1, 40($sp)                     # 4-byte Folded Reload
	addiu	$22, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 272
	addiu	$fp, $sp, 208
	move	$4, $16
	move	$5, $fp
	move	$25, $22
	.reloc ($tmp53), R_MIPS_JALR, uECC_vli_mult
$tmp53:
	jalr	$25
	move	$6, $17
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	lw	$6, 48($sp)                     # 4-byte Folded Reload
	move	$25, $22
	.reloc ($tmp54), R_MIPS_JALR, uECC_vli_mult
$tmp54:
	jalr	$25
	move	$5, $fp
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	lw	$25, %call16(uECC_vli_modInv)($19)
	move	$4, $fp
	move	$5, $fp
	move	$6, $18
	lw	$20, 60($sp)                    # 4-byte Folded Reload
	move	$7, $20
	.reloc ($tmp55), R_MIPS_JALR, uECC_vli_modInv
$tmp55:
	jalr	$25
	move	$gp, $19
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	lw	$6, 52($sp)                     # 4-byte Folded Reload
	move	$25, $22
	.reloc ($tmp56), R_MIPS_JALR, uECC_vli_mult
$tmp56:
	jalr	$25
	move	$5, $fp
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $fp
	move	$25, $22
	.reloc ($tmp57), R_MIPS_JALR, uECC_vli_mult
$tmp57:
	jalr	$25
	move	$6, $23
	lw	$25, 172($21)
	move	$4, $fp
	jalr	$25
	move	$5, $16
	sw	$21, 16($sp)
	lw	$25, %call16(XYcZ_add)($19)
	lw	$4, 68($sp)                     # 4-byte Folded Reload
	lw	$5, 64($sp)                     # 4-byte Folded Reload
	move	$6, $23
	move	$7, $17
	.reloc ($tmp58), R_MIPS_JALR, XYcZ_add
$tmp58:
	jalr	$25
	move	$gp, $19
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $fp
	move	$25, $22
	.reloc ($tmp59), R_MIPS_JALR, uECC_vli_mult
$tmp59:
	jalr	$25
	move	$6, $fp
	addiu	$17, $sp, 240
	lw	$25, 172($21)
	move	$4, $17
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	addiu	$18, $sp, 144
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $18
	move	$25, $22
	.reloc ($tmp60), R_MIPS_JALR, uECC_vli_mult
$tmp60:
	jalr	$25
	move	$6, $17
	lw	$25, 172($21)
	move	$4, $18
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $17
	move	$25, $22
	.reloc ($tmp61), R_MIPS_JALR, uECC_vli_mult
$tmp61:
	jalr	$25
	move	$6, $fp
	lw	$25, 172($21)
	move	$4, $17
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 272
	addiu	$18, $sp, 80
	lb	$7, 0($21)
	move	$4, $16
	move	$5, $18
	move	$25, $22
	.reloc ($tmp62), R_MIPS_JALR, uECC_vli_mult
$tmp62:
	jalr	$25
	move	$6, $17
	lw	$25, 172($21)
	move	$4, $18
	jalr	$25
	move	$5, $16
	blez	$20, $BB28_18
	nop
# %bb.17:
	lw	$1, 56($sp)                     # 4-byte Folded Reload
	sll	$16, $1, 2
	addiu	$5, $sp, 144
	lw	$25, %call16(memcpy)($19)
	lw	$17, 36($sp)                    # 4-byte Folded Reload
	move	$4, $17
	move	$6, $16
	.reloc ($tmp63), R_MIPS_JALR, memcpy
$tmp63:
	jalr	$25
	move	$gp, $19
	lw	$1, 32($sp)                     # 4-byte Folded Reload
	sll	$1, $1, 2
	addu	$4, $17, $1
	addiu	$5, $sp, 80
	lw	$25, %call16(memcpy)($19)
	.reloc ($tmp64), R_MIPS_JALR, memcpy
$tmp64:
	jalr	$25
	move	$6, $16
$BB28_18:
	lw	$16, 336($sp)                   # 4-byte Folded Reload
	lw	$17, 340($sp)                   # 4-byte Folded Reload
	lw	$18, 344($sp)                   # 4-byte Folded Reload
	lw	$19, 348($sp)                   # 4-byte Folded Reload
	lw	$20, 352($sp)                   # 4-byte Folded Reload
	lw	$21, 356($sp)                   # 4-byte Folded Reload
	lw	$22, 360($sp)                   # 4-byte Folded Reload
	lw	$23, 364($sp)                   # 4-byte Folded Reload
	lw	$fp, 368($sp)                   # 4-byte Folded Reload
	lw	$ra, 372($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 376
$BB28_19:
	addiu	$1, $zero, 1
	sw	$1, 208($sp)
	b	$BB28_7
	sw	$7, 32($sp)
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_mult
$func_end28:
	.size	EccPoint_mult, ($func_end28)-EccPoint_mult
                                        # -- End function
	.p2align	2                               # -- Begin function XYcZ_addC
	.type	XYcZ_addC,@function
	.set	nomicromips
	.set	nomips16
	.ent	XYcZ_addC
XYcZ_addC:                              # @XYcZ_addC
	.frame	$sp,240,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -240
	sw	$ra, 236($sp)                   # 4-byte Folded Spill
	sw	$fp, 232($sp)                   # 4-byte Folded Spill
	sw	$23, 228($sp)                   # 4-byte Folded Spill
	sw	$22, 224($sp)                   # 4-byte Folded Spill
	sw	$21, 220($sp)                   # 4-byte Folded Spill
	sw	$20, 216($sp)                   # 4-byte Folded Spill
	sw	$19, 212($sp)                   # 4-byte Folded Spill
	sw	$18, 208($sp)                   # 4-byte Folded Spill
	sw	$17, 204($sp)                   # 4-byte Folded Spill
	sw	$16, 200($sp)                   # 4-byte Folded Spill
	addu	$9, $2, $25
	move	$21, $7
	move	$18, $5
	move	$17, $4
	addiu	$19, $8, 4
	sw	$8, 24($sp)                     # 4-byte Folded Spill
	lbu	$22, 0($8)
	seb	$1, $22
	blez	$1, $BB29_6
	sw	$1, 36($sp)
# %bb.1:
	addiu	$3, $sp, 104
	addiu	$2, $zero, 0
	move	$11, $6
	move	$5, $17
	move	$10, $22
$BB29_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($11)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($3)
	or	$2, $2, $8
	addiu	$11, $11, 4
	addiu	$5, $5, 4
	addiu	$10, $10, -1
	bnez	$10, $BB29_2
	addiu	$3, $3, 4
# %bb.3:
	beqz	$2, $BB29_6
	nop
# %bb.4:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 104
	move	$10, $19
	move	$5, $22
$BB29_5:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$8, $1, $2
	lw	$7, 0($10)
	addu	$8, $8, $7
	xor	$7, $8, $1
	movn	$2, $zero, $7
	sltu	$1, $8, $1
	sw	$8, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_5
	addiu	$10, $10, 4
$BB29_6:
	sw	$9, 16($sp)                     # 4-byte Folded Spill
	lw	$1, %got(uECC_vli_mult)($9)
	sw	$1, 28($sp)                     # 4-byte Folded Spill
	addiu	$20, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	sw	$6, 20($sp)                     # 4-byte Folded Spill
	addiu	$23, $sp, 104
	move	$4, $16
	move	$5, $23
	lw	$7, 36($sp)                     # 4-byte Folded Reload
	move	$25, $20
	.reloc ($tmp65), R_MIPS_JALR, uECC_vli_mult
$tmp65:
	jalr	$25
	move	$6, $23
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$25, 172($fp)
	move	$4, $23
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 136
	lb	$7, 0($fp)
	move	$4, $16
	move	$5, $17
	move	$25, $20
	.reloc ($tmp66), R_MIPS_JALR, uECC_vli_mult
$tmp66:
	jalr	$25
	move	$6, $23
	lw	$25, 172($fp)
	sw	$17, 32($sp)                    # 4-byte Folded Spill
	move	$4, $17
	jalr	$25
	move	$5, $16
	addiu	$16, $sp, 136
	lb	$7, 0($fp)
	move	$4, $16
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	move	$5, $17
	move	$25, $20
	.reloc ($tmp67), R_MIPS_JALR, uECC_vli_mult
$tmp67:
	jalr	$25
	move	$6, $23
	lw	$25, 172($fp)
	move	$20, $17
	move	$4, $17
	jalr	$25
	move	$5, $16
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_10
	nop
# %bb.7:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 104
	move	$4, $21
	move	$5, $18
	move	$6, $22
$BB29_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$7, $1, $2
	lw	$8, 0($5)
	addu	$7, $7, $8
	xor	$8, $7, $1
	movn	$2, $zero, $8
	sltu	$1, $7, $1
	sw	$7, 0($3)
	or	$2, $2, $1
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_8
	addiu	$3, $3, 4
# %bb.9:
	bnez	$2, $BB29_14
	nop
$BB29_10:
	addiu	$2, $sp, 104
	move	$3, $22
$BB29_11:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB29_14
	nop
# %bb.12:                               #   in Loop: Header=BB29_11 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $19, $1
	lw	$4, 0($4)
	addu	$1, $2, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB29_17
	nop
# %bb.13:                               #   in Loop: Header=BB29_11 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB29_11
	addiu	$3, $3, -1
$BB29_14:
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_33
	nop
# %bb.15:
	addiu	$2, $zero, 0
	move	$3, $19
	move	$4, $22
$BB29_16:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($23)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($23)
	or	$2, $2, $6
	addiu	$23, $23, 4
	addiu	$4, $4, -1
	bnez	$4, $BB29_16
	addiu	$3, $3, 4
$BB29_17:
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_28
	nop
# %bb.18:
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $18
	move	$5, $22
$BB29_19:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_19
	addiu	$4, $4, 4
# %bb.20:
	lw	$9, 32($sp)                     # 4-byte Folded Reload
	beqz	$2, $BB29_23
	move	$8, $20
# %bb.21:
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $19
	move	$5, $22
$BB29_22:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_22
	addiu	$4, $4, 4
$BB29_23:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $8
	move	$5, $9
	move	$6, $22
$BB29_24:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$7, 0($4)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($3)
	or	$2, $2, $8
	addiu	$4, $4, 4
	addiu	$5, $5, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_24
	addiu	$3, $3, 4
# %bb.25:
	beqz	$2, $BB29_28
	nop
# %bb.26:
	addiu	$2, $zero, 0
	addiu	$3, $sp, 72
	move	$4, $19
	move	$5, $22
$BB29_27:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($3)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_27
	addiu	$4, $4, 4
$BB29_28:
	lb	$7, 0($fp)
	addiu	$25, $17, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$23, $sp, 72
	move	$4, $16
	move	$5, $18
	.reloc ($tmp68), R_MIPS_JALR, uECC_vli_mult
$tmp68:
	jalr	$25
	move	$6, $23
	lw	$25, 172($fp)
	move	$4, $18
	jalr	$25
	move	$5, $16
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_34
	nop
# %bb.29:
	addiu	$2, $zero, 0
	lw	$3, 32($sp)                     # 4-byte Folded Reload
	move	$4, $20
	move	$5, $22
$BB29_30:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$6, $1, $2
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$2, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($23)
	or	$2, $2, $1
	addiu	$3, $3, 4
	addiu	$4, $4, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_30
	addiu	$23, $23, 4
# %bb.31:
	bnez	$2, $BB29_38
	nop
# %bb.32:
	b	$BB29_34
	nop
$BB29_33:
	lb	$7, 0($fp)
	lw	$17, 28($sp)                    # 4-byte Folded Reload
	addiu	$25, $17, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$6, $sp, 72
	move	$4, $16
	.reloc ($tmp69), R_MIPS_JALR, uECC_vli_mult
$tmp69:
	jalr	$25
	move	$5, $18
	lw	$25, 172($fp)
	move	$4, $18
	jalr	$25
	move	$5, $16
$BB29_34:
	addiu	$2, $sp, 72
	move	$3, $22
$BB29_35:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $3, -1
	seb	$4, $1
	bltz	$4, $BB29_38
	nop
# %bb.36:                               #   in Loop: Header=BB29_35 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $19, $1
	lw	$4, 0($4)
	addu	$1, $2, $1
	lw	$5, 0($1)
	sltu	$1, $5, $4
	bnez	$1, $BB29_41
	nop
# %bb.37:                               #   in Loop: Header=BB29_35 Depth=1
	sltu	$1, $4, $5
	beqz	$1, $BB29_35
	addiu	$3, $3, -1
$BB29_38:
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_41
	nop
# %bb.39:
	addiu	$2, $sp, 72
	addiu	$3, $zero, 0
	move	$4, $19
	move	$5, $22
$BB29_40:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$6, 0($2)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($2)
	or	$3, $3, $7
	addiu	$2, $2, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_40
	addiu	$4, $4, 4
$BB29_41:
	lb	$7, 0($fp)
	addiu	$23, $17, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	move	$4, $16
	move	$5, $21
	move	$25, $23
	.reloc ($tmp70), R_MIPS_JALR, uECC_vli_mult
$tmp70:
	jalr	$25
	move	$6, $21
	lw	$25, 172($fp)
	move	$4, $20
	jalr	$25
	move	$5, $16
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_58
	nop
# %bb.42:
	addiu	$2, $sp, 40
	addiu	$3, $zero, 0
	addiu	$4, $sp, 72
	move	$5, $20
	move	$6, $22
$BB29_43:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $3
	movn	$3, $zero, $1
	lw	$7, 0($5)
	sltu	$8, $7, $1
	subu	$1, $7, $1
	sw	$1, 0($5)
	or	$3, $3, $8
	addiu	$5, $5, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_43
	addiu	$4, $4, 4
# %bb.44:
	lw	$23, 32($sp)                    # 4-byte Folded Reload
	beqz	$3, $BB29_47
	nop
# %bb.45:
	addiu	$3, $zero, 0
	move	$4, $20
	move	$5, $19
	move	$6, $22
$BB29_46:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$7, $1, $3
	lw	$8, 0($5)
	addu	$7, $7, $8
	xor	$8, $7, $1
	movn	$3, $zero, $8
	sltu	$1, $7, $1
	sw	$7, 0($4)
	or	$3, $3, $1
	addiu	$4, $4, 4
	addiu	$6, $6, -1
	bnez	$6, $BB29_46
	addiu	$5, $5, 4
$BB29_47:
	addiu	$3, $zero, 0
	move	$5, $22
	addiu	$4, $zero, 0
$BB29_48:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $20, $3
	lw	$1, 0($1)
	addu	$1, $1, $4
	addu	$6, $23, $3
	lw	$6, 0($6)
	sltu	$7, $6, $1
	subu	$6, $6, $1
	movn	$4, $zero, $1
	addu	$1, $2, $3
	sw	$6, 0($1)
	or	$4, $4, $7
	addiu	$5, $5, -1
	bnez	$5, $BB29_48
	addiu	$3, $3, 4
# %bb.49:
	beqz	$4, $BB29_52
	nop
# %bb.50:
	addiu	$3, $zero, 0
	move	$4, $19
	move	$5, $22
$BB29_51:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	addu	$6, $1, $3
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$3, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($2)
	or	$3, $3, $1
	addiu	$2, $2, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_51
	addiu	$4, $4, 4
$BB29_52:
	lb	$7, 0($fp)
	addiu	$25, $17, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$6, $sp, 40
	move	$4, $16
	.reloc ($tmp71), R_MIPS_JALR, uECC_vli_mult
$tmp71:
	jalr	$25
	move	$5, $21
	lw	$25, 172($fp)
	move	$4, $21
	jalr	$25
	move	$5, $16
	addiu	$2, $zero, 0
	move	$3, $21
	move	$4, $18
	move	$5, $22
$BB29_53:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$6, 0($3)
	sltu	$7, $6, $1
	subu	$1, $6, $1
	sw	$1, 0($3)
	or	$2, $2, $7
	addiu	$3, $3, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_53
	addiu	$4, $4, 4
# %bb.54:
	beqz	$2, $BB29_59
	nop
# %bb.55:
	addiu	$2, $zero, 0
	move	$3, $19
	move	$4, $22
$BB29_56:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($21)
	addu	$5, $1, $2
	lw	$6, 0($3)
	addu	$5, $5, $6
	xor	$6, $5, $1
	movn	$2, $zero, $6
	sltu	$1, $5, $1
	sw	$5, 0($21)
	or	$2, $2, $1
	addiu	$21, $21, 4
	addiu	$4, $4, -1
	bnez	$4, $BB29_56
	addiu	$3, $3, 4
# %bb.57:
	b	$BB29_59
	nop
$BB29_58:
	lb	$7, 0($fp)
	addiu	$16, $sp, 136
	addiu	$6, $sp, 40
	move	$4, $16
	move	$25, $23
	.reloc ($tmp72), R_MIPS_JALR, uECC_vli_mult
$tmp72:
	jalr	$25
	move	$5, $21
	lw	$25, 172($fp)
	move	$4, $21
	jalr	$25
	move	$5, $16
	lw	$23, 32($sp)                    # 4-byte Folded Reload
$BB29_59:
	lb	$7, 0($fp)
	move	$20, $17
	addiu	$20, $17, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$5, $sp, 104
	move	$4, $16
	move	$25, $20
	.reloc ($tmp73), R_MIPS_JALR, uECC_vli_mult
$tmp73:
	jalr	$25
	move	$6, $5
	lw	$25, 172($fp)
	addiu	$21, $sp, 40
	move	$4, $21
	jalr	$25
	move	$5, $16
	lw	$1, 36($sp)                     # 4-byte Folded Reload
	blez	$1, $BB29_76
	nop
# %bb.60:
	sll	$20, $22, 2
	addiu	$3, $zero, 0
	addiu	$2, $sp, 72
	addiu	$4, $zero, 0
$BB29_61:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $3
	lw	$1, 0($1)
	addu	$1, $1, $4
	addu	$5, $21, $3
	lw	$6, 0($5)
	subu	$7, $6, $1
	sw	$7, 0($5)
	sltu	$5, $6, $1
	movn	$4, $zero, $1
	addiu	$3, $3, 4
	bne	$20, $3, $BB29_61
	or	$4, $4, $5
# %bb.62:
	beqz	$4, $BB29_65
	nop
# %bb.63:
	addiu	$3, $zero, 0
	move	$4, $19
	move	$5, $22
$BB29_64:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($21)
	addu	$6, $1, $3
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$3, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($21)
	or	$3, $3, $1
	addiu	$21, $21, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_64
	addiu	$4, $4, 4
$BB29_65:
	addiu	$3, $zero, 0
	addiu	$4, $sp, 40
	move	$6, $22
	addiu	$5, $zero, 0
$BB29_66:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $23, $3
	lw	$1, 0($1)
	addu	$1, $1, $5
	addu	$7, $4, $3
	lw	$7, 0($7)
	sltu	$8, $7, $1
	subu	$7, $7, $1
	movn	$5, $zero, $1
	addu	$1, $2, $3
	sw	$7, 0($1)
	or	$5, $5, $8
	addiu	$6, $6, -1
	bnez	$6, $BB29_66
	addiu	$3, $3, 4
# %bb.67:
	beqz	$5, $BB29_70
	nop
# %bb.68:
	addiu	$3, $zero, 0
	move	$4, $19
	move	$5, $22
$BB29_69:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($2)
	addu	$6, $1, $3
	lw	$7, 0($4)
	addu	$6, $6, $7
	xor	$7, $6, $1
	movn	$3, $zero, $7
	sltu	$1, $6, $1
	sw	$6, 0($2)
	or	$3, $3, $1
	addiu	$2, $2, 4
	addiu	$5, $5, -1
	bnez	$5, $BB29_69
	addiu	$4, $4, 4
$BB29_70:
	lb	$7, 0($fp)
	lw	$1, 28($sp)                     # 4-byte Folded Reload
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$16, $sp, 136
	addiu	$21, $sp, 72
	addiu	$6, $sp, 104
	move	$4, $16
	.reloc ($tmp74), R_MIPS_JALR, uECC_vli_mult
$tmp74:
	jalr	$25
	move	$5, $21
	lw	$25, 172($fp)
	move	$4, $21
	jalr	$25
	move	$5, $16
	addiu	$2, $zero, 0
	move	$3, $18
	move	$4, $22
$BB29_71:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($3)
	addu	$1, $1, $2
	movn	$2, $zero, $1
	lw	$5, 0($21)
	sltu	$6, $5, $1
	subu	$1, $5, $1
	sw	$1, 0($3)
	or	$2, $2, $6
	addiu	$21, $21, 4
	addiu	$4, $4, -1
	bnez	$4, $BB29_71
	addiu	$3, $3, 4
# %bb.72:
	lw	$gp, 16($sp)                    # 4-byte Folded Reload
	beqz	$2, $BB29_75
	nop
# %bb.73:
	addiu	$2, $zero, 0
$BB29_74:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($18)
	addu	$3, $1, $2
	lw	$4, 0($19)
	addu	$3, $3, $4
	xor	$4, $3, $1
	movn	$2, $zero, $4
	sltu	$1, $3, $1
	sw	$3, 0($18)
	or	$2, $2, $1
	addiu	$18, $18, 4
	addiu	$22, $22, -1
	bnez	$22, $BB29_74
	addiu	$19, $19, 4
$BB29_75:
	addiu	$5, $sp, 40
	lw	$25, %call16(memcpy)($gp)
	move	$4, $23
	.reloc ($tmp75), R_MIPS_JALR, memcpy
$tmp75:
	jalr	$25
	move	$6, $20
	b	$BB29_77
	nop
$BB29_76:
	lb	$7, 0($fp)
	addiu	$16, $sp, 136
	addiu	$17, $sp, 72
	addiu	$6, $sp, 104
	move	$4, $16
	move	$25, $20
	.reloc ($tmp76), R_MIPS_JALR, uECC_vli_mult
$tmp76:
	jalr	$25
	move	$5, $17
	lw	$25, 172($fp)
	move	$4, $17
	jalr	$25
	move	$5, $16
$BB29_77:
	lw	$16, 200($sp)                   # 4-byte Folded Reload
	lw	$17, 204($sp)                   # 4-byte Folded Reload
	lw	$18, 208($sp)                   # 4-byte Folded Reload
	lw	$19, 212($sp)                   # 4-byte Folded Reload
	lw	$20, 216($sp)                   # 4-byte Folded Reload
	lw	$21, 220($sp)                   # 4-byte Folded Reload
	lw	$22, 224($sp)                   # 4-byte Folded Reload
	lw	$23, 228($sp)                   # 4-byte Folded Reload
	lw	$fp, 232($sp)                   # 4-byte Folded Reload
	lw	$ra, 236($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 240
	.set	at
	.set	macro
	.set	reorder
	.end	XYcZ_addC
$func_end29:
	.size	XYcZ_addC, ($func_end29)-XYcZ_addC
                                        # -- End function
	.globl	regularize_k                    # -- Begin function regularize_k
	.p2align	2
	.type	regularize_k,@function
	.set	nomicromips
	.set	nomips16
	.ent	regularize_k
regularize_k:                           # @regularize_k
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lh	$9, 2($7)
	addiu	$1, $9, 31
	srl	$2, $1, 27
	addu	$1, $1, $2
	sra	$8, $1, 5
	seb	$10, $8
	blez	$10, $BB30_4
	addiu	$3, $7, 36
# %bb.1:
	andi	$2, $8, 255
	addiu	$7, $zero, 0
	move	$11, $3
	move	$12, $5
$BB30_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$13, $1, $7
	lw	$14, 0($11)
	addu	$13, $13, $14
	xor	$14, $13, $1
	movn	$7, $zero, $14
	sltu	$1, $13, $1
	sw	$13, 0($12)
	or	$7, $7, $1
	addiu	$4, $4, 4
	addiu	$11, $11, 4
	addiu	$2, $2, -1
	bnez	$2, $BB30_2
	addiu	$12, $12, 4
# %bb.3:
	bnez	$7, $BB30_6
	addiu	$2, $zero, 1
$BB30_4:
	sll	$1, $8, 24
	sra	$1, $1, 19
	slt	$1, $9, $1
	beqz	$1, $BB30_6
	addiu	$2, $zero, 0
# %bb.5:
	sra	$1, $9, 5
	sll	$1, $1, 2
	addu	$1, $5, $1
	lw	$1, 0($1)
	srlv	$1, $1, $9
	andi	$2, $1, 1
$BB30_6:
	blez	$10, $BB30_9
	nop
# %bb.7:
	andi	$4, $8, 255
	addiu	$7, $zero, 0
$BB30_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$8, $1, $7
	lw	$9, 0($3)
	addu	$8, $8, $9
	xor	$9, $8, $1
	movn	$7, $zero, $9
	sltu	$1, $8, $1
	sw	$8, 0($6)
	or	$7, $7, $1
	addiu	$5, $5, 4
	addiu	$3, $3, 4
	addiu	$4, $4, -1
	bnez	$4, $BB30_8
	addiu	$6, $6, 4
$BB30_9:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	regularize_k
$func_end30:
	.size	regularize_k, ($func_end30)-regularize_k
                                        # -- End function
	.globl	EccPoint_compute_public_key     # -- Begin function EccPoint_compute_public_key
	.p2align	2
	.type	EccPoint_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	EccPoint_compute_public_key
EccPoint_compute_public_key:            # @EccPoint_compute_public_key
	.frame	$sp,112,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -112
	sw	$ra, 108($sp)                   # 4-byte Folded Spill
	sw	$18, 104($sp)                   # 4-byte Folded Spill
	sw	$17, 100($sp)                   # 4-byte Folded Spill
	sw	$16, 96($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$17, $6
	move	$16, $4
	addiu	$3, $sp, 32
	sw	$3, 28($sp)
	addiu	$4, $sp, 64
	sw	$4, 24($sp)
	lh	$2, 2($6)
	addiu	$1, $2, 31
	srl	$6, $1, 27
	addu	$1, $1, $6
	sra	$7, $1, 5
	seb	$8, $7
	blez	$8, $BB31_4
	addiu	$6, $17, 36
# %bb.1:
	andi	$10, $7, 255
	addiu	$9, $zero, 0
	addiu	$11, $sp, 64
	move	$12, $6
$BB31_2:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($5)
	addu	$13, $1, $9
	lw	$14, 0($12)
	addu	$13, $13, $14
	xor	$14, $13, $1
	movn	$9, $zero, $14
	sltu	$1, $13, $1
	sw	$13, 0($11)
	or	$9, $9, $1
	addiu	$5, $5, 4
	addiu	$12, $12, 4
	addiu	$10, $10, -1
	bnez	$10, $BB31_2
	addiu	$11, $11, 4
# %bb.3:
	bnez	$9, $BB31_6
	addiu	$5, $zero, 0
$BB31_4:
	sll	$1, $7, 24
	sra	$1, $1, 19
	slt	$1, $2, $1
	beqz	$1, $BB31_6
	addiu	$5, $zero, 1
# %bb.5:
	sra	$1, $2, 5
	sll	$1, $1, 2
	addiu	$5, $sp, 64
	addu	$1, $5, $1
	lw	$1, 0($1)
	srlv	$1, $1, $2
	not	$1, $1
	andi	$5, $1, 1
$BB31_6:
	blez	$8, $BB31_9
	nop
# %bb.7:
	andi	$7, $7, 255
	addiu	$8, $zero, 0
$BB31_8:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 0($4)
	addu	$9, $1, $8
	lw	$10, 0($6)
	addu	$9, $9, $10
	xor	$10, $9, $1
	movn	$8, $zero, $10
	sltu	$1, $9, $1
	sw	$9, 0($3)
	or	$8, $8, $1
	addiu	$4, $4, 4
	addiu	$6, $6, 4
	addiu	$7, $7, -1
	bnez	$7, $BB31_8
	addiu	$3, $3, 4
$BB31_9:
	sll	$1, $5, 2
	addiu	$3, $sp, 24
	addu	$1, $3, $1
	lw	$6, 0($1)
	sw	$17, 20($sp)
	addiu	$1, $2, 1
	seh	$1, $1
	sw	$1, 16($sp)
	addiu	$5, $17, 68
	addiu	$18, $zero, 0
	lw	$25, %call16(EccPoint_mult)($gp)
	move	$4, $16
	.reloc ($tmp77), R_MIPS_JALR, EccPoint_mult
$tmp77:
	jalr	$25
	addiu	$7, $zero, 0
	lbu	$1, 0($17)
	sll	$1, $1, 1
	seb	$2, $1
	blez	$2, $BB31_13
	nop
# %bb.10:
	andi	$3, $2, 255
	addiu	$2, $zero, 0
$BB31_11:                               # =>This Inner Loop Header: Depth=1
	lw	$1, 0($16)
	or	$2, $1, $2
	addiu	$3, $3, -1
	bnez	$3, $BB31_11
	addiu	$16, $16, 4
# %bb.12:
	sltu	$18, $zero, $2
$BB31_13:
	move	$2, $18
	lw	$16, 96($sp)                    # 4-byte Folded Reload
	lw	$17, 100($sp)                   # 4-byte Folded Reload
	lw	$18, 104($sp)                   # 4-byte Folded Reload
	lw	$ra, 108($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 112
	.set	at
	.set	macro
	.set	reorder
	.end	EccPoint_compute_public_key
$func_end31:
	.size	EccPoint_compute_public_key, ($func_end31)-EccPoint_compute_public_key
                                        # -- End function
	.globl	uECC_vli_nativeToBytes          # -- Begin function uECC_vli_nativeToBytes
	.p2align	2
	.type	uECC_vli_nativeToBytes,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_nativeToBytes
uECC_vli_nativeToBytes:                 # @uECC_vli_nativeToBytes
	.frame	$sp,0,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	blez	$5, $BB32_3
	nop
# %bb.1:
	addiu	$3, $zero, 0
	addiu	$2, $zero, -4
	addiu	$7, $zero, 0
$BB32_2:                                # =>This Inner Loop Header: Depth=1
	not	$1, $3
	addu	$1, $1, $5
	sll	$8, $1, 3
	and	$1, $1, $2
	addu	$1, $6, $1
	lw	$1, 0($1)
	srlv	$1, $1, $8
	addu	$3, $4, $3
	sb	$1, 0($3)
	addiu	$7, $7, 1
	seb	$3, $7
	slt	$1, $3, $5
	bnez	$1, $BB32_2
	nop
$BB32_3:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_nativeToBytes
$func_end32:
	.size	uECC_vli_nativeToBytes, ($func_end32)-uECC_vli_nativeToBytes
                                        # -- End function
	.globl	uECC_vli_bytesToNative          # -- Begin function uECC_vli_bytesToNative
	.p2align	2
	.type	uECC_vli_bytesToNative,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_vli_bytesToNative
uECC_vli_bytesToNative:                 # @uECC_vli_bytesToNative
	.frame	$sp,32,$ra
	.mask 	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$18, 24($sp)                    # 4-byte Folded Spill
	sw	$17, 20($sp)                    # 4-byte Folded Spill
	sw	$16, 16($sp)                    # 4-byte Folded Spill
	addu	$gp, $2, $25
	move	$16, $6
	move	$17, $5
	addiu	$1, $6, 3
	sra	$2, $1, 31
	srl	$2, $2, 30
	addu	$1, $1, $2
	sra	$2, $1, 2
	seb	$1, $2
	blez	$1, $BB33_2
	move	$18, $4
# %bb.1:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	lw	$25, %call16(memset)($gp)
	move	$4, $18
	.reloc ($tmp78), R_MIPS_JALR, memset
$tmp78:
	jalr	$25
	addiu	$5, $zero, 0
$BB33_2:
	blez	$16, $BB33_5
	nop
# %bb.3:
	addiu	$4, $zero, 0
	addiu	$2, $zero, -4
	addiu	$3, $zero, 0
$BB33_4:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $17, $4
	lbu	$1, 0($1)
	not	$4, $4
	addu	$4, $4, $16
	sll	$5, $4, 3
	sllv	$1, $1, $5
	and	$4, $4, $2
	addu	$4, $18, $4
	lw	$5, 0($4)
	or	$1, $1, $5
	sw	$1, 0($4)
	addiu	$3, $3, 1
	seb	$4, $3
	slt	$1, $4, $16
	bnez	$1, $BB33_4
	nop
$BB33_5:
	lw	$16, 16($sp)                    # 4-byte Folded Reload
	lw	$17, 20($sp)                    # 4-byte Folded Reload
	lw	$18, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 32
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_vli_bytesToNative
$func_end33:
	.size	uECC_vli_bytesToNative, ($func_end33)-uECC_vli_bytesToNative
                                        # -- End function
	.globl	uECC_generate_random_int        # -- Begin function uECC_generate_random_int
	.p2align	2
	.type	uECC_generate_random_int,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_generate_random_int
uECC_generate_random_int:               # @uECC_generate_random_int
	.frame	$sp,96,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -96
	sw	$ra, 92($sp)                    # 4-byte Folded Spill
	sw	$fp, 88($sp)                    # 4-byte Folded Spill
	sw	$23, 84($sp)                    # 4-byte Folded Spill
	sw	$22, 80($sp)                    # 4-byte Folded Spill
	sw	$21, 76($sp)                    # 4-byte Folded Spill
	sw	$20, 72($sp)                    # 4-byte Folded Spill
	sw	$19, 68($sp)                    # 4-byte Folded Spill
	sw	$18, 64($sp)                    # 4-byte Folded Spill
	sw	$17, 60($sp)                    # 4-byte Folded Spill
	sw	$16, 56($sp)                    # 4-byte Folded Spill
	addu	$2, $2, $25
	move	$17, $5
	move	$18, $4
	addiu	$1, $6, -1
	seb	$1, $1
	slti	$3, $1, -1
	addiu	$4, $zero, -1
	movn	$4, $1, $3
	addiu	$3, $4, 1
	sw	$6, 20($sp)                     # 4-byte Folded Spill
	andi	$5, $6, 255
	sw	$5, 16($sp)                     # 4-byte Folded Spill
$BB34_1:                                # =>This Inner Loop Header: Depth=1
	move	$4, $5
	addiu	$5, $5, -1
	seb	$6, $5
	bltz	$6, $BB34_4
	nop
# %bb.2:                                #   in Loop: Header=BB34_1 Depth=1
	andi	$1, $6, 255
	sll	$1, $1, 2
	addu	$1, $17, $1
	lw	$1, 0($1)
	beqz	$1, $BB34_1
	nop
# %bb.3:
	b	$BB34_5
	move	$3, $4
$BB34_4:
	andi	$1, $3, 255
	beqz	$1, $BB34_29
	nop
$BB34_5:
	seb	$1, $3
	addiu	$3, $1, -1
	sll	$1, $3, 2
	addu	$1, $17, $1
	lw	$5, 0($1)
	beqz	$5, $BB34_9
	nop
# %bb.6:
	addiu	$4, $zero, 0
$BB34_7:                                # =>This Inner Loop Header: Depth=1
	addiu	$4, $4, 1
	srl	$1, $5, 1
	sltiu	$6, $5, 2
	beqz	$6, $BB34_7
	move	$5, $1
# %bb.8:
	b	$BB34_10
	nop
$BB34_9:
	addiu	$4, $zero, 0
$BB34_10:
	sll	$1, $3, 5
	addu	$3, $4, $1
$BB34_11:
	lw	$22, %got(g_rng_function)($2)
	lw	$1, %lo(g_rng_function)($22)
	beqz	$1, $BB34_25
	nop
# %bb.12:
	lw	$2, 20($sp)                     # 4-byte Folded Reload
	sll	$20, $2, 2
	addu	$1, $18, $20
	sll	$2, $2, 5
	subu	$2, $2, $3
	addiu	$3, $zero, -1
	srlv	$23, $3, $2
	addiu	$fp, $1, -4
	lw	$1, 16($sp)                     # 4-byte Folded Reload
	sll	$19, $1, 2
	addiu	$21, $sp, 24
	b	$BB34_14
	addiu	$16, $zero, 0
$BB34_13:                               #   in Loop: Header=BB34_14 Depth=1
	addiu	$16, $16, 1
	addiu	$1, $zero, 64
	beq	$16, $1, $BB34_27
	nop
$BB34_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_17 Depth 2
                                        #     Child Loop BB34_20 Depth 2
                                        #     Child Loop BB34_22 Depth 2
	lw	$25, %lo(g_rng_function)($22)
	move	$4, $18
	jalr	$25
	move	$5, $20
	beqz	$2, $BB34_26
	nop
# %bb.15:                               #   in Loop: Header=BB34_14 Depth=1
	lw	$1, 0($fp)
	and	$1, $1, $23
	sw	$1, 0($fp)
	lw	$1, 20($sp)                     # 4-byte Folded Reload
	blez	$1, $BB34_13
	nop
# %bb.16:                               #   in Loop: Header=BB34_14 Depth=1
	addiu	$2, $zero, 0
	move	$3, $18
	lw	$4, 16($sp)                     # 4-byte Folded Reload
$BB34_17:                               #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 0($3)
	or	$2, $1, $2
	addiu	$4, $4, -1
	bnez	$4, $BB34_17
	addiu	$3, $3, 4
# %bb.18:                               #   in Loop: Header=BB34_14 Depth=1
	beqz	$2, $BB34_13
	nop
# %bb.19:                               #   in Loop: Header=BB34_14 Depth=1
	addiu	$3, $zero, 0
	addiu	$2, $zero, 0
$BB34_20:                               #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $18, $3
	lw	$1, 0($1)
	addu	$1, $1, $2
	addu	$4, $17, $3
	lw	$4, 0($4)
	subu	$5, $4, $1
	addu	$6, $21, $3
	sw	$5, 0($6)
	sltu	$4, $4, $1
	movn	$2, $zero, $1
	addiu	$3, $3, 4
	bne	$19, $3, $BB34_20
	or	$2, $2, $4
# %bb.21:                               #   in Loop: Header=BB34_14 Depth=1
	addiu	$4, $zero, 0
	addiu	$3, $zero, 0
$BB34_22:                               #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $21, $4
	lw	$1, 0($1)
	addiu	$4, $4, 4
	bne	$19, $4, $BB34_22
	or	$3, $1, $3
# %bb.23:                               #   in Loop: Header=BB34_14 Depth=1
	addiu	$1, $zero, -2
	movz	$1, $zero, $2
	sltiu	$2, $3, 1
	or	$1, $1, $2
	bnez	$1, $BB34_13
	nop
# %bb.24:
	b	$BB34_28
	addiu	$2, $zero, 1
$BB34_25:
	b	$BB34_28
	addiu	$2, $zero, 0
$BB34_26:
	b	$BB34_28
	addiu	$2, $zero, 0
$BB34_27:
	addiu	$2, $zero, 0
$BB34_28:
	lw	$16, 56($sp)                    # 4-byte Folded Reload
	lw	$17, 60($sp)                    # 4-byte Folded Reload
	lw	$18, 64($sp)                    # 4-byte Folded Reload
	lw	$19, 68($sp)                    # 4-byte Folded Reload
	lw	$20, 72($sp)                    # 4-byte Folded Reload
	lw	$21, 76($sp)                    # 4-byte Folded Reload
	lw	$22, 80($sp)                    # 4-byte Folded Reload
	lw	$23, 84($sp)                    # 4-byte Folded Reload
	lw	$fp, 88($sp)                    # 4-byte Folded Reload
	lw	$ra, 92($sp)                    # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 96
$BB34_29:
	b	$BB34_11
	addiu	$3, $zero, 0
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_generate_random_int
$func_end34:
	.size	uECC_generate_random_int, ($func_end34)-uECC_generate_random_int
                                        # -- End function
	.globl	uECC_valid_point                # -- Begin function uECC_valid_point
	.p2align	2
	.type	uECC_valid_point,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_point
uECC_valid_point:                       # @uECC_valid_point
	.frame	$sp,136,$ra
	.mask 	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addu	$3, $2, $25
	lbu	$7, 0($5)
	sll	$1, $7, 1
	seb	$6, $1
	blez	$6, $BB35_20
	addiu	$2, $zero, -1
# %bb.1:
	addiu	$sp, $sp, -136
	sw	$ra, 132($sp)                   # 4-byte Folded Spill
	sw	$20, 128($sp)                   # 4-byte Folded Spill
	sw	$19, 124($sp)                   # 4-byte Folded Spill
	sw	$18, 120($sp)                   # 4-byte Folded Spill
	sw	$17, 116($sp)                   # 4-byte Folded Spill
	sw	$16, 112($sp)                   # 4-byte Folded Spill
	seb	$16, $7
	andi	$1, $6, 255
	sll	$6, $1, 2
	addiu	$9, $zero, 0
	addiu	$8, $zero, 0
$BB35_2:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $4, $9
	lw	$1, 0($1)
	addiu	$9, $9, 4
	bne	$6, $9, $BB35_2
	or	$8, $1, $8
# %bb.3:
	beqz	$8, $BB35_19
	nop
# %bb.4:
	addiu	$8, $5, 4
	move	$6, $7
	addiu	$2, $zero, -2
$BB35_5:                                # =>This Inner Loop Header: Depth=1
	addiu	$1, $6, -1
	seb	$9, $1
	bltz	$9, $BB35_19
	nop
# %bb.6:                                #   in Loop: Header=BB35_5 Depth=1
	andi	$1, $9, 255
	sll	$1, $1, 2
	addu	$9, $8, $1
	lw	$9, 0($9)
	addu	$1, $4, $1
	lw	$10, 0($1)
	sltu	$1, $10, $9
	bnez	$1, $BB35_9
	nop
# %bb.7:                                #   in Loop: Header=BB35_5 Depth=1
	sltu	$1, $9, $10
	beqz	$1, $BB35_5
	addiu	$6, $6, -1
# %bb.8:
	b	$BB35_19
	nop
$BB35_9:
	sll	$1, $16, 2
	addu	$6, $4, $1
$BB35_10:                               # =>This Inner Loop Header: Depth=1
	addiu	$1, $7, -1
	seb	$9, $1
	bltz	$9, $BB35_19
	nop
# %bb.11:                               #   in Loop: Header=BB35_10 Depth=1
	andi	$1, $9, 255
	sll	$1, $1, 2
	addu	$9, $8, $1
	lw	$9, 0($9)
	addu	$1, $6, $1
	lw	$10, 0($1)
	sltu	$1, $10, $9
	bnez	$1, $BB35_14
	nop
# %bb.12:                               #   in Loop: Header=BB35_10 Depth=1
	sltu	$1, $9, $10
	beqz	$1, $BB35_10
	addiu	$7, $7, -1
# %bb.13:
	b	$BB35_19
	nop
$BB35_14:
	lw	$1, %got(uECC_vli_mult)($3)
	addiu	$25, $1, %lo(uECC_vli_mult)
	addiu	$18, $sp, 48
	move	$19, $4
	move	$4, $18
	move	$20, $5
	move	$5, $6
	.reloc ($tmp79), R_MIPS_JALR, uECC_vli_mult
$tmp79:
	jalr	$25
	move	$7, $16
	lw	$25, 172($20)
	addiu	$17, $sp, 16
	move	$4, $17
	jalr	$25
	move	$5, $18
	addiu	$18, $sp, 48
	lw	$25, 168($20)
	move	$4, $18
	move	$5, $19
	jalr	$25
	move	$6, $20
	addiu	$1, $16, -1
	seb	$2, $1
	bltz	$2, $BB35_18
	nop
# %bb.15:
	andi	$1, $2, 255
	sll	$2, $1, 2
	addiu	$3, $zero, 0
	addiu	$4, $zero, -4
$BB35_16:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $17, $2
	lw	$1, 0($1)
	addu	$5, $18, $2
	lw	$5, 0($5)
	xor	$1, $5, $1
	addiu	$2, $2, -4
	bne	$2, $4, $BB35_16
	or	$3, $1, $3
# %bb.17:
	bnez	$3, $BB35_19
	addiu	$2, $zero, -3
$BB35_18:
	addiu	$2, $zero, 0
$BB35_19:
	lw	$16, 112($sp)                   # 4-byte Folded Reload
	lw	$17, 116($sp)                   # 4-byte Folded Reload
	lw	$18, 120($sp)                   # 4-byte Folded Reload
	lw	$19, 124($sp)                   # 4-byte Folded Reload
	lw	$20, 128($sp)                   # 4-byte Folded Reload
	lw	$ra, 132($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 136
$BB35_20:
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_point
$func_end35:
	.size	uECC_valid_point, ($func_end35)-uECC_valid_point
                                        # -- End function
	.globl	uECC_valid_public_key           # -- Begin function uECC_valid_public_key
	.p2align	2
	.type	uECC_valid_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_valid_public_key
uECC_valid_public_key:                  # @uECC_valid_public_key
	.frame	$sp,120,$ra
	.mask 	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -120
	sw	$ra, 116($sp)                   # 4-byte Folded Spill
	sw	$fp, 112($sp)                   # 4-byte Folded Spill
	sw	$23, 108($sp)                   # 4-byte Folded Spill
	sw	$22, 104($sp)                   # 4-byte Folded Spill
	sw	$21, 100($sp)                   # 4-byte Folded Spill
	sw	$20, 96($sp)                    # 4-byte Folded Spill
	sw	$19, 92($sp)                    # 4-byte Folded Spill
	sw	$18, 88($sp)                    # 4-byte Folded Spill
	sw	$17, 84($sp)                    # 4-byte Folded Spill
	sw	$16, 80($sp)                    # 4-byte Folded Spill
	addu	$16, $2, $25
	move	$17, $5
	move	$23, $4
	lbu	$20, 1($5)
	seb	$22, $20
	addiu	$1, $22, 3
	andi	$2, $1, 49152
	srl	$2, $2, 14
	addu	$1, $1, $2
	sra	$18, $1, 2
	blez	$18, $BB36_2
	sll	$fp, $18, 2
# %bb.1:
	andi	$6, $fp, 1020
	addiu	$4, $sp, 16
	lw	$25, %call16(memset)($16)
	addiu	$5, $zero, 0
	.reloc ($tmp80), R_MIPS_JALR, memset
$tmp80:
	jalr	$25
	move	$gp, $16
$BB36_2:
	sll	$9, $22, 3
	blez	$22, $BB36_5
	addiu	$21, $sp, 16
# %bb.3:
	addiu	$2, $22, -1
	addiu	$3, $9, -8
	addiu	$4, $zero, -4
	move	$5, $20
	move	$6, $23
$BB36_4:                                # =>This Inner Loop Header: Depth=1
	andi	$1, $3, 24
	lbu	$7, 0($6)
	sllv	$1, $7, $1
	and	$7, $2, $4
	addu	$7, $21, $7
	lw	$8, 0($7)
	or	$1, $1, $8
	sw	$1, 0($7)
	addiu	$5, $5, -1
	addiu	$6, $6, 1
	addiu	$3, $3, -8
	bnez	$5, $BB36_4
	addiu	$2, $2, -1
$BB36_5:
	lb	$1, 0($17)
	sll	$1, $1, 2
	blez	$18, $BB36_7
	addu	$19, $21, $1
# %bb.6:
	andi	$6, $fp, 1020
	lw	$25, %call16(memset)($16)
	move	$4, $19
	addiu	$5, $zero, 0
	move	$gp, $16
	.reloc ($tmp81), R_MIPS_JALR, memset
$tmp81:
	jalr	$25
	move	$18, $9
	move	$9, $18
$BB36_7:
	blez	$22, $BB36_10
	nop
# %bb.8:
	addu	$2, $23, $22
	addiu	$3, $22, -1
	addiu	$4, $9, -8
	addiu	$5, $zero, -4
$BB36_9:                                # =>This Inner Loop Header: Depth=1
	andi	$1, $4, 24
	lbu	$6, 0($2)
	sllv	$1, $6, $1
	and	$6, $3, $5
	addu	$6, $19, $6
	lw	$7, 0($6)
	or	$1, $1, $7
	sw	$1, 0($6)
	addiu	$20, $20, -1
	addiu	$2, $2, 1
	addiu	$4, $4, -8
	bnez	$20, $BB36_9
	addiu	$3, $3, -1
$BB36_10:
	addiu	$2, $17, 68
	addiu	$3, $zero, 16
$BB36_11:                               # =>This Inner Loop Header: Depth=1
	addiu	$3, $3, -1
	seb	$4, $3
	bltz	$4, $BB36_14
	nop
# %bb.12:                               #   in Loop: Header=BB36_11 Depth=1
	andi	$1, $4, 255
	sll	$1, $1, 2
	addu	$4, $2, $1
	lw	$4, 0($4)
	addu	$1, $21, $1
	lw	$1, 0($1)
	beq	$1, $4, $BB36_11
	nop
# %bb.13:
	addiu	$4, $sp, 16
	lw	$25, %call16(uECC_valid_point)($16)
	move	$5, $17
	.reloc ($tmp82), R_MIPS_JALR, uECC_valid_point
$tmp82:
	jalr	$25
	move	$gp, $16
	b	$BB36_15
	nop
$BB36_14:
	addiu	$2, $zero, -4
$BB36_15:
	lw	$16, 80($sp)                    # 4-byte Folded Reload
	lw	$17, 84($sp)                    # 4-byte Folded Reload
	lw	$18, 88($sp)                    # 4-byte Folded Reload
	lw	$19, 92($sp)                    # 4-byte Folded Reload
	lw	$20, 96($sp)                    # 4-byte Folded Reload
	lw	$21, 100($sp)                   # 4-byte Folded Reload
	lw	$22, 104($sp)                   # 4-byte Folded Reload
	lw	$23, 108($sp)                   # 4-byte Folded Reload
	lw	$fp, 112($sp)                   # 4-byte Folded Reload
	lw	$ra, 116($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 120
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_valid_public_key
$func_end36:
	.size	uECC_valid_public_key, ($func_end36)-uECC_valid_public_key
                                        # -- End function
	.globl	uECC_compute_public_key         # -- Begin function uECC_compute_public_key
	.p2align	2
	.type	uECC_compute_public_key,@function
	.set	nomicromips
	.set	nomips16
	.ent	uECC_compute_public_key
uECC_compute_public_key:                # @uECC_compute_public_key
	.frame	$sp,144,$ra
	.mask 	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$2, %hi(_gp_disp)
	addiu	$2, $2, %lo(_gp_disp)
	addiu	$sp, $sp, -144
	sw	$ra, 140($sp)                   # 4-byte Folded Spill
	sw	$21, 136($sp)                   # 4-byte Folded Spill
	sw	$20, 132($sp)                   # 4-byte Folded Spill
	sw	$19, 128($sp)                   # 4-byte Folded Spill
	sw	$18, 124($sp)                   # 4-byte Folded Spill
	sw	$17, 120($sp)                   # 4-byte Folded Spill
	sw	$16, 116($sp)                   # 4-byte Folded Spill
	addu	$18, $2, $25
	move	$17, $6
	move	$16, $5
	lh	$20, 2($6)
	addiu	$1, $20, 7
	srl	$2, $1, 29
	addu	$1, $1, $2
	sra	$21, $1, 3
	addiu	$1, $21, 3
	ext	$2, $1, 29, 2
	addu	$1, $1, $2
	seh	$1, $1
	sra	$2, $1, 2
	seb	$1, $2
	blez	$1, $BB37_2
	move	$19, $4
# %bb.1:
	sll	$1, $2, 2
	andi	$6, $1, 1020
	addiu	$4, $sp, 84
	lw	$25, %call16(memset)($18)
	addiu	$5, $zero, 0
	.reloc ($tmp83), R_MIPS_JALR, memset
$tmp83:
	jalr	$25
	move	$gp, $18
$BB37_2:
	blez	$20, $BB37_5
	addiu	$2, $sp, 84
# %bb.3:
	addiu	$5, $zero, 0
	addiu	$3, $zero, -4
	addiu	$4, $zero, 0
$BB37_4:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $19, $5
	lbu	$1, 0($1)
	not	$5, $5
	addu	$5, $21, $5
	sll	$6, $5, 3
	sllv	$1, $1, $6
	and	$5, $5, $3
	addu	$5, $2, $5
	lw	$6, 0($5)
	or	$1, $1, $6
	sw	$1, 0($5)
	addiu	$4, $4, 1
	seb	$5, $4
	slt	$1, $5, $21
	bnez	$1, $BB37_4
	nop
$BB37_5:
	addiu	$1, $20, 31
	srl	$3, $1, 27
	addu	$1, $1, $3
	sra	$3, $1, 5
	seb	$1, $3
	blez	$1, $BB37_22
	nop
# %bb.6:
	andi	$1, $3, 255
	sll	$3, $1, 2
	addiu	$4, $zero, 0
	addiu	$5, $zero, 0
$BB37_7:                                # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $4
	lw	$1, 0($1)
	addiu	$4, $4, 4
	bne	$3, $4, $BB37_7
	or	$5, $1, $5
# %bb.8:
	beqz	$5, $BB37_23
	nop
# %bb.9:
	addiu	$6, $zero, 0
	addiu	$5, $sp, 20
	addiu	$4, $zero, 0
$BB37_10:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $2, $6
	lw	$1, 0($1)
	addu	$1, $1, $4
	addu	$7, $17, $6
	lw	$7, 36($7)
	subu	$8, $7, $1
	addu	$9, $5, $6
	sw	$8, 0($9)
	sltu	$7, $7, $1
	movn	$4, $zero, $1
	addiu	$6, $6, 4
	bne	$3, $6, $BB37_10
	or	$4, $4, $7
# %bb.11:
	addiu	$2, $zero, 0
	addiu	$6, $zero, 0
$BB37_12:                               # =>This Inner Loop Header: Depth=1
	addu	$1, $5, $2
	lw	$1, 0($1)
	addiu	$2, $2, 4
	bne	$3, $2, $BB37_12
	or	$6, $1, $6
# %bb.13:
	addiu	$1, $zero, -2
	movz	$1, $zero, $4
	sltiu	$3, $6, 1
	or	$1, $1, $3
	bnez	$1, $BB37_24
	addiu	$2, $zero, 0
# %bb.14:
	addiu	$19, $sp, 20
	addiu	$5, $sp, 84
	lw	$25, %call16(EccPoint_compute_public_key)($18)
	move	$4, $19
	move	$6, $17
	.reloc ($tmp84), R_MIPS_JALR, EccPoint_compute_public_key
$tmp84:
	jalr	$25
	move	$gp, $18
	move	$1, $2
	beqz	$1, $BB37_24
	addiu	$2, $zero, 0
# %bb.15:
	lb	$5, 1($17)
	blez	$5, $BB37_24
	addiu	$2, $zero, 1
# %bb.16:
	andi	$3, $5, 255
	addiu	$4, $5, -1
	sll	$1, $5, 3
	addiu	$5, $1, -8
	addiu	$6, $zero, -4
	move	$7, $16
$BB37_17:                               # =>This Inner Loop Header: Depth=1
	and	$1, $4, $6
	addu	$1, $19, $1
	lw	$1, 0($1)
	andi	$8, $5, 24
	srlv	$1, $1, $8
	sb	$1, 0($7)
	addiu	$3, $3, -1
	addiu	$7, $7, 1
	addiu	$4, $4, -1
	bnez	$3, $BB37_17
	addiu	$5, $5, -8
# %bb.18:
	lb	$7, 1($17)
	blez	$7, $BB37_24
	nop
# %bb.19:
	lb	$1, 0($17)
	addu	$3, $16, $7
	sll	$1, $1, 2
	addu	$4, $19, $1
	andi	$5, $7, 255
	addiu	$6, $7, -1
	sll	$1, $7, 3
	addiu	$7, $1, -8
	addiu	$8, $zero, -4
$BB37_20:                               # =>This Inner Loop Header: Depth=1
	and	$1, $6, $8
	addu	$1, $4, $1
	lw	$1, 0($1)
	andi	$9, $7, 24
	srlv	$1, $1, $9
	sb	$1, 0($3)
	addiu	$5, $5, -1
	addiu	$3, $3, 1
	addiu	$6, $6, -1
	bnez	$5, $BB37_20
	addiu	$7, $7, -8
# %bb.21:
	b	$BB37_24
	nop
$BB37_22:
	b	$BB37_24
	addiu	$2, $zero, 0
$BB37_23:
	addiu	$2, $zero, 0
$BB37_24:
	lw	$16, 116($sp)                   # 4-byte Folded Reload
	lw	$17, 120($sp)                   # 4-byte Folded Reload
	lw	$18, 124($sp)                   # 4-byte Folded Reload
	lw	$19, 128($sp)                   # 4-byte Folded Reload
	lw	$20, 132($sp)                   # 4-byte Folded Reload
	lw	$21, 136($sp)                   # 4-byte Folded Reload
	lw	$ra, 140($sp)                   # 4-byte Folded Reload
	jr	$ra
	addiu	$sp, $sp, 144
	.set	at
	.set	macro
	.set	reorder
	.end	uECC_compute_public_key
$func_end37:
	.size	uECC_compute_public_key, ($func_end37)-uECC_compute_public_key
                                        # -- End function
	.type	g_rng_function,@object          # @g_rng_function
	.data
	.p2align	2, 0x0
g_rng_function:
	.4byte	default_CSPRNG
	.size	g_rng_function, 4

	.type	$__const.x_side_default._3,@object # @__const.x_side_default._3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
$__const.x_side_default._3:
	.4byte	3                               # 0x3
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.size	$__const.x_side_default._3, 32

	.type	curve_secp256r1,@object         # @curve_secp256r1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	2, 0x0
curve_secp256r1:
	.byte	8                               # 0x8
	.byte	32                              # 0x20
	.2byte	256                             # 0x100
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	0                               # 0x0
	.4byte	1                               # 0x1
	.4byte	4294967295                      # 0xffffffff
	.4byte	4234356049                      # 0xfc632551
	.4byte	4089039554                      # 0xf3b9cac2
	.4byte	2803342980                      # 0xa7179e84
	.4byte	3169254061                      # 0xbce6faad
	.4byte	4294967295                      # 0xffffffff
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	4294967295                      # 0xffffffff
	.4byte	3633889942                      # 0xd898c296
	.4byte	4104206661                      # 0xf4a13945
	.4byte	770388896                       # 0x2deb33a0
	.4byte	1996717441                      # 0x77037d81
	.4byte	1671708914                      # 0x63a440f2
	.4byte	4173129445                      # 0xf8bce6e5
	.4byte	3777774151                      # 0xe12c4247
	.4byte	1796723186                      # 0x6b17d1f2
	.4byte	935285237                       # 0x37bf51f5
	.4byte	3417718888                      # 0xcbb64068
	.4byte	1798397646                      # 0x6b315ece
	.4byte	734933847                       # 0x2bce3357
	.4byte	2081398294                      # 0x7c0f9e16
	.4byte	2397563722                      # 0x8ee7eb4a
	.4byte	4263149467                      # 0xfe1a7f9b
	.4byte	1340293858                      # 0x4fe342e2
	.4byte	668098635                       # 0x27d2604b
	.4byte	1003371582                      # 0x3bce3c3e
	.4byte	3428036854                      # 0xcc53b0f6
	.4byte	1696401072                      # 0x651d06b0
	.4byte	1989707452                      # 0x769886bc
	.4byte	3018571093                      # 0xb3ebbd55
	.4byte	2855965671                      # 0xaa3a93e7
	.4byte	1522939352                      # 0x5ac635d8
	.4byte	double_jacobian_default
	.4byte	x_side_default
	.4byte	vli_mmod_fast_secp256r1
	.size	curve_secp256r1, 176

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym double_jacobian_default
	.addrsig_sym x_side_default
	.addrsig_sym vli_mmod_fast_secp256r1
	.addrsig_sym default_CSPRNG
	.addrsig_sym curve_secp256r1
	.text
