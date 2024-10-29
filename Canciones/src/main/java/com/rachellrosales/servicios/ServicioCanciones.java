package com.rachellrosales.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rachellrosales.modelos.Cancion;
import com.rachellrosales.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
	
	@Autowired
	private final RepositorioCanciones repositorioCanciones;
	
	public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
		this.repositorioCanciones = repositorioCanciones;
	}
	
	public List<Cancion> obtenerTodasLasCanciones(){
		return this.repositorioCanciones.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long id) {
        Optional<Cancion> cancion = repositorioCanciones.findById(id);
        return cancion.orElse(null);
    }
	
	public Cancion agregarCancion(Cancion nuevaCancion) {
		return this.repositorioCanciones.save(nuevaCancion);
	}
}
