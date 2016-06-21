.386
.model flat, stdcall
.stack 4096
INCLUDE Irvine32.inc

.data

num1 DWORD ?
string BYTE "Enter 1st number: ",0
string2 BYTE "Enter 2nd number: ",0
string3 BYTE "your SUM is: ",0

.code
main PROC

	mov ecx,3
Summing:
	call clrscr
	mov dh,12
	mov dl,39
	call Gotoxy
	
	mov edx, offset string
	call writeString
	call ReadDec
	mov num1,eax
	
	call clrscr
	mov dh,13
	mov dl,39
	call Gotoxy
	mov edx, Offset string2
	call WriteString
	call ReadDec
	add eax,num1

	call clrscr
	mov dh,14
	mov dl,39
	call Gotoxy
	mov edx, OffSet string3
	call writeString 
	call writedec
	call WaitMsg
	Loop Summing

	call WaitMsg
	
	


main ENDP

END main