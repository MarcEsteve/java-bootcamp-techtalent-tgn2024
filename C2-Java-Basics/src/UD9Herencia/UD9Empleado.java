package UD9Herencia;

public class UD9Empleado {
		//Atributos
		protected String nombre;
		protected String apellido;
		protected int edad;
		protected double salario;
		private String dni;
		
		//Constructores
		
		public UD9Empleado() {
			this.nombre = "";
			this.apellido = "";
			this.edad = 0;
			this.salario = 0.0;
			this.dni = "123456";
		}

		public UD9Empleado(String name, String surname, int age, double account) {
			this.nombre = name; 
			this.apellido = surname;
			this.edad = age;
			this.salario = account;
		}
		
		
		//Métodos getters y setters
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
		
		
		public String getDni() {
			return dni;
		}

		public void setDni(String dni) {
			this.dni = dni;
		}
		
		public boolean comprueba() {
			return compruebaNombre();
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
		
		//Métodos privados
		
		private boolean compruebaNombre() {
			if(nombre.equals("")) {
				return false;
			}
			return true;
			
		}
}
