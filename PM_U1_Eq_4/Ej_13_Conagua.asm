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
msj1_E13 db "Metros Cubicos de Agua: ",0
msj2_E13 db "El Total a Cobar es de: ",0

.code

	mainE13 PROC
	
		;Lógica del Programa
	
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
