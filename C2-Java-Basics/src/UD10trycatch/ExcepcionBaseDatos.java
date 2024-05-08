package UD10trycatch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ExcepcionBaseDatos {
    public static void main(String[] args) {
        try {
            // Intentar establecer una conexión a la base de datos MySQL
            Connection conexion = DriverManager.getConnection(
            		"jdbc:mysql://localhost:3306/base_de_datos", "usuario", "contraseña");
            System.out.println("Conexión establecida correctamente.");
            // Aquí iría el resto del código para interactuar con la base de datos
        } catch (SQLException e) {
            // Manejo de la excepción de conexión a la base de datos
            System.out.println("¡Ups! Error al conectar a la base de datos: " + e.getMessage());
        }
    }
}
