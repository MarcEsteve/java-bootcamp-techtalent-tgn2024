package UD9Herencia;

public class T9Ej1Television extends T9Ej1Electrodomesticos {
    // Constantes
    private static final double RESOLUCION_DEFAULT = 20;
    private static final boolean SINTONIZADOR_TDT_DEFAULT = false;
    private static final double PORCENTAJE_INCREMENTO_RESOLUCION = 0.3;
    private static final double PRECIO_INCREMENTO_SINTONIZADOR_TDT = 50;

    // Atributos
    private double resolucion;
    private boolean sintonizadorTDT;

    // Constructores
    public T9Ej1Television() {
    	this.precioBase=PRECIO_BASE_DEFAULT;
    	this.peso=PESO_DEFAULT;
    	this.color=COLOR_DEFAULT;
    	this.consumoEnergetico=CONSUMO_ENERGETICO_DEFAULT;
    	this.resolucion=RESOLUCION_DEFAULT;
    	this.sintonizadorTDT = SINTONIZADOR_TDT_DEFAULT;
    }

    public T9Ej1Television(double precioBase, double peso) {

    	this.precioBase=precioBase;
    	this.peso=peso;
    	this.color=COLOR_DEFAULT;
    	this.consumoEnergetico=CONSUMO_ENERGETICO_DEFAULT;
    	this.resolucion=RESOLUCION_DEFAULT;
    	this.sintonizadorTDT = SINTONIZADOR_TDT_DEFAULT;
    	
    }

    public T9Ej1Television(double resolucion, boolean sintonizadorTDT, double precioBase, double peso, String color, char consumoEnergetico) {
        super(precioBase, peso, color, consumoEnergetico);
        this.resolucion = resolucion;
        this.sintonizadorTDT = sintonizadorTDT;
    }

    // Métodos get de resolución y sintonizador TDT
    public double getResolucion() {
        return resolucion;
    }

    public boolean isSintonizadorTDT() {
        return sintonizadorTDT;
    }

    // Método precioFinal()
    @Override
    public double precioFinal() {
        double precioFinal = super.precioFinal();

        if (resolucion > 40) {
            precioFinal *= (1 + PORCENTAJE_INCREMENTO_RESOLUCION);
        }

        if (sintonizadorTDT) {
            precioFinal += PRECIO_INCREMENTO_SINTONIZADOR_TDT;
        }

        return precioFinal;
    }

}
