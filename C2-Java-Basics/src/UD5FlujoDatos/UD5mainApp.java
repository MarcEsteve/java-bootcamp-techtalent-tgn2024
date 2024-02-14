package UD5FlujoDatos;
import java.util.Scanner;

public class UD5mainApp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("-- Bienvenido a JAVA --");
		System.out.println("Introduce tu nombre:");
		
		String name = sc.nextLine();
//		sc.close();
		
		System.out.println("Hola " + name.toUpperCase());
		
		//Otro ejemplo con enteros
		System.out.println("Introduce tu edad:");
		
		int num = sc.nextInt();
		sc.close();
		
		System.out.println("Tu edad es " + num);

	}
	

}
