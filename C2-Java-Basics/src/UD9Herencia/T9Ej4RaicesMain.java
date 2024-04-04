package UD9Herencia;

public class T9Ej4RaicesMain {

	public static void main(String[] args) {
		// Ejemplo de uso
		T9Ej4Raices ecuacion = new T9Ej4Raices(9, 1, 13);
//        System.out.println("Discriminante: " + ecuacion.getDiscriminante());
//        System.out.println("¿Tiene raíces? " + ecuacion.tieneRaices());
//        System.out.println("¿Tiene raíz única? " + ecuacion.tieneRaiz());
        ecuacion.calcular();
        	
//        	Con dos soluciones reales:
//        	Coeficientes: a = 1, b = -3, c = 2
//        	Coeficientes: a = 2, b = 5, c = -3
//        	Coeficientes: a = 1, b = -6, c = 9
//        	Con una solución real:
//        	Coeficientes: a = 1, b = -4, c = 4
//        	Coeficientes: a = 2, b = -8, c = 8
//        	Coeficientes: a = 3, b = -18, c = 27
//        	Sin soluciones reales:
//        	Coeficientes: a = 1, b = 2, c = 3
//        	Coeficientes: a = 4, b = 2, c = 1
//        	Coeficientes: a = 1, b = 1, c = 1
	}

}
