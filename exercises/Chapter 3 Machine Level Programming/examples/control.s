	.file	"control.c"
	.text
	.p2align 4
	.globl	absdiff
	.type	absdiff, @function
absdiff:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rsi, %rdx
	movq	%rdi, %rax
	subq	%rdi, %rdx
	subq	%rsi, %rax
	cmpq	%rsi, %rdi
	cmovl	%rdx, %rax # Conditional move
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff, .-absdiff
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
