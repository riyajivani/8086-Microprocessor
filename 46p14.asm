//take one character as input from user and simply print it.

code SEGMENT
	ASSUME cs:code
start:
MOV AH,1
INT 21H
MOV AH,2
MOV DL,AL
INT 21H
MOV AX,4C00h
INT 21
code ENDS
END start
