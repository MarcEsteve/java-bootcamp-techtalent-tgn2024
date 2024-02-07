
public class UD5MetodosStringApp {

	public static void main(String[] args) {

		String str = "Hola Mundo";
		
		//Métodos para Strings
		char ch = str.charAt(7); // ch contendrá 'n'
		int index = str.indexOf("Mundo"); // 5
		
		String str2 = "Hola Mundo, Mundo Feliz";
		int lastIndex = str2.lastIndexOf("Mundo"); // 12
		
		boolean endsWith = str.endsWith("Mundo"); // true
		boolean startsWith = str.startsWith("Hola"); // true
		int length = str.length(); // 10
		String subStr1 = str.substring(5); // "Mundo"
		String subStr2 = str.substring(0, 4); // "Hola"
		
		String upperCaseStr = str.toUpperCase(); // "HOLA MUNDO"
		String lowerCaseStr = str.toLowerCase(); // "hola mundo"
		
		String replacedStr = str.replace('o', 'x'); // "Hxla Mundx"
		
		//Ejercicio cálculo del último caracter del String
		char ultimoChar = str.charAt(str.length()-1);
		
		
		//Muestro resultados
		System.out.println("EL valor del índice 0 es " + ch 
							+ "\nEL último 'valor' acaba en \"Mundo\"? " 
							+ endsWith );
		
		System.out.println("El último caracter es: " + ultimoChar);
		
	}

}
