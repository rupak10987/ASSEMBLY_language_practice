.model small
.stack 100h
.data
.code
main proc
    mov cx,244
    mov dl,0
    top: 
    mov ah,2
    int 21h 
    inc dl
    dec cx 
    
    jnz top 
    ;lala
    mov ah,2
    mov dl,'v'
    int 21h
    mov ah,9
    mov dl,4Ch
    int 21h
    main endp
end main