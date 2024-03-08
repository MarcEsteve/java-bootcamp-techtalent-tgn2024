package UD8POO;

public class Frutas {
	
	// Atributos
	public String nombre;
	public String color;
	public double precio;
	
	// Constructores
	public Frutas() {
		this.nombre="";
		this.color="Indeterminado";
		this.precio=0.0;
	}
	
	public Frutas(String param1) {
		this.color="Indeterminado";
		this.precio=0.0;
		this.nombre = param1;
	}
	
	public Frutas(double param1) {
		this.color="Indeterminado";
		this.precio=param1;
		this.nombre = "";
	}
	
	public Frutas(String param1, String param2) {
		this.nombre = param1;
		this.color = param2;
		this.precio=0.0;
	}
	
	public Frutas(String param1, double param2) {
		this.nombre = param1;
		this.color = "Indeterminado";
		this.precio=param2;
	}

	public Frutas(String param1, String param2, double param3) {
		this.nombre = param1;
		this.color = param2;
		this.precio = param3;
	}

	//Métodos
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	public static void main(String[] args) {

		//Instanciaciones del objeto CLASS FRUTAS
		Frutas manzana = new Frutas();
		Frutas platano = new Frutas("Plátano");
		Frutas arandanos = new Frutas("Arándanos", "lila");
		Frutas	albaricoque = new Frutas("Albaricoque", "naranja", 10.15);
		
		//Muestro los valores iniciales después de la instanciación
		System.out.println("Mi primera fruta tiene el nombre:" + manzana.nombre
				+ ", tiene un color igual a " + manzana.color 
				+ " y tiene un precio de "	+ manzana.precio + "€"	);
		System.out.println("Mi segunda fruta tiene el nombre:" + platano.nombre
				+ ", tiene un color igual a " + platano.color 
				+ " y tiene un precio de "	+ platano.precio + "€"	);
		System.out.println("Mi segunda fruta tiene el nombre:" 
				+ arandanos.nombre	+ ", tiene un color igual a " 
				+ arandanos.color  + " y tiene un precio de "	
				+ arandanos.precio + "€"	);
		System.out.println("Mi segunda fruta tiene el nombre:" 
				+ albaricoque.nombre
				+ ", tiene un color igual a " + albaricoque.color 
				+ " y tiene un precio de "	+ albaricoque.precio + "€"	);
		
		//Reasignar valores a los atributos
		manzana.nombre = "Manzana";
		manzana.color = "amarilla";
		manzana.precio = 2.35;
		System.out.println("Mi primera fruta tiene el nombre:" + manzana.nombre
				+ ", tiene un color igual a " + manzana.color 
				+ " y tiene un precio de "	+ manzana.precio + "€"	);
		
	}

	

	

}
