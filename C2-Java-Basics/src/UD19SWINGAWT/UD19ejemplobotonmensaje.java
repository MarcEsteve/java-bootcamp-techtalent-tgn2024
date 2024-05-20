package UD19SWINGAWT;

import javax.swing.*;
import java.awt.event.*;

public class UD19ejemplobotonmensaje extends JFrame {
    
    public UD19ejemplobotonmensaje() {
        setTitle("Ejemplo de Menú con Botón");
        setSize(300, 200);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        	
        // Crear la barra de menú
        JMenuBar menuBar = new JMenuBar();
        
        // Crear el menú
        JMenu menu = new JMenu("Archivo");
        
        // Crear la opción de menú "Salir"
        JMenuItem salirItem = new JMenuItem("Salir");
        
        // Agregar un ActionListener al item "Salir"
        salirItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // Cerrar la ventana cuando se seleccione "Salir"
                dispose();
            }
        });
        
        // Agregar el item "Salir" al menú
        menu.add(salirItem);
        
        // Agregar el menú a la barra de menú
        menuBar.add(menu);
        
        // Establecer la barra de menú en la ventana
        setJMenuBar(menuBar);
        
        // Crear un botón
        JButton boton = new JButton("Enviar");
        
        // Agregar ActionListener al botón
        boton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                // Mostrar un mensaje en un JOptionPane
                JOptionPane.showMessageDialog(UD19ejemplobotonmensaje.this, 
                		"Enviado, gracias");
            }
        });
        
        // Agregar el botón a la ventana
        add(boton);
    }
    
    public static void main(String[] args) {
        // Crear una instancia de la ventana
        UD19ejemplobotonmensaje ventana = new UD19ejemplobotonmensaje();
        // Hacer visible la ventana
        ventana.setVisible(true);
    }
}
