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

	main24 PROC
	
		;Lógica del Programa
		
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
