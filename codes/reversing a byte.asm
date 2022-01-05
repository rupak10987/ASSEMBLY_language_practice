.model small
.stack 100h
.data
.code
main proc
    XOR ax,ax
    mov bx,0ABh
    mov cx,8
    reverse:
    shl bx,1
    rcr ax,1 
    loop reverse
    main endp
end main
    