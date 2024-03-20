package UD9Herencia;

public class UD9Comercial extends UD9Empleado{
	//Atributos (hereda de Empleado + los propios)
	
	private double comision;

	//Constructores
	public UD9Comercial() {
		super();
		this.comision=0;
	}

	public UD9Comercial(String name, String surname, 
		int age, double account, double comi) {
		
		super(name, surname, age, account);
		this.comision = comi;
	}
	//Métodos
	@Override
	public boolean plus(double sueldoPlus) {
		boolean aumento=false;
		if (comision<50) {
			salario+=sueldoPlus;
			aumento=true;
		} 
		return aumento;
	}
	

	
	
}
