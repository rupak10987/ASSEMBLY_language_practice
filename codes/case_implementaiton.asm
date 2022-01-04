;title pgm:if ax>0 put 1 in bx if ax=0 put 0 in bx and if ax<0 put -1 in bx
.modle small
.stack 100h
.data
.code
main proc
    mov ax,-1
    ;main code starts here
    cmp ax,0
    jl case_less_than_zero
    je case_zero
    jg case_greater_than_zero
    case_less_than_zero:
    mov bx,-1
    jmp exit
    case_zero:
    mov bx,0
    jmp exit
    case_greater_than_zero:
    mov bx,1
    jmp exit
    exit:
    mov ah,9
    mov dl,4Ch
    int 21h
    main endp
end main