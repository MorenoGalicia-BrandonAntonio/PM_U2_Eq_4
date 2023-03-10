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
msj1_E11 db "Ingrese los Minutos Estacioado: ",0
msj2_E11 db "El Total a Pagar es de: ",0

.code

	mainE11 PROC
	
		;Lógica del Programa
	
		mov edx, offset msj1_E11
		call writestring
		call readint
		call crlf
		
		mov ecx, 60
		mov edx, 0
		div ecx

		cmp edx, 0
		jnz fraccion
		jmp salir

		fraccion:
		add eax, 1

		salir:

		mov ebx, 18
		mul ebx

		mov edx, offset msj2_E11
		call writestring
		call writedec


		exit	
	
	mainE11 ENDP
	
	END mainE11
