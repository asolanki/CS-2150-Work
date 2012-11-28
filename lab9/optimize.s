	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN8EmployeeC2ESsf
	.align	1, 0x90
__ZN8EmployeeC2ESsf:
Leh_func_begin1:
	pushq	%rbp
Ltmp6:
	movq	%rsp, %rbp
Ltmp7:
	subq	$48, %rsp
Ltmp8:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsC1Ev
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
Ltmp0:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSsaSERKSs
Ltmp1:
	jmp	LBB1_1
LBB1_1:
	movq	-8(%rbp), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	jmp	LBB1_5
LBB1_2:
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
Ltmp2:
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp3:
	jmp	LBB1_3
LBB1_3:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	LBB1_10
LBB1_4:
	callq	__ZSt9terminatev
LBB1_5:
	addq	$48, %rsp
	popq	%rbp
	ret
LBB1_6:
Ltmp4:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB1_8
LBB1_7:
Ltmp5:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB1_9
LBB1_8:
	jmp	LBB1_2
LBB1_9:
	jmp	LBB1_4
LBB1_10:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end1:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table1:
Lexception1:
	.byte	255
	.byte	155
	.byte	184
	.space	1
	.byte	3
	.byte	52
Lset0 = Leh_func_begin1-Leh_func_begin1
	.long	Lset0
Lset1 = Ltmp0-Leh_func_begin1
	.long	Lset1
	.long	0
	.byte	0
Lset2 = Ltmp0-Leh_func_begin1
	.long	Lset2
Lset3 = Ltmp1-Ltmp0
	.long	Lset3
Lset4 = Ltmp4-Leh_func_begin1
	.long	Lset4
	.byte	0
Lset5 = Ltmp2-Leh_func_begin1
	.long	Lset5
Lset6 = Ltmp3-Ltmp2
	.long	Lset6
Lset7 = Ltmp5-Leh_func_begin1
	.long	Lset7
	.byte	1
Lset8 = Ltmp3-Leh_func_begin1
	.long	Lset8
Lset9 = Leh_func_end1-Ltmp3
	.long	Lset9
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I__ZN8EmployeeC2ESsf:
Leh_func_begin2:
	pushq	%rbp
Ltmp9:
	movq	%rsp, %rbp
Ltmp10:
	movl	$1, %eax
	movl	$65535, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	__Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	ret
Leh_func_end2:

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8EmployeeD1Ev
.weak_definition __ZN8EmployeeD1Ev
	.align	1, 0x90
__ZN8EmployeeD1Ev:
Leh_func_begin3:
	pushq	%rbp
Ltmp11:
	movq	%rsp, %rbp
Ltmp12:
	subq	$16, %rsp
Ltmp13:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.globl	__ZN8EmployeeD2Ev
.weak_definition __ZN8EmployeeD2Ev
	.align	1, 0x90
__ZN8EmployeeD2Ev:
Leh_func_begin4:
	pushq	%rbp
Ltmp14:
	movq	%rsp, %rbp
Ltmp15:
	subq	$16, %rsp
Ltmp16:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end4:

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__Z41__static_initialization_and_destruction_0ii:
Leh_func_begin5:
	pushq	%rbp
Ltmp17:
	movq	%rsp, %rbp
Ltmp18:
	subq	$16, %rsp
Ltmp19:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB5_3
	movl	-8(%rbp), %eax
	cmpl	$65535, %eax
	jne	LBB5_3
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
LBB5_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end5:

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
___tcf_0:
Leh_func_begin6:
	pushq	%rbp
Ltmp20:
	movq	%rsp, %rbp
Ltmp21:
	subq	$16, %rsp
Ltmp22:
	movq	%rdi, -8(%rbp)
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitD1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end6:

	.globl	__ZN4BossD1Ev
	.align	1, 0x90
__ZN4BossD1Ev:
Leh_func_begin7:
	pushq	%rbp
Ltmp29:
	movq	%rsp, %rbp
Ltmp30:
	subq	$64, %rsp
Ltmp31:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	je	LBB7_3
	movq	-32(%rbp), %rax
Ltmp23:
	movq	%rax, %rdi
	callq	__ZN8EmployeeD1Ev
Ltmp24:
	jmp	LBB7_2
LBB7_2:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
LBB7_3:
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN8EmployeeD2Ev
	jmp	LBB7_7
