package UD9Herencia;

public class UD9Comercial extends UD9Empleado{
	//Atributos (hereda de Empleado + los propios)
	
	private double comision;

	//Constructores
	public UD9Comercial() {
		this.comision=0;
		this.nombre = "";
		this.apellido = "";
		this.edad = 0;
		this.salario = 0.0;
	}

	public UD9Comercial(String name, String surname, 
		int age, double account, double comi) {
		super(name, surname, age, account);
		this.comision = comi;
	}
	
	//Métodos
	
	
}
