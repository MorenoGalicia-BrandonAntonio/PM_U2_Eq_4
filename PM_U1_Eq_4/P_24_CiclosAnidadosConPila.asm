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

	main24 PROC
	
		;L�gica del Programa
		
		call readint
		ciclo1:
			push eax
			mov eax, 1
			ciclo2:
				call writedec
				call crlf
				inc eax
				cmp eax, 10
				jle ciclo2
			call crlf
			pop eax
			dec eax ; decrementa eax
			cmp eax, 0
			jg ciclo1

		exit	
	
	main24 ENDP
	
	END main24
