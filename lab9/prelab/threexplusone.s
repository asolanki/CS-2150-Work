; threexplusone.s
; Adarsh Solanki as5nr
; CS 2150 Lab 9 Pre-Lab
; 4/8/12
;
; file is a C-style function for computing the number of steps
; it takes for the parameter to reach 1 following the collatz
; conjecture 
;   odd: 3x+1
;   even: x/2

    ; OPTIMIZATION (use shift instead of idiv and cdq)

    global collatz

    section .text

;
; collatz
; @param argument
; @return number of steps to reduce to 1 using collatz sequence

collatz:
    ; prologue
    push ebp
    mov ebp, esp
    
    xor eax, eax        ; steps = 0
    mov ecx, [ebp+8]    ; ecx = argument

    push eax            ; push steps
    push ecx            ; push argument
    call collatz_recurse
    add esp, 8

    ;epilogue
    mov esp, ebp
    pop ebp
    ret

collatz_recurse:
; prologue
    push ebp
    mov ebp, esp

    mov ecx, [ebp+8]     ; ecx = arg
    mov eax, [ebp+12]    ; eax = steps

    cmp ecx, 1          ; if arg > 1 
    jg continue         ;   goto finish

    

finish:
;epilogue
    mov esp, ebp
    pop ebp
    ret

continue:
    mov esi,1 
    and esi, ecx        ; if arg is odd
    cmp esi, 1
    je odd
    shr ecx, 1          ; arg = arg/2
    add eax, 1
    jmp recurse

odd:
    imul ecx, 3         ; arg = 3*arg+1
    add ecx, 1
    add eax, 1 

recurse:
    push eax
    push ecx
    call collatz_recurse
    add esp, 8
    jmp finish

