TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
msj1_E7 db "Da el valor de A: ",0
msj2_E7 db "Da el valor de B: ",0
msj3_E7 db "Da el valor de C: ",0
msj4_E7 db "El Area del Terreno es: ",0
var1_E7 dword 2d


.code

	mainE7 PROC
	
		;Lógica del Programa
	
		mov edx, offset msj1_E7
		call writestring ;imprime mensaje
		call readint ; lee el valor de A y se guarda en eax
		call crlf
		push eax ;guarda eax en la pila

		mov edx, offset msj2_E7
		call writestring
		call readint ; le el valor de B y lo guarda ebx
		call crlf
		mov ebx, eax

		mov edx, offset msj3_E7
		call writestring
		call readint ; le el valor de C y lo guarda en ecx
		call crlf
		mov ecx, eax

		mov edx, ebx ; mueve a edx el valor de B que estaba en ebx

		pop eax
		sub eax, ecx
		mul ebx
		mov edx, 0
		div var1_E7
		push eax
		mov eax, ebx
		mul ecx
		mov edx, eax
		pop eax
		add eax, edx
		;call writedec

		mov edx, offset msj4_E7
		call writestring ;imprime mensaje
		call writedec

		exit	
	
	mainE7 ENDP
	
	END mainE7
