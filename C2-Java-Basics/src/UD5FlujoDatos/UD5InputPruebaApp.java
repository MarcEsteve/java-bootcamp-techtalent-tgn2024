package UD5FlujoDatos;
import javax.swing.JOptionPane;

public class UD5InputPruebaApp {

	public static void main(String[] args) {

		String nombre = JOptionPane.showInputDialog("Introduce tu nombre");
		
		JOptionPane.showInternalMessageDialog(null, 
				"Bien, tu nombre es " + nombre);

	}

}
