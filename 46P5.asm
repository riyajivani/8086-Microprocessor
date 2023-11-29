// multiply array with some number(here multiply with 3)

data SEGMENT
	n DB 03h
	val DB 12H,0A5h,0FFh,34h,98h
	s_val DW 5 dup(0)
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data

start: 
	MOV AX,data
	MOV DS,AX
	MOV CX,5
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

	MOV AX,4C00h
	INT 21h

code ENDS
END start
