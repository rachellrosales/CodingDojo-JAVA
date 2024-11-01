package com.rachellrosales.controladores;
import java.util.HashMap;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControladorPeliculas {
	private static HashMap<String, String> listaPeliculas = new HashMap<String, String>();
	
	public ControladorPeliculas() {
		listaPeliculas.put("Winnie the Pooh", "Don Hall");	
		listaPeliculas.put("El zorro y el sabueso", "Ted Berman");
		listaPeliculas.put("Tarzán", "Kevin Lima");		
		listaPeliculas.put("Mulán", "Barry Cook");
		listaPeliculas.put("Oliver", "Kevin Lima");	
		listaPeliculas.put("Big Hero 6", "Don Hall");	
	}
	
	@GetMapping("/peliculas")
	public String obtenerTodasLasPeliculas() {
		String resultado = "";

	    for (String pelicula : listaPeliculas.keySet()) {
	        if (!resultado.isEmpty()) {
	            resultado += ", ";
	        }
	        resultado += pelicula;
	    }

	    if (!resultado.isEmpty()) {
	        return "Las peliculas disponibles son: " + resultado;
	    } else {
	        return "No hay películas disponibles.";
	    }
	}
	
	@GetMapping("/peliculas/{nombre}")
	public String obtenerPeliculaPorNombre(@PathVariable("nombre") String nombre) {
		String director = listaPeliculas.get(nombre);
		if (director != null) {
            return "La pelicula es: " + nombre + ", y su director: " + director;
        } else {
            return "La película no se encuentra en nuestra lista.";
        }
	}
	
	@GetMapping("/peliculas/director/{nombre}")
	public String obtenerPeliculaPorDirector(@PathVariable("nombre") String nombre) {
		String resultado = "";

	    for (String pelicula : listaPeliculas.keySet()) {
	        if (listaPeliculas.get(pelicula).equalsIgnoreCase(nombre)) {
	            resultado += pelicula + ", ";
	        }
	    }

	    if (!resultado.isEmpty()) {
	        return "La(s) pelicula(s) de ese director son(es): "+ resultado;
	    } else {
	        return "No contamos con películas con ese director en nuestra lista.";
	    }
	}
}
