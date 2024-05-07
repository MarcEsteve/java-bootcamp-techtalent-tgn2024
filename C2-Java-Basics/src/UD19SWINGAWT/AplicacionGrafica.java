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
		//Componente Etiqueta
		JLabel etiqueta= new JLabel("Hola MUNDO");
		etiqueta.setBounds(43,20,100,20);
		contentPane.add(etiqueta);
		//Componente Campo de texto
		JTextField campo = new JTextField();
		campo.setBounds(43,67,86,26);
		contentPane.add(campo);
		//Componente Botón
		JButton boton = new JButton("Botón de enviar");
		boton.setBounds(43,120,200,23);
		contentPane.add(boton);
		//Componente "Botón radio" se debe "agrupar" selección ÚNICA
		JRadioButton rdbtnOpcion1 = new JRadioButton("Opción 1 radio", true);
		rdbtnOpcion1.setBounds(43, 194, 109, 23);
		contentPane.add(rdbtnOpcion1);
		
		JRadioButton rdbtnOpcion2 = new JRadioButton("Opción 2 radio", false);
		rdbtnOpcion2.setBounds(43, 220, 109, 23);
		contentPane.add(rdbtnOpcion2);
		
		JRadioButton rdbtnOpcion3 = new JRadioButton("Opción 3 radio", false);
		rdbtnOpcion3.setBounds(43, 220, 109, 23);
		contentPane.add(rdbtnOpcion3);
		
		ButtonGroup bgroup = new ButtonGroup();
		bgroup.add(rdbtnOpcion1);
		bgroup.add(rdbtnOpcion2);
		bgroup.add(rdbtnOpcion3);
		//Que ocurre con el radio buton 3?
		
		//Componente "Cajas seleccionables"
		JCheckBox chckbxOpcion = new JCheckBox ("Caja ok 1", true);
		chckbxOpcion.setBounds(43, 305, 97, 23);
		contentPane.add(chckbxOpcion);
		
		JCheckBox chckbxNewCheck = new JCheckBox ("Caja ok 2", false);
		chckbxNewCheck.setBounds(43, 325, 97, 23);
		contentPane.add(chckbxNewCheck);
		
		JCheckBox chckbxOpcion3 = new JCheckBox ("Caja ok 3", false);
		chckbxOpcion3.setBounds(43, 345, 97, 23);
		contentPane.add(chckbxOpcion3);
		
		//Componente "Área de texto"
		JTextArea textArea = new JTextArea("prueba");
		textArea.setBounds(189, 18, 141, 117);
		textArea.setWrapStyleWord(true);
		textArea.setLineWrap(true);
		contentPane.add(textArea);
		
		JScrollPane scroll = new JScrollPane(textArea);
		scroll.setBounds(189, 18, 141, 117);
		contentPane.add(scroll);
		
		//Componente "campo de contraseña"
		JPasswordField pwd = new JPasswordField("fernando");
		pwd.setBounds(189, 171, 139, 20);
		contentPane.add(pwd);
		
		//Componente "Menú de selección"
		JComboBox comboBox = new JComboBox<>();
		comboBox.setBounds(189, 221, 141, 22);
		contentPane.add(comboBox);
		
		comboBox.addItem("Fernando");
		comboBox.addItem("Alberto");
		comboBox.addItem("Arturo");
		
		
	}
}
