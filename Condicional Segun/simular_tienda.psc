Funcion cantidad_productos <- Ingresarcantidad
	Definir cantidad_productos Como Entero;
	Escribir "¿Cuántos productos distintos desea ingresar?";
	Leer cantidad_productos;
Fin Funcion

Funcion producto <- Ingresarproducto(contador)
	Definir producto Como Cadena;
	Escribir "Cuál es el nombre del producto " contador;
	Leer producto;
Fin Funcion

Funcion precio <- Ingresarprecio(contador)
	Definir precio Como Real;
	Escribir "Ingrese el precio unitario del producto " contador;
	Leer precio;
Fin Funcion

Funcion unidades <- Ingresarunidades(contador)
	Definir unidades Como Entero;
	Escribir "Ingrese la cantidad de unidades compradas " contador;
	Leer unidades;
Fin Funcion

Funcion precio_total <- Operacionprecio(precio, unidades)
	Definir precio_total Como Real;
	precio_total <- precio * unidades;
Fin Funcion


Algoritmo simular_tienda
	Definir cantidad_productos, unidades, contador Como Entero;
	Definir precio, precio_total, total_acumulado Como Real;
	Definir producto, resumen Como Cadena;
	
	total_acumulado <- 0;
	resumen <- "Resumen de la compra: ";
	cantidad_productos <- Ingresarcantidad;
	
	Para contador <- 1 Hasta cantidad_productos Con Paso 1 Hacer
		producto <- Ingresarproducto(contador);
		precio <- Ingresarprecio(contador);	
		unidades <- Ingresarunidades(contador);
		precio_total <- Operacionprecio(precio, unidades);
		total_acumulado <- total_acumulado + precio_total;
		resumen <- resumen + producto + "x" + ConvertirATexto(unidades) + " = $ " + ConvertirATexto(precio_total)+ ", ";
	Fin Para
	
	Mostrar resumen;
	Mostrar "TOTAL A PAGAR: $" total_acumulado;
FinAlgoritmo
