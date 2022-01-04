.model small
.stack 100h
.data
.code
main proc
    mov ah,2
    mov dl,'*'
    mov cx,10
    jcxz skip
    top:
     int 21h
     loop top
     skip:
      mov ah,9
      mov dl,4Ch
      int 21h
      main endp
end main