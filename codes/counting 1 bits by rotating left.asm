.model small
.stack 100h
.data
.code
main proc
    XOR al,al 
    mov bx,1Ah
    mov cx,16
    top:
    rol bx,1
    jnc next
    inc al
    dec cx
    next:
    dec cx
    jnz top:
    main endp
end main