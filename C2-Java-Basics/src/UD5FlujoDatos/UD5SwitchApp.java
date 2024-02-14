package UD5FlujoDatos;
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
		
		Date fechAlex = new Date();
	    SimpleDateFormat formatoHora = new SimpleDateFormat("h");//Elegimos qué escoger de la fecha entera 
	    int horaNum = Integer.parseInt(formatoHora.format(fechAlex)); 

	    switch (horaNum) {
	        case 9:
	            System.out.println("Son las 9.");
	            break;
	        case 10:
	            System.out.println("Son las 10.");
	            break;
	        default:
	            System.out.println("Son las " +horaNum+ ".");
	     }
		//Jessica
	    Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("h");
        int HoraActual = Integer.parseInt(dateFormat.format(date));
        String horaHoy;

        switch (HoraActual) {
            case 9:
                horaHoy = "09:00";
                break;
            case 10:
                horaHoy = "10:00";
                break;
            case 11:
                horaHoy = "11:00";
                break;
            default:
                horaHoy = "Hora incorrecta";
        }
        System.out.println("La hora actual es " + horaHoy);
        
        //Aurora
        
        Date fechAurora = new Date(); 
        System.out.println(fechAurora);
        SimpleDateFormat formatoAurHora= new SimpleDateFormat("HH");
        int HoraDia = Integer.parseInt(formatoAurHora.format(fechAurora));

        String saludo;

        switch(HoraDia) {
            case 9: 
            saludo= "Buenos días (un 9 como case)"; 
            break; 
            case 10: 
            saludo ="Buenas tardes (10 de case)"; 
            break;
            default: 
            saludo= "No es la hora";
        }
        System.out.println(saludo);
	}
}
