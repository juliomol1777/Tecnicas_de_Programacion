Algoritmo pfo3
	//Realizar el algoritmo utilizando arreglos de 2 dimensiones o matrices.
	//Se desea almacenar los nombres y las edades de los alumnos de un curso. Los cursos tienen como máximo 20 alumnos. 
	//Realiza un programa que introduzca el nombre y la edad de cada alumno. El proceso de lectura de datos terminará cuando 
	//se introduzca como nombre un asterisco (*). Luego del ingreso de los datos se desea saber: 
	//Cuántos alumnos hay en el curso
	//Cuál es la mayor edad
	//Los nombres de los alumnos que tienen esa mayor edad.
	
	Definir i, j, contador, topei, topej, max_cant_alumnos, atributos_a_cargar,edad, edad_numero, max_edad Como Entero;
	Definir matriz, edad_convertida, nombre Como Caracter;
	Definir terminar_ciclo Como Logico;
	max_cant_alumnos<-20;
	atributos_a_cargar<-2; //nombre y edad
	contador<-0; //cuenta la cantidad de alumnos ingresados por teclado
	Dimension matriz[max_cant_alumnos,atributos_a_cargar];
	topei<-max_cant_alumnos;
	topej<-atributos_a_cargar;
	terminar_ciclo<-Verdadero;
	//inicializo la matriz
	Para i<-0 Hasta topei-1 Con Paso 1 Hacer
		Para j<-0 Hasta topej-1 Con Paso 1 Hacer
			matriz[i,j]<-ConvertirATexto(-1);
		FinPara
	FinPara
	//carga de datos para cada atributo(nombre, edad)
	//recorro por filas
	Para i<-0 Hasta topei-1 Con Paso 1 Hacer
		Si terminar_ciclo Entonces
			Para j<-0 Hasta topej-1 Con Paso 1 Hacer
				//en la primera columna cargo los nombres y en la segunda la edad convertida a caracter
				Si j=0 Entonces
					Escribir "ingrese el nombre del alumno :", i+1;
					Leer matriz[i,j];
					Si matriz[i,j]<>"*" Entonces
						contador=contador+1;
					SiNo
						terminar_ciclo<-Falso; //cuando pongo * ya no pedira cargar nombre y edad
					FinSi
				FinSi
				Si terminar_ciclo & j<>0 Entonces
					Escribir "ingrese la edad del alumno :", i+1;
					Leer edad;
					edad_convertida<-ConvertirATexto(edad);
					matriz[i,j]<-edad_convertida;
				FinSi
			FinPara
		FinSi
	FinPara
	Escribir "----------------------------------------------------------";
	Escribir "En el curso hay ", contador, " alumnos";
	max_edad<-ConvertirANumero(matriz[0,1]);
	//determino la edad maxima
	//recorre la matriz hasta el numero de alumnos (contador)
	Para i<-0 Hasta contador-1 Con Paso 1 Hacer
		edad_numero<-ConvertirANumero(matriz[i,1]);
		Si max_edad<=edad_numero Entonces
			max_edad<-edad_numero;
		FinSi
	FinPara
	//recorro la columna de edades y escribo el nombre del/los que tienen edad maxima
	Para i<-0 Hasta contador-1 Con Paso 1 Hacer
		Si ConvertirATexto(max_edad)=matriz[i,1] Entonces
			nombre<- matriz[i,0];
			Escribir nombre, " tiene la edad maxima de ", max_edad, " años";
		FinSi
	FinPara
	Escribir "----------------------------------------------------------";
FinAlgoritmo
