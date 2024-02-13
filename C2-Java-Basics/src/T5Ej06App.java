import javax.swing.JOptionPane;

public class T5Ej06App {

	public static void main(String[] args) {

		 final double IVA = 0.21; //21%
		 
		 double precioBase = Double.parseDouble(JOptionPane.
				 showInputDialog("Introduce un precio de base: "));
		 double precio = precioBase + precioBase*IVA;
		 
		 JOptionPane.showMessageDialog(null, ""
		 		+ "El precio final es: " + precio);

	}
}
