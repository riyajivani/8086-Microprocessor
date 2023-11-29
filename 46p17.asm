// copy string from one segment to another segment in same file

data SEGMENT
	str1 DB "Hello World$"
data ENDS

extra SEGMENT
	str2 DB 12 dup(0),'$'
extra ENDS

code SEGMENT
	ASSUME ds:data,cs:code,es:extra
start: MOV AX,data
	MOV DS,AX
	MOV AX,extra
	MOV ES,AX
	
	MOV SI,OFFSET str1
	MOV DI,OFFSET str2
	CLD
	MOV CX,12

rep	MOVSB
	MOV AH,9
	LEA DX,str2
	INT 21h
	
	INT 3
code ENDS
END start
