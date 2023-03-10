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
msj1_E9 db "Horas Trabajadas: ",0
msj2_E9 db "Salario por Hora: ",0
msj3_E9 db "El Salario a Pagar por Horas Invertidas es de: ",0

.code

	mainE9 PROC
	
		;Lógica del Programa
	
		mov edx, offset msj1_E9
		call writestring
		call readint
		call crlf
		mov ebx, eax

		mov edx, offset msj2_E9
		call writestring
		call readint
		call crlf

		mul ebx

		mov edx, offset msj3_E9
		call writestring
		call writedec
		call crlf

		exit	
	
	mainE9 ENDP
	
	END mainE9