	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN7NumbersC2EPiS0_S0_
	.align	1, 0x90
__ZN7NumbersC2EPiS0_S0_:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	popq	%rbp
	ret
Leh_func_end1:

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I__ZN7NumbersC2EPiS0_S0_:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	movl	$1, %eax
	movl	$65535, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	__Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	ret
Leh_func_end2:

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN7NumbersC1EPiS0_S0_
	.align	1, 0x90
__ZN7NumbersC1EPiS0_S0_:
Leh_func_begin3:
	pushq	%rbp
Ltmp4:
	movq	%rsp, %rbp
Ltmp5:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	popq	%rbp
	ret
Leh_func_end3:

	.globl	__ZN11MoreNumbersC2EPiS0_S0_S0_
	.align	1, 0x90
__ZN11MoreNumbersC2EPiS0_S0_S0_:
Leh_func_begin4:
	pushq	%rbp
Ltmp6:
	movq	%rsp, %rbp
Ltmp7:
	subq	$48, %rsp
Ltmp8:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	callq	__ZN7NumbersC2EPiS0_S0_
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end4:

	.globl	__ZN11MoreNumbersC1EPiS0_S0_S0_
	.align	1, 0x90
__ZN11MoreNumbersC1EPiS0_S0_S0_:
Leh_func_begin5:
	pushq	%rbp
Ltmp9:
	movq	%rsp, %rbp
Ltmp10:
	subq	$48, %rsp
Ltmp11:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rcx, %rsi
	movq	-48(%rbp), %rcx
	callq	__ZN7NumbersC2EPiS0_S0_
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end5:

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__Z41__static_initialization_and_destruction_0ii:
Leh_func_begin6:
	pushq	%rbp
Ltmp12:
	movq	%rsp, %rbp
Ltmp13:
	subq	$16, %rsp
Ltmp14:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB6_3
	movl	-8(%rbp), %eax
	cmpl	$65535, %eax
	jne	LBB6_3
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitC1Ev
	leaq	___tcf_0(%rip), %rax
	movabsq	$0, %rcx
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___cxa_atexit
LBB6_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end6:

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
___tcf_0:
Leh_func_begin7:
	pushq	%rbp
Ltmp15:
	movq	%rsp, %rbp
Ltmp16:
	subq	$16, %rsp
Ltmp17:
	movq	%rdi, -8(%rbp)
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitD1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end7:

	.globl	__ZN7NumbersD1Ev
	.align	1, 0x90
__ZN7NumbersD1Ev:
Leh_func_begin8:
	pushq	%rbp
Ltmp18:
	movq	%rsp, %rbp
Ltmp19:
	subq	$16, %rsp
Ltmp20:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end8:

	.globl	__ZN7NumbersD2Ev
	.align	1, 0x90
__ZN7NumbersD2Ev:
Leh_func_begin9:
	pushq	%rbp
Ltmp21:
	movq	%rsp, %rbp
Ltmp22:
	subq	$16, %rsp
Ltmp23:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end9:

	.globl	__ZN11MoreNumbersD1Ev
	.align	1, 0x90
__ZN11MoreNumbersD1Ev:
Leh_func_begin10:
	pushq	%rbp
Ltmp24:
	movq	%rsp, %rbp
Ltmp25:
	subq	$16, %rsp
Ltmp26:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN7NumbersD2Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end10:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin11:
	pushq	%rbp
Ltmp27:
	movq	%rsp, %rbp
Ltmp28:
	subq	$112, %rsp
Ltmp29:
	movl	$0, -44(%rbp)
	movl	$2, -48(%rbp)
	movl	$3, -52(%rbp)
	movabsq	$24, %rax
	movq	%rax, %rdi
	callq	__Znwm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)
	movq	%rcx, %rsi
	movq	%rdx, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rcx, -104(%rbp)
	movq	%rax, %rcx
	callq	__ZN7NumbersC1EPiS0_S0_
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$5, -44(%rbp)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$9, -44(%rbp)
	movl	$10, -48(%rbp)
	movl	$16, -52(%rbp)
	movl	$15, -68(%rbp)
	movabsq	$32, %rax
	movq	%rax, %rdi
	callq	__Znwm
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	-68(%rbp), %rcx
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, -112(%rbp)
	movq	%rax, %rcx
	movq	-112(%rbp), %r8
	callq	__ZN11MoreNumbersC1EPiS0_S0_S0_
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, %rax
	je	LBB11_2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN7NumbersD1Ev
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
LBB11_2:
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	LBB11_4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN11MoreNumbersD1Ev
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
LBB11_4:
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	ret
Leh_func_end11:

	.globl	__ZN11MoreNumbersD2Ev
	.align	1, 0x90
__ZN11MoreNumbersD2Ev:
Leh_func_begin12:
	pushq	%rbp
Ltmp30:
	movq	%rsp, %rbp
Ltmp31:
	subq	$16, %rsp
Ltmp32:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN7NumbersD2Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end12:

.zerofill __DATA,__bss,__ZStL8__ioinit,1,3
	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I__ZN7NumbersC2EPiS0_S0_
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
	.globl	__ZN7NumbersC2EPiS0_S0_.eh
__ZN7NumbersC2EPiS0_S0_.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp33:
	.quad	Leh_func_begin1-Ltmp33
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

