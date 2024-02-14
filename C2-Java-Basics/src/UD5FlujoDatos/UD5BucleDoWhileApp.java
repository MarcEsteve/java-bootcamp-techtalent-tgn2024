package UD5FlujoDatos;
import javax.swing.JOptionPane;

public class UD5BucleDoWhileApp {

	public static void main(String[] args) {
		
		int num;
		do {
			String texto = JOptionPane.showInputDialog(
					"Introduce un número entero positivo"
					+ "e inferior a 10");
			num= Integer.parseInt(texto);
		} while (num>=10 || num<0);
		System.out.println("El número introducido es " + num);
		
	}
}
