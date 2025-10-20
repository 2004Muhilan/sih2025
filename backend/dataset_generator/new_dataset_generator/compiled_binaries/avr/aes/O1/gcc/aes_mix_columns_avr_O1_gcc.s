	.file	"aes_mix_columns.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.type	gf_mul, @function
gf_mul:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(8)
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(27)
	rjmp .L4
.L2:
	mov r25,r24
	lsl r25
	tst r24
	brlt .L7
	mov r24,r25
.L3:
	lsr r22
	subi r18,1
	sbc r19,__zero_reg__
	breq .L8
.L4:
	sbrs r22,0
	rjmp .L2
	eor r20,r24
	rjmp .L2
.L7:
	mov r24,r25
	eor r24,r21
	rjmp .L3
.L8:
	mov r24,r20
/* epilogue start */
	ret
	.size	gf_mul, .-gf_mul
.global	aes_mix_columns
	.type	aes_mix_columns, @function
aes_mix_columns:
	push r11
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
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r14,r24
	ldi r24,16
	add r14,r24
	adc r15,__zero_reg__
.L10:
	ld r17,Y
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r11,Y+3
	ldi r22,lo8(2)
	mov r24,r17
	call gf_mul
	mov r16,r24
	ldi r22,lo8(3)
	mov r24,r12
	call gf_mul
	eor r24,r16
	eor r24,r13
	eor r24,r11
	st Y,r24
	ldi r22,lo8(2)
	mov r24,r12
	call gf_mul
	mov r16,r24
	ldi r22,lo8(3)
	mov r24,r13
	call gf_mul
	eor r24,r16
	eor r24,r17
	eor r24,r11
	std Y+1,r24
	ldi r22,lo8(2)
	mov r24,r13
	call gf_mul
	mov r16,r24
	ldi r22,lo8(3)
	mov r24,r11
	call gf_mul
	eor r24,r16
	eor r24,r17
	eor r24,r12
	std Y+2,r24
	ldi r22,lo8(3)
	mov r24,r17
	call gf_mul
	mov r17,r24
	ldi r22,lo8(2)
	mov r24,r11
	call gf_mul
	eor r24,r17
	eor r24,r12
	eor r24,r13
	std Y+3,r24
	adiw r28,4
	cp r28,r14
	cpc r29,r15
	brne .L10
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.size	aes_mix_columns, .-aes_mix_columns
	.ident	"GCC: (GNU) 7.3.0"
