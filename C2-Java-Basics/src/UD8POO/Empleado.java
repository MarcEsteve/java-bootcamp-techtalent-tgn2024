package UD8POO;

public class Empleado {
	//Atributos
	private String nombre;
	private String apellido;
	private int edad;
	private double salario;
	
	//Constructores
	
	public Empleado() {
		this.nombre = "";
		this.apellido = "";
		this.edad = 0;
		this.salario = 0.0;
	}

	public Empleado(String name, String surname, int age, double account) {
		super();
		this.nombre = name; 
		//Al atributo de la CLASS Empleado le asignamos el primer parámetro
		this.apellido = surname;
		this.edad = age;
		this.salario = account;
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
	public boolean equals(Empleado a) {
		if (a.getNombre().equals(nombre) && a.getApellido().equals(apellido)) {
			return true;
		} else {
			return false;
		}	
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
