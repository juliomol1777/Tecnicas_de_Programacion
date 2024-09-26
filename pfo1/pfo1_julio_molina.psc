Algoritmo cuentoBuenaPipa
	
	Definir respuesta, respuestaCorrecta,dialogo como Cadena;
	respuestaCorrecta<-"Hechizo";
	respuesta<-"";
	
	Mientras respuestaCorrecta <> respuesta Hacer
		
		dialogo<-"¿Queres que te cuente el cuento de la buena pipa?";
		Escribir dialogo;
		leer respuesta;
		Si respuesta = respuestaCorrecta Entonces
			respuesta<-respuestaCorrecta;
		SiNo
			Escribir "Yo no dije ",respuesta;
			Escribir "Yo dije si ";
		FinSi
	FinMientras
	
FinAlgoritmo
