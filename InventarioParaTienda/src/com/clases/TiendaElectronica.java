package com.clases;

import java.util.ArrayList;

public class TiendaElectronica {
    private ArrayList<ProductoElectrodomestico> listaDeProductos;

    public TiendaElectronica() {
        listaDeProductos = new ArrayList<>();
    }

    public void agregarProducto(ProductoElectrodomestico producto) {
        listaDeProductos.add(producto);
    }

    public void mostrarProductos() {
        for (ProductoElectrodomestico producto : listaDeProductos) {
            producto.mostrarInformacion();
            System.out.println("                ");
        }
    }

    public ProductoElectrodomestico buscarProducto(String nombre) {
        for (ProductoElectrodomestico producto : listaDeProductos) {
            if (producto.getNombre().equalsIgnoreCase(nombre)) {
                return producto;
            }
        }
        return null;
    }

    public void realizarVenta(String nombre, int cantidad) {
        ProductoElectrodomestico producto = buscarProducto(nombre);
        if (producto.getCantidadDisponible() >= cantidad) {
                producto.setCantidadDisponible(producto.getCantidadDisponible() - cantidad);
                System.out.println("Venta exitosa de " + cantidad + " " + nombre);
        } else {
            System.out.println("Producto agotado.");
        }
    }
}