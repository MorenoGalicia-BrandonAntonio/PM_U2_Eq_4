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
msj1_E14 db "Consumo Total de Kilowatts: ",0
msj2_E14 db "El Total a Cobar es de: ",0

.code

	mainE14 PROC
	
		;Lógica del Programa
	
		mov edx, offset msj1_E14
		call writestring
		call readint
		call crlf

		mov ebx, 60
		mul ebx

		mov edx, offset msj2_E14
		call writestring
		call writedec

		exit
		
	mainE14 ENDP
	
	END mainE14
