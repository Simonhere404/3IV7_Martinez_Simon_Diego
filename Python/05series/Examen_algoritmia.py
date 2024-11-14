import tkinter as tk
from tkinter import messagebox, simpledialog
import os

ARCHIVO = "lista.txt"
peleadores = []

def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    nombre, apodo, peso, categoria, record_de_victorias, estilo_de_lucha, logros, entrenador = partes
                    peleador = {
                        "nombre": nombre,
                        "apodo": apodo,
                        "peso": peso,
                        "categoria": categoria,
                        "record_de_victorias": record_de_victorias,
                        "estilo_de_lucha": estilo_de_lucha,
                        "logros": logros,
                        "entrenador": entrenador,
                    }
                    peleadores.append(peleador)

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for peleador in peleadores:
            f.write(f"{peleador['nombre']},{peleador['apodo']},{peleador['peso']},{peleador['categoria']},{peleador['record_de_victorias']},{peleador['estilo_de_lucha']},{peleador['logros']},{peleador['entrenador']}\n")

def registrar_peleador():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del peleador: ")
    apodo = simpledialog.askstring("Entrada", "Ingresa el apodo del peleador: ")
    peso = simpledialog.askstring("Entrada", "Ingresa el peso del peleador: ")
    categoria = simpledialog.askstring("Entrada", "Ingresa la categoria del peleador: ")
    record_de_victorias = simpledialog.askstring("Entrada", "Ingresa el record de victorias del peleador: ")
    estilo_de_lucha = simpledialog.askstring("Entrada", "Ingresa el estilo de lucha del peleador: ")
    logros = simpledialog.askstring("Entrada", "Ingresa los logros del peleador: ")
    entrenador = simpledialog.askstring("Entrada", "Ingresa el entrenador del peleador: ")

    nuevo_peleador = {
        "nombre": nombre,
        "apodo": apodo,
        "peso": peso,
        "categoria": categoria,
        "record_de_victorias": record_de_victorias,
        "estilo_de_lucha": estilo_de_lucha,
        "logros": logros,
        "entrenador": entrenador,
    }

    peleadores.append(nuevo_peleador)
    guardar_datos()
    messagebox.showinfo("Éxito", "Peleador registrado exitosamente.")

def consultar_peleador():
    if not peleadores:
        messagebox.showinfo("Sin registros", "No hay peleadores registrados.")
    else:
        ventana_consulta = tk.Toplevel()
        ventana_consulta.title("Peleadores Registrados")
        ventana_consulta.geometry("600x400")

        text_box = tk.Text(ventana_consulta, height=15, width=70, wrap=tk.WORD, font=("Arial", 10))
        text_box.pack(padx=10, pady=10)

    consulta = ""
    for peleador in peleadores:
            consulta += f"Nombre: {peleador['nombre']} ({peleador['apodo']})\n"
            consulta += f"Peso: {peleador['peso']} kg\n"
            consulta += f"Categoría: {peleador['categoria']}\n"
            consulta += f"Record: {peleador['record_de_victorias']}\n"
            consulta += f"Estilo de lucha: {peleador['estilo_de_lucha']}\n"
            consulta += f"Logros: {peleador['logros']}\n"
            consulta += f"Entrenador: {peleador['entrenador']}\n"
            consulta += "-" * 40 + "\n"

    text_box.insert(tk.END, consulta)
    text_box.config(state=tk.DISABLED)

def editar_peleador():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del peleador que deseas editar: ")
    for peleador in peleadores:
        if peleador['nombre'] == nombre:
            peleador['apodo'] = simpledialog.askstring("Entrada", "Ingresa el nuevo apodo del peleador: ")
            peleador['peso'] = simpledialog.askstring("Entrada", "Ingresa el nuevo peso del peleador: ")
            peleador['categoria'] = simpledialog.askstring("Entrada", "Ingresa la nueva categoria del peleador: ")
            peleador['record_de_victorias'] = simpledialog.askstring("Entrada", "Ingresa el nuevo record de victorias del peleador: ")
            peleador['estilo_de_lucha'] = simpledialog.askstring("Entrada", "Ingresa el nuevo estilo de lucha del peleador: ")
            peleador['logros'] = simpledialog.askstring("Entrada", "Ingresa los nuevos logros del peleador: ")
            peleador['entrenador'] = simpledialog.askstring("Entrada", "Ingresa el nuevo entrenador del peleador: ")
            guardar_datos()
            messagebox.showinfo("Éxito", "Peleador editado exitosamente.")
            return
    messagebox.showinfo("No encontrado", "No se encontró un peleador con ese nombre.")

def borrar_peleador():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del peleador que deseas eliminar: ")
    for peleador in peleadores:
        if peleador['nombre'] == nombre:
            peleadores.remove(peleador)
            guardar_datos()
            messagebox.showinfo("Éxito", f"Peleador {nombre} eliminado exitosamente.")
            return
    messagebox.showinfo("Error", "No se encontró al peleador con ese nombre.")

def buscar_peleador():
    nombre = simpledialog.askstring("Buscar Peleador", "Ingresa el nombre del peleador que deseas buscar: ")
    for peleador in peleadores:
        if peleador['nombre'].lower() == nombre.lower():
            detalles = f"Nombre: {peleador['nombre']} ({peleador['apodo']})\n"
            detalles += f"Peso: {peleador['peso']} kg\n"
            detalles += f"Categoría: {peleador['categoria']}\n"
            detalles += f"Record: {peleador['record_de_victorias']}\n"
            detalles += f"Estilo de lucha: {peleador['estilo_de_lucha']}\n"
            detalles += f"Logros: {peleador['logros']}\n"
            detalles += f"Entrenador: {peleador['entrenador']}\n"
            
            messagebox.showinfo("Detalles del Peleador", detalles)
            return
    messagebox.showinfo("No encontrado", "No se encontró un peleador con ese nombre.")

def mostrar_menu():
    ventana = tk.Tk()
    ventana.title("Peleadores")
    ventana.geometry("400x350")

    def opcion_registrar():
        registrar_peleador()

    def opcion_consultar():
        consultar_peleador()

    def opcion_editar():
        editar_peleador()

    def opcion_borrar():
        borrar_peleador()


    def opcion_buscar():
        buscar_peleador()

    frame = tk.Frame(ventana)
    frame.pack(pady=20)

    boton_registrar = tk.Button(frame, text="Registrar Peleador", width=20, command=opcion_registrar)
    boton_registrar.grid(row=0, column=0, pady=5)

    boton_consultar = tk.Button(frame, text="Consultar Peleadores", width=20, command=opcion_consultar)
    boton_consultar.grid(row=1, column=0, pady=5)

    boton_editar = tk.Button(frame, text="Editar Peleador", width=20, command=opcion_editar)
    boton_editar.grid(row=2, column=0, pady=5)

    boton_borrar = tk.Button(frame, text="Borrar Peleador", width=20, command=opcion_borrar)
    boton_borrar.grid(row=3, column=0, pady=5)

    boton_buscar = tk.Button(frame, text="Buscar Peleador", width=20, command=opcion_buscar)
    boton_buscar.grid(row=4, column=0, pady=5)

    cargar_datos()

    ventana.mainloop()

mostrar_menu()
