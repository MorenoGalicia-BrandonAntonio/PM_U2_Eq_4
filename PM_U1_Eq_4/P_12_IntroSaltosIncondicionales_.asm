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

msj1_12 db "Mensaje 1", 0
msj2_12 db "Mensaje 2", 0
msj3_12 db "Mensaje 3", 0

.code

	main12 PROC
	
		;Lógica del Programa
	
		mov edx, offset msj1_12
		call writestring
		call crlf

		jmp continuar ;salto incondicional

		mov edx, offset msj2_12
		call writestring
		call crlf

		continuar: ;etiqueta

		mov edx, offset msj3_12
		call writestring
		call crlf

		exit	
	
	main12 ENDP
	
	END main12
