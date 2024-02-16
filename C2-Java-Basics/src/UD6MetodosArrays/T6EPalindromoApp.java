package UD6MetodosArrays;

import java.util.Scanner;

import javax.swing.JOptionPane;

public class T6EPalindromoApp {

	public static void main(String[] args) {
		// Ejercicio: escribe un programa que devuelva
		// si un String es palíndromo Ejemplo:"sometemos" o "aibofobia"

		// Declaración e Inicialización de variables
		String palin = "amoroooma";
		String palinReverse = "";
		int indiceRecorre = palin.length() - 1;
		char caracter = palin.charAt(indiceRecorre);
		palinReverse = crearInverso(palin, palinReverse, indiceRecorre, caracter);
		// Llamadas a métodos

		revisaPalindromo(palin, palinReverse);

		// Manel
		Scanner sc = new Scanner(System.in);
		String texto = sc.nextLine();
		boolean endLoop = false;
		
		for (int i = 0; i < texto.length() / 2 && !endLoop; i++) {
			if (texto.charAt(i) != texto.charAt(texto.length() - 1 - i)) {
				endLoop = true;
			}
		}

		if (endLoop) {
			System.out.println("No es palíndromo");
		} else {
			System.out.println("Si es palíndromo");
		}
//		sc.close();

		// Alejandro
		String frase = JOptionPane.showInputDialog(null, "Ingresa un palindromo:");
		String pali = frase.toLowerCase();
		String pala = pali.replaceAll("\s+", "");
		char[] car = pala.toCharArray();
		int longitud = pala.length();
		int limite = (longitud / 2);
		int ult = (longitud - 1);
		int prin = 0;
		boolean noespoli = false;

		if (longitud % 2 == 0) {
			for (prin = 0; ((prin < limite) && (ult >= limite)); prin++, ult--) {
				if (car[prin] != car[ult]) {
					noespoli = true;
				} 
			}
			if (noespoli == true) {
				JOptionPane.showMessageDialog(null, "La frase <" + frase + "> no es un palíndromo.");
			} else {
				JOptionPane.showMessageDialog(null, "La frase <" + frase + "> es un palíndromo.");
			}
		} else {
			for (prin = 0; ((prin < limite) && (ult > limite)); prin++, ult--) {
				if (car[prin] != car[ult]) {
					noespoli = true;
				} 
			}
			if (noespoli == true) {
				JOptionPane.showMessageDialog(null, "La frase <" + frase + "> no es un palíndromo.");
			} else {
				JOptionPane.showMessageDialog(null, "La frase <" + frase + "> es un palíndromo.");
			}
		}
		
		//Alex
		/* Dada una variable String por System.in determinar si es o no palindromo */

	    Scanner pepito = new Scanner(System.in); 

	    System.out.println(" -- ¿SERA PALINDROMO? --");
	    System.out.println("Por favor, introduce la palabra deseada:");

	    String word = pepito.nextLine();
	    pepito.close();

	    word = word.toUpperCase();

	    System.out.println("La palabra INVERTIDA es: "+crearInv(word)+ ".\n");

	    analizaPalindromo(word, "crearInv(word)");
	    
	}

	public static void revisaPalindromo(String palindrom, String palindromInverso) {
		if (palindrom.equals(palindromInverso)) {
			System.out.println("Es un palindromo");
		} else {
			System.out.println("No es un palindromo");
		}
	}

	public static String crearInverso(String palindromo, String palindromoReverse, int indice, char letra) {

		for (int i = indice; i >= 0; i--) {
			palindromoReverse = palindromoReverse.concat(palindromo.valueOf(letra));
			indice--;
			if (indice >= 0) {
				letra = palindromo.charAt(indice);
			}
		}

		return palindromoReverse;
	}

	public static String crearInv (String palabraEscogida) {

	    int lengthIndice = palabraEscogida.length();
	    System.out.println("La palabra " +palabraEscogida+ " tiene " +lengthIndice+ "letras.");

	    StringBuilder palabraReves = new StringBuilder(); //Comando para GENERAR STRING

	    System.out.println("\nVamos a invertir, una a una, las letras de la palabra empezando por el final:");

	    for (lengthIndice = lengthIndice -1 ; lengthIndice >= 0; lengthIndice-- ) {
	        palabraReves.append(palabraEscogida.charAt(lengthIndice)); 
	        System.out.println(palabraReves);
	    }

	    return palabraReves.toString();
	    }
	public static void analizaPalindromo(String palabraEscogida, String nuevaPalabra) { 
	      if(palabraEscogida.equals(nuevaPalabra)) {
	          System.out.println("La palabra " +palabraEscogida+ " ES un palindromo.");
	      } else {
	          System.out.println("La palabra " +palabraEscogida+ " NO ES un palindromo.");
	      }
	}
}
