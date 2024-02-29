package UD6MetodosArrays;

import java.util.Random;
import java.util.Scanner;

import javax.swing.JOptionPane;

public class T6Ej11App {

	public static void main(String[] args) {
		/*
		 * Crear dos arrays con la longitud por teclado Array1 con num aleatorios Array2
		 * cogerá los valores de Array1 y los mult. por random Array 3 = Array1 * Array2
		 * Mostrar los 3 arrays
		 */

		String tamany = JOptionPane.showInputDialog("¿Cual será el tamaño del array?");
		int tam = Integer.parseInt(tamany);
		
		StringBuilder coleccion1 = new StringBuilder();
		StringBuilder coleccion2 = new StringBuilder();
		StringBuilder coleccion3 = new StringBuilder();
		int array1[] = new int[tam];
		int array2[] = new int[tam];
		int multiplicado[] = new int[tam];
		boolean yaAsignado[] = new boolean[tam];

		rellenararray1(array1, tam, coleccion1);
		//rellenararray2(array1, array2, yaAsignado, tam, coleccion2);
		rellenarArray2(array1, array2);
		rellenararray3(array1, array2, multiplicado, tam, coleccion3);

		JOptionPane.showMessageDialog(null,
				"La primera colección contiene: \n - - " 
						+ coleccion1 + " - - \n La segunda colección contiene: "
						+ "\n - - "	+ coleccion2 + " - - \n Y las "
						+ "multiplicaciones dan: \n - - " + coleccion3 + " - - ");
	}
	//Primer array con randoms
	public static void rellenararray1(int[] array, int tam, 
			StringBuilder coleccion1) {
		int min = 0;
		int max = 10;
		for (int i = 0; i < tam; i++) {
			int alea = (int) ((Math.random() * (max - min)) + min);
			min += 10;
			max += 10;
			array[i] = alea;
			coleccion1.append(alea + " ");
		}
	}
	//Reordenar en el segundo en vez de tener en cuenta un factor del primero
//	public static void rellenararray2(int[] array, int[] aleatorio, 
	//boolean[] yaAsignado, int tam,
//			StringBuilder coleccion2) {
//		int posicionale = 0;
//		for (int i = 0; i < tam; i++) {
//			do {
//				posicionale = (int) (Math.random() * tam);
//			} while (yaAsignado[posicionale]);
//			aleatorio[i] = array[posicionale];
//			yaAsignado[posicionale] = true;
//			coleccion2.append(aleatorio[i] + " ");
//		}
//	}
	
	public static void rellenarArray2(int[] a1, int[] a2) {
        Random random= new Random(); 
        
        for (int i = 0; i < a2.length; i++) {
            a2[i]= a1[i]*random.nextInt(100);
        }
    }
	
	//Rellenar el tercer ARRAY con la multiplicación de ambos anteriores
	public static void rellenararray3(int[] array, int[] aleatorio, 
			int[] multiplicado, int tam,
			StringBuilder coleccion3) {
		for (int i = 0; i < tam; i++) {
			multiplicado[i] = array[i] * aleatorio[i];
			coleccion3.append(multiplicado[i] + " ");
		}
	}

}
