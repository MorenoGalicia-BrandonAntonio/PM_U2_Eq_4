TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
msj1_E13 db "Metros Cubicos de Agua: ",0
msj2_E13 db "El Total a Cobar es de: ",0

.code

	mainE13 PROC
	
		;L�gica del Programa
	
		mov edx, offset msj1_E13
		call writestring
		call readint
		call crlf

		mov ebx, 120 
		mul ebx

		mov edx, offset msj2_E13
		call writestring
		call writedec
		
		exit	
	
	mainE13 ENDP
	
	END mainE13
