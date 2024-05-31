package com.ejemplomvc.appmain;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import com.ejemplomvc.controllers.Controlador;
import com.ejemplomvc.models.Modelo;
import com.ejemplomvc.views.Vista;

public class ConversorApp {

	public static void main(String[] args) {
		
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (UnsupportedLookAndFeelException e) {
			// TODO: handle exception
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
		}catch (InstantiationException e) {
			// TODO: handle exception
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		Modelo modelo = new Modelo();
		Vista vista = new Vista();
		Controlador controlador = new Controlador(modelo, vista);
		controlador.iniciarVista();
		
	}

}
