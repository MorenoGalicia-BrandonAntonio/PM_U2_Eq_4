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
var1_2 dword 10d
var2_2 dword 2d

.code

	main2 PROC
	
		;L�gica del Programa
	
		;add se rige por las mismas descripciones que mov
		;en cuanto a los operandos!

		mov eax, var1_2
		add eax, var2_2 ; resultado en -> eax
		
		call WriteInt
		exit	
	
	main2 ENDP
	
	END main2
