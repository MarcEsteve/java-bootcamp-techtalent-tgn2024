package UD9Herencia;

public class UD9Empleado {
		//Atributos
		protected String nombre;
		protected String apellido;
		protected int edad;
		protected double salario;
		
		//Constructores
		
		public UD9Empleado() {
			this.nombre = "";
			this.apellido = "";
			this.edad = 0;
			this.salario = 0.0;
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
		
		
}
