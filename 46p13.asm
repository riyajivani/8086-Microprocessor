//take one capital letter from user and print the small letter of it.

code SEGMENT
	ASSUME cs:code
start:
MOV AH,1
INT 21H
ADD AL,20H
MOV AH,2
MOV DL,AL
INT 21H
MOV AX,4C00H
INT 21H
code ENDS
END start
