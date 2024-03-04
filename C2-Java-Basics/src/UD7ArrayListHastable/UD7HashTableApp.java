package UD7ArrayListHastable;

import java.util.HashMap;
import java.util.Hashtable;

public class UD7HashTableApp {
    public static void main(String[] args) {
        // Crear un HashMap con clave de tipo String y valor de tipo Integer
        HashMap<String, Integer> edadesAlumnos = new HashMap<>();
        
        //Arrays normales para capturar la misma información:
        int edades[]= {25,13 ,39 , 46};
        String alumnos[]= {"Pepe", "Juan", "Rogelio","Manolo"};

        // Agregar elementos al HashMap KEY => VALUE
        edadesAlumnos.put("Juan", 25); // {"Juan"=> 25}
        edadesAlumnos.put("Pedro Juan", 28);// {"Pedro"=> 28,"Juan"=> 25}
        edadesAlumnos.put("María", 30);// {"María"=> 30,"Pedro"=> 28,"Juan"=> 25}
        
        //edadesAlumnos {
        // 		"María"=> 30,
        //		"Pedro"=> 28,
        //		"Juan"=> 25
        //}

        // Obtener el valor asociado a una clave
        int edadDeJuan = edadesAlumnos.get("Juan"); //25
        int edadDeMaria = edadesAlumnos.get("María"); //30
        int edadDePedro = edadesAlumnos.get("Pedro Juan"); //28
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
        boolean contienePedro = edadesAlumnos.containsKey("Pedro Juan");
        System.out.println("¿El edadesAlumnos contiene a Pedro? " + contienePedro);

        int tamany = edadesAlumnos.size();
        System.out.println("Tamaño del edadesAlumnos: " + tamany);
        // Eliminar un elemento del HashMap
        System.out.println("Eliminamos la clave 'María'");

        edadesAlumnos.remove("María");

        // Obtener el tamaño del HashMap
        tamany = edadesAlumnos.size();
        System.out.println("Tamaño del edadesAlumnos: " + tamany);
        
        System.out.println("Edad de Pedro antes del PUT que actualiza: " 
        + edadDePedro);
        //Actualizar valor "SETEAR" 

        edadesAlumnos.put("Pedro Juan", 29);
        edadDePedro = edadesAlumnos.get("Pedro Juan"); //Ahora 29
        System.out.println("Edad de Pedro Juan: " + edadDePedro);
        tamany = edadesAlumnos.size();
        System.out.println("Tamaño del edadesAlumnos: " + tamany);
        
//		  Ejercicio HASHMAP / HASTABLE
//        A través de un método que realice los put() para asinar key=>value
//        pedirle al usuario por INPUT estos dos parámetros clave y valor
//        para crear dos alumnos más en edadesAlumnos
         
    }
}