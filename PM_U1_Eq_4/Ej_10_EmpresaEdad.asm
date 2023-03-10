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
msj1_E10 db "Fecha de Nacimiento: ",0
msj2_E10 db "Su Edad es de: ",0

.code

	mainE10 PROC
	
		;Lógica del Programa
	
		mov edx, offset msj1_E10
		call writestring
		call readint
		call crlf
		mov ebx, eax

		mov eax, 2023
		sub eax, ebx

		mov edx, offset msj2_E10
		call writestring
		call writedec


		exit	
	
	mainE10 ENDP
	
	END mainE10
