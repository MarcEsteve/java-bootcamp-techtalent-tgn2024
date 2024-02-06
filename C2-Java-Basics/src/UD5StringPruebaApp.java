
public class UD5StringPruebaApp {

	public static void main(String[] args) {

		String cadena1 = "Hola"; //Forma simple de crear un String
		
		String cadena2 = new String("Mundo"); //Crear un objeto String
		
		System.out.println(cadena1+" "+cadena2+"!");
		
		String cadena3 = "Esto es un ejemplo "
				+ "de String de "
				+ "varias lineas";
		System.out.println("Mostrar cadena3: "+cadena3);
		//Aunque se representan en una sola linea, a no ser del uso de \n
	}

}

//FORMA SIMPLE
//Aquí, "Hola" es un literal de cadena. Java mantiene una tabla de 
//cadenas conocida como "String pool" para mejorar la eficiencia de 
//la memoria. Cuando creas un String de esta manera, Java primero 
//verifica si ya existe una cadena igual en el "String pool". 
//Si existe, simplemente devuelve una referencia a esa cadena existente. 
//Si no existe, crea una nueva cadena en el "String pool". 
//Por lo tanto, si creas múltiples cadenas con el mismo literal 
//en el mismo contexto, todas esas cadenas apuntarán a la misma 
//instancia de cadena en el "String pool".

//CREACIÓN DE OBJETO
//Aquí, estás creando un nuevo objeto String en el heap utilizando 
//el operador new. A diferencia del caso anterior, esto siempre creará 
//una nueva instancia de String, independientemente de si ya existe una 
//cadena igual en el "String pool". Por lo tanto, si haces esto varias 
//veces, cada llamada a new String() creará una nueva instancia de cadena 
//en el heap, incluso si el contenido de esas cadenas es idéntico.

