package UD7ArrayListHastable;

import java.util.HashMap;
import java.util.Hashtable;

public class UD7HashTableApp {
    public static void main(String[] args) {
        // Crear un HashMap con clave de tipo String y valor de tipo Integer
        HashMap<String, Integer> edadesAlumnos = new HashMap<>();


        // Agregar elementos al HashMap
        edadesAlumnos.put("Juan", 25);
        edadesAlumnos.put("Pedro", 28);
        edadesAlumnos.put("María", 30);
        
        //edadesAlumnos {
        // 		"María"=> 30,
        //		"Pedro"=> 28,
        //		"Juan"=> 25
        //}

        // Obtener el valor asociado a una clave
        int edadDeJuan = edadesAlumnos.get("Juan"); //25
        int edadDeMaria = edadesAlumnos.get("María"); //30
        int edadDePedro = edadesAlumnos.get("Pedro"); //28
        System.out.println("Edad de Juan: " + edadDeJuan);
        System.out.println("Edad de María: " + edadDeMaria);
        System.out.println("Edad de Pedro: " + edadDePedro);

        // Iterar sobre las claves del HashMap
        System.out.println("Claves en el edadesAlumnos:");
        for (String nombre : edadesAlumnos.keySet()) {
            System.out.println(nombre);
        }

        // Iterar sobre los valores del HashMap
        System.out.println("Valores en el edadesAlumnos:");
        for (int edad : edadesAlumnos.values()) {
            System.out.println(edad);
        }

        // Comprobar si una clave está en el HashMap
        boolean contienePedro = edadesAlumnos.containsKey("Pedro");
        System.out.println("¿El edadesAlumnos contiene a Pedro? " + contienePedro);

        int tamaño = edadesAlumnos.size();
        System.out.println("Tamaño del edadesAlumnos: " + tamaño);
        // Eliminar un elemento del HashMap
        edadesAlumnos.remove("María");

        // Obtener el tamaño del HashMap
        tamaño = edadesAlumnos.size();
        System.out.println("Tamaño del edadesAlumnos: " + tamaño);
        
        
        //Actualizar valor "SETEAR" 

        edadesAlumnos.put("Pedro", 29);
        edadDePedro = edadesAlumnos.get("Pedro"); //Ahora 29
        System.out.println("Edad de Pedro: " + edadDePedro);
        
//		  Ejercicio HASHMAP / HASTABLE
//        A través de un método que realice los put() para asinar key=>value
//        pedirle al usuario por INPUT estos dos parámetros
//        para crear dos alumnos más en edadesAlumnos
         
    }
}