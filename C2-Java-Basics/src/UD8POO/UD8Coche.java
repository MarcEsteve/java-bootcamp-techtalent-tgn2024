package UD8POO;

public class UD8Coche {
	// Atributos
	public String marca;
	public String modelo;
	public int año;
	public String color;

	// Constructor
	public UD8Coche() {
		this.marca = "";
		this.modelo = "(sin modelo)";
		this.año = 0;
		this.color = "";
	}

	public UD8Coche(String trademark) {
		this.marca = trademark;
		this.modelo = "(sin modelo)";
		this.año = 0;
		this.color = "";
	}

	public UD8Coche(String marca, int año) {

		this.año = año;
		this.marca = marca;
		this.modelo = "";
		this.color = "";
	}
	
	
	//NO se pueden crear dos contructores con los mismos parámentros Y tipos
	
//	public UD8Coche(String marca, String color) {
//
//		this.año = 0;
//		this.marca = marca;
//		this.modelo = "";
//		this.color = color;
//	}

	public UD8Coche(String modelo, String color) {

		this.año = 0;
		this.marca = "";
		this.modelo = modelo;
		this.color = color;
	}

//	public UD8Coche(String color, String modelo, int año) {
//		this.marca = "";
//		this.modelo = modelo;
//		this.año = año;
//		this.color = color;
//	}

	public UD8Coche(int pepito, String juanito, String medaigual, String ultimo) {
		this.marca = medaigual;
		this.modelo = juanito;
		this.año = pepito;
		this.color = ultimo;
	}

	// Métodos
	public void arrancar() {
		System.out.println("El coche " + marca + " " + modelo + " ha arrancado.");
	}

	public void detener() {
		System.out.println("El coche " + marca + " " + modelo + " se ha detenido.");
	}

	public void acelerar() {
		System.out.println("El coche " + marca + " " + modelo + " está acelerando.");
	}

	public void frenar() {
		System.out.println("El coche " + marca + " " + modelo + " está frenando.");
	}

	// Método principal para probar la clase
	public static void main(String[] args) {
		UD8Coche miCoche = new UD8Coche(2020, "Corolla", "Toyota", "rojo");
		System.out.println("¿Cuál es la marca del miCoche?" + miCoche.marca 
				+ " " + miCoche.año + " " + miCoche.modelo
				+ " " + miCoche.color);
		UD8Coche ferrari = new UD8Coche();
		System.out.println("¿Cuál es la marca del Ferrari?" + ferrari.marca 
				+ ferrari.año + ferrari.modelo);
		UD8Coche coche3 = new UD8Coche("Opel");
		System.out.println("¿Cuál es la marca del coche3? " + coche3.marca 
				+ coche3.modelo +" "+ coche3.año);

//		UD8Coche coche5 = new UD8Coche("hola","djsjd",3);
		
		miCoche.arrancar();
		miCoche.acelerar();
		miCoche.frenar();
		miCoche.detener();
	}
}
