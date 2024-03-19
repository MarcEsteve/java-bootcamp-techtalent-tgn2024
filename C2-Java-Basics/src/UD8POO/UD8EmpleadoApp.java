package UD8POO;

public class UD8EmpleadoApp {

	public static void main(String[] args) {

		UD8Empleado arrayObjetos[] = new UD8Empleado[3];
		
		arrayObjetos[0]=new UD8Empleado("Fernando","Esteve",23, 1000);
		arrayObjetos[1]=new UD8Empleado("Epi","Dermis",30, 1500);
		arrayObjetos[2]=new UD8Empleado("Sonia","Fermia",25, 1200);
		
		int suma =0;
		for (int i = 0; i < arrayObjetos.length; i++) {
			suma+=arrayObjetos[i].getSalario();
		}
		System.out.println("La suma de salarios es " + suma);
		
		UD8Empleado empleado1 = new UD8Empleado();
		UD8Empleado empleado2 = new UD8Empleado();
		
		if (empleado1.equals(empleado2)) {
			System.out.println("Los objetos empleado1 y empleado2 son iguales");
		} else {
			System.out.println("Los objetos empleado1 y empleado2 no son iguales");	 
		}

		UD8Empleado empleado3;
		empleado3=empleado1;
		
		if (empleado3.equals(empleado1)) {
			System.out.println("Los objetos empleado3 y empleado1 son iguales");
		} else {
			System.out.println("Los objetos empleado3 y empleado1 no son iguales");	 
		}
		
		
	}

}
