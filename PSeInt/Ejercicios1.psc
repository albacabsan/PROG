Funcion resultado<- IMC(peso, altura)
	resultado<- peso/(altura^2)
FinFuncion

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


Algoritmo Ejercicios1
// 1.Escribe un programa que pida el nombre, los apellidos y el sexo y muestre en la salida: Bienvenido, Sr./Sra. "Nombre y apellidos"
	Escribir "Dime tu nombre"
	Leer nom
	Escribir "Dime tus apellidos"
	Leer ape
	Repetir
		Escribir "Dime tu sexo"
		Leer sexo
		Si sexo="mujer" Entonces
			Escribir "Bienvenida, Sra. " ,nom, " " ,ape
		SiNo Si sexo="hombre" Entonces
				Escribir "Bienvenido, Sr. " ,nom, " " ,ape
			SiNo 
				Escribir "No te entiendo, repítemelo"
			Fin Si
		Fin Si
	Hasta Que sexo="mujer" o sexo="hombre"
	
	
	
	
//2.Escribe un programa que determine si el número introducido es positivo o negativo
	Escribir "Hola usuario, dime un número"
	Leer num
	Si num>=0 Entonces
		Escribir "El número " ,num, " es positivo"
	SiNo
		Escribir "El número " ,num, " es negativo"
	Fin Si
	
	
//3.Escribe un programa que determine si el número introducido tiene 3 dígitos o no.
	Escribir "Hola usuario, dime un número"
	Leer num1
	Si (num1>=100 y num1<=999) o (num1<=-100 y num1>=-999) Entonces
		Escribir "El número " ,num1, " tiene 3 dígitos"
	SiNo
		Escribir "El número " ,num1, " no tiene 3 dígitos"
	Fin Si
	
	
//4.Escribe un programa que pida 2 números e indique si el primero es múltiplo del segundo
	Escribir "Hola usuario, dime dos números"
	Leer num1
	Leer num2
	Si num1%num2=0 Entonces
		Escribir "El número " ,num1, " es múltiplo de " ,num2
	SiNo
		Escribir "El número " ,num1, " no es múltiplo de " ,num2
	Fin Si
	
	
//5.Escribe un programa que determine si el número introducido termina en 0 (positivo o negativo)
	Escribir "Hola usuario, dime un número"
	Leer num
	Si num%10=0 Entonces
		Escribir "El número introducido termina en 0"
	SiNo
		Escribir "El número introducido no termina en 0"
	Fin Si
	
//6.Escribe un programa que pida 2 números y a continuación la operación a realizar (1. suma, 2. resta, 3. multiplicación, 4. división). El programa debe devolver el resultado de la operación indicada.
	Escribir "Bienvenido a mi calculadora"
	Escribir "Dime dos numeros"
	Leer num1
	Leer num2
	Repetir
		Escribir "Elije una opción"
		Escribir "1.- Suma"
		Escribir "2.- Resta"
		Escribir "3.- Multiplicación"
		Escribir "4.- División"
		Leer opc
		Segun opc Hacer
			1:
				res<-suma(num1,num2)
				Escribir "La suma de " ,num1, " y " ,num2, " es " ,res
			2:
				res<-resta(num1,num2)
				Escribir "La resta de " ,num1, " y " ,num2, " es " ,res
			3:
				res<-multiplicacion(num1,num2)
				Escribir "La multiplicación de " ,num1, " por " ,num2, " es " ,res
			4:
				res<-division(num1,num2)
				Escribir "La división de " ,num1, " entre " ,num2, " es " ,res
			De Otro Modo:
				Escribir "No sé qué operación quieres hacer"
		Fin Segun
	Hasta Que opc=1 o opc=2 o opc=3 o opc=4
	
