package UD4JavaBasics.teoria;

public class UD4PruebaIncremento {

	public static void main(String[] args) {
		
		//Operadores unarios incremento ++ decremento --
		int operador = 10;
		int x=0;
		operador++;
		operador++;
		operador--;
		
		x=operador++;
		
		x=++operador;	
		
		//EJERCICIO
		
		int op = 10;
		System.out.println(op);
		System.out.println(op++);
		System.out.println(++op);

	}

}
