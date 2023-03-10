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

	main38 PROC
	
		;Lógica del Programa
		
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
