package UD8POO;

public class T8Ej3Electrodomestico {
	
	//Gracias Diego

    protected final String COLOR_DEFECTO = "blanco";
    protected final double PRECIO_DEFECTO = 100;
    protected final char LETRA_CONSUMO = 'F';
    protected final double PESO_DEFECTO = 5;

    protected String color;
    protected double precio;
    protected char consumo;
    protected double peso;
    
    //Enumeraciones "enum" de Ana Maria, gracias
    
//    private double precioBase;
//	private ColorEnum color;                                                        //el atributo es de tipo Color. See below enumeracion color
//	private ConsumoEnum consumoEnergetico;                                          //el atributo es de tipo Consumo. See below enumeracion consumo
//	private double peso;
//	
//	private final static double PRECIO_BASE_PRED = 100;
//	private final static ColorEnum COLOR_PRED = ColorEnum.BLANCO;
//	private final static ConsumoEnum CONSUMO_ENERGETICO_PRED = ConsumoEnum.F;
//	private final static double PESO_PRED = 5;
//
//	public enum ColorEnum {                                                
//		BLANCO, NEGRO, ROJO, AZUL, GRIS                                     //enumeracion de constantes colores. solo puede tomar los valores de la enumeracion.  
//	}                                                                       //!!la enumeracion es muy util cuando hay que representar un conjunto FIJO de constantes!!
//	                                                                        //!!also, el ENUM detecta errores al intentar ingresar un valor que no esta definido en la enumeracion.
//	public enum ConsumoEnum{                                                //enumeracion de constantes consumo. solo puede tomar los valores de la enumeracion.
//		A, B, C, D, E, F                                                    //!!also, claridad en el codigo, mas legible
//	}                                    

    public T8Ej3Electrodomestico() {
        this.color = COLOR_DEFECTO;
        this.precio = PRECIO_DEFECTO;
        this.consumo = LETRA_CONSUMO;
        this.peso = PESO_DEFECTO;

    }

    public T8Ej3Electrodomestico(double precio, double peso) {
        this();
        this.precio = precio;
        this.peso = peso;
    }

    public T8Ej3Electrodomestico(String color, double precio, char consumo, double peso) {
        this.precio = precio;

        if           (!color.equalsIgnoreCase("azul") 
                && !color.equalsIgnoreCase("rojo") 
                && !color.equalsIgnoreCase("blanco")
                && !color.equalsIgnoreCase("negro") 
                && !color.equalsIgnoreCase("gris")) {
            this.color = COLOR_DEFECTO;
        } else {
            this.color = color;

        }
        //consumo = a o a f
        if (consumo < 'A' || consumo > 'F') {
            this.consumo = LETRA_CONSUMO;
        } else {
            this.consumo = consumo;
        }
        this.peso = peso;
    }

    
    public void imprimirElectrodomestico() {
        System.out.println("Electrodomestico " + "\nprecio: " + this.precio + "\ncolor: " + this.color + "\nconsumo: " 
                + this.consumo + "\npeso: " + this.peso +""); 

    }

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public char getConsumo() {
		return consumo;
	}

	public void setConsumo(char consumo) {
		this.consumo = consumo;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

    
}