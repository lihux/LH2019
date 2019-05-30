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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movq	l___const.foo.array(%rip), %r10
	movq	%r10, -48(%rbp)
	movq	l___const.foo.array+8(%rip), %r10
	movq	%r10, -40(%rbp)
	movq	l___const.foo.array+16(%rip), %r10
	movq	%r10, -32(%rbp)
	movl	l___const.foo.array+24(%rip), %ecx
	movl	%ecx, -24(%rbp)
	movslq	-52(%rbp), %r10
	movl	-48(%rbp,%r10,4), %ecx
	movslq	16(%rbp), %r10
	addl	-48(%rbp,%r10,4), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	-8(%rbp), %r11
	cmpq	%r11, %r10
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movl	%ecx, -84(%rbp)         ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	movl	-84(%rbp), %eax         ## 4-byte Reload
	addq	$96, %rsp
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	%eax, %edi
	movl	$1, %esi
	movl	$2, %edx
	movl	$3, %ecx
	movl	$4, %r8d
	movl	$5, %r9d
	movl	$6, (%rsp)
	callq	_foo
	movq	___stdoutp@GOTPCREL(%rip), %r10
	movl	%eax, -24(%rbp)
	movq	(%r10), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	leaq	L_.str(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @__const.foo.array
l___const.foo.array:
	.long	100                     ## 0x64
	.long	200                     ## 0xc8
	.long	300                     ## 0x12c
	.long	400                     ## 0x190
	.long	500                     ## 0x1f4
	.long	600                     ## 0x258
	.long	700                     ## 0x2bc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"i=%d,j=%d\n"


.subsections_via_symbols
