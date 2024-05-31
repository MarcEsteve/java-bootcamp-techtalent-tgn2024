package com.ud20.ejercicio2;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

public class MainButtonsMysqlDate {
    public static void main(String[] args) {
        // Crear el frame principal
        JFrame frame = new JFrame("Ventana con interacción");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);
        
        // Crear el panel principal
        JPanel panel = new JPanel();
        panel.setLayout(new BorderLayout());

        // Crear la etiqueta
        JLabel label = new JLabel("El último botón pulsado es ninguno", SwingConstants.CENTER);
        panel.add(label, BorderLayout.NORTH);
        
        // Crear el área de texto para mostrar resultados
        JTextArea textArea = new JTextArea();
        textArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(textArea);
        panel.add(scrollPane, BorderLayout.CENTER);
        
        // Crear el panel para los botones
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new FlowLayout());

        // Crear los botones
        JButton button1 = new JButton("Botón 1");
        JButton button2 = new JButton("Botón 2");

        // Añadir acción a los botones
        button1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                label.setText("El último botón pulsado es Botón 1");
                // Conectar a la base de datos y ejecutar la consulta
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiendainfo", "root", "");
                     Statement stmt = conn.createStatement();
                     ResultSet rs = stmt.executeQuery("SELECT * FROM fabricantes LIMIT 8")) {
                    
                    textArea.setText(""); // Limpiar el área de texto
                    while (rs.next()) {
                        textArea.append("Código del fabricante: " + rs.getInt("codigo") + ", Nombre: " + rs.getString("nombre") + "\n");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                    textArea.setText("Error al conectar a la base de datos.");
                }
            }
        });

        button2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                label.setText("El último botón pulsado es Botón 2");
                textArea.setText("Fecha actual: " + new Date().toString());
            }
        });

        // Añadir los botones al panel de botones
        buttonPanel.add(button1);
        buttonPanel.add(button2);

        // Añadir el panel de botones al panel principal
        panel.add(buttonPanel, BorderLayout.SOUTH);

        // Añadir el panel principal al frame
        frame.getContentPane().add(panel);

        // Hacer visible el frame
        frame.setVisible(true);
    }
}
