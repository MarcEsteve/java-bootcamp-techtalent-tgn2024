package UD9Herencia;

public class T9Ej3Libro {
    private String isbn;
    private String titulo;
    private String autor;
    private int numeroPaginas;

    // Constructor
    public T9Ej3Libro(String isbn, String titulo, String autor, int numeroPaginas) {
        this.isbn = isbn;
        this.titulo = titulo;
        this.autor = autor;
        this.numeroPaginas = numeroPaginas;
    }

    // Métodos get y set para ISBN
    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    // Métodos get y set para Título
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    // Métodos get y set para Autor
    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    // Métodos get y set para Número de Páginas
    public int getNumeroPaginas() {
        return numeroPaginas;
    }

    public void setNumeroPaginas(int numeroPaginas) {
        this.numeroPaginas = numeroPaginas;
    }

    // Método toString para mostrar la información del libro
    @Override
    public String toString() {
        return "El libro con ISBN " + isbn + " creado por " + autor + " tiene " + numeroPaginas + " páginas";
    }

    

}
