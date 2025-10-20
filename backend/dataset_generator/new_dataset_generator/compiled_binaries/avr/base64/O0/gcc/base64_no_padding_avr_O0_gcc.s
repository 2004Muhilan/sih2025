	.file	"base64_no_padding.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.rodata
	.type	b64, @object
	.size	b64, 65
b64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
.global	base64_encode_no_padding
	.type	base64_encode_no_padding, @function
base64_encode_no_padding:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 16 */
.L__stack_usage = 16
	std Y+10,r25
	std Y+9,r24
	std Y+12,r23
	std Y+11,r22
	std Y+14,r21
	std Y+13,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L2
.L7:
	ldd r18,Y+9
	ldd r19,Y+10
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r18,lo8(16)
	ldi r19,0
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r18
	brpl 1b
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	ldd r18,Y+11
	ldd r19,Y+12
	cp r24,r18
	cpc r25,r19
	brsh .L3
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	ldd r18,Y+9
	ldd r19,Y+10
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	mov r25,r24
	clr r24
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	or r24,r18
	or r25,r19
	or r26,r20
	or r27,r21
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L3:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	ldd r18,Y+11
	ldd r19,Y+12
	cp r24,r18
	cpc r25,r19
	brsh .L4
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	ldd r18,Y+9
	ldd r19,Y+10
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r24,Z
	mov r24,r24
	ldi r25,0
	ldi r26,0
	ldi r27,0
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	or r24,r18
	or r25,r19
	or r26,r20
	or r27,r21
	std Y+5,r24
	std Y+6,r25
	std Y+7,r26
	std Y+8,r27
.L4:
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r0,r23
	ldi r23,18
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+1
	ldd r19,Y+2
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	ldd r20,Y+13
	ldd r21,Y+14
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	mov r0,r23
	ldi r23,12
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
	mov r23,r0
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+1
	ldd r19,Y+2
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	ldd r20,Y+13
	ldd r21,Y+14
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	ldd r18,Y+11
	ldd r19,Y+12
	cp r24,r18
	cpc r25,r19
	brsh .L5
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	set
	bld __zero_reg__,6-1
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	lsr __zero_reg__
	brne 1b
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+1
	ldd r19,Y+2
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	ldd r20,Y+13
	ldd r21,Y+14
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
.L5:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,2
	ldd r18,Y+11
	ldd r19,Y+12
	cp r24,r18
	cpc r25,r19
	brsh .L6
	ldd r24,Y+5
	ldd r25,Y+6
	ldd r26,Y+7
	ldd r27,Y+8
	andi r24,63
	clr r25
	clr r26
	clr r27
	ldd r18,Y+1
	ldd r19,Y+2
	movw r20,r18
	subi r20,-1
	sbci r21,-1
	std Y+2,r21
	std Y+1,r20
	ldd r20,Y+13
	ldd r21,Y+14
	add r18,r20
	adc r19,r21
	subi r24,lo8(-(b64))
	sbci r25,hi8(-(b64))
	movw r30,r24
	ld r24,Z
	movw r30,r18
	st Z,r24
.L6:
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,3
	std Y+4,r25
	std Y+3,r24
.L2:
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r24,Y+11
	ldd r25,Y+12
	cp r18,r24
	cpc r19,r25
	brsh .+2
	rjmp .L7
	ldd r18,Y+13
	ldd r19,Y+14
	ldd r24,Y+1
	ldd r25,Y+2
	add r24,r18
	adc r25,r19
	movw r30,r24
	st Z,__zero_reg__
	nop
/* epilogue start */
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	base64_encode_no_padding, .-base64_encode_no_padding
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
