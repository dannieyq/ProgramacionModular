Funcion producto <- IngresarProducto(contador)
	Definir producto Como Cadena;
	Escribir "Ingrese el nombre del producto ", contador, ":";
	Leer producto;
Fin Funcion

Funcion precio <- IngresarPrecio(contador)
	Definir precio Como Real;
	Escribir "Ingrese el precio del producto ", contador, ":";
	Leer precio;
Fin Funcion

Funcion cantidad <- IngresarCantidad(contador)
	Definir cantidad Como Entero;
	Escribir "Ingrese la cantidad vendida del producto ", contador, ":";
	Leer cantidad;
Fin Funcion

Funcion subtotal <- CalcularSubtotal(precio, cantidad)
	Definir subtotal Como Real;
	subtotal <- precio * cantidad;
Fin Funcion


Algoritmo Ventas_Tienda
	Definir producto, lista Como Cadena;
	Definir precio, subtotal, total Como Real;
	Definir cantidad, contador, numProductos Como Entero;
	
	total <- 0;
	lista <- "Productos vendidos:";
	
	Escribir "¿Cuántos productos va a registrar?";
	Leer numProductos;
	
	Para contador <- 1 Hasta numProductos Con Paso 1 Hacer
		producto <- IngresarProducto(contador);
		precio <- IngresarPrecio(contador);
		cantidad <- IngresarCantidad(contador);
		
		subtotal <- CalcularSubtotal(precio, cantidad);
		
		total <- total + subtotal;
		lista <- lista + producto + " x" + ConvertirATexto(cantidad) + " = $" + ConvertirATexto(subtotal);
	Fin Para
	
	Escribir lista;
	Escribir "Total de ventas = $", total;
FinAlgoritmo
