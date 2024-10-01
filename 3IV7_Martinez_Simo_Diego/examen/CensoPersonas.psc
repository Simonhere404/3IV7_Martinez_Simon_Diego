Proceso CensoPersonas
    Definir N, Q Como Entero
    Definir ai, bj, z Como Entero
    Definir contador_personas, joven, anciano Como Entero
	Definir i Como Entero
	Definir k Como Entero
	Definir j Como Entero
    j = 1
	k = 1
    i = 1
    N = 0
	Q = 0
	ai =0
	bj = 0
	z = 0
	contador_personas= 0
	joven = 0
	anciano = 0
    Escribir "Ingresa el número de personas y el número de preguntas:"
    Leer N, Q
    
    contador_personas = 0
    joven = 999999999
    anciano = -1
    
    Escribir "Ingresa los años de nacimiento  y fallecimiento de cada persona:"
   
    
    Mientras i <= N Hacer
		Escribir "Año de nacimiento y año de muerte de la persona " i
        Leer ai, bj
        i = i + 1
    FinMientras
    
    Escribir "Ingresa los años:"
    
    
    Mientras j <= Q Hacer
        Leer z
        
        contador_personas = 0
        joven = 999999999
        anciano = 0

        Mientras k <= N Hacer
            Si z > ai Y z < bj Entonces
                contador_personas = contador_personas + 1
                
                Si (z - ai) < joven Entonces
                    joven = z - ai
                FinSi
                
                Si (z - bj) > anciano Entonces
                    anciano = ab- aj
                FinSi
            FinSi
            
            k = k + 1
        FinMientras
        
        Escribir "En el año ", z, " habia ", contador_personas, " personas vivas."
        Si contador_personas > 0 Entonces
            Escribir "La persona viva más joven tenia ", joven, " años."
            Escribir "La persona viva más anciana tenia ", anciano, " años."
        Sino
            Escribir "No había personas vivas."
        FinSi
        
        j = j + 1
    FinMientras
FinProceso
