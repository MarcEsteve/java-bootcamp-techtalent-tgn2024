package UD7ArrayListHastable;

import java.util.HashMap;

public class UD7HashTableApp {
    public static void main(String[] args) {
        // Crear un HashMap con clave de tipo String y valor de tipo Integer
        HashMap<String, Integer> mapa = new HashMap<>();

        // Agregar elementos al HashMap
        mapa.put("Juan", 25);
        mapa.put("María", 30);
        mapa.put("Pedro", 28);

        // Obtener el valor asociado a una clave
        int edadDeJuan = mapa.get("Juan");
        System.out.println("Edad de Juan: " + edadDeJuan);

        // Iterar sobre las claves del HashMap
        System.out.println("Claves en el mapa:");
        for (String nombre : mapa.keySet()) {
            System.out.println(nombre);
        }

        // Iterar sobre los valores del HashMap
        System.out.println("Valores en el mapa:");
        for (int edad : mapa.values()) {
            System.out.println(edad);
        }

        // Comprobar si una clave está en el HashMap
        boolean contienePedro = mapa.containsKey("Pedro");
        System.out.println("¿El mapa contiene a Pedro? " + contienePedro);

        // Eliminar un elemento del HashMap
        mapa.remove("María");

        // Obtener el tamaño del HashMap
        int tamaño = mapa.size();
        System.out.println("Tamaño del mapa: " + tamaño);
    }
}