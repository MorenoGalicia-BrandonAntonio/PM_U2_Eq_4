TITLE NombrePrograma

;DESCRPICI?N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI?N

INCLUDE Irvine32.inc  

.data
; ?rea de Declaraci?n de Variables

.code

	main4 PROC
	
		;L?gica del Programa
		call readint
		;lee un valor ingresado por consola
		;lo almacena en eax

		call writeint ;echo para comprobar el contenido de escritura
		
		exit	
	
	main4 ENDP
	
	END main4
