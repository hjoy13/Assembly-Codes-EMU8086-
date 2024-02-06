.model small
.stack 100h
.data

a db ?
b db ?
sum db ?

.code  
main proc

mov ax,@data  ;segment address move to ax
mov ds,ax  

;user input

mov ah,1
int 21h   

mov a,al
sub al,30h   ;sub al,48
mov a,al


mov ah,1
int 21h

mov b,al
sub al,30h
mov b,al  






MOV ax,0
       MOV Al , A 
       ADD Al, B 
       AAA
       MOV BX,AX  
       MOV DL,BH
       ADD DL,48
       MOV AH,2
       INT 21H
       MOV DL,BL
       ADD DL,48
       MOV AH,2
       INT 21H  

               



MOV AX,4CH
INT 21H

END MAIN                              
  
  
  