package UD4JavaBasics;

public class UD4CalculaIva {

	public static void main(String[] args) {
		int precioProducto = 30;
		final double IVA = 0.21;
		
		System.out.println("Inforamción de producto\nEl precio del producto es " +precioProducto + "\nEl precio del producto incluyendo IVA es "+ (precioProducto+(precioProducto*IVA)) );

	}

}
