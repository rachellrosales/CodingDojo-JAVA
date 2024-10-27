package com.clases;

public class Televisor extends ProductoElectrodomestico {
    private double tamañoPantalla;
    private String resolución;

    public Televisor(String nombre, double precio, int cantidadDisponible, double tamañoPantalla, String resolución) {
        super(nombre, precio, cantidadDisponible);
        this.tamañoPantalla = tamañoPantalla;
        this.resolución = resolución;
    }

    @Override
    public void mostrarInformacion() {
        super.mostrarInformacion();
        System.out.println("Tamaño de pantalla: " + tamañoPantalla + " pulgadas");
        System.out.println("Resolución: " + resolución);
    }
}