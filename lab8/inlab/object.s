	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3obj9doubleIntEv
	.align	1, 0x90
__ZN3obj9doubleIntEv:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	imull	$2, %eax, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end1:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	movl	$8, -60(%rbp)
	movabsq	$2, %rax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -64(%rbp)
	movb	$97, -65(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movb	-65(%rbp), %al
	movb	%al, -24(%rbp)
	leaq	-60(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-65(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end2:

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	__ZN3obj9doubleIntEv.eh
__ZN3obj9doubleIntEv.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp4:
	.quad	Leh_func_begin1-Ltmp4
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

	.globl	_main.eh
_main.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp5:
	.quad	Leh_func_begin2-Ltmp5
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp2-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp3-Ltmp2
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:


.subsections_via_symbols
