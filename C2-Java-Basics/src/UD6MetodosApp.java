
public class UD6MetodosApp {

	public static void main(String[] args) {
		int operador1=-6, operador2=5;
		
		if (sumaNumeros(operador1, operador2)) {
			System.out.println("El resultado es mayor o igual 0");
		} else {
			System.out.println("El resultado es negativo");
		}

	}
	
	public static boolean sumaNumeros(int num1, int num2) {
		
		int resultado = num1+num2;
		
		if (resultado >=0) {
			return true;
		} else {
			return false;
		}
		//Ejercicio: divide este método sumaNumeros() en dos,
		//El primero se llama sumaNumeros(int num1, int num2) y
		//Devuelve un int del cálculo de la suma
		//El segundo se llama  postivo(int param1) pero devuelve
		//un booleano 
	}
	
	

}
