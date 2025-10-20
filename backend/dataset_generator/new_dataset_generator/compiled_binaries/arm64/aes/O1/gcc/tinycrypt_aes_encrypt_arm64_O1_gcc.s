	.arch armv8-a
	.file	"tinycrypt_aes_encrypt.c"
	.text
	.align	2
	.global	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, %function
tc_aes128_set_encrypt_key:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	mov	x5, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 56]
	mov	x2, 0
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x2, sp, 8
	ldp	q0, q1, [x0]
	stp	q0, q1, [x2]
	ldr	q0, [x0, 28]
	str	q0, [x2, 28]
	cmp	x1, 0
	mov	w0, 0
	ccmp	x5, 0, 4, ne
	beq	.L1
	mov	x2, 0
	add	x8, x1, 1
	add	x7, x1, 2
	add	x6, x1, 3
.L3:
	ldrb	w3, [x8, x2]
	ldrb	w0, [x1, x2]
	lsl	w0, w0, 24
	orr	w3, w0, w3, lsl 16
	ldrb	w0, [x7, x2]
	ldrb	w4, [x6, x2]
	orr	w0, w4, w0, lsl 8
	orr	w3, w3, w0
	str	w3, [x5, x2]
	add	x2, x2, 4
	cmp	x2, 16
	bne	.L3
	mov	x1, 4
	sub	x7, x5, #4
	adrp	x4, .LANCHOR0
	add	x4, x4, :lo12:.LANCHOR0
	add	x4, x4, 48
	add	x8, sp, 8
	sub	x6, x5, #16
	b	.L5
.L4:
	ldr	w3, [x6, x1, lsl 2]
	eor	w2, w3, w2
	str	w2, [x5, x1, lsl 2]
	add	x1, x1, 1
	cmp	x1, 44
	beq	.L11
.L5:
	ldr	w2, [x7, x1, lsl 2]
	tst	x1, 3
	bne	.L4
	ubfx	x0, x2, 8, 8
	ldrb	w3, [x4, w0, uxtw]
	and	w0, w2, 255
	ldrb	w0, [x4, w0, uxtw]
	lsl	w0, w0, 8
	orr	w3, w0, w3, lsl 16
	ubfx	x0, x2, 16, 8
	ldrb	w0, [x4, w0, uxtw]
	lsr	w2, w2, 24
	ldrb	w2, [x4, w2, uxtw]
	orr	w0, w2, w0, lsl 24
	orr	w3, w3, w0
	lsr	w0, w1, 2
	ldr	w2, [x8, x0, lsl 2]
	eor	w2, w3, w2
	b	.L4
.L11:
	mov	w0, 1
.L1:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L12
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L12:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE16:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.align	2
	.global	tc_aes_encrypt
	.type	tc_aes_encrypt, %function
tc_aes_encrypt:
.LFB22:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	add	x29, sp, 64
	stp	x25, x26, [sp, 128]
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x3, x0
	str	x0, [sp, 8]
	mov	x26, x2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [x0]
	str	x2, [sp, 56]
	mov	x2, 0
	cmp	x1, 0
	ccmp	x26, 0, 4, ne
	mov	w0, 0
	ccmp	x3, 0, 4, ne
	bne	.L24
.L13:
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x1]
	subs	x3, x3, x2
	mov	x2, 0
	bne	.L25
	ldp	x25, x26, [sp, 128]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 160
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret
.L24:
	.cfi_restore_state
	stp	x19, x20, [sp, 80]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 96]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x27, x28, [sp, 144]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	mov	w3, 16
	mov	x2, x1
	mov	w1, w3
	add	x0, sp, 24
	bl	_copy
	ldr	w0, [x26]
	ldrb	w1, [sp, 24]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 24]
	ldrb	w1, [sp, 25]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 25]
	ldrb	w1, [sp, 26]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 26]
	ldrb	w1, [sp, 27]
	eor	w0, w0, w1
	strb	w0, [sp, 27]
	ldr	w0, [x26, 4]
	ldrb	w1, [sp, 28]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 28]
	ldrb	w1, [sp, 29]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 29]
	ldrb	w1, [sp, 30]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 30]
	ldrb	w1, [sp, 31]
	eor	w0, w0, w1
	strb	w0, [sp, 31]
	ldr	w0, [x26, 8]
	ldrb	w1, [sp, 32]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 32]
	ldrb	w1, [sp, 33]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 33]
	ldrb	w1, [sp, 34]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 34]
	ldrb	w1, [sp, 35]
	eor	w0, w0, w1
	strb	w0, [sp, 35]
	ldr	w0, [x26, 12]
	ldrb	w1, [sp, 36]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 36]
	ldrb	w1, [sp, 37]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 37]
	ldrb	w1, [sp, 38]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 38]
	ldrb	w1, [sp, 39]
	eor	w0, w0, w1
	strb	w0, [sp, 39]
	add	x23, x26, 16
	add	x0, x26, 160
	str	x0, [sp]
	add	x19, sp, 40
	adrp	x20, .LANCHOR0
	add	x20, x20, :lo12:.LANCHOR0
	add	x20, x20, 48
	add	x25, sp, 24
	mov	w24, 16
