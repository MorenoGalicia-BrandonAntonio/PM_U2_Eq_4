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

	main33 PROC
	
		;Lógica del Programa
		
		mov eax, 10
		call randomrange ; da un numero entre 0 y eax
		call writedec
		
		exit	
	
	main33 ENDP
	
	END main33
