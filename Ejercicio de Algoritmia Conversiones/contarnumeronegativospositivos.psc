Algoritmo contarnumeronegativospositivos
	Escribir "Ingresa la cantidad de numero que deseas contar"
	leer n
	Para n<-1 Hasta n Con Paso 1 Hacer


		Escribir "Ingresa el n�mero "
        Leer num
        Si num > 0 Entonces
            positivos <- positivos + 1
        SiNo
            Si num < 0 Entonces
                negativos <- negativos + 1
            FinSi
        FinSi
	Fin Para
	Escribir "La Cantidad de n�meros positivos es : ", positivos
    Escribir "La Cantidad de n�meros negativos es : ", negativos
FinAlgoritmo
