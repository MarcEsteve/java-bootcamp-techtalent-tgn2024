
public class UD5CondicionalIfApp {

	public static void main(String[] args) {

		int precio=90;
		int hora=11;
		
		if (precio>100) {
			System.out.println("El precio es mayor que 100");
		} else if((precio <=100) && (precio>=80)) {
			System.out.println("El precio es entre 100 y 80");
		} else  {
			System.out.println("El precio es inferior o igual a 80");
		}
		
		if (precio>20) {
			System.out.println("Este es el penúltimo texto");
		}
		
		if (precio>80) {
			System.out.println("Este es el último texto");
		}

		//Ejercicio horas del dia
		//Variable "hora" de tipo entero con rango del 0 
		//(12 de la noche) al 23 las 11 de la noche
		//Con un condicional que diga buenos dias, buenas tardes y buenas noches
		if ((hora>=1)&& (hora<=11)){
			System.out.println("buenos dias");
		} else if((hora>=12)&& (hora<=19)) {
			System.out.println("buenas tardes");
		} else  {
			System.out.println("buenas noches");
		}
		
		
	}

}
