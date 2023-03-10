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

	main34 PROC
	
		;Lógica del Programa
		
		mov ecx, 10

		ciclo:
			mov eax, 10
			call randomrange
			call writedec
			call crlf
		loop ciclo
		
		exit	
	
	main34 ENDP
	
	END main34
