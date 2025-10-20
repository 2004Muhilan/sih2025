	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"base64_decode_standard.c"
	.text
	.align	1
	.p2align 2,,3
	.global	base64_char_value
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_char_value, %function
base64_char_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #90
	bhi	.L2
	cmp	r0, #42
	bls	.L12
	sub	r3, r0, #43
	cmp	r3, #47
	bhi	.L12
	tbb	[pc, r3]
.L6:
	.byte	(.L11-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L8-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L7-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L12-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.byte	(.L5-.L6)/2
	.p2align 1
.L2:
	sub	r3, r0, #97
	cmp	r3, #25
	bls	.L13
.L12:
	mov	r0, #-1
	bx	lr
.L5:
	subs	r0, r0, #65
	bx	lr
.L13:
	subs	r0, r0, #71
	bx	lr
.L7:
	adds	r0, r0, #4
	bx	lr
.L11:
	movs	r0, #62
	bx	lr
.L8:
	movs	r0, #63
	bx	lr
	.size	base64_char_value, .-base64_char_value
	.align	1
	.p2align 2,,3
	.global	base64_decode_standard
	.syntax unified
	.thumb
	.thumb_func
	.type	base64_decode_standard, %function
base64_decode_standard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r4, #0
	str	r4, [r2]
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #61
	it	ne
	cmpne	r3, r4
	beq	.L15
	cmp	r3, #90
	bhi	.L17
.L73:
	cmp	r3, #42
	bls	.L52
	sub	ip, r3, #43
	cmp	ip, #47
	bhi	.L52
	tbh	[pc, ip, lsl #1]
.L21:
	.2byte	(.L23-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L51-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L22-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L52-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.2byte	(.L20-.L21)/2
	.p2align 1
.L20:
	subs	r3, r3, #65
	lsls	r3, r3, #6
.L18:
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	cmp	ip, #90
	bhi	.L25
.L74:
	cmp	ip, #42
	bls	.L55
	sub	lr, ip, #43
	cmp	lr, #47
	bhi	.L55
	tbh	[pc, lr, lsl #1]
.L28:
	.2byte	(.L31-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L30-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L29-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L55-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.2byte	(.L27-.L28)/2
	.p2align 1
.L27:
	sub	ip, ip, #65
	orr	r3, ip, r3
	lsls	r3, r3, #6
.L26:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	cmp	ip, #90
	bhi	.L33
.L75:
	cmp	ip, #42
	bls	.L58
	sub	lr, ip, #43
	cmp	lr, #47
	bhi	.L58
	tbb	[pc, lr]
.L36:
	.byte	(.L39-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L38-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L58-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.byte	(.L35-.L36)/2
	.p2align 1
.L35:
	sub	ip, ip, #65
	orr	ip, ip, r3
	lsl	ip, ip, #6
.L34:
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	cmp	r3, #90
	bhi	.L41
.L76:
	cmp	r3, #42
	bls	.L61
	sub	lr, r3, #43
	cmp	lr, #47
	bhi	.L61
	tbb	[pc, lr]
.L44:
	.byte	(.L47-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L46-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L45-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L61-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.byte	(.L43-.L44)/2
	.p2align 1
.L43:
	subs	r3, r3, #65
	orr	r3, r3, ip
	ubfx	lr, r3, #16, #8
	ubfx	ip, r3, #8, #8
	uxtb	r3, r3
.L42:
	adds	r5, r4, #1
	str	r5, [r2]
	strb	lr, [r1, r4]
	ldr	r4, [r2]
	adds	r5, r4, #1
	str	r5, [r2]
	strb	ip, [r1, r4]
	ldr	r4, [r2]
	adds	r5, r4, #1
	str	r5, [r2]
	strb	r3, [r1, r4]
	ldrb	r3, [r0, #4]!	@ zero_extendqisi2
	cmp	r3, #0
	it	ne
	cmpne	r3, #61
	beq	.L15
	ldr	r4, [r2]
	cmp	r3, #90
	bls	.L73
.L17:
	sub	r5, r3, #97
	cmp	r5, #25
	itt	ls
	subls	r3, r3, #71
	lslls	r3, r3, #6
	bls	.L18
.L52:
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	mvn	r3, #63
	cmp	ip, #90
	bls	.L74
.L25:
	sub	r5, ip, #97
	cmp	r5, #25
	ittt	ls
	subls	ip, ip, #71
	orrls	r3, ip, r3
	lslls	r3, r3, #6
	bls	.L26
.L55:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	mvn	r3, #63
	cmp	ip, #90
	bls	.L75
.L33:
	sub	r5, ip, #97
	cmp	r5, #25
	ittt	ls
	subls	ip, ip, #71
	orrls	ip, ip, r3
	lslls	ip, ip, #6
	bls	.L34
.L58:
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	mvn	ip, #63
	cmp	r3, #90
	bls	.L76
.L41:
	sub	r5, r3, #97
	cmp	r5, #25
	bhi	.L61
	subs	r3, r3, #71
	orr	r3, r3, ip
	ubfx	lr, r3, #16, #8
	ubfx	ip, r3, #8, #8
	uxtb	r3, r3
	b	.L42
.L45:
	adds	r3, r3, #4
	ubfx	lr, ip, #16, #8
	orr	r3, r3, ip
	ubfx	ip, r3, #8, #8
	uxtb	r3, r3
	b	.L42
.L37:
	add	ip, ip, #4
	orr	ip, ip, r3
	lsl	ip, ip, #6
	b	.L34
.L29:
	add	ip, ip, #4
	orr	r3, ip, r3
	lsls	r3, r3, #6
	b	.L26
.L22:
	adds	r3, r3, #4
	lsls	r3, r3, #6
	b	.L18
.L61:
	movs	r3, #255
	mov	ip, r3
	mov	lr, r3
	b	.L42
.L46:
	orr	r3, ip, #63
	ubfx	lr, ip, #16, #8
	ubfx	ip, ip, #8, #8
	uxtb	r3, r3
	b	.L42
.L47:
	orr	r3, ip, #62
	ubfx	lr, ip, #16, #8
	ubfx	ip, ip, #8, #8
	uxtb	r3, r3
	b	.L42
.L30:
	lsls	r3, r3, #6
	orr	r3, r3, #4032
	b	.L26
.L31:
	lsls	r3, r3, #6
	orr	r3, r3, #3968
	b	.L26
.L39:
	lsls	r3, r3, #6
	orr	ip, r3, #3968
	b	.L34
.L38:
	lsls	r3, r3, #6
	orr	ip, r3, #4032
	b	.L34
.L15:
	pop	{r4, r5, pc}
.L51:
	mov	r3, #4032
	b	.L18
.L23:
	mov	r3, #3968
	b	.L18
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",%progbits