//7.Escribe un programa que pida la altura y el peso y muestre el imc de esa persona
	Escribir "Hola usuario, dime tu altura en metros"
	Leer alt
	Escribir "Ahora dime tu peso en kilogramos"
	Leer pes
	res <- IMC(pes,alt)
	Si res<=18.5 Entonces
		Escribir "Tu IMC es " ,res ", tu peso es inferior al normal"
	SiNo Si res>18.5 y res<24.9 Entonces
			Escribir "Tu IMC es " ,res ", tu peso es normal"
		SiNo Si res>25 y res<29.9 Entonces
				Escribir "Tu IMC es " ,res ", tu peso es superior al normal"
			SiNo Si res>30 Entonces
					Escribir "Tu IMC es " ,res ", tienes obesidad"
				FinSi
			FinSi
		FinSi
	FinSi	
	
	
//8.Escribe un programa que determine si el número introducido termina en 5 (positivo o negativo)	
	Escribir "Hola usuario, dime un número"
	Leer num
	Si num%5=0 y num%10<>0  Entonces
		Escribir "El número introducido termina en 5"
	SiNo
		Escribir "El número introducido no termina en 5"
	Fin Si	
	
	
//9.Escribe un programa que pida 3 números y los muestre de menor a mayor.
	Escribir "Hola usuario, dime tres números"
	Leer num1
	Leer num2
	Leer num3
	Si num1>num2 y num2>num3 Entonces
		Escribir "El orden de los números de menor a mayor es " ,num3, ", " ,num2, " y " ,num1
	SiNo Si num1>num3 y num3>num2  Entonces
			Escribir "El orden de los números de menor a mayor es " ,num2, ", " ,num3, " y " ,num1
		SiNo Si num2>num1 y num1>num3
				Escribir "El orden de los números de menor a mayor es " ,num3, ", " ,num1, " y " ,num2
			SiNo Si num2>num3 y num3>num1 Entonces
					Escribir "El orden de los números de menor a mayor es " ,num1, ", " ,num3, " y " ,num2
				SiNo Si num3>num1 y num1>num2 Entonces
						Escribir "El orden de los números de menor a mayor es " ,num2, ", " ,num1, " y " ,num3
					SiNo Si num3>num2 y num2>num1 Entonces
							Escribir "El orden de los números de menor a mayor es " ,num1, ", " ,num2, " y " ,num3
						FinSi
						
					FinSi
				FinSi
			FinSi	
		FinSi
		FinSi
	
	
//10.Escribe un programa que calcule el aumento al sueldo de un empleado; si el sueldo es mayor a 500.000? su aumento será del 12%, pero si su sueldo es menor, el aumento será del 15%.
	Escribir "Hola usuario, dime tu sueldo y te calcularé el aumento"
	Leer sueldo
	Si sueldo>=500000 Entonces
		res<- sueldo*0.12
	SiNo
		res<- sueldo*0.15
	FinSi
	Escribir "El aumento de tu suelto es de " ,res, " euros"
	
	
	
//11.Escribe un programa que calcule el precio total de la compra de zapatos para una tienda que tiene una promoción de descuento para vender al por mayor, esta dependerá del número de zapatos que se compren. Si son más de diez, se les dará un 10% de descuento sobre el total de la compra; si el número de zapatos es mayor de veinte pero menor de treinta, se le otorga un 20% de descuento; y si son más treinta zapatos se otorgará un 40% de descuento. El precio de cada zapato es de 80?.
	Escribir "Hola usuario, ¿cuantos zapatos quieres comprar?"
	Leer num_zapatos
	precio <- 80*num_zapatos
	Si num_zapatos>=10 y num_zapatos<20 Entonces
		Escribir "Tu descuento será del 10%, el total de la compra ahora es " precio*0.9 " euros"
	SiNo Si num_zapatos>=20 y num_zapatos<30 Entonces
			Escribir "Tu descuento será del 20%, el total de la compra ahora es " precio*0.8 " euros"
		Sino Si num_zapatos>30 Entonces
				Escribir "Tu descuento será del 40%, el total de la compra ahora es " precio*0.6 " euros"
				Si num_zapatos<10 Entonces
					Escribir "No cumples los requisitos para obtener el descuento"
				FinSi
			FinSi
		Fin Si
	Fin Si
	
	
	
FinAlgoritmo



