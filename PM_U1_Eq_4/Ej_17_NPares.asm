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
msj1_E17 db "Ingrese un numero: "
msj2_E17 db "Los Numeros Pares son: "
.code

	mainE17 PROC
	
		;Lógica del Programa
		
		mov edx, offset msj1_E17
		call writestring
		call readint ;guarda el numero ingresado en eax
		call crlf
		push eax
		mov ecx, 1

		repetir:
			inc ecx ; nuestro contador
			mov eax, ecx
			mov ebx, 2 ;numero a dividir
			mov edx, 0 ; risiduo
			div ebx ; divide eax

			cmp edx, 0 ; revisa si el residuo es 0
			jnz repetir

		comparar:
			call writedec
			call crlf
			pop edx
			cmp ecx, edx
			push edx
			ja repetir
			jg salir

		salir:
		
		exit	
	
	mainE17 ENDP
	
	END mainE17
