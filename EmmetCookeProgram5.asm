TITLE Program Template     (EmmetCookeProgram5.asm)

; Author:
; Course / Project ID                 Date:
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

.data

	; Strings for the introduction
	programTitle	BYTE	"Program   : ",0
	programmerName	BYTE	"Programmer: Emmet Cooke",0

.code
main PROC

; Introduction
	call	introduceProgrammer
	call	Crlf

	exit	; exit to operating system
main ENDP

;-------------------------------------
; Procedure to introduce the programmer
; recieves: none
; returns: none
; preconditions: none
; registers changed: edx
;-------------------------------------
introduceProgrammer PROC USES edx
	mov		edx, OFFSET programTitle
	call	WriteString
	call	Crlf
	mov		edx, OFFSET programmerName
	call	WriteString
	call	Crlf
	;mov		edx, OFFSET extraCredit1
	;call	WriteString
	;call	Crlf
	ret
introduceProgrammer ENDP

END main
