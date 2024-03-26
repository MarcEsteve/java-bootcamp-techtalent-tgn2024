package UD9Herencia;

public class T9Ej1ElectroMain {

	public static void main(String[] args) {
		T9Ej1Electrodomesticos electrodomestico1 = new T9Ej1Electrodomesticos();
        System.out.println("Electrodomestico 1:");
        System.out.println(electrodomestico1);
        System.out.println("Precio final: " + electrodomestico1.precioFinal() + " €");

        T9Ej1Electrodomesticos electrodomestico2 = new T9Ej1Electrodomesticos(150, 7);
        System.out.println("\nElectrodomestico 2:");
        System.out.println(electrodomestico2);
        System.out.println("Precio final: " + electrodomestico2.precioFinal() + " €");

        T9Ej1Electrodomesticos electrodomestico3 = new T9Ej1Electrodomesticos(200, 8, "azul", 'A');
        System.out.println("\nElectrodomestico 3:");
        System.out.println(electrodomestico3);
        System.out.println("Precio final: " + electrodomestico3.precioFinal() + " €");
        
        T9Ej1Lavadora lavadora1 = new T9Ej1Lavadora();
        System.out.println("Lavadora 1:");
        System.out.println(lavadora1);
        System.out.println("Precio final: " + lavadora1.precioFinal() + " €");

        T9Ej1Lavadora lavadora2 = new T9Ej1Lavadora(150, 7);
        System.out.println("\nLavadora 2:");
        System.out.println(lavadora2);
        System.out.println("Precio final: " + lavadora2.precioFinal() + " €");

        T9Ej1Lavadora lavadora3 = new T9Ej1Lavadora(40, 200, 8, "azul", 'A');
        System.out.println("\nLavadora 3:");
        System.out.println(lavadora3);
        System.out.println("Precio final: " + lavadora3.precioFinal() + " €");
        
        T9Ej1Television television1 = new T9Ej1Television();
        System.out.println("Televisión 1:");
        System.out.println(television1);
        System.out.println("Precio final: " + television1.precioFinal() + " €");

        T9Ej1Television television2 = new T9Ej1Television(150, 7);
        System.out.println("\nTelevisión 2:");
        System.out.println(television2);
        System.out.println("Precio final: " + television2.precioFinal() + " €");

        T9Ej1Television television3 = new T9Ej1Television(50, true, 200, 8, "azul", 'A');
        System.out.println("\nTelevisión 3:");
        System.out.println(television3);
        System.out.println("Precio final: " + television3.precioFinal() + " €");
    }

}
