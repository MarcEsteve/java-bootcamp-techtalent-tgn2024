package UD18javamysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMySQL {

	public static void main(String[] args) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conexion=DriverManager.getConnection(
					"jdbc:mysql://localhost:3306","root","");
			System.out.print("Conectado a servidor correctamente");
			
		} catch (SQLException | ClassNotFoundException e) {
            System.out.println("No se ha podido conectar con mi base de datos");
		}
		
	}

}
