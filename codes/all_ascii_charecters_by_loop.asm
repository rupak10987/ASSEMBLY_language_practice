.model small
.stack 100h
.data
msg1 db 'all the ascii charecters $'
.code
main proc
    mov ax, @data
    mov ds, ax
    lea dx,msg1
    mov ah,9 
    int 21h
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h
    mov dl,0
    mov cx,255
    program_loop:
    int 21h
    inc dl
    dec cx
    jnz program_loop 
    mov ah,4Ch
    int 21h
    main endp
end main
    