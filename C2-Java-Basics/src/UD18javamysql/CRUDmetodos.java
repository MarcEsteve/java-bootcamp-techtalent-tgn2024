package UD18javamysql;

import java.sql.*;

public class CRUDmetodos {
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

            // CRUD
            insertarRegistro(statement, "fabricantes", "nombre", "Sony");
            insertarRegistro(statement, "fabricantes", "nombre", "Apple");
            insertarRegistro(statement, "fabricantes", "nombre", "Samsung");

            actualizarRegistro(statement, "fabricantes", "nombre", "Microsoft", "codigo", 2);

            eliminarRegistro(statement, "fabricantes", "codigo", 3);

            mostrarRegistros(statement, "fabricantes");

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

    // Método para insertar un registro en una tabla
    static void insertarRegistro(Statement statement, String tabla, String columna, String valor) throws SQLException {
        statement.executeUpdate("INSERT INTO " + tabla + " (" + columna + ") VALUES ('" + valor + "')");
        System.out.println("Registro insertado en la tabla '" + tabla + "'");
    }

    // Método para actualizar un registro en una tabla
    static void actualizarRegistro(Statement statement, String tabla, String columnaActualizar, String nuevoValor, String columnaCondicion, int valorCondicion) throws SQLException {
        statement.executeUpdate("UPDATE " + tabla + " SET " + columnaActualizar + " = '" + nuevoValor + "' WHERE " + columnaCondicion + " = " + valorCondicion);
        System.out.println("Registro actualizado en la tabla '" + tabla + "'");
    }

    // Método para eliminar un registro en una tabla
    static void eliminarRegistro(Statement statement, String tabla, String columnaCondicion, int valorCondicion) throws SQLException {
        statement.executeUpdate("DELETE FROM " + tabla + " WHERE " + columnaCondicion + " = " + valorCondicion);
        System.out.println("Registro eliminado en la tabla '" + tabla + "'");
    }

    // Método para mostrar todos los registros de una tabla
    static void mostrarRegistros(Statement statement, String tabla) throws SQLException {
        ResultSet resultSet = statement.executeQuery("SELECT * FROM " + tabla);
        System.out.println("Registros en la tabla '" + tabla + "':");
        while (resultSet.next()) {
            System.out.println("Código: " + resultSet.getInt("codigo") + ", Nombre: " + resultSet.getString("nombre"));
        }
    }
}
