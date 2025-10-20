	.file	"tinycrypt_hmac_prng.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	update, @function
update:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s0,a0
	mv	s3,a1
	mv	s4,a2
	mv	s5,a3
	mv	s6,a4
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, 8(sp)
	li	a4, 0
	sb	zero,6(sp)
	li	a5,1
	sb	a5,7(sp)
	addi	s1,a0,240
	li	a2,32
	mv	a1,s1
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	addi	s2,s0,272
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	li	a2,1
	addi	a1,sp,6
	mv	a0,s0
	call	tc_hmac_update@plt
	beq	s3,zero,.L2
	bne	s4,zero,.L24
	beq	s5,zero,.L25
	bne	s6,zero,.L15
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	j	.L1
.L24:
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	tc_hmac_update@plt
	beq	s5,zero,.L4
	beq	s6,zero,.L5
	j	.L15
.L28:
	mv	a2,s6
	mv	a1,s5
	mv	a0,s0
	call	tc_hmac_update@plt
	j	.L13
.L26:
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	j	.L1
.L2:
	beq	s5,zero,.L26
	beq	s6,zero,.L27
.L15:
	mv	a2,s6
	mv	a1,s5
	mv	a0,s0
	call	tc_hmac_update@plt
.L5:
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	beq	s3,zero,.L1
	beq	s4,zero,.L1
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	li	a2,1
	addi	a1,sp,7
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	tc_hmac_update@plt
	bne	s6,zero,.L28
.L13:
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
.L1:
	la	a5,__stack_chk_guard
	ld	a4, 8(sp)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L29
	ld	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	ld	s5,24(sp)
	.cfi_restore 21
	ld	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L25:
	.cfi_restore_state
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	j	.L1
.L4:
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	li	a2,1
	addi	a1,sp,7
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	tc_hmac_update@plt
	j	.L13
.L27:
	mv	a2,s0
	li	a1,32
	mv	a0,s1
	call	tc_hmac_final@plt
	li	a2,32
	mv	a1,s1
	mv	a0,s0
	call	tc_hmac_set_key@plt
	mv	a0,s0
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s2
	mv	a0,s0
	call	tc_hmac_update@plt
	mv	a2,s0
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final@plt
	j	.L1
.L29:
	call	__stack_chk_fail@plt
	.cfi_endproc
.LFE15:
	.size	update, .-update
	.align	1
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB16:
	.cfi_startproc
	beq	a0,zero,.L32
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	li	a0,0
	beq	a1,zero,.L31
	li	a2,32
	li	a1,0
	addi	a0,s0,240
	call	_set@plt
	li	a2,32
	li	a1,1
	addi	a0,s0,272
	call	_set@plt
	li	a4,0
	li	a3,0
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	update
	sw	zero,304(s0)
	li	a0,1
.L31:
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L32:
	li	a0,0
	ret
	.cfi_endproc
.LFE16:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.align	1
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB17:
	.cfi_startproc
	beq	a0,zero,.L42
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	beq	a1,zero,.L43
	li	a5,31
	li	a0,0
	bleu	a2,a5,.L39
	beq	a3,zero,.L40
	beq	a4,zero,.L39
	mv	a0,s0
	call	update
.L41:
	li	a5,-1
	sw	a5,304(s0)
	li	a0,1
.L39:
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L40:
	.cfi_restore_state
	li	a4,0
	li	a3,0
	mv	a0,s0
	call	update
	j	.L41
.L42:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	li	a0,0
	ret
.L43:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	li	a0,0
	j	.L39
	.cfi_endproc
.LFE17:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.align	1
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB18:
	.cfi_startproc
	beq	a0,zero,.L55
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s2,a0
	mv	s0,a1
	mv	s1,a2
	beq	a2,zero,.L56
	addiw	a5,a1,-1
	li	a4,524288
	li	a0,0
	bgeu	a5,a4,.L51
	lw	a5,304(a2)
	li	a0,-1
	beq	a5,zero,.L51
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	addiw	a5,a5,-1
	sw	a5,304(a2)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	addi	s6,a2,240
	addi	s4,a2,272
	li	s5,32
	j	.L54
.L53:
	addiw	s0,a5,-32
	beq	s0,zero,.L64
.L54:
	li	a2,32
	mv	a1,s6
	mv	a0,s1
	call	tc_hmac_set_key@plt
	mv	a0,s1
	call	tc_hmac_init@plt
	li	a2,32
	mv	a1,s4
	mv	a0,s1
	call	tc_hmac_update@plt
	mv	a2,s1
	li	a1,32
	mv	a0,s4
	call	tc_hmac_final@plt
	mv	s3,s0
	li	a5,32
	bleu	s0,a5,.L52
	mv	s3,s5
.L52:
	sext.w	a1,s3
	mv	a3,a1
	mv	a2,s4
	mv	a0,s2
	call	_copy@plt
	slli	s3,s3,32
	srli	s3,s3,32
	add	s2,s2,s3
	mv	a5,s0
	li	a4,32
	bgeu	s0,a4,.L53
	mv	a5,s5
	j	.L53
.L64:
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,s1
	call	update
	li	a0,1
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
.L51:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L55:
	li	a0,0
	ret
.L56:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	li	a0,0
	j	.L51
	.cfi_endproc
.LFE18:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
