package UD9Herencia;

import java.util.Arrays;
import java.util.List;

public class T9Ej1Electrodomesticos {
    // Constantes
    protected static final List<String> COLORES_DISPONIBLES = Arrays.asList("blanco", "negro", "rojo", "azul", "gris");
    protected static final char CONSUMO_ENERGETICO_DEFAULT = 'F';
    protected static final double PRECIO_BASE_DEFAULT = 100;
    protected static final double PESO_DEFAULT = 5;

    // Atributos
    protected double precioBase;
    protected String color;
    protected char consumoEnergetico;
    protected double peso;

    // Constructores
    public T9Ej1Electrodomesticos() {
        this(PRECIO_BASE_DEFAULT, PESO_DEFAULT, "blanco", CONSUMO_ENERGETICO_DEFAULT);
    }

    public T9Ej1Electrodomesticos(double precioBase, double peso) {
        this(precioBase, peso, "blanco", CONSUMO_ENERGETICO_DEFAULT);
    }

    public T9Ej1Electrodomesticos(double precioBase, double peso, String color, char consumoEnergetico) {
        this.precioBase = precioBase;
        this.peso = peso;
        this.color = comprobarColor(color);
        this.consumoEnergetico = comprobarConsumoEnergetico(consumoEnergetico);
    }

    // Métodos get
    public double getPrecioBase() {
        return precioBase;
    }

    public String getColor() {
        return color;
    }

    public char getConsumoEnergetico() {
        return consumoEnergetico;
    }

    public double getPeso() {
        return peso;
    }

    // Métodos
    private char comprobarConsumoEnergetico(char letra) {
        letra = Character.toUpperCase(letra);
        if (letra >= 'A' && letra <= 'F') {
            return letra;
        } else {
            return CONSUMO_ENERGETICO_DEFAULT;
        }
    }

    private String comprobarColor(String color) {
        if (COLORES_DISPONIBLES.contains(color.toLowerCase())) {
            return color.toLowerCase();
        } else {
            return "blanco";
        }
    }

    public double precioFinal() {
        double precioFinal = precioBase;

        switch (consumoEnergetico) {
            case 'A':
                precioFinal += 100;
                break;
            case 'B':
                precioFinal += 80;
                break;
            case 'C':
                precioFinal += 60;
                break;
            case 'D':
                precioFinal += 50;
                break;
            case 'E':
                precioFinal += 30;
                break;
            case 'F':
                precioFinal += 10;
                break;
        }

        if (peso >= 0 && peso < 20) {
            precioFinal += 10;
        } else if (peso >= 20 && peso < 50) {
            precioFinal += 50;
        } else if (peso >= 50 && peso < 80) {
            precioFinal += 80;
        } else if (peso >= 80) {
            precioFinal += 100;
        }

        return precioFinal;
    }

    @Override
    public String toString() {
        return "Precio base: " + precioBase + " €\nColor: " + color + "\nConsumo energético: " + consumoEnergetico + "\nPeso: " + peso + " kg";
    }


}
