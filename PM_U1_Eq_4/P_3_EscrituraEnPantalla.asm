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

	main3 PROC
	
		;Lógica del Programa
		
		mov eax, 4

		call WriteInt ; imrpimir en consola el valor
		; con el que cuenta el registro eax
		
		exit	
	
	main3 ENDP
	
	END main3
