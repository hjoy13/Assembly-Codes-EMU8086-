.model small
.stack 100h
.data
    a dw ?
    b dw ?
    diff db ?
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov a,ax
    sub a,48
    mov ah,1
    int 21h
    mov b,ax
    sub b,48
    
    mov dx,' '
    mov ah,2
    int 21h
    
    mov ax,0
    mov ax,a
    sub ax,b
    neg ax
    mov bx,ax
    mov dx,'-'
    mov ah,2
    int 21h
    mov dx,bx 
    add dx,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main