package UD6MetodosArrays;

import java.util.Scanner;

public class T6Ej07ContadorApp {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingresa un número entero positivo: ");
        int numero = scanner.nextInt();

        if (numero < 0) {
            System.out.println("El número ingresado no es positivo.");
        } else {
            int cantidadCifras = contarCifras(numero);
            System.out.println("El número de cifras de " + numero + " es: " + cantidadCifras);
        }
        scanner.close();
    }

    public static int contarCifras(int numero) {
        if (numero == 0) {
            return 1; // Si el número es 0, tiene una sola cifra
        }
        int count = 0;
        while (numero != 0) {
            numero = numero / 10;
            count++;
        }
        return count;
    }
}
