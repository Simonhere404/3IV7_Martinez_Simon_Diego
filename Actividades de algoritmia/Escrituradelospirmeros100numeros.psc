Algoritmo Escrituradelospirmeros100numeros
	Definir nume Como Entero
	Repetir
		Limpiar Pantalla
		Escribir "1 ecitura de los numeros "
		Escribir "0          sali                    "
		Escribir "elije una de las opciones"
		Leer np
		Segun np Hacer
			"1":
					nume=1
					Escribir "ingresa la cantidad de numeros que desas"
					Leer n
					Mientras nume <= n Hacer
						Escribir "el numero es ", nume
						nume <- nume+1
						
					Fin Mientras
					
					
					
					Escribir "quieres reinicial el programa ingresa 1 o quieres regresar 2 "
					Leer opcio
					
					Mientras opcio = 1 Hacer
						nume <- 1
						Mientras nume <= n Hacer
							Escribir "el numero es ", nume
							nume =nume+1
						Fin Mientras
						Escribir "quieres reinicial el programa ingresa 1 o quieres regresar 2 "
						Leer opcio
					Fin Mientras
			"0":
				Escribir n " no es una de las opciones"
				Escribir "pulsa una tecla para continuar"
				Esperar Tecla

			De Otro Modo:
				
		Fin Segun

	
Hasta Que (np=="0")
	

FinAlgoritmo
