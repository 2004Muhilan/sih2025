	.file	"base64_decode_urlsafe.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	base64_url_char_value
	.type	base64_url_char_value, @function
base64_url_char_value:
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
	cpi r24,lo8(45)
	breq .L6
	cpi r24,lo8(95)
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
	.size	base64_url_char_value, .-base64_url_char_value
.global	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r25,Z
	tst r25
	breq .L13
	movw r26,r22
	adiw r30,1
	rjmp .L19
.L15:
	ldi r24,lo8(-97)
	add r24,r25
	cpi r24,lo8(26)
	brlo .L26
	ldi r24,lo8(-48)
	add r24,r25
	cpi r24,lo8(10)
	brlo .L27
	cpi r25,lo8(45)
	breq .L20
	cpi r25,lo8(95)
	brne .L21
	ldi r25,lo8(63)
.L16:
	st X+,r25
	ld r25,Z+
	tst r25
	breq .L13
.L19:
	ldi r24,lo8(-65)
	add r24,r25
	cpi r24,lo8(26)
	brsh .L15
	mov r25,r24
	st X+,r25
	ld r25,Z+
	cpse r25,__zero_reg__
	rjmp .L19
.L13:
/* epilogue start */
	ret
.L26:
	subi r25,lo8(-(-71))
	rjmp .L16
.L27:
	subi r25,lo8(-(4))
	rjmp .L16
.L20:
	ldi r25,lo8(62)
	rjmp .L16
.L21:
	ldi r25,lo8(-1)
	rjmp .L16
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (GNU) 7.3.0"
