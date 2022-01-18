.model small
.stack 100h
.data
.code
main proc
    mov ax,1
    mov bx,8
    mov cx,bx
    cmp cx,ax
    jle next
    mov cx,bx
    next:
    mov ah,2
    mov dl,cl 
   add dl,30h
     int 21h
     main endp
end main