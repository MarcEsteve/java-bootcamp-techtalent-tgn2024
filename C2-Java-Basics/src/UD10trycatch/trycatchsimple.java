package UD10trycatch;

import java.io.*;

public class trycatchsimple {

	public static void main(String[] args) {

		try {
			// Código que podría lanzar una excepción
			int resultado = 10 / 0; // Esto lanzará una ArithmeticException
		} catch (ArithmeticException e) {
			// Manejo de la excepción
			System.out.println("¡Ups! Hubo un error aritmético: " + e.getMessage());
		}

//		int resultado = 10 / 0;

		try {
			// Intentar acceder a un índice fuera de rango en un arreglo
			int[] arreglo = { 24, 33, 58 };
			System.out.println(arreglo[3]); // Esto lanzará una ArrayIndexOutOfBoundsException
		} catch (ArrayIndexOutOfBoundsException e) {
			// Manejo de la excepción de índice fuera de rango
			System.out.println("¡Ups! Índice fuera de rango: " + e.getMessage());
		}
//		int[] arreglo = { 24, 33, 58 };
//		System.out.println(arreglo[3]);
		
		try {
			// Intentar convertir una cadena no numérica a un número
			String cadenaNoNumerica = "abc";
			int numero = Integer.parseInt(cadenaNoNumerica); // Esto lanzará una NumberFormatException
		} catch (NumberFormatException e) {
			// Manejo de la excepción de formato de número incorrecto
			System.out.println("¡Ups! Formato de número incorrecto: " + e.getMessage());
		}

//		int numero = Integer.parseInt(cadenaNoNumerica);
		
		try {
			// Intentar abrir un archivo que no existe
			FileReader archivo = new FileReader("archivo_que_no_existe.txt"); // Esto lanzará una FileNotFoundException
		} catch (FileNotFoundException e) {
			// Manejo de la excepción de archivo no encontrado
			System.out.println("¡Ups! Archivo no encontrado: " + e.getMessage());
		}
		
//		FileReader archivo = new FileReader("archivo_que_no_existe.txt");
	}

}
