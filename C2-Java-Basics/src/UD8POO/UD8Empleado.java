package UD8POO;

public class UD8Empleado {
	//Atributos
	private String nombre;
	private String apellido;
	private int edad;
	private double salario;
	
	//Constructores
	
	public UD8Empleado() {
		this.nombre = "";
		this.apellido = "";
		this.edad = 0;
		this.salario = 0.0;
	}

	public UD8Empleado(String nombre, String apellido, int edad, double salario) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.edad = edad;
		this.salario = salario;
	}
	
	//Métodos
	public boolean plus (double sueldoPlus) {
		boolean aumento=false;
		if (edad>40) {
			salario+=sueldoPlus;
			aumento=true;
		} 
		return aumento;
	}
	
	//Getters y Setters
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	
	
}
