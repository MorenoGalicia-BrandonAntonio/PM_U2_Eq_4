TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables



.code

	main15 PROC
	
		;L�gica del Programa
		;imrpimir del 1 al 10 con saltos condicionales

		mov eax, 1

		repetir:

		call writedec
		call crlf
		add eax, 1

		cmp eax, 10

		jle repetir ; mientras sea menor o igual, repite

		
		
		exit	
	
	main15 ENDP
	
	END main15