LBB7_4:
	movl	-44(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
Ltmp25:
	movq	%rax, %rdi
	callq	__ZN8EmployeeD2Ev
Ltmp26:
	jmp	LBB7_5
LBB7_5:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	LBB7_13
LBB7_6:
	callq	__ZSt9terminatev
LBB7_7:
	addq	$64, %rsp
	popq	%rbp
	ret
LBB7_9:
Ltmp27:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB7_11
LBB7_10:
Ltmp28:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB7_12
LBB7_11:
	jmp	LBB7_4
LBB7_12:
	jmp	LBB7_6
LBB7_13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end7:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table7:
Lexception7:
	.byte	255
	.byte	155
	.byte	184
	.space	1
	.byte	3
	.byte	52
Lset10 = Ltmp23-Leh_func_begin7
	.long	Lset10
Lset11 = Ltmp24-Ltmp23
	.long	Lset11
Lset12 = Ltmp27-Leh_func_begin7
	.long	Lset12
	.byte	0
Lset13 = Ltmp24-Leh_func_begin7
	.long	Lset13
Lset14 = Ltmp25-Ltmp24
	.long	Lset14
	.long	0
	.byte	0
Lset15 = Ltmp25-Leh_func_begin7
	.long	Lset15
Lset16 = Ltmp26-Ltmp25
	.long	Lset16
Lset17 = Ltmp28-Leh_func_begin7
	.long	Lset17
	.byte	1
Lset18 = Ltmp26-Leh_func_begin7
	.long	Lset18
Lset19 = Leh_func_end7-Ltmp26
	.long	Lset19
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4BossD2Ev
	.align	1, 0x90
__ZN4BossD2Ev:
Leh_func_begin8:
	pushq	%rbp
Ltmp38:
	movq	%rsp, %rbp
Ltmp39:
	subq	$64, %rsp
Ltmp40:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	je	LBB8_3
	movq	-32(%rbp), %rax
Ltmp32:
	movq	%rax, %rdi
	callq	__ZN8EmployeeD1Ev
Ltmp33:
	jmp	LBB8_2
LBB8_2:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
LBB8_3:
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN8EmployeeD2Ev
	jmp	LBB8_7
LBB8_4:
	movl	-44(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
Ltmp34:
	movq	%rax, %rdi
	callq	__ZN8EmployeeD2Ev
Ltmp35:
	jmp	LBB8_5
LBB8_5:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	LBB8_13
LBB8_6:
	callq	__ZSt9terminatev
LBB8_7:
	addq	$64, %rsp
	popq	%rbp
	ret
LBB8_9:
Ltmp36:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB8_11
LBB8_10:
Ltmp37:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB8_12
LBB8_11:
	jmp	LBB8_4
LBB8_12:
	jmp	LBB8_6
LBB8_13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end8:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table8:
Lexception8:
	.byte	255
	.byte	155
	.byte	184
	.space	1
	.byte	3
	.byte	52
Lset20 = Ltmp32-Leh_func_begin8
	.long	Lset20
Lset21 = Ltmp33-Ltmp32
	.long	Lset21
Lset22 = Ltmp36-Leh_func_begin8
	.long	Lset22
	.byte	0
Lset23 = Ltmp33-Leh_func_begin8
	.long	Lset23
Lset24 = Ltmp34-Ltmp33
	.long	Lset24
	.long	0
	.byte	0
Lset25 = Ltmp34-Leh_func_begin8
	.long	Lset25
Lset26 = Ltmp35-Ltmp34
	.long	Lset26
Lset27 = Ltmp37-Leh_func_begin8
	.long	Lset27
	.byte	1
Lset28 = Ltmp35-Leh_func_begin8
	.long	Lset28
Lset29 = Leh_func_end8-Ltmp35
	.long	Lset29
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN8EmployeeC1ESsf
	.align	1, 0x90
__ZN8EmployeeC1ESsf:
Leh_func_begin9:
	pushq	%rbp
Ltmp47:
	movq	%rsp, %rbp
Ltmp48:
	subq	$48, %rsp
Ltmp49:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsC1Ev
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
Ltmp41:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSsaSERKSs
Ltmp42:
	jmp	LBB9_1
LBB9_1:
	movq	-8(%rbp), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	jmp	LBB9_5
LBB9_2:
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
Ltmp43:
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp44:
	jmp	LBB9_3
LBB9_3:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	LBB9_10
LBB9_4:
	callq	__ZSt9terminatev
LBB9_5:
	addq	$48, %rsp
	popq	%rbp
	ret
LBB9_6:
Ltmp45:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB9_8
LBB9_7:
Ltmp46:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB9_9
LBB9_8:
	jmp	LBB9_2
LBB9_9:
	jmp	LBB9_4
LBB9_10:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end9:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table9:
Lexception9:
	.byte	255
	.byte	155
	.byte	184
	.space	1
	.byte	3
	.byte	52
Lset30 = Leh_func_begin9-Leh_func_begin9
	.long	Lset30
Lset31 = Ltmp41-Leh_func_begin9
	.long	Lset31
	.long	0
	.byte	0
Lset32 = Ltmp41-Leh_func_begin9
	.long	Lset32
Lset33 = Ltmp42-Ltmp41
	.long	Lset33
Lset34 = Ltmp45-Leh_func_begin9
	.long	Lset34
	.byte	0
Lset35 = Ltmp43-Leh_func_begin9
	.long	Lset35
Lset36 = Ltmp44-Ltmp43
	.long	Lset36
Lset37 = Ltmp46-Leh_func_begin9
	.long	Lset37
	.byte	1
Lset38 = Ltmp44-Leh_func_begin9
	.long	Lset38
Lset39 = Leh_func_end9-Ltmp44
	.long	Lset39
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4BossC1ESsfP8Employee
	.align	1, 0x90
__ZN4BossC1ESsfP8Employee:
Leh_func_begin10:
	pushq	%rbp
Ltmp56:
	movq	%rsp, %rbp
Ltmp57:
	subq	$80, %rsp
Ltmp58:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	__ZNSsC1ERKSs
	movq	-8(%rbp), %rax
	movss	-20(%rbp), %xmm0
Ltmp50:
	leaq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZN8EmployeeC2ESsf
Ltmp51:
	jmp	LBB10_1
LBB10_1:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	jmp	LBB10_5
LBB10_2:
	movl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
Ltmp52:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp53:
	jmp	LBB10_3
LBB10_3:
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	LBB10_10
LBB10_4:
	callq	__ZSt9terminatev
LBB10_5:
	addq	$80, %rsp
	popq	%rbp
	ret
LBB10_6:
Ltmp54:
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB10_8
LBB10_7:
Ltmp55:
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB10_9
LBB10_8:
	jmp	LBB10_2
LBB10_9:
	jmp	LBB10_4
LBB10_10:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end10:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table10:
Lexception10:
	.byte	255
	.byte	155
	.byte	69
	.byte	3
	.byte	65
Lset40 = Leh_func_begin10-Leh_func_begin10
	.long	Lset40
Lset41 = Ltmp50-Leh_func_begin10
	.long	Lset41
	.long	0
	.byte	0
Lset42 = Ltmp50-Leh_func_begin10
	.long	Lset42
Lset43 = Ltmp51-Ltmp50
	.long	Lset43
Lset44 = Ltmp54-Leh_func_begin10
	.long	Lset44
	.byte	0
Lset45 = Ltmp51-Leh_func_begin10
	.long	Lset45
Lset46 = Ltmp52-Ltmp51
	.long	Lset46
	.long	0
	.byte	0
Lset47 = Ltmp52-Leh_func_begin10
	.long	Lset47
Lset48 = Ltmp53-Ltmp52
	.long	Lset48
Lset49 = Ltmp55-Leh_func_begin10
	.long	Lset49
	.byte	1
Lset50 = Ltmp53-Leh_func_begin10
	.long	Lset50
Lset51 = Leh_func_end10-Ltmp53
	.long	Lset51
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI11_0:
	.long	1092616192
LCPI11_1:
	.long	1112014848
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin11:
	pushq	%rbp
Ltmp87:
	movq	%rsp, %rbp
Ltmp88:
	subq	$240, %rsp
Ltmp89:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSaIcEC1Ev
Ltmp59:
	leaq	-168(%rbp), %rax
	leaq	L_.str(%rip), %rcx
	leaq	-160(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSsC1EPKcRKSaIcE
Ltmp60:
	jmp	LBB11_1
LBB11_1:
	leaq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
Ltmp61:
	movl	$16, %eax
	movq	%rax, %rdi
	callq	__Znwm
Ltmp62:
	movq	%rax, -216(%rbp)
	jmp	LBB11_2
LBB11_2:
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	-176(%rbp), %rdx
Ltmp63:
	movss	LCPI11_0(%rip), %xmm0
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	__ZN8EmployeeC1ESsf
Ltmp64:
	jmp	LBB11_3
LBB11_3:
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
Ltmp65:
	leaq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp66:
	jmp	LBB11_4
LBB11_4:
	jmp	LBB11_9
LBB11_5:
	movl	-204(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_34
LBB11_6:
	movl	-204(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -80(%rbp)
Ltmp67:
	leaq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp68:
	jmp	LBB11_7
LBB11_7:
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_33
LBB11_8:
	callq	__ZSt9terminatev
LBB11_9:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSaIcED1Ev
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSaIcEC1Ev
Ltmp69:
	leaq	-136(%rbp), %rax
	leaq	L_.str1(%rip), %rcx
	leaq	-128(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSsC1EPKcRKSaIcE
Ltmp70:
	jmp	LBB11_10
LBB11_10:
	jmp	LBB11_12
LBB11_11:
	movl	-204(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSaIcED1Ev
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_41
LBB11_12:
	leaq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
Ltmp71:
	movl	$24, %eax
	movq	%rax, %rdi
	callq	__Znwm
Ltmp72:
	movq	%rax, -224(%rbp)
	jmp	LBB11_13
LBB11_13:
	movq	-224(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-184(%rbp), %rsi
Ltmp73:
	movss	LCPI11_1(%rip), %xmm0
	movq	%rcx, %rdi
	movq	%rsi, -232(%rbp)
	movq	%rdx, %rsi
	movq	-232(%rbp), %rdx
	callq	__ZN4BossC1ESsfP8Employee
Ltmp74:
	jmp	LBB11_14
LBB11_14:
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
Ltmp75:
	leaq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp76:
	jmp	LBB11_15
LBB11_15:
	jmp	LBB11_20
LBB11_16:
	movl	-204(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_38
LBB11_17:
	movl	-204(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -32(%rbp)
Ltmp77:
	leaq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp78:
	jmp	LBB11_18
LBB11_18:
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_37
LBB11_19:
	callq	__ZSt9terminatev
LBB11_20:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSaIcED1Ev
	movq	-192(%rbp), %rax
	movabsq	$45, %rcx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, 8(%rax)
	movq	-192(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, %rax
	jne	LBB11_22
	jmp	LBB11_23
LBB11_21:
	movl	-204(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSaIcED1Ev
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_41
LBB11_22:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZN4BossD1Ev
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZdlPv
LBB11_23:
	movq	-184(%rbp), %rax
	movabsq	$12, %rcx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, 8(%rax)
	movl	$0, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	ret
LBB11_25:
Ltmp79:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_33
LBB11_26:
Ltmp80:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_34
LBB11_27:
Ltmp81:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_35
LBB11_28:
Ltmp82:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_36
LBB11_29:
Ltmp83:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_37
LBB11_30:
Ltmp84:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_38
LBB11_31:
Ltmp85:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_39
LBB11_32:
Ltmp86:
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -204(%rbp)
	jmp	LBB11_40
LBB11_33:
	jmp	LBB11_11
LBB11_34:
	jmp	LBB11_6
LBB11_35:
	jmp	LBB11_5
LBB11_36:
	jmp	LBB11_8
LBB11_37:
	jmp	LBB11_21
LBB11_38:
	jmp	LBB11_17
LBB11_39:
	jmp	LBB11_16
LBB11_40:
	jmp	LBB11_19
LBB11_41:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end11:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table11:
Lexception11:
	.byte	255
	.byte	155
	.byte	148
	.byte	1
	.byte	3
	.byte	143
	.byte	1
Lset52 = Ltmp59-Leh_func_begin11
	.long	Lset52
Lset53 = Ltmp60-Ltmp59
	.long	Lset53
Lset54 = Ltmp79-Leh_func_begin11
	.long	Lset54
	.byte	0
Lset55 = Ltmp61-Leh_func_begin11
	.long	Lset55
Lset56 = Ltmp62-Ltmp61
	.long	Lset56
Lset57 = Ltmp80-Leh_func_begin11
	.long	Lset57
	.byte	0
Lset58 = Ltmp63-Leh_func_begin11
	.long	Lset58
Lset59 = Ltmp64-Ltmp63
	.long	Lset59
Lset60 = Ltmp81-Leh_func_begin11
	.long	Lset60
	.byte	0
Lset61 = Ltmp65-Leh_func_begin11
	.long	Lset61
Lset62 = Ltmp66-Ltmp65
	.long	Lset62
Lset63 = Ltmp79-Leh_func_begin11
	.long	Lset63
	.byte	0
Lset64 = Ltmp67-Leh_func_begin11
	.long	Lset64
Lset65 = Ltmp68-Ltmp67
	.long	Lset65
Lset66 = Ltmp82-Leh_func_begin11
	.long	Lset66
	.byte	1
Lset67 = Ltmp69-Leh_func_begin11
	.long	Lset67
Lset68 = Ltmp70-Ltmp69
	.long	Lset68
Lset69 = Ltmp83-Leh_func_begin11
	.long	Lset69
	.byte	0
Lset70 = Ltmp71-Leh_func_begin11
	.long	Lset70
Lset71 = Ltmp72-Ltmp71
	.long	Lset71
Lset72 = Ltmp84-Leh_func_begin11
	.long	Lset72
	.byte	0
Lset73 = Ltmp73-Leh_func_begin11
	.long	Lset73
Lset74 = Ltmp74-Ltmp73
	.long	Lset74
Lset75 = Ltmp85-Leh_func_begin11
	.long	Lset75
	.byte	0
Lset76 = Ltmp75-Leh_func_begin11
	.long	Lset76
Lset77 = Ltmp76-Ltmp75
	.long	Lset77
Lset78 = Ltmp83-Leh_func_begin11
	.long	Lset78
	.byte	0
Lset79 = Ltmp77-Leh_func_begin11
	.long	Lset79
Lset80 = Ltmp78-Ltmp77
	.long	Lset80
Lset81 = Ltmp86-Leh_func_begin11
	.long	Lset81
	.byte	1
Lset82 = Ltmp78-Leh_func_begin11
	.long	Lset82
Lset83 = Leh_func_end11-Ltmp78
	.long	Lset83
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4BossC2ESsfP8Employee
	.align	1, 0x90
__ZN4BossC2ESsfP8Employee:
Leh_func_begin12:
	pushq	%rbp
Ltmp96:
	movq	%rsp, %rbp
Ltmp97:
	subq	$80, %rsp
Ltmp98:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	__ZNSsC1ERKSs
	movq	-8(%rbp), %rax
	movss	-20(%rbp), %xmm0
Ltmp90:
	leaq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZN8EmployeeC2ESsf
Ltmp91:
	jmp	LBB12_1
LBB12_1:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	jmp	LBB12_5
LBB12_2:
	movl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
Ltmp92:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSsD1Ev
Ltmp93:
	jmp	LBB12_3
LBB12_3:
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	LBB12_10
LBB12_4:
	callq	__ZSt9terminatev
LBB12_5:
	addq	$80, %rsp
	popq	%rbp
	ret
LBB12_6:
Ltmp94:
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB12_8
LBB12_7:
Ltmp95:
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%edx, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB12_9
LBB12_8:
	jmp	LBB12_2
LBB12_9:
	jmp	LBB12_4
LBB12_10:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__Unwind_Resume_or_Rethrow
Leh_func_end12:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table12:
Lexception12:
	.byte	255
	.byte	155
	.byte	69
	.byte	3
	.byte	65
Lset84 = Leh_func_begin12-Leh_func_begin12
	.long	Lset84
Lset85 = Ltmp90-Leh_func_begin12
	.long	Lset85
	.long	0
	.byte	0
Lset86 = Ltmp90-Leh_func_begin12
	.long	Lset86
Lset87 = Ltmp91-Ltmp90
	.long	Lset87
Lset88 = Ltmp94-Leh_func_begin12
	.long	Lset88
	.byte	0
Lset89 = Ltmp91-Leh_func_begin12
	.long	Lset89
Lset90 = Ltmp92-Ltmp91
	.long	Lset90
	.long	0
	.byte	0
Lset91 = Ltmp92-Leh_func_begin12
	.long	Lset91
Lset92 = Ltmp93-Ltmp92
	.long	Lset92
Lset93 = Ltmp95-Leh_func_begin12
	.long	Lset93
	.byte	1
Lset94 = Ltmp93-Leh_func_begin12
	.long	Lset94
Lset95 = Leh_func_end12-Ltmp93
	.long	Lset95
	.long	0
	.byte	0


	.byte	127
	.byte	0

	.byte	0
	.align	2

.zerofill __DATA,__bss,__ZStL8__ioinit,1,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "John"

L_.str1:
	.asciz	 "Bill"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I__ZN8EmployeeC2ESsf
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset96 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset96
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zPLR"
	.byte	1
	.byte	120
	.byte	16
	.byte	7
	.byte	155
	.long	___gxx_personality_v0@GOTPCREL+4
	.byte	16
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	__ZN8EmployeeC2ESsf.eh
__ZN8EmployeeC2ESsf.eh:
Lset97 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset97
Leh_frame_begin1:
Lset98 = Leh_frame_begin1-Leh_frame_common
	.long	Lset98
Ltmp99:
	.quad	Leh_func_begin1-Ltmp99
Lset99 = Leh_func_end1-Leh_func_begin1
	.quad	Lset99
	.byte	8
Ltmp100:
	.quad	Lexception1-Ltmp100
	.byte	4
Lset100 = Ltmp6-Leh_func_begin1
	.long	Lset100
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset101 = Ltmp7-Ltmp6
	.long	Lset101
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

__GLOBAL__I__ZN8EmployeeC2ESsf.eh:
Lset102 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset102
Leh_frame_begin2:
Lset103 = Leh_frame_begin2-Leh_frame_common
	.long	Lset103
Ltmp101:
	.quad	Leh_func_begin2-Ltmp101
Lset104 = Leh_func_end2-Leh_func_begin2
	.quad	Lset104
	.byte	8
	.quad	0
	.byte	4
Lset105 = Ltmp9-Leh_func_begin2
	.long	Lset105
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset106 = Ltmp10-Ltmp9
	.long	Lset106
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	__ZN8EmployeeD1Ev.eh
.weak_definition __ZN8EmployeeD1Ev.eh
__ZN8EmployeeD1Ev.eh:
Lset107 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset107
Leh_frame_begin3:
Lset108 = Leh_frame_begin3-Leh_frame_common
	.long	Lset108
Ltmp102:
	.quad	Leh_func_begin3-Ltmp102
Lset109 = Leh_func_end3-Leh_func_begin3
	.quad	Lset109
	.byte	8
	.quad	0
	.byte	4
Lset110 = Ltmp11-Leh_func_begin3
	.long	Lset110
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset111 = Ltmp12-Ltmp11
	.long	Lset111
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	__ZN8EmployeeD2Ev.eh
.weak_definition __ZN8EmployeeD2Ev.eh
__ZN8EmployeeD2Ev.eh:
Lset112 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset112
Leh_frame_begin4:
Lset113 = Leh_frame_begin4-Leh_frame_common
	.long	Lset113
Ltmp103:
	.quad	Leh_func_begin4-Ltmp103
Lset114 = Leh_func_end4-Leh_func_begin4
	.quad	Lset114
	.byte	8
	.quad	0
	.byte	4
Lset115 = Ltmp14-Leh_func_begin4
	.long	Lset115
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset116 = Ltmp15-Ltmp14
	.long	Lset116
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

__Z41__static_initialization_and_destruction_0ii.eh:
Lset117 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset117
Leh_frame_begin5:
Lset118 = Leh_frame_begin5-Leh_frame_common
	.long	Lset118
Ltmp104:
	.quad	Leh_func_begin5-Ltmp104
Lset119 = Leh_func_end5-Leh_func_begin5
	.quad	Lset119
	.byte	8
	.quad	0
	.byte	4
Lset120 = Ltmp17-Leh_func_begin5
	.long	Lset120
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset121 = Ltmp18-Ltmp17
	.long	Lset121
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

___tcf_0.eh:
Lset122 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset122
Leh_frame_begin6:
Lset123 = Leh_frame_begin6-Leh_frame_common
	.long	Lset123
Ltmp105:
	.quad	Leh_func_begin6-Ltmp105
Lset124 = Leh_func_end6-Leh_func_begin6
	.quad	Lset124
	.byte	8
	.quad	0
	.byte	4
Lset125 = Ltmp20-Leh_func_begin6
	.long	Lset125
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset126 = Ltmp21-Ltmp20
	.long	Lset126
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

	.globl	__ZN4BossD1Ev.eh
__ZN4BossD1Ev.eh:
Lset127 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset127
Leh_frame_begin7:
Lset128 = Leh_frame_begin7-Leh_frame_common
	.long	Lset128
Ltmp106:
	.quad	Leh_func_begin7-Ltmp106
Lset129 = Leh_func_end7-Leh_func_begin7
	.quad	Lset129
	.byte	8
Ltmp107:
	.quad	Lexception7-Ltmp107
	.byte	4
Lset130 = Ltmp29-Leh_func_begin7
	.long	Lset130
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset131 = Ltmp30-Ltmp29
	.long	Lset131
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

	.globl	__ZN4BossD2Ev.eh
__ZN4BossD2Ev.eh:
Lset132 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset132
Leh_frame_begin8:
Lset133 = Leh_frame_begin8-Leh_frame_common
	.long	Lset133
Ltmp108:
	.quad	Leh_func_begin8-Ltmp108
Lset134 = Leh_func_end8-Leh_func_begin8
	.quad	Lset134
	.byte	8
Ltmp109:
	.quad	Lexception8-Ltmp109
	.byte	4
Lset135 = Ltmp38-Leh_func_begin8
	.long	Lset135
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset136 = Ltmp39-Ltmp38
	.long	Lset136
	.byte	13
	.byte	6
	.align	3
Leh_frame_end8:

	.globl	__ZN8EmployeeC1ESsf.eh
__ZN8EmployeeC1ESsf.eh:
Lset137 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset137
Leh_frame_begin9:
Lset138 = Leh_frame_begin9-Leh_frame_common
	.long	Lset138
Ltmp110:
	.quad	Leh_func_begin9-Ltmp110
Lset139 = Leh_func_end9-Leh_func_begin9
	.quad	Lset139
	.byte	8
Ltmp111:
	.quad	Lexception9-Ltmp111
	.byte	4
Lset140 = Ltmp47-Leh_func_begin9
	.long	Lset140
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset141 = Ltmp48-Ltmp47
	.long	Lset141
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	__ZN4BossC1ESsfP8Employee.eh
__ZN4BossC1ESsfP8Employee.eh:
Lset142 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset142
Leh_frame_begin10:
Lset143 = Leh_frame_begin10-Leh_frame_common
	.long	Lset143
Ltmp112:
	.quad	Leh_func_begin10-Ltmp112
Lset144 = Leh_func_end10-Leh_func_begin10
	.quad	Lset144
	.byte	8
Ltmp113:
	.quad	Lexception10-Ltmp113
	.byte	4
Lset145 = Ltmp56-Leh_func_begin10
	.long	Lset145
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset146 = Ltmp57-Ltmp56
	.long	Lset146
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

	.globl	_main.eh
_main.eh:
Lset147 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset147
Leh_frame_begin11:
Lset148 = Leh_frame_begin11-Leh_frame_common
	.long	Lset148
Ltmp114:
	.quad	Leh_func_begin11-Ltmp114
Lset149 = Leh_func_end11-Leh_func_begin11
	.quad	Lset149
	.byte	8
Ltmp115:
	.quad	Lexception11-Ltmp115
	.byte	4
Lset150 = Ltmp87-Leh_func_begin11
	.long	Lset150
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset151 = Ltmp88-Ltmp87
	.long	Lset151
	.byte	13
	.byte	6
	.align	3
Leh_frame_end11:

	.globl	__ZN4BossC2ESsfP8Employee.eh
__ZN4BossC2ESsfP8Employee.eh:
Lset152 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset152
Leh_frame_begin12:
Lset153 = Leh_frame_begin12-Leh_frame_common
	.long	Lset153
Ltmp116:
	.quad	Leh_func_begin12-Ltmp116
Lset154 = Leh_func_end12-Leh_func_begin12
	.quad	Lset154
	.byte	8
Ltmp117:
	.quad	Lexception12-Ltmp117
	.byte	4
Lset155 = Ltmp96-Leh_func_begin12
	.long	Lset155
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset156 = Ltmp97-Ltmp96
	.long	Lset156
	.byte	13
	.byte	6
	.align	3
Leh_frame_end12:


.subsections_via_symbols
