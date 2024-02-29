package UD7ArrayListHastable;

import java.util.HashMap;
import java.util.Map;

public class UD7HashMapComplex {
    public static void main(String[] args) {
        // Crear un HashMap con diferentes dimensiones
        Map<String, Object> complexHashMap = new HashMap<>();

        // Agregar valores simples
        complexHashMap.put("nombre", "Juan");
        complexHashMap.put("edad", 30);

        // Agregar un HashMap anidado
        Map<String, Object> direccion = new HashMap<>();
        direccion.put("calle", "Calle Principal");
        direccion.put("ciudad", "Ciudad Capital");
        direccion.put("codigoPostal", "12345");

        // Agregar el HashMap anidado al HashMap principal
        complexHashMap.put("direccion", direccion);

        // Agregar un HashMap dentro de otro HashMap anidado
        Map<String, Object> contacto = new HashMap<>();
        contacto.put("telefono", "123-456-789");
        contacto.put("email", "juan@example.com");

        // Agregar el HashMap interno al HashMap principal
        ((Map<String, Object>) complexHashMap.get("direccion")).put("contacto", contacto);

        // Imprimir el HashMap complejo
        System.out.println(complexHashMap);
    }
}
