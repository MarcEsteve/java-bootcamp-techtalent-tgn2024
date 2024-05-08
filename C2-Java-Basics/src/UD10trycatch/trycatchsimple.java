package UD10trycatch;

public class trycatchsimple {

	public static void main(String[] args) {
		
		try {
		    // Código que podría lanzar una excepción
		    int resultado = 10 / 0; // Esto lanzará una ArithmeticException
		} catch (ArithmeticException e) {
		    // Manejo de la excepción
		    System.out.println("¡Ups! Hubo un error aritmético: " + e.getMessage());
		}
		
		int resultado = 10 / 0;
	}

}
