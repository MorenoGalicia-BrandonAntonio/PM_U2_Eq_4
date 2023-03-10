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
msj1_11 db "Ingresa la base: ", 0
msj2_11 db "Ingresa la altura: ", 0
msj3_11 db "El area de tu rectangulo es: ", 0


.code

	main11 PROC
	
		;Lógica del Programa
		
		;la multiplicacion en ensamblador unicamente se puede realizar.
		
		;entre el registro eax y un operando proporcionado en la instrucción.

		;el operando no puede ser un valor inmediato.

		;el resultado de la mult se almacena en eax.
		
		mov edx, offset msj1_11
		call writestring
		call readint
		call crlf

		mov ecx, eax ;mueve el valor eax a ecx para despues multiplicar 

		mov edx, offset msj2_11
		call writestring
		call readint
		call crlf
		
		mul ecx ;el nuevo valor se multiplica por el anterior almacenado en eax
		mov edx, offset msj3_11
		call writestring
		call writeint


		exit	
	
	main11 ENDP
	
	END main11
