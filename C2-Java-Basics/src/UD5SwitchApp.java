import java.util.Date;
import java.text.SimpleDateFormat;

public class UD5SwitchApp {
	public static void main(String[] args) {
		int dia = 3; // Por ejemplo, 3 representa el miércoles

		String nombreDia;

		switch (dia) {
		case 1:
			nombreDia = "Lunes";
			break;
		case 2:
			nombreDia = "Martes";
			break;
		case 3:
			nombreDia = "Miércoles";
			break;
		case 4:
			nombreDia = "Jueves";
			break;
		case 5:
			nombreDia = "Viernes";
			break;
		case 6:
			nombreDia = "Sábado";
			break;
		case 7:
			nombreDia = "Domingo";
			break;
		default:
			nombreDia = "Día inválido";
			break;
		}

		System.out.println("El día es: " + nombreDia);

		// Ejemplo con Date()
		Date fecha = new Date();
		System.out.println(fecha);
		SimpleDateFormat formatoDia = new SimpleDateFormat("u");
		int diaNumero = Integer.parseInt(formatoDia.format(fecha));

		switch (diaNumero) {
		case 1:
			nombreDia = "Lunes";
			break;
		case 2:
			nombreDia = "Martes";
			break;
		case 3:
			nombreDia = "Miércoles";
			break;
		case 4:
			nombreDia = "Jueves";
			break;
		case 5:
			nombreDia = "Viernes";
			break;
		case 6:
			nombreDia = "Sábado";
			break;
		case 7:
			nombreDia = "Domingo";
			break;
		default:
			nombreDia = "Día inválido";
			break;
		}

		System.out.println("Hoy es: " + nombreDia);
		
		//Ejercicio saludo con la hora del dia
		//Con el uso del switch y del Date() determinar la hora del dia
		//y asignarselo a una variable que se compare en el switch y
		//nos saludo en base al valor de esta hora.
		
		
		
	}
}
