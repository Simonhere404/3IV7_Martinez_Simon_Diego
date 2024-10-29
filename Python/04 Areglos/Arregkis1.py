# Definimos la función para sumar dos arreglos
def sumar_arreglos(arreglo1, arreglo2):
    if len(arreglo1) != len(arreglo2):
        print("Error, los arreglos deben tener la misma longitud")
        return None


# Inicializamos los arreglos vacíos
arreglo1 = []
arreglo2 = []

# Pedimos al usuario el tamaño de los arreglos
n = int(input("Introduce el tamaño de los arreglos: "))

# Pedimos los elementos del primer arreglo
print("Introduce los elementos del primer arreglo:")
for i in range(n):
    num = float(input(f"Ingresa el elemento {i + 1}: "))
    arreglo1.append(num)

# Pedimos los elementos
