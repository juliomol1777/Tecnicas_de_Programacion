//Ejercicio 2
Algoritmo juego_MIM
	//Defino variables
	Definir num_adivinar, num_random, contador Como Entero;
	Definir opcion_elegida como Cadena;
	Definir juego_ok Como Logico;
	//Genero el numero a adivinar
	num_adivinar<- Aleatorio(1,109);
	//inicio contador y variable booleana para salir del ciclo
	juego_ok<-Verdadero;
	contador<-0;
	Escribir "***El juego consiste en que a partir de un numero generado al azar, el jugador adivine si cada numero generado es mayor, igual o menor a el ***";
	Escribir "Numero generado al azar ", num_adivinar;
	Mientras juego_ok Hacer
		Escribir "¿MAYOR, MENOR o IGUAL? Escriba la opcion elegida";
		Leer opcion_elegida;
		opcion_elegida<-Mayusculas(opcion_elegida);
		//Si no elijo una de las 3 opciones la pregunta se vuelve a repetir hasta ingresar la opcion correcta
		Si opcion_elegida = "MAYOR" | opcion_elegida = "MENOR" | opcion_elegida = "IGUAL" Entonces
			num_random<- Aleatorio(1,109);
			Si num_random > num_adivinar Entonces
				Si opcion_elegida = "MAYOR" Entonces
					Escribir "Acierto: salio el numero ", num_random;
					contador<-contador+1;
				SiNo
					Escribir "No acertaste: salio el numero ", num_random;
					juego_ok<-Falso;
				FinSi
			FinSi
			Si num_random < num_adivinar Entonces
				Si opcion_elegida = "MENOR" Entonces
					Escribir "Acierto: salio el numero ", num_random;
					contador<-contador+1;
				SiNo
					Escribir "No acertaste: salio el numero ", num_random;
					juego_ok<-Falso;
				FinSi
			FinSi
			Si num_random = num_adivinar Entonces
				Si opcion_elegida = "IGUAL" Entonces
					Escribir "Acierto: salio el numero ", num_random;
					contador<-contador+1;
				SiNo
					Escribir "No acertaste: salio el numero ", num_random;
					juego_ok<-Falso;
				FinSi
			FinSi
		FinSi
	FinMientras
	Escribir "El jugador ha obtenido ", contador, " aciertos";
FinAlgoritmo
