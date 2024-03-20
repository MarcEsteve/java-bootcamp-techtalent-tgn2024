package UD9Herencia;

public abstract class UD9Empleado implements UD9Empleable {
		//Atributos
		protected String nombre;
		protected String apellido;
		protected int edad;
		protected double salario;
		private String dni;
		protected final static double SALARIO_DEF=600;
		
		//Constructores
		
		public UD9Empleado() {
			this.nombre = "";
			this.apellido = "";
			this.edad = 0;
			this.salario = SALARIO_DEF;
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
		public abstract boolean plus (double sueldoPlus);
		
		//Métodos privados
		
		private boolean compruebaNombre() {
			if(nombre.equals("")) {
				return false;
			}
			return true;
			
		}

		
		public double calcBruto(double pagaExtra) {
			return 0;
		}
}
