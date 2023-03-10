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

.code

	main36 PROC
	
		;Lógica del Programa
		
		mov eax, 10
		call waitmsg
		call writedec

		
		exit	
	
	main36 ENDP
	
	END main36
