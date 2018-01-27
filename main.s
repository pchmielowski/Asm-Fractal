	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	ebx, 0

.lines:
	push	rbx
	mov	ebx, 0
	
.line:
	cmp	ebx, 10
	mov	edi, 35 # pound
	jge	.pound
	mov	edi, 32
.pound:
	call	putchar
	inc	ebx
	cmp	ebx, 120 # columns
	jle	.line

	mov	edi, 10
	call	putchar
	pop	rbx
	inc	ebx
	cmp	ebx, 40 # rows
	jle	.lines
	

	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
