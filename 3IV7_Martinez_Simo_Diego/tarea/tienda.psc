Algoritmo tienda
	Definir producto como Texto
	Definir codigoproducto , cantidad Como Entero
	Definir presio Como Real
	//tengo que crear un menu de seleccion
	Mientras opcion <> 5 Hacer
		Escribir "1 - Ingresa un nuevo producto"
		Escribir "2 - Actualiza un producto"
		Escribir "3 - Consulata el inventario"
		Escribir "4 - Generar Reporte"
		Escribir "5 - Salir"
		
		leer opcion
		Segun opcion Hacer
			caso 1:
				Escribir " INgresa el nombre del producto"
				leer producto
				Escribir "Ingresa el codigo del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir "Ingresa el presio"
				Leer presio
			caso 2:
				Escribir "Ingresa el codigo de producto a actualizar "
				Leer codigoproducto
				Escribir "Ingrsa la nueva cantidad "
				Leer cantidad
				
			caso 3:
				Escribir " Consulta inventario"
				Escribir "nombre del producto " , producto
				Escribir "Codigo del producto " , codigoproducto
				Escribir "presio del producto ", presio
				Escribir " cantidad del producto " , cantidad
			Caso 4:
				Escribir "havi una vez un perro que se llamava pegamento, una vez se sento y se plego"

		Fin Segun
	Fin Mientras
	
FinAlgoritmo
