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
msgX_EJ5 db "Ingresa el valor limite: ",0
msg1_EJ5 db "N= ",0


.code

	main27 PROC
	
		;L�gica del Programa
	
		mov edx, offset msgX_EJ5
		call writestring
		call readint
		call crlf

		ciclo:

		mov edx, offset msg1_EJ5
		call writestring
		call readint
		call crlf

		;cmp eax, x
		
		exit	
	
	main27 ENDP
	
	END main27
