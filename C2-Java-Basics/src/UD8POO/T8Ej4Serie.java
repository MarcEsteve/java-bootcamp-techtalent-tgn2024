package UD8POO;

public class T8Ej4Serie {

    private String titulo;
    private int nTemporadas;
    private String entregado;
    private String genero;
    private String creador;
    
    public T8Ej4Serie(){
        this.titulo="";
        this.nTemporadas=3;
        this.entregado="false";
        this.genero="";
        this.creador="";
        
    }
    public T8Ej4Serie(String nombre, String director) {
        
        this.titulo=nombre;
        this.creador=director;
        this.nTemporadas=3;
        this.entregado="false";
        this.genero="";
        
        
    }
        public T8Ej4Serie(String nombre,int temp, String gendre,String director) {
            
            this.titulo=nombre;
            this.nTemporadas=temp;
            this.genero=gendre;
            this.creador=director;
            this.entregado="false";
            
            
            
    }
        @Override
        public String toString() {
            return "La serie: \n\t{Titulo: " + titulo + ", Numero de temporadas: " + nTemporadas + ", genero: " + genero
                    +", director: "+ creador+ ", entrega: " + entregado;
    }
    
}