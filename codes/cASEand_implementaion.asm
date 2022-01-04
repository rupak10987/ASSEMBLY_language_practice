;display if a letter is upper case or not
.model small
.stack 100h
.data
msg1 db "press a letter $"
msg2 db "the letter is in upper_case $"
msg3 db "the letter is not in upper_case $"
.code
main proc
    mov ax,@data
    mov ds,ax
    ;starts from here 
    mov ah,9
    lea dx,msg1
    int 21h
    mov ah,1 ;al gets the charecter
    int 21h
    cmp al,'A'
    jnge case_not_included
    cmp al,'Z'
    jnle case_not_included
    jmp case_included
    case_not_included:
    mov ah,2
    mov dl,0Dh ;carraige return
    int 21h
    mov dl,0Ah ;new line
    int 21h
    mov ah,9
    lea dx,msg3
    int 21h
    jmp out_of_pg;
    case_included:
    mov ah,2
    mov dl,0Dh ;carraige return
    int 21h
    mov dl,0Ah ;new line
    int 21h
    mov ah,9
    lea dx,msg2
    int 21h
    out_of_pg:
    mov ah,9
    mov dl,4Ch
    int 21h
    main endp
end main