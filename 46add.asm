add_code SEGMENT
ASSUME CS:add_code

start:
MOV AX,1234H
MOV BX,4356H
ADD AX,BX
MOV AX,4C00H
INT 21H
add_code ENDS
END start