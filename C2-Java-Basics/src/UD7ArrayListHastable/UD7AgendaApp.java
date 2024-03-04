package UD7ArrayListHastable;

import java.util.HashMap;

public class UD7AgendaApp {
    public static void main(String[] args) {
        // Crear un HashMap para almacenar información de contactos
        HashMap<String, HashMap<String, String>> agenda = new HashMap<>();

        // Crear un nuevo contacto y añadirlo a la agenda
        HashMap<String, String> contacto1 = new HashMap<>();
        contacto1.put("Direccion", "Calle Principal, 123");
        contacto1.put("Email", "ejemplo1@example.com");
        contacto1.put("Telefono", "+1234567890");
        agenda.put("Juan", contacto1);

        // Crear otro contacto y añadirlo a la agenda
        HashMap<String, String> contacto2 = new HashMap<>();
        contacto2.put("Direccion", "Avenida Central, 456");
        contacto2.put("Email", "ejemplo2@example.com");
        contacto2.put("Telefono", "+0987654321");
        agenda.put("María", contacto2);

        // Acceder a la información de un contacto
        String nombreBuscado = "María";
        if (agenda.containsKey(nombreBuscado)) {
            HashMap<String, String> contactoEncontrado = 
            		agenda.get(nombreBuscado);
            System.out.println("Información de contacto para " 
            		+ nombreBuscado + ":");
            System.out.println("Dirección: " 
            		+ contactoEncontrado.get("Direccion"));
            System.out.println("Email: " 
            		+ contactoEncontrado.get("Email"));
            System.out.println("Teléfono: " 
            		+ contactoEncontrado.get("Telefono"));
        } else {
            System.out.println("No se encontró información para el contacto " 
            		+ nombreBuscado);
        }
    }
}
