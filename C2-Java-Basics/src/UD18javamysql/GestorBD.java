package UD18javamysql;

import java.sql.*;

public class GestorBD {
    static final String URL = "jdbc:mysql://localhost:3306/tiendainfo";
    static final String USER = "root";
    static final String PASSWORD = "";

    public void insertarRegistro(String tabla, String columna, String valor) {
        Connection conexion = null;
        Statement statement = null;
        try {
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            statement = conexion.createStatement();
            statement.executeUpdate("INSERT INTO " + tabla + " (" + columna + ") VALUES ('" + valor + "')");
            System.out.println("Registro insertado en la tabla '" + tabla + "'");
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (statement != null) statement.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }

    public void actualizarRegistro(String tabla, String columnaActualizar, String nuevoValor, String columnaCondicion, String valorCondicion) {
        Connection conexion = null;
        Statement statement = null;
        try {
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            statement = conexion.createStatement();
            String query = "UPDATE " + tabla + " SET " + columnaActualizar + " = '" + nuevoValor + "' WHERE " + columnaCondicion + " = '" + valorCondicion + "'";
            statement.executeUpdate(query);
            System.out.println("Registro actualizado en la tabla '" + tabla + "'");
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (statement != null) statement.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }

    public void eliminarRegistro(String tabla, String columnaCondicion, String valorCondicion) {
        Connection conexion = null;
        Statement statement = null;
        try {
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            statement = conexion.createStatement();
            String query = "DELETE FROM " + tabla + " WHERE " + columnaCondicion + " = '" + valorCondicion + "'";
            statement.executeUpdate(query);
            System.out.println("Registro eliminado en la tabla '" + tabla + "'");
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (statement != null) statement.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }

    public void mostrarRegistros(String tabla) {
        Connection conexion = null;
        Statement statement = null;
        try {
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);
            statement = conexion.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM " + tabla);
            System.out.println("Registros en la tabla '" + tabla + "':");
            while (resultSet.next()) {
                System.out.println("Código: " + resultSet.getInt("codigo") + ", Nombre: " + resultSet.getString("nombre"));
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (statement != null) statement.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }
}
