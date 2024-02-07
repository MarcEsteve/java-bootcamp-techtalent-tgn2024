public class UD5CastingApp {
    public static void main(String[] args) {
        // Casting implícito de int a double
        int numeroEntero = 10;
        double numeroDouble = numeroEntero;
        System.out.println("Número entero: " + numeroEntero);
        System.out.println("Número double (después de casting implícito): " + numeroDouble);
        //Conversión de un tipo de datos más pequeño a uno más grande
        
        // Casting explícito de double a int
        double otroNumeroDouble = 10.5;
        int otroNumeroEntero = (int) otroNumeroDouble;
        System.out.println("Número double: " + otroNumeroDouble);
        System.out.println("Número entero (después de casting explícito): " + otroNumeroEntero);
        //Convertir un tipo de datos más grande a uno más pequeño
    }
}
