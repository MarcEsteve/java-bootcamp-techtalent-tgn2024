package UD9Herencia;

public class UD9EmpleadoApp {

	public static void main(String[] args) {
		//Creamos los objetos "instanciaciones" de las clases hijas
		UD9Comercial comercial1= new UD9Comercial("Antonio","López", 24, 600, 50);
		UD9Repartidor repartidor1= new UD9Repartidor("Fernando","Esteve", 43, 400, "Este");
//		UD9Empleado empleado1 = new UD9Empleado(); //No se puede instanciar de clases abstractas
		
		//Invocamos métodos de la clase padre
		comercial1.plus(300);
		repartidor1.plus(300);
		
		//Mostramos el salario y si se le aplica el plus de sueldo
		System.out.println("El salario actual de " + comercial1.getNombre() 
					+ " es de " + comercial1.getSalario());
		System.out.println("El salario actual de " + repartidor1.getNombre() 
		+ " es de " + repartidor1.getSalario());
		
//		System.out.println("Comprobar el nombre " 
//				+ empleado1.comprueba()
//				+ empleado1.getDni() );

	}

}
