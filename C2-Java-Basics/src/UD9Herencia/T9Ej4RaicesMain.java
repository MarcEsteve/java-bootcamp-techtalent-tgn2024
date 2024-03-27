package UD9Herencia;

public class T9Ej4RaicesMain {

	public static void main(String[] args) {
		// Ejemplo de uso
		T9Ej4Raices ecuacion = new T9Ej4Raices(1, -3, 2);
        System.out.println("Discriminante: " + ecuacion.getDiscriminante());
        System.out.println("¿Tiene raíces? " + ecuacion.tieneRaices());
        System.out.println("¿Tiene raíz única? " + ecuacion.tieneRaiz());
        ecuacion.calcular();
        ecuacion.obtenerRaices();
        ecuacion.obtenerRaiz();
	}

}
