	.file	"base64_decode_standard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_char_value
	.type	base64_char_value, @function
base64_char_value:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(-65)
	add r25,r24
	cpi r25,lo8(26)
	brlo .L9
	ldi r25,lo8(-97)
	add r25,r24
	cpi r25,lo8(26)
	brlo .L10
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(10)
	brlo .L11
	cpi r24,lo8(43)
	breq .L6
	cpi r24,lo8(47)
	brne .L12
	ldi r24,lo8(63)
	ldi r25,0
/* epilogue start */
	ret
.L10:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,71
	sbc r25,__zero_reg__
	ret
.L9:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,65
	sbc r25,__zero_reg__
	ret
.L11:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	adiw r24,4
	ret
.L6:
	ldi r24,lo8(62)
	ldi r25,0
	ret
.L12:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
	.size	base64_char_value, .-base64_char_value
.global	base64_decode_standard
	.type	base64_decode_standard, @function
base64_decode_standard:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r26,r20
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	movw r28,r24
	ld r16,Y
	tst r16
	brne .+2
	rjmp .L13
	cpi r16,lo8(61)
	brne .+2
	rjmp .L13
	movw r30,r24
	adiw r30,1
	ldi r25,0
	ldi r24,0
	rjmp .L16
.L54:
	ldi r18,lo8(-97)
	add r18,r16
	cpi r18,lo8(26)
	brsh .+2
	rjmp .L18
	ldi r18,lo8(-48)
	add r18,r16
	cpi r18,lo8(10)
	brsh .+2
	rjmp .L19
	cpi r16,lo8(43)
	brne .+2
	rjmp .L37
	cpi r16,lo8(47)
	breq .+2
	rjmp .L38
	ldi r16,lo8(-64)
	ldi r17,lo8(15)
	ldi r18,0
	ldi r19,0
.L20:
	ld r21,Z
	ldi r20,lo8(-65)
	add r20,r21
	cpi r20,lo8(26)
	brsh .+2
	rjmp .L21
.L55:
	ldi r20,lo8(-97)
	add r20,r21
	cpi r20,lo8(26)
	brsh .+2
	rjmp .L22
	ldi r20,lo8(-48)
	add r20,r21
	cpi r20,lo8(10)
	brsh .+2
	rjmp .L23
	cpi r21,lo8(43)
	brne .+2
	rjmp .L51
	cpi r21,lo8(47)
	breq .+2
	rjmp .L39
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ori r16,192
	ori r17,15
.L25:
	ldd r21,Z+1
	ldi r20,lo8(-65)
	add r20,r21
	cpi r20,lo8(26)
	brsh .+2
	rjmp .L26
.L56:
	ldi r20,lo8(-97)
	add r20,r21
	cpi r20,lo8(26)
	brsh .+2
	rjmp .L27
	ldi r20,lo8(-48)
	add r20,r21
	cpi r20,lo8(10)
	brsh .+2
	rjmp .L28
	cpi r21,lo8(43)
	brne .+2
	rjmp .L52
	cpi r21,lo8(47)
	breq .+2
	rjmp .L40
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ori r16,192
	ori r17,15
.L30:
	ldd r21,Z+2
	ldi r20,lo8(-65)
	add r20,r21
	cpi r20,lo8(26)
	brsh .+2
	rjmp .L31
.L57:
	ldi r20,lo8(-97)
	add r20,r21
	cpi r20,lo8(26)
	brsh .+2
	rjmp .L32
	ldi r20,lo8(-48)
	add r20,r21
	cpi r20,lo8(10)
	brsh .+2
	rjmp .L33
	cpi r21,lo8(43)
	brne .+2
	rjmp .L53
	cpi r21,lo8(47)
	breq .+2
	rjmp .L41
	ori r16,63
	mov r21,r18
	mov r20,r17
.L35:
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	adiw r26,1
	st X,r19
	st -X,r18
	add r24,r22
	adc r25,r23
	movw r28,r24
	st Y,r21
	ld r24,X+
	ld r25,X
	sbiw r26,1
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	adiw r26,1
	st X,r19
	st -X,r18
	add r24,r22
	adc r25,r23
	movw r28,r24
	st Y,r20
	ld r24,X+
	ld r25,X
	sbiw r26,1
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	adiw r26,1
	st X,r19
	st -X,r18
	add r24,r22
	adc r25,r23
	movw r28,r24
	st Y,r16
	ldd r16,Z+3
	tst r16
	brne .+2
	rjmp .L13
	adiw r30,4
	cpi r16,lo8(61)
	brne .+2
	rjmp .L13
	ld r24,X+
	ld r25,X
	sbiw r26,1
