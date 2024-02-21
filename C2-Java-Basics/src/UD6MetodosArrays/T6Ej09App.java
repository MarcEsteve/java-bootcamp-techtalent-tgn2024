package UD6MetodosArrays;

import java.util.Scanner;

public class T6Ej09App {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
        System.out.print("Entra un tamaño de array: ");
        int size = scanner.nextInt();
        int array9[]= new int [size];
        int sumarTotal =0;
        // Recorre el array para asignarle valor random
        for (int i = 0; i < array9.length; i++) {
            array9[i]=(int) (Math.random()*10);

        }
        // Recorre el array para mostrar los valores
        for (int i = 0; i < array9.length; i++) {
        	if (i==0) {
        		System.out.print("{" + array9[i]+",");
			} else if (i < array9.length -1 ) {
        		System.out.print(array9[i]+",");
			} else {
        		System.out.print(array9[i]+"}");
			}
        }
        // SUmar todos los valores del array
        for (int i = 0; i < array9.length; i++) {
        	sumarTotal+= array9[i];
        }
        
        scanner.close();
        System.out.println("\nLa suma total es: " + sumarTotal);
	}

}
