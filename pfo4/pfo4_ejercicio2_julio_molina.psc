Funcion cargar_vendedores (Vendedores)
	Definir i Como Entero;
	Para i = 0 hasta 4 Hacer
		Vendedores[0] = "Juan";
		Vendedores[1] = "Sandra";
		Vendedores[2] = "Claudia";
		Vendedores[3] = "Pedro";
		Vendedores[4] = "Leonardo";
	FinPara
FinFuncion

Funcion cargar_ventas(ventas)
	Definir i, j Como Entero;
	Para i = 0 Hasta 4 Hacer
		Para j = 0 hasta 5 Hacer
			ventas[i,j]=aleatorio(1000,5000);
		FinPara
	FinPara
FinFuncion

//para cada fila (vendedor) sumo las ventas mensuales (columnas)
Funcion montoTotal(montoSemestre, ventas, cantVendedores, nroMeses)
	Definir i,j Como Entero;
	Definir acumulador Como Real;
	Para i<-0 Hasta cantVendedores-1 Con Paso 1 Hacer
		acumulador<-0;
		Para j<-0 Hasta nroMeses-1 Con Paso 1 Hacer
			acumulador<-acumulador + ventas[i,j];
		FinPara
		montoSemestre[i]<-acumulador;
	FinPara
FinFuncion

//funcion para buscar el vendeodr por su nombre, se sale con * 
Funcion buscarVendedor(Vendedores, montoSemestre, cantVendedores)
	Definir i, contador como Entero;
	Definir nombre Como Caracter;
	Definir montoVendedor Como Real;
	contador<-0;
	Repetir
		Escribir "Ingrese el nombre del vendedor o ingrese * para salir ";
		Leer nombre;
		nombre<-Mayusculas(nombre);
		Si nombre<> "*" Entonces
			Para i<-0 Hasta cantVendedores-1 Con Paso 1 Hacer
				Si nombre == Mayusculas(Vendedores[i])  Entonces
					montoVendedor<-montoSemestre[i];
					contador<-contador+1;
				FinSi
			FinPara
			Si contador=0 Entonces
				Escribir "El nombre del vendedor no existe o es incorrecto";
			SiNo
				Escribir "El vendendor ", nombre, " tuvo ventas por ", montoVendedor, " durante el semestre";
			FinSi
		FinSi
	Mientras Que contador=0 & nombre <> "*"
FinFuncion

Algoritmo pfo4_ejercicio2_julio_molina
	//Una empresa lleva registro de las ventas de sus 5 vendedores en estructuras de datos. 
	//Posee un vector donde guarda los nombres de los vendedores y una matriz en paralelo con las ventas 
	//de cada vendedor durante los meses del primer semestre (cada fila un vendedor, cada columna un mes).
	//Se les adjunta un algoritmo PSEINT (en la bibliografía de la semana) con la carga de los datos (nombre de los vendedores 
	//(Juan, Sandra, Claudia, Pedro y Leonardo) y monto total de ventas realizadas en cada mes)
	//Descargar ese archivo y terminar el algoritmo incorporando al menos una función o un procedimiento para poder ingresar el nombre
	//de un vendedor y que el algoritmo informe el monto total vendido por ese vendedor durante el semestre (Verificar la existencia del vendedor) 
	
	definir Vendedores Como Caracter;
	definir Ventas, montoSemestre Como Real;
	Definir i,j, cantVendedores, nroMeses Como Entero;
	cantVendedores<-5;
	nroMeses<-6;
	Dimension Vendedores(cantVendedores);
	Dimension Ventas(cantVendedores,nroMeses);
	cargar_vendedores(Vendedores);
	cargar_ventas(ventas);
	//-------------------------------------
	// Resolución del alumno
	
	Dimension montoSemestre[cantVendedores];
	montoTotal(montoSemestre, ventas, cantVendedores, nroMeses);
	
	Escribir "-------matriz de ventas por mes----------";
	Para i<-0 Hasta cantVendedores-1 Con Paso 1 Hacer
		Para j<-0 Hasta nroMeses-1 Con Paso 1 Hacer
			Escribir ventas[i,j], " " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	Escribir "-------vector de ventas del semestre-------";
	Para i<-0 Hasta cantVendedores-1 Con Paso 1 Hacer
		Escribir montoSemestre[i];
	FinPara
	
	buscarVendedor(Vendedores, montoSemestre, cantVendedores);
	
FinAlgoritmo