.L16:
	ldi r18,lo8(-65)
	add r18,r16
	cpi r18,lo8(26)
	brlo .+2
	rjmp .L54
	mov __tmp_reg__,r16
	lsl r0
	sbc r17,r17
	subi r16,65
	sbc r17,__zero_reg__
	mov __tmp_reg__,r17
	lsl r0
	sbc r18,r18
	sbc r19,r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ld r21,Z
	ldi r20,lo8(-65)
	add r20,r21
	cpi r20,lo8(26)
	brlo .+2
	rjmp .L55
.L21:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r28,65
	sub r12,r28
	sbc r13,__zero_reg__
.L48:
	mov __tmp_reg__,r13
	lsl r0
	sbc r14,r14
	sbc r15,r15
	or r16,r12
	or r17,r13
	or r18,r14
	or r19,r15
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ldd r21,Z+1
	ldi r20,lo8(-65)
	add r20,r21
	cpi r20,lo8(26)
	brlo .+2
	rjmp .L56
.L26:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r28,65
	sub r12,r28
	sbc r13,__zero_reg__
.L49:
	mov __tmp_reg__,r13
	lsl r0
	sbc r14,r14
	sbc r15,r15
	or r16,r12
	or r17,r13
	or r18,r14
	or r19,r15
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ldd r21,Z+2
	ldi r20,lo8(-65)
	add r20,r21
	cpi r20,lo8(26)
	brlo .+2
	rjmp .L57
.L31:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r28,65
	sub r12,r28
	sbc r13,__zero_reg__
.L50:
	mov __tmp_reg__,r13
	lsl r0
	sbc r14,r14
	sbc r15,r15
	or r16,r12
	or r17,r13
	or r18,r14
	mov r21,r18
	mov r20,r17
	rjmp .L35
.L22:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r20,71
	sub r12,r20
	sbc r13,__zero_reg__
	rjmp .L48
.L18:
	mov __tmp_reg__,r16
	lsl r0
	sbc r17,r17
	subi r16,71
	sbc r17,__zero_reg__
	mov __tmp_reg__,r17
	lsl r0
	sbc r18,r18
	sbc r19,r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	rjmp .L20
.L32:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r20,71
	sub r12,r20
	sbc r13,__zero_reg__
	rjmp .L50
.L27:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r20,71
	sub r12,r20
	sbc r13,__zero_reg__
	rjmp .L49
.L13:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.L28:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r29,4
	add r12,r29
	adc r13,__zero_reg__
	rjmp .L49
.L33:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r29,4
	add r12,r29
	adc r13,__zero_reg__
	rjmp .L50
.L19:
	mov __tmp_reg__,r16
	lsl r0
	sbc r17,r17
	subi r16,-4
	sbci r17,-1
	mov __tmp_reg__,r17
	lsl r0
	sbc r18,r18
	sbc r19,r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	rjmp .L20
.L23:
	mov r12,r21
	lsl r21
	sbc r13,r13
	ldi r29,4
	add r12,r29
	adc r13,__zero_reg__
	rjmp .L48
.L37:
	ldi r16,lo8(-128)
	ldi r17,lo8(15)
	ldi r18,0
	ldi r19,0
	rjmp .L20
.L51:
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ori r16,128
	ori r17,15
	rjmp .L25
.L52:
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	lsl r16
	rol r17
	rol r18
	rol r19
	ori r16,128
	ori r17,15
	rjmp .L30
.L53:
	ori r16,62
	mov r21,r18
	mov r20,r17
	rjmp .L35
.L41:
	ldi r16,lo8(-1)
	ldi r20,lo8(-1)
	ldi r21,lo8(-1)
	rjmp .L35
.L38:
	ldi r16,lo8(-64)
	ldi r17,lo8(-1)
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	rjmp .L20
.L40:
	ldi r16,lo8(-64)
	ldi r17,lo8(-1)
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	rjmp .L30
.L39:
	ldi r16,lo8(-64)
	ldi r17,lo8(-1)
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	rjmp .L25
	.size	base64_decode_standard, .-base64_decode_standard
	.ident	"GCC: (GNU) 7.3.0"
