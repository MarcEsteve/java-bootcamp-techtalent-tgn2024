package UD4JavaBasics;
public class UD4OperadoresAsignacionIncremento {
	public static void main(String[] args) {
		// Declaración de variables
		int numero = 5;

		// Operadores de asignación e incremento

		numero = 4; // Equivale a: numero = numero 4;
		numero += 3; // Equivale a: numero = numero + 3;
		numero -= 2; // Equivale a: numero = numero - 2;
		numero /= 2; // Equivale a: numero = numero / 2;
		numero *= 3; // Equivale a: numero = numero * 3;
		numero %= 4; // Equivale a: numero = numero % 4;
		numero++; // Incremento en 1
		numero--; // Decremento en 1

		// Mostrar resultado en pantalla
		System.out.println("Número final: " + numero);
	}
}