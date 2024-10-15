Algoritmo Cuadraica
	Definir 	A,B,C,Ecuacion1,Ecuacion2,sus Como Real
	Escribir " ingrese el dato a ";
	leer A;
	Escribir " ingrese el dato b";
	Leer B;
	Escribir " ingrese el dato c";
	leer B;
	sus=B^2-4*(A*C)
	Si sus >0 Entonces
		escuacion1=((-b + Raiz(sus))/(2*A))
		escuacion2=((-b - Raiz(sus))/(2*A))
		Escribir "Los resulatados son :", escuacion1," y ",escuacion2
	SiNo
		Si sus=0 Entonces
			escuacion1=-b/(2*B)
			Escribir "La resuesta de la ecuacion es ", escuacion1
		SiNo
			Escribir "No hay reices"
		Fin Si
FinSi
FinAlgoritmo
