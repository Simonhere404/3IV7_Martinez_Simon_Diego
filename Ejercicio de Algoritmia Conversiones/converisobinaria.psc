Algoritmo converisobinaria
	Definir n,residuo Como Entero
	Definir binario Como Texto
	//el binario lo tengo que concaternar
	binario=""
	Escribir "ingresa el numero que desasa convertir a binario";
	Leer n
	
	Si n >= 0 Entonces
		Mientras n > 0 Hacer
			residuo= n%2
			// se tiene que ir armando el bianrio"
			nuevobinario<-ConvertirATexto(residuo)
			
			binario = nuevobinario+ binario
			n=Trunc(n/2)
			

		FinMientras
		
		
		
		
		
		Si binario=""Entonces
			binario="0"
		FinSi
		Escribir " el numero binario es " binario
	FinSi

FinAlgoritmo