__GLOBAL__I__ZN7NumbersC2EPiS0_S0_.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp34:
	.quad	Leh_func_begin2-Ltmp34
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

	.globl	__ZN7NumbersC1EPiS0_S0_.eh
__ZN7NumbersC1EPiS0_S0_.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp35:
	.quad	Leh_func_begin3-Ltmp35
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp4-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp5-Ltmp4
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	__ZN11MoreNumbersC2EPiS0_S0_S0_.eh
__ZN11MoreNumbersC2EPiS0_S0_S0_.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp36:
	.quad	Leh_func_begin4-Ltmp36
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp6-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp7-Ltmp6
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

	.globl	__ZN11MoreNumbersC1EPiS0_S0_S0_.eh
__ZN11MoreNumbersC1EPiS0_S0_S0_.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp37:
	.quad	Leh_func_begin5-Ltmp37
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp9-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp10-Ltmp9
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

__Z41__static_initialization_and_destruction_0ii.eh:
Lset26 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset26
Leh_frame_begin6:
Lset27 = Leh_frame_begin6-Leh_frame_common
	.long	Lset27
Ltmp38:
	.quad	Leh_func_begin6-Ltmp38
Lset28 = Leh_func_end6-Leh_func_begin6
	.quad	Lset28
	.byte	0
	.byte	4
Lset29 = Ltmp12-Leh_func_begin6
	.long	Lset29
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset30 = Ltmp13-Ltmp12
	.long	Lset30
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

___tcf_0.eh:
Lset31 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset31
Leh_frame_begin7:
Lset32 = Leh_frame_begin7-Leh_frame_common
	.long	Lset32
Ltmp39:
	.quad	Leh_func_begin7-Ltmp39
Lset33 = Leh_func_end7-Leh_func_begin7
	.quad	Lset33
	.byte	0
	.byte	4
Lset34 = Ltmp15-Leh_func_begin7
	.long	Lset34
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset35 = Ltmp16-Ltmp15
	.long	Lset35
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

	.globl	__ZN7NumbersD1Ev.eh
__ZN7NumbersD1Ev.eh:
Lset36 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset36
Leh_frame_begin8:
Lset37 = Leh_frame_begin8-Leh_frame_common
	.long	Lset37
Ltmp40:
	.quad	Leh_func_begin8-Ltmp40
Lset38 = Leh_func_end8-Leh_func_begin8
	.quad	Lset38
	.byte	0
	.byte	4
Lset39 = Ltmp18-Leh_func_begin8
	.long	Lset39
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset40 = Ltmp19-Ltmp18
	.long	Lset40
	.byte	13
	.byte	6
	.align	3
Leh_frame_end8:

	.globl	__ZN7NumbersD2Ev.eh
__ZN7NumbersD2Ev.eh:
Lset41 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset41
Leh_frame_begin9:
Lset42 = Leh_frame_begin9-Leh_frame_common
	.long	Lset42
Ltmp41:
	.quad	Leh_func_begin9-Ltmp41
Lset43 = Leh_func_end9-Leh_func_begin9
	.quad	Lset43
	.byte	0
	.byte	4
Lset44 = Ltmp21-Leh_func_begin9
	.long	Lset44
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset45 = Ltmp22-Ltmp21
	.long	Lset45
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	__ZN11MoreNumbersD1Ev.eh
__ZN11MoreNumbersD1Ev.eh:
Lset46 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset46
Leh_frame_begin10:
Lset47 = Leh_frame_begin10-Leh_frame_common
	.long	Lset47
Ltmp42:
	.quad	Leh_func_begin10-Ltmp42
Lset48 = Leh_func_end10-Leh_func_begin10
	.quad	Lset48
	.byte	0
	.byte	4
Lset49 = Ltmp24-Leh_func_begin10
	.long	Lset49
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset50 = Ltmp25-Ltmp24
	.long	Lset50
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

	.globl	_main.eh
_main.eh:
Lset51 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset51
Leh_frame_begin11:
Lset52 = Leh_frame_begin11-Leh_frame_common
	.long	Lset52
Ltmp43:
	.quad	Leh_func_begin11-Ltmp43
Lset53 = Leh_func_end11-Leh_func_begin11
	.quad	Lset53
	.byte	0
	.byte	4
Lset54 = Ltmp27-Leh_func_begin11
	.long	Lset54
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset55 = Ltmp28-Ltmp27
	.long	Lset55
	.byte	13
	.byte	6
	.align	3
Leh_frame_end11:

	.globl	__ZN11MoreNumbersD2Ev.eh
__ZN11MoreNumbersD2Ev.eh:
Lset56 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset56
Leh_frame_begin12:
Lset57 = Leh_frame_begin12-Leh_frame_common
	.long	Lset57
Ltmp44:
	.quad	Leh_func_begin12-Ltmp44
Lset58 = Leh_func_end12-Leh_func_begin12
	.quad	Lset58
	.byte	0
	.byte	4
Lset59 = Ltmp30-Leh_func_begin12
	.long	Lset59
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset60 = Ltmp31-Ltmp30
	.long	Lset60
	.byte	13
	.byte	6
	.align	3
Leh_frame_end12:


.subsections_via_symbols
