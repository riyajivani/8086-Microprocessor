data SEGMENT
	N DW 000Ah
	sum DW ?
data ENDS

code SEGMENT
	ASSUME cs:code,ds:data
start: 
	MOV AX,data
	MOV DS,AX
	
	MOV CX,N
	MOV AX,0
	MOV BX,1
next:   ADD AX,BX
	INC BX
	DEC CX
	JNZ next
	MOV sum,AX

	MOV AX,4C00h
	INT 21h
code EnDS
END start
	