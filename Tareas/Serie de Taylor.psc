
Algoritmo  aproximacion
		
		Definir opcion, n, m, i, k Como Entero
		Definir x, valor_real, valor_taylor, coef, error Como Real
		Dimension puntos[100]  // se puede cambiar según cuántos valores quieras permitir
		
		Escribir "Seleccione una función para aproximar con serie de Taylor en x = 0:"
		Escribir "1. sin(x)"
		Escribir "2. e^x"
		Escribir "3. ln(x)"
		Escribir "4. tan(x)"
		Escribir "5. |x|"
		Leer opcion
		
		Escribir "Ingrese el grado n del polinomio de Taylor:"
		Leer n
		
		Escribir "¿Cuántos puntos desea evaluar?"
		Leer m
		
		Para i <- 1 Hasta m Con Paso 1
			Escribir "Ingrese el valor del punto ", i, ":"
			Leer puntos[i]
		Fin Para
		
		Segun opcion Hacer
			
				// sin(x)
			1:
				Para i <- 1 Hasta m Con Paso 1
					x <- puntos[i]
					valor_real <- sen(x)
					valor_taylor <- 0
					Para k <- 0 Hasta n Con Paso 1
						Si k MOD 2 <> 0 Entonces
							coef <- Potencia(-1, (k - 1)/2) / Factorial(k)
							valor_taylor <- valor_taylor + coef * Potencia(x, k)
						FinSi
					Fin Para
					error <- abs(valor_real - valor_taylor)
					Escribir "x = ", x, " | sin(x) = ", valor_real, " | Aproximación = ", valor_taylor, " | Error = ", error
				Fin Para
				
				// e^x
			2:
				Para i <- 1 Hasta m Con Paso 1
					x <- puntos[i]
					valor_real <- exp(x)
					valor_taylor <- 0
					Para k <- 0 Hasta n Con Paso 1
						coef <- 1 / Factorial(k)
						valor_taylor <- valor_taylor + coef * Potencia(x, k)
					Fin Para
					error <- abs(valor_real - valor_taylor)
					Escribir "x = ", x, " | e^x = ", valor_real, " | Aproximación = ", valor_taylor, " | Error = ", error
				Fin Para
				
				// ln(x)
			3:
				Escribir "Advertencia: se usa desarrollo de Taylor alrededor de x = 1"
				Para i <- 1 Hasta m Con Paso 1
					x <- puntos[i]
					Si x <= 0 Entonces
						Escribir "x = ", x, " no está en el dominio de ln(x)"
					Sino
						valor_real <- ln(x)
						valor_taylor <- 0
						Para k <- 1 Hasta n Con Paso 1
							coef <- Potencia(-1, k + 1) / k
							valor_taylor <- valor_taylor + coef * Potencia(x - 1, k)
						Fin Para
						error <- abs(valor_real - valor_taylor)
						Escribir "x = ", x, " | ln(x) = ", valor_real, " | Aproximación = ", valor_taylor, " | Error = ", error
					FinSi
				Fin Para
				
				// tan(x)
			4:
				Escribir "Advertencia: los coeficientes de tan(x) son complicados. Solo se usarán los 3 primeros términos."
				Para i <- 1 Hasta m Con Paso 1
					x <- puntos[i]
					valor_real <- tan(x)
					// Solo se usarán los 3 primeros coeficientes de la serie de tan(x) centrada en 0:
					// tan(x) ? x + (1/3)x^3 + (2/15)x^5
					valor_taylor <- x
					Si n >= 3 Entonces
						valor_taylor <- valor_taylor + (1/3) * Potencia(x, 3)
					FinSi
					Si n >= 5 Entonces
						valor_taylor <- valor_taylor + (2/15) * Potencia(x, 5)
					FinSi
					error <- abs(valor_real - valor_taylor)
					Escribir "x = ", x, " | tan(x) = ", valor_real, " | Aproximación = ", valor_taylor, " | Error = ", error
				Fin Para
				
				// |x|
			5:
				Escribir "La función |x| no tiene derivada en x = 0, no tiene serie de Taylor allí."
				Para i <- 1 Hasta m Con Paso 1
					x <- puntos[i]
					valor_real <- abs(x)
					Escribir "x = ", x, " | |x| = ", valor_real, " | Aproximación: No definida | Error: No definido"
				Fin Para
				
			De Otro Modo:
				Escribir "Opción no válida."
				
		FinSegun

FinFuncion





Funcion resultado <- Potencia(base, exponente)
	Definir i Como Entero
	Definir resultado Como Real
	resultado <- 1
	
	Si exponente = 0 Entonces
		resultado <- 1
	Sino
		Para i <- 1 Hasta abs(exponente) Con Paso 1
			resultado <- resultado * base
		Fin Para
		Si exponente < 0 Entonces
			resultado <- 1 / resultado
		FinSi
	FinSi
FinFuncion

Funcion f=factorial(n)
	definir f,i como entero
	f=1
	Para i=1 Hasta n Con Paso 1 hacer 
		f=f*i
	FinPara
FinFuncion

FinAlgoritmo

