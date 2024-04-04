package UD9Herencia;

public class T9Ej4Raices {
	private double a;
	private double b;
	private double c;

	// Constructor
	public T9Ej4Raices(double a, double b, double c) {
		this.a = a;
		this.b = b;
		this.c = c;
	}

	// Método para obtener el discriminante
	public double getDiscriminante() {
		return Math.pow(b, 2) - 4 * a * c;
	}

	// Método para comprobar si tiene dos soluciones
	public boolean tieneRaices() {
		return getDiscriminante() > 0;
	}

	// Método para comprobar si tiene una única solución
	public boolean tieneRaiz() {
		return getDiscriminante() == 0;
	}

	// Método para calcular e imprimir las posibles soluciones
	public void calcular() {
		if (tieneRaices()) {
			obtenerRaices();
		} else if (tieneRaiz()) {
			obtenerRaiz();
		} else {
			System.out.println("No tiene soluciones reales.");
		}
	}
	// Método para imprimir las dos posibles soluciones
	public void obtenerRaices() {
		double discriminante = getDiscriminante();
		double raiz1 = (-b + Math.sqrt(discriminante)) / (2 * a);
		double raiz2 = (-b - Math.sqrt(discriminante)) / (2 * a);
		System.out.println("Las raíces son: " + raiz1 + " y " + raiz2);
	}
	// Método para imprimir la única raíz
	public void obtenerRaiz() {
			double raizUnica = -b / (2 * a);
			System.out.println("La única raíz es: " + raizUnica);
	}
}
