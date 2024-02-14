package UD5FlujoDatos;
import javax.swing.JOptionPane;

public class T5Ej04App {

	public static void main(String[] args) {

		double radio = Double.parseDouble(JOptionPane.showInputDialog(
				"Introduce un radio: ")); 
		final double PI = Math.PI;
		
		//Calculo del area del circulo
		double area = PI*(Math.pow(radio, 2));
		
		System.out.println("El área del circulo con radio " 
				+ radio + " es: " + area);
		JOptionPane.showMessageDialog(null, "El area del "
				+ "ciruclo es " + area);
		

	}

}
