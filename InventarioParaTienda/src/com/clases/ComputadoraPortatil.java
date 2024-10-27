package com.clases;

public class ComputadoraPortatil extends ProductoElectrodomestico {
    private String marca;
    private int memoriaRAM;
    private String numeroSerie;

    public ComputadoraPortatil(String nombre, int precio, int cantidadDisponible, String marca, int memoriaRAM, String numeroSerie) {
        super(nombre, precio, cantidadDisponible);
        this.marca = marca;
        this.memoriaRAM = memoriaRAM;
        this.numeroSerie = numeroSerie;
    }

    @Override
    public void mostrarInformacion() {
        super.mostrarInformacion();
        System.out.println("Marca: " + marca);
        System.out.println("Memoria RAM: " + memoriaRAM + "GB");
        System.out.println("Numero de serie: " + numeroSerie);
    }
}