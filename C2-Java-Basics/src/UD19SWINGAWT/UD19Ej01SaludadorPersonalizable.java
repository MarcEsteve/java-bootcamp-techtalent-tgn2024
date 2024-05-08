package UD19SWINGAWT;

import javax.swing.*;
import java.awt.event.*;

public class UD19Ej01SaludadorPersonalizable extends JFrame {
    
    private JTextField textField;
    
    public UD19Ej01SaludadorPersonalizable() {
        setTitle("Saludador Personalizable");
        setSize(300, 200);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // Crear un panel
        JPanel panel = new JPanel();
        
        // Crear un campo de texto
        textField = new JTextField(20);
        panel.add(textField);
        
        // Crear un botón
        JButton botonSaludar = new JButton("Saludar");
        // Agregar ActionListener al botón
        botonSaludar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // Obtener el texto del campo de texto
                String nombre = textField.getText();
                // Mostrar un mensaje en un JOptionPane
                JOptionPane.showMessageDialog(UD19Ej01SaludadorPersonalizable
                		.this, "¡Hola " + nombre + "!");
            }
        });
        panel.add(botonSaludar);
        
        // Agregar el panel a la ventana
        add(panel);
    }
    
    public static void main(String[] args) {
        // Crear una instancia de la ventana
        UD19Ej01SaludadorPersonalizable ventana = new UD19Ej01SaludadorPersonalizable();
        // Hacer visible la ventana
        ventana.setVisible(true);
    }
}
