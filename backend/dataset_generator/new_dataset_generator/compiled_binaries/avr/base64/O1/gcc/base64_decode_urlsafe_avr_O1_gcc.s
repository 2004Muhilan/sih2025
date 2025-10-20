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
	brlo .L8
	ldi r25,lo8(-97)
	add r25,r24
	cpi r25,lo8(26)
	brlo .L9
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(10)
	brlo .L10
	cpi r24,lo8(45)
	breq .L6
	cpi r24,lo8(95)
	brne .L11
	ldi r24,lo8(63)
	ldi r25,0
/* epilogue start */
	ret
.L8:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,65
	sbc r25,__zero_reg__
	ret
.L9:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	subi r24,71
	sbc r25,__zero_reg__
	ret
.L10:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	adiw r24,4
	ret
.L11:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
.L6:
	ldi r24,lo8(62)
	ldi r25,0
	ret
	.size	base64_url_char_value, .-base64_url_char_value
.global	base64_decode_urlsafe
	.type	base64_decode_urlsafe, @function
base64_decode_urlsafe:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ld r24,Y
	tst r24
	breq .L12
	mov r16,r22
	mov r17,r23
	adiw r28,1
.L14:
	call base64_url_char_value
	movw r30,r16
	st Z+,r24
	movw r16,r30
	ld r24,Y+
	cpse r24,__zero_reg__
	rjmp .L14
.L12:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	base64_decode_urlsafe, .-base64_decode_urlsafe
	.ident	"GCC: (GNU) 7.3.0"