.L15:
	add	x21, sp, 24
	mov	x0, x21
.L16:
	ldrb	w1, [x0]
	ldrb	w1, [x20, w1, sxtw]
	strb	w1, [x0], 1
	cmp	x0, x19
	bne	.L16
	ldrb	w0, [sp, 24]
	strb	w0, [sp, 40]
	ldrb	w0, [sp, 29]
	strb	w0, [sp, 41]
	ldrb	w0, [sp, 34]
	strb	w0, [sp, 42]
	ldrb	w0, [sp, 39]
	strb	w0, [sp, 43]
	ldrb	w0, [sp, 28]
	strb	w0, [sp, 44]
	ldrb	w0, [sp, 33]
	strb	w0, [sp, 45]
	ldrb	w0, [sp, 38]
	strb	w0, [sp, 46]
	ldrb	w0, [sp, 27]
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 32]
	strb	w0, [sp, 48]
	ldrb	w0, [sp, 37]
	strb	w0, [sp, 49]
	ldrb	w0, [sp, 26]
	strb	w0, [sp, 50]
	ldrb	w0, [sp, 31]
	strb	w0, [sp, 51]
	ldrb	w0, [sp, 36]
	strb	w0, [sp, 52]
	ldrb	w0, [sp, 25]
	strb	w0, [sp, 53]
	ldrb	w0, [sp, 30]
	strb	w0, [sp, 54]
	ldrb	w0, [sp, 35]
	strb	w0, [sp, 55]
	mov	w3, w24
	mov	x2, x19
	mov	w1, w24
	mov	x0, x25
	bl	_copy
	ldrb	w0, [sp, 24]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 25]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 25]
	ldrb	w1, [sp, 26]
	eor	w1, w0, w1
	eor	w22, w22, w2
	eor	w1, w1, w22
	ldrb	w2, [sp, 27]
	eor	w1, w1, w2
	strb	w1, [sp, 40]
	ldrb	w22, [sp, 24]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 26]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 26]
	eor	w1, w22, w0
	eor	w27, w27, w2
	eor	w1, w1, w27
	ldrb	w2, [sp, 27]
	eor	w1, w1, w2
	strb	w1, [sp, 41]
	ldrb	w22, [sp, 24]
	ldrb	w1, [sp, 25]
	eor	w22, w22, w1
	and	w22, w22, 255
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 27]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	ldrb	w0, [sp, 27]
	eor	w22, w22, w0
	strb	w22, [sp, 42]
	ldrb	w0, [sp, 24]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w22, [sp, 24]
	ldrb	w0, [sp, 25]
	eor	w22, w22, w0
	and	w22, w22, 255
	ldrb	w28, [sp, 26]
	ldrb	w0, [sp, 27]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	eor	w28, w28, w22
	strb	w28, [sp, 43]
	ldrb	w0, [sp, 28]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 29]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 29]
	ldrb	w1, [sp, 30]
	eor	w1, w0, w1
	eor	w22, w22, w2
	eor	w1, w1, w22
	ldrb	w2, [sp, 31]
	eor	w1, w1, w2
	strb	w1, [sp, 44]
	ldrb	w27, [sp, 28]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 30]
	bl	_double_byte
	and	w1, w0, 255
	ldrb	w0, [sp, 30]
	eor	w1, w22, w1
	eor	w27, w27, w0
	eor	w1, w1, w27
	ldrb	w2, [sp, 31]
	eor	w1, w1, w2
	strb	w1, [sp, 45]
	ldrb	w22, [sp, 28]
	ldrb	w1, [sp, 29]
	eor	w22, w22, w1
	and	w22, w22, 255
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 31]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	ldrb	w0, [sp, 31]
	eor	w22, w22, w0
	strb	w22, [sp, 46]
	ldrb	w0, [sp, 28]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w22, [sp, 28]
	ldrb	w0, [sp, 29]
	eor	w22, w22, w0
	and	w22, w22, 255
	ldrb	w28, [sp, 30]
	ldrb	w0, [sp, 31]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	eor	w28, w28, w22
	strb	w28, [sp, 47]
	ldrb	w0, [sp, 32]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 33]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 33]
	ldrb	w1, [sp, 34]
	eor	w1, w0, w1
	eor	w22, w22, w2
	eor	w1, w1, w22
	ldrb	w2, [sp, 35]
	eor	w1, w1, w2
	strb	w1, [sp, 48]
	ldrb	w22, [sp, 32]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 34]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 34]
	eor	w1, w22, w0
	eor	w27, w27, w2
	eor	w1, w1, w27
	ldrb	w2, [sp, 35]
	eor	w1, w1, w2
	strb	w1, [sp, 49]
	ldrb	w22, [sp, 32]
	ldrb	w1, [sp, 33]
	eor	w22, w22, w1
	and	w22, w22, 255
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 35]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	ldrb	w0, [sp, 35]
	eor	w22, w22, w0
	strb	w22, [sp, 50]
	ldrb	w0, [sp, 32]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w22, [sp, 32]
	ldrb	w0, [sp, 33]
	eor	w22, w22, w0
	and	w22, w22, 255
	ldrb	w28, [sp, 34]
	ldrb	w0, [sp, 35]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	eor	w28, w28, w22
	strb	w28, [sp, 51]
	ldrb	w0, [sp, 36]
	bl	_double_byte
	and	w22, w0, 255
	ldrb	w0, [sp, 37]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 37]
	ldrb	w1, [sp, 38]
	eor	w1, w0, w1
	eor	w22, w22, w2
	eor	w1, w1, w22
	ldrb	w2, [sp, 39]
	eor	w1, w1, w2
	strb	w1, [sp, 52]
	ldrb	w22, [sp, 36]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 38]
	bl	_double_byte
	and	w2, w0, 255
	ldrb	w0, [sp, 38]
	eor	w1, w22, w0
	eor	w27, w27, w2
	eor	w1, w1, w27
	ldrb	w2, [sp, 39]
	eor	w1, w1, w2
	strb	w1, [sp, 53]
	ldrb	w22, [sp, 36]
	ldrb	w1, [sp, 37]
	eor	w22, w22, w1
	and	w22, w22, 255
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w0, [sp, 39]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	ldrb	w0, [sp, 39]
	eor	w22, w22, w0
	strb	w22, [sp, 54]
	ldrb	w0, [sp, 36]
	bl	_double_byte
	and	w27, w0, 255
	ldrb	w22, [sp, 36]
	ldrb	w0, [sp, 37]
	eor	w22, w22, w0
	and	w22, w22, 255
	ldrb	w28, [sp, 38]
	ldrb	w0, [sp, 39]
	bl	_double_byte
	and	w0, w0, 255
	eor	w27, w27, w0
	eor	w22, w22, w27
	eor	w28, w28, w22
	strb	w28, [sp, 55]
	mov	w3, w24
	mov	x2, x19
	mov	w1, w24
	mov	x0, x25
	bl	_copy
	ldr	w0, [x23]
	ldrb	w1, [sp, 24]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 24]
	ldrb	w1, [sp, 25]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 25]
	ldrb	w1, [sp, 26]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 26]
	ldrb	w1, [sp, 27]
	eor	w0, w0, w1
	strb	w0, [sp, 27]
	ldr	w0, [x23, 4]
	ldrb	w1, [sp, 28]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 28]
	ldrb	w1, [sp, 29]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 29]
	ldrb	w1, [sp, 30]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 30]
	ldrb	w1, [sp, 31]
	eor	w0, w0, w1
	strb	w0, [sp, 31]
	ldr	w0, [x23, 8]
	ldrb	w1, [sp, 32]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 32]
	ldrb	w1, [sp, 33]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 33]
	ldrb	w1, [sp, 34]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 34]
	ldrb	w1, [sp, 35]
	eor	w0, w0, w1
	strb	w0, [sp, 35]
	ldr	w0, [x23, 12]
	ldrb	w1, [sp, 36]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 36]
	ldrb	w1, [sp, 37]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 37]
	ldrb	w1, [sp, 38]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 38]
	ldrb	w1, [sp, 39]
	eor	w0, w0, w1
	strb	w0, [sp, 39]
	add	x23, x23, 16
	ldr	x0, [sp]
	cmp	x0, x23
	bne	.L15
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	add	x1, x1, 48
.L17:
	ldrb	w0, [x21]
	ldrb	w0, [x1, w0, sxtw]
	strb	w0, [x21], 1
	cmp	x21, x19
	bne	.L17
	ldrb	w0, [sp, 24]
	strb	w0, [sp, 40]
	ldrb	w0, [sp, 29]
	strb	w0, [sp, 41]
	ldrb	w0, [sp, 34]
	strb	w0, [sp, 42]
	ldrb	w0, [sp, 39]
	strb	w0, [sp, 43]
	ldrb	w0, [sp, 28]
	strb	w0, [sp, 44]
	ldrb	w0, [sp, 33]
	strb	w0, [sp, 45]
	ldrb	w0, [sp, 38]
	strb	w0, [sp, 46]
	ldrb	w0, [sp, 27]
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 32]
	strb	w0, [sp, 48]
	ldrb	w0, [sp, 37]
	strb	w0, [sp, 49]
	ldrb	w0, [sp, 26]
	strb	w0, [sp, 50]
	ldrb	w0, [sp, 31]
	strb	w0, [sp, 51]
	ldrb	w0, [sp, 36]
	strb	w0, [sp, 52]
	ldrb	w0, [sp, 25]
	strb	w0, [sp, 53]
	ldrb	w0, [sp, 30]
	strb	w0, [sp, 54]
	ldrb	w0, [sp, 35]
	strb	w0, [sp, 55]
	add	x19, sp, 24
	mov	w3, 16
	add	x2, sp, 40
	mov	w1, w3
	mov	x0, x19
	bl	_copy
	ldr	w0, [x26, 160]
	ldrb	w1, [sp, 24]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 24]
	ldrb	w1, [sp, 25]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 25]
	ldrb	w1, [sp, 26]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 26]
	ldrb	w1, [sp, 27]
	eor	w0, w0, w1
	strb	w0, [sp, 27]
	ldr	w0, [x26, 164]
	ldrb	w1, [sp, 28]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 28]
	ldrb	w1, [sp, 29]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 29]
	ldrb	w1, [sp, 30]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 30]
	ldrb	w1, [sp, 31]
	eor	w0, w0, w1
	strb	w0, [sp, 31]
	ldr	w0, [x26, 168]
	ldrb	w1, [sp, 32]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 32]
	ldrb	w1, [sp, 33]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 33]
	ldrb	w1, [sp, 34]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 34]
	ldrb	w1, [sp, 35]
	eor	w0, w0, w1
	strb	w0, [sp, 35]
	ldr	w0, [x26, 172]
	ldrb	w1, [sp, 36]
	eor	w1, w1, w0, lsr 24
	strb	w1, [sp, 36]
	ldrb	w1, [sp, 37]
	eor	w1, w1, w0, lsr 16
	strb	w1, [sp, 37]
	ldrb	w1, [sp, 38]
	eor	w1, w1, w0, lsr 8
	strb	w1, [sp, 38]
	ldrb	w1, [sp, 39]
	eor	w0, w0, w1
	strb	w0, [sp, 39]
	mov	w3, 16
	mov	x2, x19
	mov	w1, w3
	ldr	x0, [sp, 8]
	bl	_copy
	mov	w2, 16
	mov	w1, 0
	mov	x0, x19
	bl	_set
	mov	w0, 1
	ldp	x19, x20, [sp, 80]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 96]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 112]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 144]
	.cfi_restore 28
	.cfi_restore 27
	b	.L13
.L25:
	stp	x19, x20, [sp, 80]
	.cfi_offset 20, -72
	.cfi_offset 19, -80
	stp	x21, x22, [sp, 96]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	stp	x23, x24, [sp, 112]
	.cfi_offset 24, -40
	.cfi_offset 23, -48
	stp	x27, x28, [sp, 144]
	.cfi_offset 28, -8
	.cfi_offset 27, -16
	bl	__stack_chk_fail
	.cfi_endproc
.LFE22:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	16777216
	.word	33554432
	.word	67108864
	.word	134217728
	.word	268435456
	.word	536870912
	.word	1073741824
	.word	-2147483648
	.word	452984832
	.word	905969664
	.zero	4
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321"
	.ascii	"\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002"
	.ascii	"\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363"
	.ascii	"\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220"
	.ascii	"\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221"
	.ascii	"\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034"
	.ascii	"\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5"
	.ascii	"W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207"
	.ascii	"\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
