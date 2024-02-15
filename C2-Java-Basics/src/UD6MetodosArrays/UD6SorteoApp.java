package UD6MetodosArrays;

import java.util.Scanner;

public class UD6SorteoApp {

    public static void main(String[] args) {
//		Ejercicio del sorteo
//		Pedir 3 strings por pantalla 
//		Realizar un recorrido del array y mostrar los 3 participantes
//		en una lista y a continuación con método Math.random
//		rango del indice 0 al 2 (lenght-1) te arroje un ganador.
    	
        Scanner scanner = new Scanner(System.in);
        String[] participantes = new String[3];

        // Pedir los nombres de los participantes
        for (int i = 0; i < 3; i++) {
            System.out.print("Ingrese el nombre del participante " + (i + 1) + ": ");
            participantes[i] = scanner.nextLine();
        }

        // Mostrar los participantes
        System.out.println("\nLista de participantes:");
        for (String participante : participantes) {
            System.out.println("- " + participante);
        }

        // Realizar el sorteo
        int indiceGanador = (int) (Math.random() * participantes.length);
        String ganador = participantes[indiceGanador];
        System.out.println("\n¡El ganador del sorteo es: " + ganador + "!");
    }
}
