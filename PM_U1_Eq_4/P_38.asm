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

	main38 PROC
	
		;L�gica del Programa
		
		;loop siempre trabaja con ecx
		;es un ciclo que va de ecx asta 0

		mov ecx, 10

		ciclo:
		mov eax, 40
		call writedec
		call crlf
		loop ciclo
		
		exit	
	
	main38 ENDP
	
	END main38
