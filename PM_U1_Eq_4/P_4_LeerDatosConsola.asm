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

	main4 PROC
	
		;Lógica del Programa
		call readint
		;lee un valor ingresado por consola
		;lo almacena en eax

		call writeint ;echo para comprobar el contenido de escritura
		
		exit	
	
	main4 ENDP
	
	END main4
