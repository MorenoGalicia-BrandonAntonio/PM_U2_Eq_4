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

	main37 PROC
	
		;L�gica del Programa
		
		mov eax, 10
		push eax
		mov eax, 2000
		call delay
		pop eax
		call writedec
		
		exit	
	
	main37 ENDP
	
	END main37
