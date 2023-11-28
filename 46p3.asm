data SEGMENT
	n DB 0AH
	val DB 01H,02H,03H,04H,05H,06H,07H,08H,09H,0AH
	s_val DW 10 dup(0)
data ENDS

code SEGMENT
ASSUME cs:code,ds:data 
start: 
MOV AX,data
MOV DS,AX
MOV CX,10
MOV BL,n
LEA SI,val
LEA DI,s_val
next:
MOV AL,BYTE PTR[SI]
MUL BL
MOV WORD PTR[DI],AX
INC SI
ADD DI,2
LOOP next
MOV AX,4C00H
INT 21H
code ENDS
END start