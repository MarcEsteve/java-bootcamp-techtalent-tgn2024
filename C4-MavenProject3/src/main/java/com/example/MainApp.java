package com.example;

import com.example.controller.PersonControllerGrafico;
import com.example.model.Person;
import com.example.view.PersonViewGrafico;

public class MainApp {
    public static void main(String[] args) {
        // Crear el modelo
        Person model = new Person("John Doe");

        // Crear la vista
        PersonViewGrafico view = new PersonViewGrafico();

        // Crear el controlador
        PersonControllerGrafico controller = new PersonControllerGrafico(model, view);

        // Mostrar la vista inicial
        view.setResultText("Aplicación iniciada con el nombre: " + model.getName());
    }
}
