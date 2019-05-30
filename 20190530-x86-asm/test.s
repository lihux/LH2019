	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_foo                    ## -- Begin function foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -24(%rbp)
	movq	l___const.foo.array(%rip), %rax
	movq	%rax, -20(%rbp)
	movl	l___const.foo.array+8(%rip), %edi
	movl	%edi, -12(%rbp)
	movslq	-24(%rbp), %rax
	movl	-20(%rbp,%rax,4), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	movl	-28(%rbp), %eax         ## 4-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_foo
	movq	___stdoutp@GOTPCREL(%rip), %rsi
	movl	%eax, -24(%rbp)
	movq	(%rsi), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	leaq	L_.str(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	2               ## @__const.foo.array
l___const.foo.array:
	.long	1                       ## 0x1
	.long	3                       ## 0x3
	.long	5                       ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"i=%d,j=%d\n"


.subsections_via_symbols
