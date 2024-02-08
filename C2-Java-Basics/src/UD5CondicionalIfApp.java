
public class UD5CondicionalIfApp {

	public static void main(String[] args) {

		int precio=90;
		int hora=11;
		
		//Un bloque condicional
		if (precio>100) {
			System.out.println("El precio es mayor que 100");
		} else if((precio <=100) && (precio>=80)) {
			System.out.println("El precio es entre 100 y 80");
		} else  {
			System.out.println("El precio es inferior o igual a 80");
		}
		//Otro bloque condicional
		if (precio>20) {
			System.out.println("Este es el penúltimo texto");
		}
		//Tercer bloque condicional
		if (precio>80) {
			System.out.println("Este es el último texto");
		}

		//Ejercicio horas del dia (formato 24h)
		//Variable "hora" de tipo entero con rango del 0 
		//(12 de la noche) al 23 las (11 de la noche)
		//Con un condicional que diga buenos dias, 
		//buenas tardes y buenas noches
		if ((hora>=1)&& (hora<=11)){
			System.out.println("buenos dias");
		} else if((hora>=12)&& (hora<=19)) {
			System.out.println("buenas tardes");
		} else  {
			System.out.println("buenas noches");
		}
		
		//Anidación de condicionales
		int edad = 18;
		boolean esEstudiante = true;

		if (edad >= 18) {
		    if (esEstudiante) {
		        System.out.println("Tienes 18 años o más y eres estudiante.");
		    } else {
		        System.out.println("Tienes 18 años o más pero no eres estudiante.");
		    }
		} else {
		    System.out.println("Eres menor de 18 años.");
		}

	}

}
