package com;

import com.clases.*;

public class Aplicacion {
    public static void main(String[] args) {
        TiendaElectronica tienda = new TiendaElectronica();

        Televisor televisor1 = new Televisor("Samsung 4K", 600, 10, 55, "4K UHD");
        ComputadoraPortatil computadora1 = new ComputadoraPortatil("HP Pavilion", 800, 5, "HP", 16, "HP123456");

        tienda.agregarProducto(televisor1);
        tienda.agregarProducto(computadora1);

        tienda.realizarVenta("Samsung 4K", 3);
        tienda.realizarVenta("HP Pavilion", 2);
        tienda.realizarVenta("Samsung 4K", 8);

        tienda.mostrarProductos();
    }
}