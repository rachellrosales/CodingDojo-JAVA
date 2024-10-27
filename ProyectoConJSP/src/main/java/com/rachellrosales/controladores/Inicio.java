package com.rachellrosales.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rachellrosales.modelos.Certificado;

@Controller
public class Inicio {
	@GetMapping("/")
	public String inicio(Model modelo) {
		
		String [] lenguajes = {"Java", "Python", "HTML", "Node"};
		
		modelo.addAttribute("edad", 24);
		modelo.addAttribute("nombre", "Alex");
		modelo.addAttribute("lenguajes", lenguajes);
		
		Certificado certificadoJava = new Certificado("Certificacion de Java", "Coding Dojo");
		modelo.addAttribute("certificadoJava", certificadoJava);
		
		return "index.jsp";
	}
}