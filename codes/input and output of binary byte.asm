.model small
.stack 100h
.data
zero db '0$'
one db '1$'
.code
main proc
    mov ax,@data
    mov ds ,ax  
    mov cx,16
    xor bx,bx;clearing bx
    mov ah,1 
    input:
     int 21h
     cmp al,0Dh
     je end_of_input; to be implemented later
      sub al,30h
     shl bx,1
     ;and al,0Fh
     or bl,al  
     jmp input
     
     end_of_input:
     rol bx,1
     jnc print_0
     lea dx,one
     mov ah,9
     int 21h
     dec cx
     jz out_of_pg 
     jmp end_of_input
     print_0:
     lea dx,zero
     mov ah,9
     int 21h 
     dec cx 
     jz out_of_pg 
     jmp end_of_input
     out_of_pg:
     mov ah,9
     mov dl,4Ch
     int 21h
     
     main endp
end main
     