package UD9Herencia;

public class T9Ej1Lavadora extends T9Ej1Electrodomesticos {
    // Constante
    private static final double CARGA_DEFAULT = 5;

    // Atributo
    private double carga;

    // Constructores
    public T9Ej1Lavadora() {
    	this.precioBase=PRECIO_BASE_DEFAULT;
    	this.peso=PESO_DEFAULT;
    	this.color="blanco";
    	this.consumoEnergetico=CONSUMO_ENERGETICO_DEFAULT;
    	this.carga =CARGA_DEFAULT;
    }

    public T9Ej1Lavadora(double precioBase, double peso) {
    	this.precioBase=precioBase;
    	this.peso=peso;
    	this.color="blanco";
    	this.consumoEnergetico=CONSUMO_ENERGETICO_DEFAULT;
    	this.carga =CARGA_DEFAULT;
    }

    public T9Ej1Lavadora(double carga, double precioBase, double peso, String color, char consumoEnergetico) {
        super(precioBase, peso, color, consumoEnergetico);
        this.carga = carga;
    }

    // Método get de carga
    public double getCarga() {
        return carga;
    }

    // Método precioFinal()
    @Override
    public double precioFinal() {
        double precioFinal = super.precioFinal();

        if (carga > 30) {
            precioFinal += 50;
        }

        return precioFinal;
    }

}

