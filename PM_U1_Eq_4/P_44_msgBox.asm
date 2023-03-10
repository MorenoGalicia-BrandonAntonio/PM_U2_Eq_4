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
titulo db " Este es el Titulo ",0
contenido db " Contenido del Mensaje ",0

.code
	main44 PROC
		;Lógica del Programa
		
		mov edx, offset contenido
		mov ebx, offset titulo
		call msgbox
		
		exit	
	main44 ENDP
	END main44
