package UD19SWINGAWT;

import javax.swing.*;
import java.awt.event.*;

public class UD19eventsalir extends JFrame {
    
    public UD19eventsalir() {
        setTitle("Ejemplo de Menú");
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
    }
    
    public static void main(String[] args) {
        // Crear una instancia de la ventana
        UD19eventsalir ventana = new UD19eventsalir();
        // Hacer visible la ventana
        ventana.setVisible(true);
    }
}
