package UD9Herencia;

public class T9Ej2Videojuego implements T9Ej2Entregable{
    // Atributos
    private String titulo;
    private int horasEstimadas;
    private boolean entregado;
    private String genero;
    private String compañia;

    // Constructor por defecto
    public T9Ej2Videojuego() {
        this.horasEstimadas = 10;
        this.entregado = false;
        this.genero = "";
        this.compañia = "";
    }

    // Constructor con titulo y horas estimadas
    public T9Ej2Videojuego(String titulo, int horasEstimadas) {
        this.titulo = titulo;
        this.horasEstimadas = horasEstimadas;
        this.entregado = false;
        this.genero = "";
        this.compañia = "";
    }

    // Constructor con todos los atributos excepto entregado
    public T9Ej2Videojuego(String titulo, int horasEstimadas, String genero, String compañia) {
        this.titulo = titulo;
        this.horasEstimadas = horasEstimadas;
        this.genero = genero;
        this.compañia = compañia;
        this.entregado = false;
    }

    // Métodos Get
    public String getTitulo() {
        return titulo;
    }

    public int getHorasEstimadas() {
        return horasEstimadas;
    }

    public String getGenero() {
        return genero;
    }

    public String getCompañia() {
        return compañia;
    }

    // Métodos Set
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setHorasEstimadas(int horasEstimadas) {
        this.horasEstimadas = horasEstimadas;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setCompañia(String compañia) {
        this.compañia = compañia;
    }

    // Método toString
    @Override
    public String toString() {
        return "Videojuego{" +
                "titulo='" + titulo + '\'' +
                ", horasEstimadas=" + horasEstimadas +
                ", entregado=" + entregado +
                ", genero='" + genero + '\'' +
                ", compañia='" + compañia + '\'' +
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
		T9Ej2Videojuego otherVideojuego = (T9Ej2Videojuego) o;
        return Integer.compare(this.horasEstimadas, otherVideojuego.getHorasEstimadas());
    }
}
