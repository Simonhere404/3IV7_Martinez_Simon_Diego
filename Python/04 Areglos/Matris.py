# Función para ingresar una matriz 3x3
def ingresarMatriz():
    matriz = []
    print("Introduce los valores de la matriz 3 x 3:")
    for i in range(3):
        fila = []
        for j in range(3):
            valor = float(input(f"Elemento [{i + 1}], [{j + 1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz
def transponerMatriz(matriz):
    matrizTranspuesta = []
    for i in range(3):
        fila = []
        for j in range(3):
            fila.append(matriz[j][i])
        matrizTranspuesta.append(fila)
    return matrizTranspuesta
def imprimirMatriz(matriz):
    for fila in matriz:
        print(fila)
print("Matriz Original:")
matriz = ingresarMatriz()
print("\nMatriz ingresada:")
imprimirMatriz(matriz)
matrizTranspuesta = transponerMatriz(matriz)
print("\nMatriz Transpuesta:")
imprimirMatriz(matrizTranspuesta)
