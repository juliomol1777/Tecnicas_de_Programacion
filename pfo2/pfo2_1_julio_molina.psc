//Ejercicio 1
Algoritmo biblioteca
	//Defino las variables
	Definir num_estantes, num_infantil, num_novela, num_historia,n Como Entero;
	Definir nombre_libro, genero, nombre_max_paginas como Cadena;
	Definir num_paginas, num_max_paginas Como Entero;
	Definir genero_ok, paginas_ok Como Logico;
	//Inicio los contadores
	num_estantes<-5;
	num_infantil<-0;
	num_novela<-0;
	num_historia<-0;
	//realizo un ciclo para cada estante
	Para n=1 Hasta num_estantes Con Paso 1 Hacer
		//En cada ciclo debo mostrar el valor max y reiniciar a 0 para el proximo ciclo
		num_max_paginas<-0;
		Repetir
			//Utilizo variables booleanas para interrumpir el ciclo si se cumple la condicion
			genero_ok<-Verdadero;
			paginas_ok<-Verdadero;
			Escribir "Escriba el nombre del libro para el estante ", n, " o escriba ´FIN´ para el proximo estante";
			Leer nombre_libro;
			//Reescribo lo ingresado por el ususario todo en mayusculas
			nombre_libro<-Mayusculas(nombre_libro);
			//cuando el usuario ingresa FIN o fin sale del ciclo y para al proximo estante
			//las variables booleanas cambian y el programa no ingresa a las opciones de abajo
			Si nombre_libro = "FIN" Entonces
				genero_ok<-Falso;
				paginas_ok<-falso;
			FinSi
			Mientras genero_ok Hacer
				Escribir "Escriba el genero del libro : I para Infantil, N para Novela, H para Historia";
				Leer genero;
				genero<-Mayusculas(genero);
				//Si el usuario no ingresa una de las 3 opciones pedidas, se muestra mensaje de error y el ciclo se repite
				Si genero = "I" | genero= "N" | genero="H" Entonces
					Si genero = "I" Entonces
						num_infantil<-num_infantil+1;
					SiNo
						Si genero = "N" Entonces
							num_novela<-num_novela+1;
						SiNo
							num_historia<-num_historia+1;
						FinSi
					FinSi
					genero_ok<-Falso;
				SiNo
					Escribir  "*** Error al ingresar datos ***";
				FinSi
			FinMientras
			Mientras paginas_ok Hacer
				Escribir "Ingrese el numero de paginas del libro";
				Leer num_paginas;
				//Si el usuario no ingresa un numero mayor a 0, se muestra mensaje de error y el ciclo se repite
				Si num_paginas>0 Entonces
					Si num_paginas>num_max_paginas Entonces
						num_max_paginas<-num_paginas;
						nombre_max_paginas<-nombre_libro;
					FinSi
					paginas_ok<-falso;
				SiNo
					Escribir  "*** El numero de paginas no puede ser cero ****";
				FinSi
			FinMientras
			genero_ok<-Verdadero;
			paginas_ok<-Verdadero;
		Mientras Que nombre_libro <> "FIN"
		//Al finalizar la carga  estantedel estante, escribiendo fin, se muestra los valores maximos y promedio pedidos 
		//si se escribe fin sin ingresar libros se muestra el mensaje
		Si num_max_paginas > 0 Entonces
			Escribir "El libro ", nombre_max_paginas, " tiene ", num_max_paginas, " paginas";
		SiNo
			Escribir "No fueron ingresados libros en este estante";
		FinSi
	FinPara
	//al finalizar los 5 ciclos se muestra el resumen pedido
	Escribir "La biblioteca tiene ", num_historia, " libros de historia, ", num_infantil, " libros Infantiles y ", num_novela, " novelas";
	Escribir "La biblioteca tiene un promedio de ", (num_historia+num_infantil+num_novela)/num_estantes, " libros por estante";
FinAlgoritmo
