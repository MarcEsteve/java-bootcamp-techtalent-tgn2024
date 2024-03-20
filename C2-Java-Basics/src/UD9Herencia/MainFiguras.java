package UD9Herencia;

public class MainFiguras {

	public static void main(String[] args) {
		Circulo circulo = new Circulo(5, Figura.COLOR_AZUL);
        System.out.println("Área del círculo: " + circulo.area());
        System.out.println("Perímetro del círculo: " + circulo.perimetro());
//        System.out.println("Color del círculo: " + circulo.color); //Atributo "private"
        System.out.println("Color del círculo: " + circulo.getColor());

	}

}
