Funcion opcion_menu <- MenuOpciones
	Definir opcion_menu Como Entero;
	Escribir "------ MENU OPCIONES -------";
	Escribir "1. Guardar temperaturas (°C)";
	Escribir "2. Modificar temperaturas";
	Escribir "3. Convertir temperaturas a Fahrenheit";
	Escribir "4. Mostrar temperaturas en °F";
	Escribir "5. Salir del programa";
	Escribir "-----------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Funcion Guardartemp ( lista_temp Por Referencia, cantidad )
	Definir i Como Entero;
	Definir temp Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese la temperatura Celsius ", i, ": ";
		Leer temp;
		lista_temp[i]<-temp;
	Fin Para
Fin Funcion

Funcion ModificarTemp (lista_temp Por Referencia,cantidad)
	Definir i, opcion_modificar Como Entero;
	Definir temp Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i, ". La temperatura ingresada es: ", lista_temp[i];
	Fin Para
	Escribir "Ingresa la posición que deseas modificar (1-", cantidad, "): ";
	Leer opcion_modificar;
	Si opcion_modificar>=1 y opcion_modificar<=cantidad Entonces
		Escribir "Ingrese la nueva temperatura en °C: ";
		Leer temp;
		lista_temp[opcion_modificar]<-temp;
	SiNo
		Escribir "Opción inválida";
	FinSi
Fin Funcion

Funcion MostrarTemp ( lista_temp, cantidad )
	Definir i Como Entero;
	Definir fahrenheit Como Real;
	
	Escribir "Temperaturas almacenadas:";
	Para i <- 1 Hasta cantidad Hacer
		fahrenheit = (lista_temp[i] * 9/5) + 32;
		Escribir "   ", lista_temp[i], " °C = ", fahrenheit, " °F";
	Fin Para
Fin Funcion

Funcion cantidad <- TempCant
	Definir cantidad Como Entero;
	Escribir "Ingrese la cantidad de temperaturas que desea manejar: ";
	Leer cantidad;
Fin Funcion

Algoritmo Temperaturas
	Definir lista_temp, fahrenheit Como Real;
	Definir cantidad, opcion_menu, i Como Entero;
	
	cantidad<-TempCant;
	Dimension lista_temp[cantidad];
	
	Repetir
		opcion_menu<-MenuOpciones;
		Segun opcion_menu Hacer
			Caso 1:
				Guardartemp(lista_temp,cantidad);
			Caso 2:
				ModificarTemp(lista_temp,cantidad);
			Caso 3:
				Para i<-1 Hasta cantidad Con Paso 1 Hacer
					fahrenheit = (lista_temp[i] * 9/5) + 32;
				Fin Para
				Escribir "Las temperaturas han sido convertidas a °F correctamente";
			Caso 4:
				MostrarTemp(lista_temp,cantidad);
			Caso 5:
				Escribir "Saliendo del programa...";
		FinSegun
	Hasta Que opcion_menu=5;
FinAlgoritmo
