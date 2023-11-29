//move string one from one location to another location and print that second location.

data SEGMENT
	str1 DB "Hello World$"
	str2 DB 12 dup(0),'$'
data ENDS

code SEGMENT
	ASSUME ds:data,cs:code,es:data
start: MOV AX,data
	MOV DS,AX
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
