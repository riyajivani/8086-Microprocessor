//find out hte smallest number from the given array

data SEGMENT
	block DW 0003h,0001h,0002h,0005h,0004h 
		DW ?
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data

start: MOV AX,data
	MOV DS,AX
	MOV CX,04
	MOV SI,OFFSET block
	MOV AX,WORD PTR[SI]
repeat:	ADD SI,2
	DEC CX
	JZ over
	CMP AX,WORD PTR[SI]
	JC skip
	MOV AX,WORD PTR[SI]
	JMP repeat
skip:	JMP repeat
over:	MOV WORD PTR[SI],AX

	MOV AX,4C00h
	INT 21
code ENDS
END start
