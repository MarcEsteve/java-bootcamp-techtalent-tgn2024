package UD5FlujoDatos;
import javax.swing.JOptionPane;

public class T5Ej12App {

	public static void main(String[] args) {

		String pass = "12345", passUsuario = "", mensaje = "";
		int cont = 0;
		
		while(cont<3) {
			
			passUsuario=JOptionPane.
					 showInputDialog("Introduce el pass: ");
			if (pass.equals(passUsuario)) {
				mensaje = "Enhorabuena, login correcto";
				break;
			} else {
				System.out.println("No es una contraseña correcta");
				cont++;
			}
			if(cont == 3) {
				mensaje = "Agotados el número de intentos";
			}
		}
		
		
		System.out.println(mensaje);
	}

}
