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
INCLUDE macros.inc

.data
; Área de Declaración de Variables
msg1_Pro1 db " x ",0							;Mensajes a ocupar
msg2_Pro1 db " = ",0
msg3_Pro1 db "Que Tabla Desea Realizar", 0
msg4_Pro1 db "Fallo le Quedan ",0
msg5_pro1 db " Intentos", 0
msg6_Pro1 db "Te Quedaste sin Intentos", 0
msg7_Pro1 db "Intentalo de Nuevo", 0
msg8_Pro1 db "Felicidades"
msg9_Pro1 db "Solo Cometiste"					;Mensajes a ocupar
var1_Pro1 dword 0d								;Variable 1 a ocupar
var2_Pro1 dword 5d								;Variable 2 a ocupar
var3_Pro1 dword 0d								;Variable 3 a ocupar

.code
	mainPro1 PROC
		;Lógica del Programa
		
		mov edx, offset msg3_Pro1	;se llamara al mensaje 3 
		call writestring			;se imprimira el mensaje
		call crlf					;se ara salto de linea
		call readint				;se leera el valor ingresado por el usuario
		mov ebx, 1					;se le asignara el valor de 1 a ebx
		call crlf					;se ara salto de linea

		ciclo:							;empesaremos un ciclo con una etiqueta
		call writedec					;imprime tabla

		mov edx, offset msg1_Pro1		;se llamara al mensaje 1
		call writestring				;imprimira X en la pantalla
		xchg eax, ebx					;se cambiara de lugar los registros eax con ebx
		call writedec					;emprimira el el valor de eax = 1

		mov edx, offset msg2_Pro1		;se llamara al mensaje 2
		call writestring				;imprimira =
		mov ecx, eax					;respalda valor del contador

		call readint					;lee el valor ingresado por el usuario
		mov var1_Pro1, eax				;guardara la valor ingresado por el ususario a la variable1
		mov eax, ecx					;movera a eax el valor del contador

		mul ebx							;multiplicara ebx x eax = el contador x 5
		cmp eax, var1_Pro1				;comparara el resultado de la multiplicacion con la variable1
		je continuar					;en el caso de ser iguales se saltara a continuar
										;sino continuara
		mov edx, offset msg4_Pro1		;llamara el mensanje 4
		call writestring				;imprimira el mensaje
		dec var2_Pro1					;decrementara la variable 2 (contador de intentos)
		inc var3_Pro1					;incrementara la variable 3 (Intentos fallidos)
		mov edx, eax					;movera  eax a edx, para guardar el valor momentaniamente
		mov eax, var2_Pro1				;movera a eax el valor acutual de variable 2
		call writedec					;imprimira el valor actual de la variable 2
		mov eax, edx					;movera  edx a eax
		mov edx, offset msg5_Pro1		;se llamara al mensaje 5
		call writestring				;se imprimira el mensaje
		call crlf						;se ara salto de linea
		cmp var2_Pro1, 0				;compara la variable 2 con 0 
		je final						;si es igual a 0 entonces saltara a la etiqueta final
		jmp continuar					;si no, saltara a continuar

			final:						;etiqueta a saltar llamada Final
			call crlf					;salto de liea
			mov edx, offset msg6_Pro1	;llamara al mensaje 6
			call writestring			;imprime mensaje 6
			mov edx, offset msg7_Pro1	;llamara al menaje 7
			call writestring			;imprime mensaje 7
			call crlf					;salto de linea
			exit						;cerrara el programa

		continuar:						;etiqueta a saltar llamada continuar
		mov eax, ecx					;movera eax a ecx 
		inc eax							;incrementara a eax 1 = eax + 1
		xchg eax, ebx					;intercanbiara los registros eax con ebx

		cmp ebx, 10						;comprara ebx con 10 para determinar si el siclo continua o no
		jle ciclo						;saltara a la etiqueta ciclo si en la comparacion es menor a 10
		
		call crlf						;salto de liea
		mov edx, offset msg8_Pro1		;llamara al mensaje 8
		call writestring				;imprimira el mensaje 8
		mov edx, offset msg9_Pro1		;llamara al mensaje 9
		call writestring				;imprimira el mensaje 9
		mov eax, var3_Pro1				;movera a eax, el varor de la variable 3
		call writedec					;imprimira el valor de eax = eax sera igual al numero de intentos fallidos
		mov edx, offset msg5_Pro1		;llamara al mensaje 5
		call writestring				;imprimira el mensaje 5

		exit							;termina el programa
	mainPro1 ENDP
	END mainPro1
