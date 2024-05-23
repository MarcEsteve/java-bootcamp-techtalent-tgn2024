package com.example.controller;

import com.example.model.Person;
import com.example.view.PersonView;

public class PersonController {
    private Person model;
    private PersonView view;

    public PersonController(Person model, PersonView view) {
        this.model = model;
        this.view = view;
    }

    public void setPersonName(String name) {
        model.setName(name);
    }

    public String getPersonName() {
        return model.getName();
    }

    public void updateView() {
        view.printPersonDetails(model.getName());
    }
}
