package UD6MetodosArrays;

public class T6EPalindromoApp {

	public static void main(String[] args) {
		// Ejercicio: escribe un programa que devuelva
		// si un String es palíndromo Ejemplo:"sometemos" o "aibofobia"
		
		//Declaración e Inicialización de variables
		String palin = "amoroooma";
		String palinReverse = "";
		int indiceRecorre = palin.length() - 1; 
		char caracter = palin.charAt(indiceRecorre); 
		palinReverse= crearInverso(palin,palinReverse,indiceRecorre,caracter);
		//Llamadas a métodos
		
		revisaPalindromo(palin,palinReverse);
	}
	
	public static void revisaPalindromo (String palindrom, String palindromInverso) {
		if (palindrom.equals(palindromInverso)) {
			System.out.println("Es un palindromo");
		} else {
			System.out.println("No es un palindromo");
		}
	}
	
	public static String crearInverso (
			String palindromo, 
			String palindromoReverse, 
			int indice , char letra ) {
		
		for (int i = indice; i >= 0; i--) {
			palindromoReverse = palindromoReverse
								.concat(palindromo.valueOf(letra));
			indice--;
			if (indice >= 0) {
				letra = palindromo.charAt(indice);
			}
		}
		
		return palindromoReverse;
	}

}
