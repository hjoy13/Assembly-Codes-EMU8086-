;division

.model small
.stack 100h
.data

a db ?
b db ?
str1 db "enter first number:$"
str2 db 10,13,"enter second number:$"
str3 db 10,13,"Quotient:$"
str4 db 10,13,"Remainder:$" 


.code  
main proc

mov ax,@data  
mov ds,ax
lea dx,str1
mov ah,9
int 21h  
mov ah,1
int 21h   
mov a,al
sub al,30h  
mov a,al 


lea dx,str2
mov ah,9
int 21h  
mov ah,1
int 21h
mov b,al
sub al,30h
mov b,al

  
mov ax,0
mov al,a
div b 

  
 
 
MOV BX,AX
  
lea dx,str3
mov ah,9
int 21h 

MOV DL,BL 
 
ADD DL,48
MOV AH,2
INT 21H
 
 
 
lea dx,str4
mov ah,9
int 21h 
 
      
 
 MOV DL,BH
 ADD DL,48
 MOV AH,2
 INT 21H    
   

               



MOV AX,4CH
INT 21H

END MAIN       







                       
  
  
  
  
  
            