.model small
.stack 100h
.data

string db 10 dup(?)
string1 db 'INPUT A STRING(length 10): $'
string2 db 10,13,'INPUT STRING IN REVERSE: $'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,string1
    int 21h
    
    mov si,offset string
    mov cx,10
    
    l1: 
    mov ah,1
    int 21h 
    mov [si],al
    mov ax,[si]
    push ax
    inc si
    loop l1
    
    mov ah,9
    lea dx,string2
    int 21h
    
    mov cx,10
    
    l2:
    pop dx
    mov ah,2
    int 21h
    loop l2
    
  main endp
end main  

 

