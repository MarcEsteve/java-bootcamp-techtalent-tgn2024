package UD10trycatch;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ExcepcionApp {

	public static void main(String[] args) {
		FileReader fr = null;
		try {
//			Si el nombre del archivo no existe lanza un catch
			fr = new FileReader("casa");
//			La siguiente línea no se ejecutará si se lanza el catch
			System.out.println("No verás este mensaje");
		} catch (FileNotFoundException e) {
			System.out.println("Error E/S: el fichero no existe");
		} catch (IOException e) {
			System.out.println("Si el fichero no existe, esta captura no se verá");
		}
	}

}
