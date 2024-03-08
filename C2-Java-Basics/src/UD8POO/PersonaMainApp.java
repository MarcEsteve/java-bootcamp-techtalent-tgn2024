package UD8POO;

public class PersonaMainApp {

	public static void main(String[] args) {
		Persona persona1 = new Persona("Ana", 25, "Barcelona");
		Persona persona2 = new Persona("Juan", 30, "Madrid");

		System.out.println(persona1.getNombre()); // Imprime "Ana"
		System.out.println(persona2.getEdad()); // Imprime 30

		persona1.setCiudad("Valencia");

		System.out.println(persona1.toString()); // Imprime "Persona{nombre='Ana', edad=25, ciudad='Valencia'}"


	}

}
