total_dia = 0
subtotal_regional = 0
subtotal_nacional = 0
subtotal_internacional = 0

op = "si"

while op == "si":

    print("\nNuevo cliente")

    servicio = input("Servicio (internet / llamada): ")

    pago = 0

    # INTERNET
    if servicio == "internet":

        edad = int(input("Ingrese la edad: "))
        horas = float(input("Cuantas horas uso: "))

        if edad >= 10 and edad <= 14:
            pago = horas * 10

        elif edad >= 15 and edad <= 25:
            pago = horas * 15

        elif edad >= 26 and edad <= 60:
            pago = horas * 25

        print("El cliente debe pagar:", pago)

    # LLAMADAS
    elif servicio == "llamada":

        tipo = input("Tipo de llamada (regional / nacional / internacional): ")
        edad = int(input("Ingrese la edad: "))

        # REGIONALES
        if tipo == "regional":

            minutos = float(input("Cuantos minutos hablo: "))

            if edad >= 10 and edad <= 14:
                pago = 10
            elif edad >= 15 and edad <= 25:
                pago = 15
            elif edad >= 26 and edad <= 60:
                pago = 20
            elif edad >= 61:
                pago = 12

            subtotal_regional = subtotal_regional + pago

        # NACIONALES
        elif tipo == "nacional":

            horas = float(input("Cuantas horas hablo: "))

            if edad >= 10 and edad <= 14:
                pago = horas * 15
            elif edad >= 15 and edad <= 25:
                pago = horas * 20
            elif edad >= 26 and edad <= 60:
                pago = horas * 25
            elif edad >= 61:
                pago = horas * 14

            subtotal_nacional = subtotal_nacional + pago

        # INTERNACIONALES
        elif tipo == "internacional":

            horas = float(input("Cuantas horas hablo: "))

            if edad >= 10 and edad <= 14:
                pago = horas * 25
            elif edad >= 15 and edad <= 25:
                pago = horas * 30
            elif edad >= 26 and edad <= 60:
                pago = horas * 35
            elif edad >= 61:
                pago = horas * 25

            subtotal_internacional = subtotal_internacional + pago

        print("El cliente debe pagar:", pago)

    total_dia = total_dia + pago

    op = input("Desea ingresar otro cliente (si/no): ")

print("\n--- RESULTADOS DEL DIA ---")
print("Subtotal regional:", subtotal_regional)
print("Subtotal nacional:", subtotal_nacional)
print("Subtotal internacional:", subtotal_internacional)
print("Total del dia:", total_dia)