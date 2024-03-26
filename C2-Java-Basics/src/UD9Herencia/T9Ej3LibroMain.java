package UD9Herencia;

public class T9Ej3LibroMain {

	public static void main(String[] args) {
		// Crear dos objetos Libro
		T9Ej3Libro libro1 = new T9Ej3Libro("1234567890", "El Señor de los Anillos", "J.R.R. Tolkien", 1000);
		T9Ej3Libro libro2 = new T9Ej3Libro("0987654321", "Cien años de soledad", "Gabriel García Márquez", 500);

        // Mostrar los libros por pantalla
        System.out.println(libro1);
        System.out.println(libro2);

        // Comparar cuál de los dos libros tiene más páginas
        T9Ej3Libro libroConMasPaginas = libroConMasPaginas(libro1, libro2);
        if (libroConMasPaginas != null) {
            System.out.println("El libro con más páginas es: " + libroConMasPaginas.getTitulo());
        } else {
            System.out.println("Ambos libros tienen el mismo número de páginas.");
        }
	}
	// Método para comparar el número de páginas de dos libros
    public static T9Ej3Libro libroConMasPaginas(T9Ej3Libro libro1, T9Ej3Libro libro2) {
        if (libro1.getNumeroPaginas() > libro2.getNumeroPaginas()) {
            return libro1;
        } else if (libro1.getNumeroPaginas() < libro2.getNumeroPaginas()) {
            return libro2;
        } else {
            return null; // Ambos libros tienen el mismo número de páginas
        }
    }
}
