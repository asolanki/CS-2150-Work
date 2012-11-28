;                   mathlib.s
; Adarsh Solanki as5nr
; CS 2150 Lab 8 Pre-Lab
; 3/25/12
; 
; file contains two subroutines, a product and a power
;   product function must be implemented iteratively with addition
;   power function must be implemented recursively with multiplication

    global product
    global power

    section .text

;
; product
; @param1 = first operand (repeatedly added to mimic multiplication)
; @param2 = second operand (serves as counter for iteration)
; @return = product of two params

product:
    ; Standard prologue
    push  ebp            ; Save old base ptr
    mov   ebp, esp       ; old stack ptr = new base ptr 
    push  esi            ; if used

    xor   eax, eax       ; initialize return value at 0
    mov   esi, [ebp+8]   ; esi = param1
    mov   ecx, [ebp+12]  ; ecx = param2 (counter)

product_loop:
    cmp   ecx, 0         ; if ecx <= 0
    jle   endloop        ;      goto endloop

    add   eax, esi       ; eax += esi
    dec   ecx            ; ecx--
    jmp   product_loop   ; 

endloop:
    ; Standard epilogue
    pop esi              ;
    pop ebp              ;
    ret                  ;


; 
; power
; @base = first operand (repeatedly multiplied to mimic exponent)
; @power = second operand (decremented each recursive call)
; @return = base to the power of power

power:
    ; Standard prologue
    push  ebp            ; Save old base ptr
    mov   ebp, esp       ; old stack ptr = new base ptr 
    push  esi            ; if used

    xor   eax, eax       ; initialize return value at 0
    mov   esi, [ebp+8]   ; esi = base
    mov   ecx, [ebp+12]  ; ecx = power (counter)
    
    push  ecx            ; push params onto stack, 
    push  esi            ; 
    call  power_recurse 
    pop   esi
    pop   ecx

; Epilogue
    pop   esi
    mov   esp, ebp
    pop   ebp
    ret  ; 

power_recurse:
    ; Standard Prologue
    push  ebp
    mov   ebp, esp
    push  esi

    mov   esi, [ebp+8]   ; esi = base
    mov   ecx, [ebp+12]  ; ecx = power (counter)



    cmp   ecx, 0         ; if ( power < 0 )
    mov   eax, 1 ; 
    je    epilogue       ;      return 1
    dec  ecx             ; else
    push ecx             ; return base*power( base, power )
    push esi             ;          save base and power on stack, use as args
    call power_recurse   ;          eax = power ( base, power )
    pop  esi             ;          pop old power ( not needed)
    pop  ecx             ;          pop old base 
;   imul eax, esi        ;          eax = base * power( base * power ) 
    mov edx, eax
    push edx
    push eax
    push esi
    call product
    pop  esi
    mov  ecx, eax
    pop  eax
    pop  edx
    mov  eax, ecx

    ; epi
    pop  esi
    mov  esp, ebp
    pop  ebp
    ret

epilogue:
    ; Standard epilogue
    pop  esi
    mov  esp, ebp
    pop  ebp
    ret                  ; return base * power ( base, power )



