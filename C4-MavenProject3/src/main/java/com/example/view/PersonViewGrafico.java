package com.example.view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

public class PersonViewGrafico extends JFrame {
    private JTextField nameField = new JTextField(20);
    private JButton updateButton = new JButton("Actualizar Nombre");
    private JButton showDateButton = new JButton("Mostrar Fecha");
    private JLabel nameLabel = new JLabel("Nombre:");
    private JTextArea resultArea = new JTextArea(5, 20);

    public PersonViewGrafico() {
        // Configurar la ventana principal
        setTitle("Interfaz de Persona");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // Configurar el panel principal
        JPanel panel = new JPanel();
        panel.setLayout(new GridBagLayout());
        GridBagConstraints constraints = new GridBagConstraints();
        constraints.insets = new Insets(10, 10, 10, 10);
        constraints.anchor = GridBagConstraints.WEST;

        // Añadir componentes al panel
        constraints.gridx = 0;
        constraints.gridy = 0;
        panel.add(nameLabel, constraints);

        constraints.gridx = 1;
        panel.add(nameField, constraints);

        constraints.gridx = 0;
        constraints.gridy = 1;
        panel.add(updateButton, constraints);

        constraints.gridx = 1;
        panel.add(showDateButton, constraints);

        constraints.gridx = 0;
        constraints.gridy = 2;
        constraints.gridwidth = 2;
        constraints.fill = GridBagConstraints.HORIZONTAL;
        resultArea.setEditable(false);
        panel.add(new JScrollPane(resultArea), constraints);

        // Añadir el panel a la ventana
        add(panel);

        // Hacer visible la ventana
        setVisible(true);
    }

    public String getName() {
        return nameField.getText();
    }

    public void setName(String name) {
        nameField.setText(name);
    }

    public void setResultText(String text) {
        resultArea.setText(text);
    }

    public void addUpdateButtonListener(ActionListener listener) {
        updateButton.addActionListener(listener);
    }

    public void addShowDateButtonListener(ActionListener listener) {
        showDateButton.addActionListener(listener);
    }
}
