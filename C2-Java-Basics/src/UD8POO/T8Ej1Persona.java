package UD8POO;

public class T8Ej1Persona {
	
	//Gracias a Aurora :)
	
	private String nombre;
	private int edad;
	private String DNI;
	private final String sexo;
	private double peso;
	private double altura;

	public T8Ej1Persona() {
		this.nombre = " ## ";
		this.edad = 0;
		this.DNI = " xxxxxxxxC ";
		this.sexo = " hombre ";
		this.peso = 0.0;
		this.altura = 0.0;

	}

	public T8Ej1Persona(String nombre, int edad) {
		this.nombre = nombre;
		this.edad = edad;
		this.DNI = " xxxxxxxxC ";
		this.sexo = " hombre ";
		this.peso = 0.0;
		this.altura = 0.0;
	}

	public T8Ej1Persona(String nombre, int edad, String dni, double peso, double altura) {
		this.nombre = nombre;
		this.edad = edad;
		this.DNI = dni;
		this.sexo = " hombre ";
		this.peso = peso;
		this.altura = altura;
	}

	public void mostrar() {
		System.out.println("El nombre es " + this.nombre + " y tiene " + this.edad + " años. Su dni es " + this.DNI
				+ " su sexo es " + this.sexo + "su peso es " + this.peso + " y su altura es " + this.altura + ".");
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public String getSexo() {
		return sexo;
	}

}
