package UD6MetodosArrays;

import java.util.Scanner;

public class T6Ej04App {

	public static void main(String[] args) {
        
        int bin;
        Scanner sc = new Scanner(System.in); 
        
        System.out.println(" -- ¡DECIMAL A BINARIO! --");
        System.out.println("Por favor, introduce el número entero deseado:");
            
        bin = Integer.parseInt(sc.nextLine());
        sc.close();
                    
        System.out.println("El binario generado es: " +dec2bin(bin));
    }
    
    public static String dec2bin (int decimal) {
        
        if (decimal == 0) {
            return "0";
        }
        
        StringBuilder binario = new StringBuilder();
        
        do {
            int residuo = decimal % 2;
            binario.insert(0, residuo);
            decimal = decimal / 2;
            System.out.println(residuo + " " + decimal);
             
            }while(decimal > 0);
        return binario.toString(); //StringBuilder --> String
    } 
    //Factorial de Manel
    public static int factorial(int n) {
        n = Math.abs(n);

        if (n <= 1) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }
}
