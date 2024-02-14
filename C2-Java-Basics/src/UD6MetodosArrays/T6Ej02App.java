package UD6MetodosArrays;

import javax.swing.JOptionPane;

public class T6Ej02App {

	public static void main(String[] args) {

		int cantRadoms = Integer.parseInt(JOptionPane
				.showInputDialog("Introduce la cantidad de randoms: "));
		int r1,r2;
		
		while (cantRadoms>0) {
			
			//Acciones de rangos y randoms
			r1 = Integer.parseInt(JOptionPane
					.showInputDialog("Introduce el primer rango: "));
			r2 = Integer.parseInt(JOptionPane
					.showInputDialog("Introduce el segundo rango: "));
			System.out.println(enteroRandom(r1,r2));
			cantRadoms--;			
		}
	}
	
	public static int enteroRandom (int rango1, int rango2) {
		
		//Cálculo del random
		int resultado = 
				(int) (Math.random() * (rango2 - rango1 + 1)) + rango1;		
		return resultado;
	}

}
