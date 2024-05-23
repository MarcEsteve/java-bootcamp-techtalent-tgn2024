package com.example.controller;

import com.example.model.Person;
import com.example.view.PersonViewGrafico;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PersonControllerGrafico {
    private Person model;
    private PersonViewGrafico view;

    public PersonControllerGrafico(Person model, PersonViewGrafico view) {
        this.model = model;
        this.view = view;

        this.view.addUpdateButtonListener(new UpdateButtonListener());
        this.view.addShowDateButtonListener(new ShowDateButtonListener());
    }

    class UpdateButtonListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            model.setName(view.getName());
            view.setResultText("El nombre ha sido actualizado a: " + model.getName());
        }
    }

    class ShowDateButtonListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            String date = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new Date());
            view.setResultText("Fecha y hora actuales: " + date);
        }
    }
}
