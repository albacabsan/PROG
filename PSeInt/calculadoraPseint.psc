Funcion resultado <- suma (sumando1, sumando2)
	resultado <- sumando1 + sumando2
FinFuncion

Funcion resultado<- resta (numero1, numero2)
	resultado<- numero1 - numero2
FinFuncion

Funcion resultado<- multiplicacion(multiplo1, multiplo2)
	resultado<- multiplo1*multiplo2
FinFuncion

Funcion resultado <- division(dividendo, divisor)
	resultado<- dividendo/divisor
FinFuncion

Algoritmo Calculadora
	Escribir "Bienvenido a mi calculadora"
	Repetir
		Escribir "Elige una opción"
		Escribir "1.- Suma"
		Escribir "2.- Resta"
		Escribir "3.- Multiplicación"
		Escribir "4.- División"
		Leer opc
		Segun opc Hacer
			1:
				Escribir "Introduce el primer sumando"
				Leer sum1
				Escribir "Introduce el segundo sumando"
				Leer sum2
				res<-suma(sum1,sum2)
				Escribir "La suma de " ,sum1, " y " ,sum2, " es " ,res
			2:
				Escribir "Introduce el primer numero"
				Leer num1
				Escribir "Introduce el segundo sumando"
				Leer num2
				res<-resta(num1,num2)
				Escribir "La resta de " ,num1, " y " ,num2, " es " ,res
			3:
				Escribir "Introduce el primer multiplo"
				Leer mult1
				Escribir "Introduce el segundo multiplo"
				Leer mult2
				res<-multiplicacion(mult1,mult2)
				Escribir "La multiplicación de " ,mult1, " por " ,mult2, " es " ,res
			4:
				Escribir "Introduce el dividendo"
				Leer div1
				Escribir "Introduce el divisor"
				Leer div2
				res<-division(div1,div2)
				Escribir "La división de " ,div1, " entre " ,div2, " es " ,res
			De Otro Modo:
				Escribir "No sé qué operación quieres hacer"
		Fin Segun
	Hasta Que opc=1 o opc=2 o opc=3 o opc=4
	
FinAlgoritmo
