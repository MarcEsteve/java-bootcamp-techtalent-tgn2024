package UD19SWINGAWT;

import javax.swing.*;

public class AplicacionGrafica extends JFrame {
	
	private JPanel contentPane = new JPanel();
	
	public AplicacionGrafica() {
		setTitle("Titulo ventana FRAME");
		setBounds(400,200,300,500);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
		
		contentPane.setLayout(null);
		setContentPane(contentPane);
		
		// CREACIÓN DE COMPONENTES
		//Etiqueta
		JLabel etiqueta= new JLabel("Hola MUNDO");
		etiqueta.setBounds(43,20,100,20);
		contentPane.add(etiqueta);
		
		//Campo de texto
		
		JTextField campo = new JTextField();
		campo.setBounds(43,67,86,26);
		contentPane.add(campo);
		
		//Añado un botón
		
		JButton boton = new JButton("Botón de enviar");
		boton.setBounds(43,120,200,23);
		contentPane.add(boton);
		
		
		
	}
}
