package com.rachellrosales.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rachellrosales.modelos.Artista;
import com.rachellrosales.servicios.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {
	@Autowired
	private final ServicioArtistas servicioArtistas;
	
	public ControladorArtistas(ServicioArtistas servicioArtistas) {
		
		this.servicioArtistas = servicioArtistas;
	}
	
	@GetMapping("/artistas")
	public String servicioArtistas(Model model) {
		List<Artista> artistas  = this.servicioArtistas.obtenerTodosLosArtistas();
		model.addAttribute("artistas", artistas );
		return "artistas.jsp";
	}
	
	@GetMapping("/artistas/detalle/{idArtista}")
    public String desplegarDetalleArtista(@PathVariable("idArtista") Long idArtista, Model model) {
		Artista artista = this.servicioArtistas.obtenerArtistaPorId(idArtista);
        model.addAttribute("artista", artista);
        return "detalleArtista.jsp";
    }
	
	@GetMapping("/artistas/formulario/agregar")
	public String formularioAgregarArtista(@ModelAttribute("artista") Artista artista) {
		return "agregarArtista.jsp";
	}
	
	@PostMapping("/artistas/procesa/agregar")
	public String procesarAgregarCancion(@Valid @ModelAttribute Artista artista, BindingResult validaciones, @RequestParam Long idArtista) {

		if(validaciones.hasErrors()) {
			return "agregarArtista.jsp";
		}
		this.servicioArtistas.agregarArtista(artista);
		return "redirect:/artistas";
	}
	
}
