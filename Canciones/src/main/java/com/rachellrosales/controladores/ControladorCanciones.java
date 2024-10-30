package com.rachellrosales.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rachellrosales.modelos.Artista;
import com.rachellrosales.modelos.Cancion;
import com.rachellrosales.servicios.ServicioArtistas;
import com.rachellrosales.servicios.ServicioCanciones;

import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {
	@Autowired
	private final ServicioCanciones servicioCanciones;
	private final ServicioArtistas servicioArtistas;
	
	public ControladorCanciones(ServicioCanciones servicioCanciones, ServicioArtistas servicioArtistas) {
		this.servicioCanciones = servicioCanciones;
		this.servicioArtistas = servicioArtistas;
	}
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model model) {
		List<Cancion> canciones = this.servicioCanciones.obtenerTodasLasCanciones();
		model.addAttribute("canciones", canciones);
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model model) {
        Cancion cancion = this.servicioCanciones.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion);
        return "detalleCancion.jsp";
    }
	
	@GetMapping("/canciones/formulario/agregar")
	public String formularioAgregarCancion(@ModelAttribute("cancion") Cancion cancion, Model model) {
		List<Artista> artistas = servicioArtistas.obtenerTodosLosArtistas();
	    model.addAttribute("artistas", artistas);
		return "agregarCancion.jsp";
	}
	
	@PostMapping("/canciones/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute Cancion cancion, BindingResult validaciones, @RequestParam Long idArtista) {

		if(validaciones.hasErrors()) {
			return "agregarCancion.jsp";
		}
		Artista artista = servicioArtistas.obtenerArtistaPorId(idArtista);
	    cancion.setArtista(artista);
		this.servicioCanciones.agregarCancion(cancion);
		return "redirect:/canciones";
	}
	
	@DeleteMapping("/canciones/eliminar/{idCancion}")
	public String procesarEliminarCancion(@PathVariable Long idCancion) {
		this.servicioCanciones.eliminaCancion(idCancion);
		return "redirect:/canciones";
	}
	
	@GetMapping("/canciones/formulario/editar/{idCancion}")
	public String formularioEditarCancion(@PathVariable Long idCancion, Model model, @ModelAttribute Cancion cancion) {
		cancion = this.servicioCanciones.obtenerCancionPorId(idCancion);
		List<Artista> artistas = servicioArtistas.obtenerTodosLosArtistas();
		model.addAttribute("cancion", cancion);
		model.addAttribute("artistas", artistas);
		return "editarCancion.jsp";
	}
	
	@PutMapping("/canciones/procesa/editar/{idCancion}")
	public String procesarEditarCancion(@Valid @ModelAttribute Cancion cancion, BindingResult validaciones, @PathVariable Long idCancion, @RequestParam("idArtista") Long idArtista) {
		if(validaciones.hasErrors()) {
			return "editarCancion.jsp";
		}
		Artista artista = servicioArtistas.obtenerArtistaPorId(idArtista);
	    cancion.setArtista(artista);
		cancion.setId(idCancion);
		this.servicioCanciones.actualizaCancion(cancion);
		return "redirect:/canciones";
	}
	
}
