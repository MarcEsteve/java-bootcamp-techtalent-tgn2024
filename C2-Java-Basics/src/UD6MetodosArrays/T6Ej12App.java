package UD6MetodosArrays;

import java.util.Scanner;

public class T6Ej12App {
	/*
	 * Crea un array de números de un tamaño pasado por teclado. El array contendrá
	 * números aleatorios entre 1 y 300. Mostrará aquellos números que acaben en un
	 * dígito que nosotros le indiquemos por teclado. Debes controlar que se
	 * introduce un numero correcto. Estos deben guardarse en un nuevo array.
	 */

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Ingresa la longitud del array a crear:");
		int lengthIntro = Integer.parseInt(sc.nextLine());

		int[] arrayCreado = crearYrellenarArrayRANDOM(lengthIntro);

		System.out.println("El array creado es:");
		imprimirArray(arrayCreado);
		System.out.println("\n¿Que ultimo digito quieres chequear?");
		String num2checkIntro = sc.nextLine();
		checkArray(arrayCreado, num2checkIntro);
		System.out.println("\nSe ha generado el array cuyo digito escogido coincide con los valores"
				+ " del array generado anteriormente:");
		imprimirArray(newArraySelectedDigit(arrayCreado, num2checkIntro));
		sc.close();
	}

	public static int[] crearYrellenarArrayRANDOM(int lengthArray) {
		
		int array[] = new int[lengthArray];

		for (int i = 0; i < lengthArray; i++) {
			int randomNum = (int) (Math.random() * (300 - 1 + 1)) + 1;
			array[i] = randomNum;
		}

		return array;
	}

	public static void imprimirArray(int lista[]) {
		for (int i = 0; i < lista.length; i++) {
			System.out.print(lista[i]);
			if (i < lista.length - 1) {
				System.out.print(", ");
			}
		}
	}

	public static void checkArray(int array2check[], String num2check) {
		System.out.print("Los numeros cuyo ultimo digito es " + num2check + " son:");
		for (int i = 0; i < array2check.length; i++) {
			String valuePosition = String.valueOf(array2check[i]);
			char lastDigit = valuePosition.charAt(valuePosition.length() - 1);

			if (String.valueOf(lastDigit).equals(num2check)) {
				System.out.print("\n" + valuePosition);
			}

		}
	}

	public static int[] newArraySelectedDigit(int[] array2check, String num2check) {
		/*
		 * Voy a copiar el array y lo voy a chequear igual que en el metodo checkArray.
		 * En vez de devolver los numeros, lo que voy a hacer es guardarlos en el array
		 * copiado. A la vez, cada vez que encuentre un valor y lo copie al nuevo array,
		 * aumento el contador creado. Este array copiado es TEMPORAL, ya que mantiene
		 * la longitud del array original. Usamos el contador para dar la longitud del
		 * array final; se copia el array tempy se eliminan los espacios vacíos que
		 * contenga con el comando System.arraycopy
		 */
		int[] numerosGuardadosTEMP = new int[array2check.length];
		int coincidencias = 0; // contador generado

		for (int i = 0; i < array2check.length; i++) {
			String checkPosition = String.valueOf(array2check[i]);
			char lastDigit = checkPosition.charAt(checkPosition.length() - 1);

			if (String.valueOf(lastDigit).equals(num2check)) {
				numerosGuardadosTEMP[coincidencias] = array2check[i];
				coincidencias++;
			}
		}
		int size = coincidencias;
//    Elimino las posiciones que no tienen valor copiado y doy como length del nuevo array
//    el valor del contador, que aumenta por cada valor copiado.
		int[] arrayFinal = new int[size];
		// arraycopy(Object src, int srcPos, Object dest, int destPos, int length)
		/*
		 * src: copiamos el array origen srcPos: posicion inicial a partir de la cual
		 * copiamos dest: array destino al que se copian los datos (el array final)
		 * destPos: lo mismo, posicion inicila array origen a partir de la cual copiamos
		 * length: NUMERO DE ELEMENTOS a copiar, desde OG a Final
		 */
		System.arraycopy(numerosGuardadosTEMP, 0, arrayFinal, 0, size);

		return arrayFinal;

	}
	
	// Imprime por consola los valores del array que teminan en n
    public static void mostrarArrayDigito(int[] a, int n) {
        for (int i = 0; i < a.length; i++) {
            if (a[i] % 10 == n) {
                System.out.println("a[" + i + "] : " + a[i]);
            }
        }
    }
}