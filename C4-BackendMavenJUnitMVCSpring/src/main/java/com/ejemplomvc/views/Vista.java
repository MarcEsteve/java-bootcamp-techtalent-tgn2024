package com.ejemplomvc.views;

import java.awt.*;
import javax.swing.*;

public class Vista extends JFrame {
	
	private static final long serialVersionUID = 1L;
	public JButton euros, dolares;
	private JPanel panelB, panelR;
	public JLabel lResultado;
	public JTextField campoTexto;
	
	public Vista() {
		getContentPane().setLayout(new BorderLayout());
		
		panelB = new JPanel();
		panelB.setLayout(new FlowLayout());
		
		panelR = new JPanel();
		panelR.setLayout(new FlowLayout());
		
		euros= new JButton("Convertir a Euros");
		dolares= new JButton("Convertir a Dólares");
		
		lResultado = new JLabel ("Resultado: ");
		campoTexto = new JTextField(20);
		
		panelB.add(euros);
		panelB.add(dolares);
		panelR.add(lResultado);
		
		add(campoTexto, BorderLayout.NORTH);
		add(panelB, BorderLayout.SOUTH);
		add(panelR, BorderLayout.CENTER);
		
		
	}

}
