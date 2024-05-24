package com.demo.mvc;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.server.ResponseStatusException;

@Controller
public class Controlador {
		
	// http://localhost:8080/spring-demo-mcv/mostrarFormulario
	/*@RequestMapping("/mostrarFormulario")
	public String mostrarFormulario() {
	// /WEB-INF/views/formulario-hello.jsp
		return "formulario-hola";
	}*/
	// http://localhost:8080/spring-demo-mcv/procesarFormulario
	/*@RequestMapping("/procesarFormulario")
	public String procesarFormulario(HttpServletRequest request, Model model) {
	// /WEB-INF/views/hello.jsp
		// se extrae el valor del atributo name del campo del formulario formulario
		String nombre = request.getParameter("nombre");
		// si el usuario no ha introducido ning�n valor (null), entonces se iguala a una
		//cadena vac�a
		String mensaje = (nombre == null) ? "undefined" : nombre.toUpperCase();
		/*String mensaje="";
		if (nombre==null) {
			mensaje="undefined";
		} else {
			mensaje=nombre.toUpperCase();
		}
		if (nombre==null) {
			System.out.println("No hay nombre");
		} else {
			System.out.println("El valor enviado por el usuario es " + mensaje);
		}*/
		//Siempre tendr� valor, nunca ser� NULL
		
		/*System.out.println("El valor enviado por el usuario es " + mensaje);
		// crear un nuevo elemento en el modelo
		model.addAttribute("mensaje", mensaje);	
		return "hola";
	}*/
		
	@RequestMapping
	public String muestraPagina() {
		
		return "paginaEjemplo";
	
		
	}
	// para peticiones GET en la ruta /mostrarFormulario
	@GetMapping("/mostrarFormulario")
	public String mostrarFormulario() {
		return "formulario-hola";
	}
	// para peticiones GET en la ruta /procesarFormulario
	@GetMapping("/procesarFormulario")
	public String procesarFormulario(HttpServletRequest request, Model model) {
		String nombre = request.getParameter("nombre");
		String mensaje = (nombre == null) ? "undefined" : nombre.toUpperCase();
		System.out.println("(CONSOLA - CONTROLADOR)El valor enviado por el usuario es " + mensaje);
		model.addAttribute("mensaje", mensaje);
		return "hola";
	}
	// para peticiones POST en la ruta /mostrarFormulario
	@PostMapping("/mostrarFormulario")
	public String mostrarFormularioPost() {
		return "formulario-hola";
	}
	// para peticiones POST en la ruta /procesarFormulario
	/*@PostMapping("/procesarFormulario")
	public String procesarFormularioPost(HttpServletRequest request, Model model) {
		String nombre = request.getParameter("nombre");
		String mensaje = (nombre == null) ? "undefined" : nombre.toUpperCase();
		System.out.println("(CONSOLA - CONTROLADOR)El valor enviado por el usuario es " + mensaje);
		model.addAttribute("mensaje", mensaje);
		return "hola";
	}*/
	@PostMapping("/procesarFormulario")
	public String procesarFormularioPost(@RequestParam("nombre") String nombre,
			@RequestBody String body, Model model) {
		System.out.println("Lo que tenemos en el body es: " + body);
		String mensaje = (nombre == null) ? "undefined" : nombre.toUpperCase();
		System.out.println("(CONSOLA - CONTROLADOR)El valor enviado por el usuario es " + mensaje);
		model.addAttribute("mensaje", mensaje);
		return "hola";
	}
	
	@RequestMapping("/mostrarFormulario3")
	// se accede al valor de la cabecera accept-language y se almacena en la variable
	//acceptLanguage
	// c�digo de estado HTTP 201 (CREATED)
	@ResponseStatus(HttpStatus.CREATED)
	public String mostrarFormulario(@RequestHeader Map<String, String> cabeceras) {
		// se recorren todos los elementos de la cabecera
		cabeceras.forEach((clave, valor) -> {
			System.out.println(clave + ": " + valor);
		});
		// pero se devuelve el c�digo de estado NOT_FOUND (404)
		throw new ResponseStatusException(HttpStatus.NOT_FOUND);
		//System.out.println("El valor de la cabecera accept-language es " + acceptLanguage);
		//return "formulario-hola";
	}
}