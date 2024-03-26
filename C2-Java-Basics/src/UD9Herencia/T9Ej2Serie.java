package UD9Herencia;

public class T9Ej2Serie implements T9Ej2Entregable {
    // Atributos
    private String titulo;
    private int numeroTemporadas;
    private boolean entregado;
    private String genero;
    private String creador;

    // Constructor por defecto
    public T9Ej2Serie() {
        this.numeroTemporadas = 3;
        this.entregado = false;
        this.genero = "";
        this.creador = "";
    }

    // Constructor con titulo y creador
    public T9Ej2Serie(String titulo, String creador) {
        this.titulo = titulo;
        this.creador = creador;
        this.numeroTemporadas = 3;
        this.entregado = false;
        this.genero = "";
    }

    // Constructor con todos los atributos excepto entregado
    public T9Ej2Serie(String titulo, int numeroTemporadas, String genero, String creador) {
        this.titulo = titulo;
        this.numeroTemporadas = numeroTemporadas;
        this.genero = genero;
        this.creador = creador;
        this.entregado = false;
    }

    // Métodos Get
    public String getTitulo() {
        return titulo;
    }

    public int getNumeroTemporadas() {
        return numeroTemporadas;
    }

    public String getGenero() {
        return genero;
    }

    public String getCreador() {
        return creador;
    }

    // Métodos Set
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setNumeroTemporadas(int numeroTemporadas) {
        this.numeroTemporadas = numeroTemporadas;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setCreador(String creador) {
        this.creador = creador;
    }

    // Método toString
    @Override
    public String toString() {
        return "Serie{" +
                "titulo='" + titulo + '\'' +
                ", numeroTemporadas=" + numeroTemporadas +
                ", entregado=" + entregado +
                ", genero='" + genero + '\'' +
                ", creador='" + creador + '\'' +
                '}';
    }

	@Override
	public void entregar() {
		this.entregado = true;
	}

	@Override
	public void devolver() {	
		this.entregado = false;
	}

	@Override
	public boolean isEntregado() {
		return entregado;
	}

	@Override
    public int compareTo(Object o) {
		T9Ej2Serie otherSerie = (T9Ej2Serie) o;
        return Integer.compare(this.numeroTemporadas, otherSerie.getNumeroTemporadas());
    }
}
