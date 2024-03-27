package UD9Herencia;

import java.util.Random;

public class T9Ej5Estudiante {
    private String nombre;
    private int edad;
    private String sexo;
    private int calificacion;

    // Constructor
    public T9Ej5Estudiante(String nombre, int edad, String sexo, int calificacion) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        this.calificacion = calificacion;
    }

    // Método para verificar si hace novillos
    public boolean haceNovillos() {
        Random random = new Random();
        return random.nextDouble() < 0.5;
    }

    // Métodos getter
    public int getCalificacion() {
        return calificacion;
    }

    public String getSexo() {
        return sexo;
    }
}
