//convert a capital letter string into small letter string.

data SEGMENT
	str DB "RIYA$"
	ans DB 4 dup(0)
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data
start:
	MOV AX,data
	MOV DX,AX
	MOV SI,OFFSET str
	MOV DI,OFFSET ans
	MOV CX,4
next:	MOV DL,20h
	INC DI
 	MOV AL,BYTE PTR [SI]
	INC SI
	ADD AL,DL
	MOV AH,2
	MOV BYTE PTR [DI],AL
	INT 21H
	LOOP next	
	MOV AX,4C00h
	INT 21h
code ENDS
END start
