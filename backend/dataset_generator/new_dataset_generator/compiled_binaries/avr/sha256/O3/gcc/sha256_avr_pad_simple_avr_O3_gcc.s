	.file	"sha256_avr_pad_simple.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	sha256_pad_avr
	.type	sha256_pad_avr, @function
sha256_pad_avr:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r20
	mov r28,r22
	ldi r29,0
	movw r20,r28
	movw r22,r24
	movw r24,r16
	call memcpy
	movw r30,r16
	add r30,r28
	adc r31,r29
	ldi r24,lo8(-128)
	st Z,r24
	cpi r28,63
	cpc r29,__zero_reg__
	brge .L1
	ldi r20,lo8(63)
	ldi r21,0
	sub r20,r28
	sbc r21,r29
	movw r24,r28
	adiw r24,1
	ldi r23,0
	ldi r22,0
	add r24,r16
	adc r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp memset
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	sha256_pad_avr, .-sha256_pad_avr
	.ident	"GCC: (GNU) 7.3.0"
