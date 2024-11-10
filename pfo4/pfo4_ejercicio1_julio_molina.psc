Funcion llenarMatriz(matrizAleatoria, fils, colum)
	Definir i, j Como Entero;
	Para i<-0 Hasta fils-1 Con Paso 1 Hacer
		Para j<-0 Hasta colum-1 Con Paso 1 Hacer
			matrizAleatoria[i, j]<-AZAR(100);
		FinPara
	FinPara
FinFuncion
// recibe la matriz aleatoria como parametro y el numero de filas y columnas y vuelca los resultados en la matriz ordenada
Funcion ordenarFils (colum, fils,  matrizAleatoria, matrizOrdenada)
	Definir minValor Como Real;
	Definir marcador, i, j, k Como Entero;
	marcador<-0;
	// para cada una de las 5 filas
	Para i<-0 Hasta fils-1 Con Paso 1 Hacer
		//recorre las columnas
		Para j<-0 Hasta colum-1 Con Paso 1 Hacer
			minValor<-matrizAleatoria[i,j];
			//en cada pasada determina el minimo valor y lo intercambia con el de la posicion j
			Para k<-j+1 Hasta colum-1 Con Paso 1 Hacer
				Si matrizAleatoria[i,k]< minValor Entonces
					minValor<-matrizAleatoria[i,k];
					marcador<-k;
				FinSi
			FinPara
			//si encuentra un valor menor hace el intercambio de valores
			Si minValor<>matrizAleatoria[i,j] Entonces
				matrizAleatoria[i,marcador]<-matrizAleatoria[i,j];
				matrizAleatoria[i,j]<-minValor;
			FinSi
			matrizOrdenada[i,j]<-matrizAleatoria[i,j]; 
		FinPara
	FinPara
FinFuncion

Algoritmo pfo4_ejercicio1
	//Generar una matriz de 5 filas y 10 columnas con elementos al azar y mostrarla ordenando cada fila en forma ascendente. 
	//(Primero se debe mostrar la matriz sin ordenar)
	Definir fils, colum, i, j Como Entero;
	Definir matrizAleatoria, matrizOrdenada Como Real;
	fils<-5;
	colum<-10;
	Dimension matrizAleatoria[fils, colum];
	Dimension matrizOrdenada[fils, colum];
	
	llenarMatriz(matrizAleatoria, fils, colum);
	Escribir "-----Matriz con numeros al azar----------------";
	Escribir "";
	Para i<-0 Hasta fils-1 Con Paso 1 Hacer
		Para j<-0 Hasta colum-1 Con Paso 1 Hacer
			Escribir " - ", matrizAleatoria[i, j] Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
	ordenarFils(colum, fils,  matrizAleatoria, matrizOrdenada);
	Escribir "-----Matriz con numeros ordenados por fila de manera ascendente------";
	Escribir "";
	Para i<-0 Hasta fils-1 Con Paso 1 Hacer
		Para j<-0 Hasta colum-1 Con Paso 1 Hacer
			Escribir " - ", matrizAleatoria[i, j] Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
