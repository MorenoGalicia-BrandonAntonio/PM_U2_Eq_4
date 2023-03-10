TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
msgX_EJ5 db "Ingresa el valor limite: ",0
msg1_EJ5 db "N= ",0


.code

	main27 PROC
	
		;Lógica del Programa
	
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
