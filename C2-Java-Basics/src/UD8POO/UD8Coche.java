package UD8POO;

public class UD8Coche {
    // Atributos
    private String marca;
    private String modelo;
    private int año;
    private String color;
    
    // Constructor
    public UD8Coche(String marca, String modelo, int año, String color) {
        this.marca = marca;
        this.modelo = modelo;
        this.año = año;
        this.color = color;
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
        UD8Coche miCoche = new UD8Coche("Toyota", "Corolla", 2020, "rojo");
        miCoche.arrancar();
        miCoche.acelerar();
        miCoche.frenar();
        miCoche.detener();
    }
}
