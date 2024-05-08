package UD19SWINGAWT;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Calculadora extends JFrame {

	private JPanel contentPane;
	private JTextField textPantalla;
	private JButton btnSuma;
	private JButton btn3;
	private JButton btn2;
	private JButton btn1;
	private JButton btnResta;
	private JButton btn6;
	private JButton btn5;
	private JButton btn4;
	private JButton btnMulti;
	private JButton btn9;
	private JButton btn8;
	private JButton btn7;
	private JButton btnDivi;
	private JButton btnIgual;
	private JButton btnCero;
	private JButton btnPunto;
	
	
	double numero1;
	double numero2;
	double resultado;
	String operacion;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Calculadora frame = new Calculadora();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Calculadora() {
		setTitle("Calculadora");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 261, 395);
		contentPane = new JPanel();
		contentPane.setForeground(new Color(255, 255, 255));
		contentPane.setBackground(new Color(192, 192, 192));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		textPantalla = new JTextField();
		textPantalla.setBackground(new Color(192, 192, 192));
		textPantalla.setForeground(new Color(0, 0, 0));
		textPantalla.setHorizontalAlignment(SwingConstants.RIGHT);
		textPantalla.setFont(new Font("Arial", Font.BOLD, 18));
		textPantalla.setBounds(10, 11, 230, 40);
		contentPane.add(textPantalla);
		textPantalla.setColumns(10);
		
		JButton btnLimpiar = new JButton("C");
		btnLimpiar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				textPantalla.setText("");
			}
		});
		btnLimpiar.setForeground(new Color(255, 255, 255));
		btnLimpiar.setBackground(new Color(30, 144, 255));
		btnLimpiar.setFont(new Font("Arial", Font.BOLD, 17));
		btnLimpiar.setBounds(190, 62, 50, 48);
		contentPane.add(btnLimpiar);
		
		btnSuma = new JButton("+");
		btnSuma.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				numero1 = Double.parseDouble(textPantalla.getText());
				textPantalla.setText("");
				operacion = "+";
			}
		});
		btnSuma.setForeground(new Color(255, 255, 255));
		btnSuma.setFont(new Font("Arial", Font.BOLD, 18));
		btnSuma.setBackground(new Color(30, 144, 255));
		btnSuma.setBounds(190, 120, 50, 48);
		contentPane.add(btnSuma);
		
		btn3 = new JButton("3");
		btn3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn3.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn3.setFont(new Font("Arial", Font.BOLD, 18));
		btn3.setBackground(new Color(255, 255, 255));
		btn3.setBounds(130, 238, 50, 48);
		contentPane.add(btn3);
		
		btn2 = new JButton("2");
		btn2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn2.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn2.setFont(new Font("Arial", Font.BOLD, 18));
		btn2.setBackground(new Color(255, 255, 255));
		btn2.setBounds(70, 238, 50, 48);
		contentPane.add(btn2);
		
		btn1 = new JButton("1");
		btn1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//NUMERO 1
				
				String IngreseNumero = textPantalla.getText() + btn1.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn1.setFont(new Font("Arial", Font.BOLD, 18));
		btn1.setBackground(new Color(255, 255, 255));
		btn1.setBounds(10, 238, 50, 48);
		contentPane.add(btn1);
		
		btnResta = new JButton("-");
		btnResta.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				numero1 = Double.parseDouble(textPantalla.getText());
				textPantalla.setText("");
				operacion = "-";
			}
		});
		btnResta.setForeground(new Color(255, 255, 255));
		btnResta.setFont(new Font("Arial", Font.BOLD, 18));
		btnResta.setBackground(new Color(30, 144, 255));
		btnResta.setBounds(190, 179, 50, 48);
		contentPane.add(btnResta);
		
		btn6 = new JButton("6");
		btn6.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn6.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn6.setFont(new Font("Arial", Font.BOLD, 18));
		btn6.setBackground(new Color(255, 255, 255));
		btn6.setBounds(130, 179, 50, 48);
		contentPane.add(btn6);
		
		btn5 = new JButton("5");
		btn5.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String IngreseNumero = textPantalla.getText() + btn5.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn5.setFont(new Font("Arial", Font.BOLD, 18));
		btn5.setBackground(new Color(255, 255, 255));
		btn5.setBounds(70, 179, 50, 48);
		contentPane.add(btn5);
		
		btn4 = new JButton("4");
		btn4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn4.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn4.setFont(new Font("Arial", Font.BOLD, 18));
		btn4.setBackground(new Color(255, 255, 255));
		btn4.setBounds(10, 179, 50, 48);
		contentPane.add(btn4);
		
		btnMulti = new JButton("X");
		btnMulti.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				numero1 = Double.parseDouble(textPantalla.getText());
				textPantalla.setText("");
				operacion = "*";
			}
		});
		btnMulti.setForeground(new Color(255, 255, 255));
		btnMulti.setFont(new Font("Arial", Font.BOLD, 18));
		btnMulti.setBackground(new Color(30, 144, 255));
		btnMulti.setBounds(190, 238, 50, 48);
		contentPane.add(btnMulti);
		
		btn9 = new JButton("9");
		btn9.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn9.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn9.setFont(new Font("Arial", Font.BOLD, 18));
		btn9.setBackground(new Color(255, 255, 255));
		btn9.setBounds(130, 120, 50, 48);
		contentPane.add(btn9);
		
		btn8 = new JButton("8");
		btn8.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn8.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn8.setFont(new Font("Arial", Font.BOLD, 18));
		btn8.setBackground(new Color(255, 255, 255));
		btn8.setBounds(70, 120, 50, 48);
		contentPane.add(btn8);
		
		btn7 = new JButton("7");
		btn7.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btn7.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btn7.setFont(new Font("Arial", Font.BOLD, 18));
		btn7.setBackground(new Color(255, 255, 255));
		btn7.setBounds(10, 120, 50, 48);
		contentPane.add(btn7);
		
		btnDivi = new JButton("/");
		btnDivi.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				numero1 = Double.parseDouble(textPantalla.getText());
				textPantalla.setText("");
				operacion = "/";
			}
		});
		btnDivi.setForeground(new Color(255, 255, 255));
		btnDivi.setFont(new Font("Arial", Font.BOLD, 18));
		btnDivi.setBackground(new Color(30, 144, 255));
		btnDivi.setBounds(10, 297, 50, 48);
		contentPane.add(btnDivi);
		
		btnIgual = new JButton("=");
		btnIgual.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String seleccionar;
				numero2 = Double.parseDouble(textPantalla.getText());
				
				if(operacion == "+") {
						resultado = numero1+numero2;
						seleccionar = String.format("%.0f", resultado);
						textPantalla.setText(seleccionar);
				}
				
				else if (operacion =="-") { 
					resultado = numero1-numero2;
					seleccionar = String.format("%.0f", resultado);
					textPantalla.setText(seleccionar);
			}
				else if (operacion =="*") { 
					resultado = numero1*numero2;
					seleccionar = String.format("%.0f", resultado);
					textPantalla.setText(seleccionar);
			}
				
				else if (operacion =="/") { 
					resultado = numero1/numero2;
					seleccionar = String.format("%.2f", resultado);
					textPantalla.setText(seleccionar);
			}
			}
		});
		btnIgual.setForeground(new Color(255, 255, 255));
		btnIgual.setFont(new Font("Arial", Font.BOLD, 18));
		btnIgual.setBackground(new Color(30, 144, 255));
		btnIgual.setBounds(190, 297, 50, 48);
		contentPane.add(btnIgual);
		
		btnCero = new JButton("0");
		btnCero.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btnCero.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btnCero.setFont(new Font("Arial", Font.BOLD, 18));
		btnCero.setBackground(new Color(255, 255, 255));
		btnCero.setBounds(70, 297, 50, 48);
		contentPane.add(btnCero);
		
		btnPunto = new JButton(".");
		btnPunto.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				String IngreseNumero = textPantalla.getText() + btnPunto.getText();
				textPantalla.setText(IngreseNumero);
			}
		});
		btnPunto.setForeground(new Color(255, 255, 255));
		btnPunto.setFont(new Font("Arial", Font.BOLD, 23));
		btnPunto.setBackground(new Color(30, 144, 255));
		btnPunto.setBounds(130, 295, 50, 48);
		contentPane.add(btnPunto);
	}
}