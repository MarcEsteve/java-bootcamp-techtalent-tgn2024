public class Ejercicio4TA04App {
    public static void main(String[] args) {
        // Declaración e inicialización de las variables A, B, C y D
        int A = 5;
        int B = 8;
        int C = 12;
        int D = 3; 

        // Muestra los valores iniciales
        System.out.println("Valores iniciales: A = " + A + ", B = " + B + ", C = " + C + ", D = " + D);
        
        /*
        // Intercambio de valores
        int temp = B; // Se utiliza una variable temporal para almacenar el valor de B
        //A es 5; B es 8; C es 12; D es 3;
        B = C; 
        //A es 5; B es 12; C es 12; D es 3;
        C = A;
        //A es 5; B es 12; C es 5; D es 3;
        A = D;
        //A es 3; B es 12; C es 5; D es 3;
        D = temp;
        //A es 3; B es 12; C es 5; D es 8;
         *
         */
        B = B + C; // B es 20
        C = B - C; // C es 8
        B = B - C; // B es 12

        C = C + A; // C es 17
        A = C - A; // A es 12
        C = C - A; // C es 5

        A = A + D; // A es 15
        D = A - D; // D es 12
        A = A - D; // A es 3

        // Muestra los valores después del intercambio
        System.out.println("Valores después del intercambio: A = " + A + ", B = " + B + ", C = " + C + ", D = " + D);
    }
}
