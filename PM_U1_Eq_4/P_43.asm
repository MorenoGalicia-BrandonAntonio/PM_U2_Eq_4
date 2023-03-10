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
nombre1_P12 byte 50 dup('G')
nombre2_P12 byte 50 dup('A')

.code
	main43 PROC
		;Lógica del Programa
		
		mov edx, offset nombre1_P12 ; localidad de memoria donde sera guardada la cadena
		mov ecx, sizeof nombre1_P12	; maxima cantidad de caracteres que contendra la cadena
		call readstring
		call crlf

		mov edx, offset nombre2_P12 ; 
		mov ecx, sizeof nombre2_P12
		call readstring 
		call crlf

		mov edx, offset nombre1_P12
		call writestring
		call crlf
		call crlf

		mov edx, offset nombre2_P12
		call writestring
		call crlf
		
		exit	
	main43 ENDP
	END main43
