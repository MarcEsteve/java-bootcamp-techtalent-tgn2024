import java.util.Scanner;

public class T5EjExtrasApp {

	public static void main(String[] args) {

//		Ejercicio: escribe un programa que imprima toda la 
//		tabla de multiplicar del 5 (desde 0 hasta 10).
//		int i=0, j=1;
//		while (i<=10) {
//			System.out.println("5 * "+ i + " = " + 5*i);
//			i++;
//		}
//		Ejercicio: escribe un programa que imprima todas 
//		las tablas de multiplicar del 1 al 9(desde 0 hasta 10).
		//int i=0, j=1;
//		while (j<=9) {
//			i = 0;
//			while (i<=10) {
//				System.out.println(j +" * "+ i + " = " + j*i);
//				i++;
//			}
//			j++;
//		}
		//Ejercicio: escribe un programa que dado un número, 
		//sume dicho número con todos los anteriores. 
		//Por ejemplo, para el número 5 el resultado 
		//debería ser 15 (5 + 4 + 3 + 2 +1).
		
		Scanner sc = new Scanner(System.in); 

	    System.out.println(" -- ¡SUMEMOS! --");
	    System.out.println("Por favor, introduce el número entero deseado:");

	    int in = Integer.parseInt(sc.nextLine());
	    sc.close();

	    int suma = 0;

	    do {
	         suma = suma + in--;
	        }while(in >= 1);

	    System.out.println("La suma es: " +suma);
	}

}
