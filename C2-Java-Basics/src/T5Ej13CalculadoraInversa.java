import javax.swing.JOptionPane;

public class T5Ej13CalculadoraInversa {

	public static void main(String[] args) {

		// INPUTS de usuario
		int op1 = Integer.parseInt(JOptionPane.showInputDialog("" + "Introduce el primer operador: "));
		int op2 = Integer.parseInt(JOptionPane.showInputDialog("" + "Introduce el segundo operador: "));
		String signo = JOptionPane.showInputDialog("" + "Introduce signo aritmético: ");
		String resultado = "";
		// Cálculos
		switch (signo) {
		case "+":
			resultado = "Suma " + op1 + "+" + op2
					+ " = " + (op1 + op2);
			break;
		case "-":
			resultado = "Suma " + op1 + "-" + op2
					+ " = " + (op1 - op2);
			break;
		case "/":
			if (op2 == 0) {
				resultado = "No se puede dividir por 0";
			} else {
				resultado = "Divide " + op1 + "/" + op2 
					+ " = " + (op1 / op2);
			}
			break;
		case "^":
			resultado = "Exponente " + op1 + "^" + op2 
					+ " = " + (Math.pow(op1, op2));
			break;
		default:
			break;
		}
		JOptionPane.showMessageDialog(null, resultado);
	}

}
