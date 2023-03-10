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
msj1_E15 db "Numero a Factorial: ",0
msj2_E15 db "El Resultado es: ",0 

.code

	mainE15 PROC
	
		;Lógica del Programa
		
		mov edx, offset msj1_E15
		call writestring
		call readint ;guarda el numero ingresado en eax
		call crlf

		mov ebx, eax ; mueve lo que hay en eax a ebx
		mov ecx, 1

		mov edx, ebx
		mov eax, 1
		mul edx

		ciclo:
			inc ecx
			cmp ecx, ebx
			je salir
			mul ecx
			jl ciclo
			
		salir:
		mov edx, offset msj2_E15
		call writestring
		call writedec
		call crlf

		
		exit	
	
	mainE15 ENDP
	
	END mainE15
