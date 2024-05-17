package UD10trycatch;

public class Ej2customException {
    
    // Definición de la excepción customizada
    public static class CustomEx extends Exception {
        public CustomEx(String mensaje) {
            super(mensaje);
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println("Iniciando el programa...");
            // Lanza la excepción customizada
            throw new CustomEx("Este es un mensaje de "
            		+ "excepción personalizado.");

        } catch (CustomEx e) {
            // Captura la excepción y muestra el mensaje
            System.out.println("Excepción capturada: " + e.getMessage());
        } finally {
            System.out.println("Bloque finally ejecutado.");
        }
    }
}
