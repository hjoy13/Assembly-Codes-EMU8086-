
.model small
.stack 100h
.data
    a db ?
    b db ?
    diff db ?
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov a,al
    mov ah,1
    int 21h
    mov b,al
    
    mov dx,' '
    mov ah,2
    int 21h
    
    mov ax,0
    mov al,a
    sub al,b
    
    mov dx,ax 
    add dx,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main