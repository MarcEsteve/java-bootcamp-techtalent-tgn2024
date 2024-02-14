package UD5FlujoDatos;
import javax.swing.JOptionPane;

public class T5Ej0203App {

	public static void main(String[] args) {

//		String nombre= "Marc"; //Ejercicio 2
		String nombre= JOptionPane.showInputDialog(
							"Introduce tu nombre: ");
		
//		System.out.println("Bienvenido " + nombre);//Ejercicio 2
		JOptionPane.showMessageDialog(null, "Bienvenido " + nombre);

	}

}
