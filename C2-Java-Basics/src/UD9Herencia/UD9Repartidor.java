package UD9Herencia;

public class UD9Repartidor extends UD9Empleado {
	//Atributos (hereda de Empleado + los propios)
	
		private String zona;

		//Constructores
		public UD9Repartidor() {
			this.zona="";
			this.nombre = "";
			this.apellido = "";
			this.edad = 0;
			this.salario = 0.0;
		}

		public UD9Repartidor(String name, String surname, 
			int age, double account, String alcance) {
			super(name, surname, age, account);
			this.zona = alcance;
		}

		public boolean plus(double sueldoPlus) {
			boolean aumento=false;
			if (edad>40) {
				salario+=sueldoPlus;
				aumento=true;
			} 
			return aumento;
		}
}
