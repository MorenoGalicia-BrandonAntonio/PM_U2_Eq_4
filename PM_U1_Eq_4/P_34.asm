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

.code

	main34 PROC
	
		;L�gica del Programa
		
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
