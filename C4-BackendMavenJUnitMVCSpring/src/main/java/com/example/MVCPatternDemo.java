package com.example;

import com.example.controller.PersonController;
import com.example.model.Person;
import com.example.view.PersonView;

public class MVCPatternDemo {
    public static void main(String[] args) {
        // Create model
        Person model = new Person("John Doe");

        // Create view
        PersonView view = new PersonView();

        // Create controller
        PersonController controller = new PersonController(model, view);

        // Initial display
        controller.updateView();

        // Update the model data
        controller.setPersonName("Jane Doe");

        // Display updated data
        controller.updateView();
    }
}
