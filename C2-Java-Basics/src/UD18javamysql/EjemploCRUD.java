package UD18javamysql;

import java.sql.*;

public class EjemploCRUD {
    // Datos de conexión a la base de datos
    static final String URL = "jdbc:mysql://localhost:3306/tiendainfo";
    static final String USER = "root";
    static final String PASSWORD = "";

    public static void main(String[] args) {
        Connection conexion = null;
        Statement statement = null;

        try {
            // Establecer la conexión
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexión exitosa a la base de datos");

            // Crear un objeto Statement para ejecutar consultas SQL
            statement = conexion.createStatement();

            // Insertar 3 registros en la tabla 'fabricantes'
            statement.executeUpdate("INSERT INTO fabricantes (nombre) VALUES ('Sony')");
            statement.executeUpdate("INSERT INTO fabricantes (nombre) VALUES ('Apple')");
            statement.executeUpdate("INSERT INTO fabricantes (nombre) VALUES ('Samsung')");

            // Actualizar el nombre de un registro en la tabla 'fabricantes'
            statement.executeUpdate("UPDATE fabricantes SET nombre = 'Microsoft' WHERE codigo = 2");

            // Eliminar un registro específico de la tabla 'fabricantes'
            statement.executeUpdate("DELETE FROM fabricantes WHERE codigo = 3");

            // Consultar y mostrar los registros de la tabla 'fabricantes'
            ResultSet resultSet = statement.executeQuery("SELECT * FROM fabricantes");
            System.out.println("Registros en la tabla 'fabricantes':");
            while (resultSet.next()) {
                System.out.println("Código: " + resultSet.getInt("codigo") + ", Nombre: " + resultSet.getString("nombre"));
            }

        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos: " + e.getMessage());
        } finally {
            try {
                if (statement != null) statement.close();
                if (conexion != null) conexion.close();
                System.out.println("Conexión cerrada");
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }
}