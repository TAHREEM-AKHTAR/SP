	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"isEqual..."
.LC1:
	.string	"Enter first no.:"
.LC2:
	.string	"%d"
.LC3:
	.string	"Enter second no.:"
.LC4:
	.string	"both are equal"
.LC5:
	.string	"both are not equal"
.LC6:
	.string	"swapping..."
.LC7:
	.string	"value of a after swapping: %d"
.LC8:
	.string	"value of b after swapping: %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	isEqual
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.L2
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L3:
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swap
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
