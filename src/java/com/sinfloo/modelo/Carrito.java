package com.sinfloo.modelo;

public class Carrito {

    int item;
    int idProducto;
    String nombres;
    String imagen;
    String descripcion;
    double precioCompra;
    double precioFinal;
    int cantidad;
    double subTotal;
    double subTotalDes;
    String subTota;
    double descuento;
    String estadoProducto;

    public Carrito() {
    }

    public Carrito(int item, int idProducto, String nombres, String imagen, String descripcion, double precioCompra, double precioFinal, int cantidad, double subTotal, double subTotalDes, String subTota, double descuento, String estadoProducto) {
        this.item = item;
        this.idProducto = idProducto;
        this.nombres = nombres;
        this.imagen = imagen;
        this.descripcion = descripcion;
        this.precioCompra = precioCompra;
        this.precioFinal = precioFinal;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
        this.subTotalDes = subTotalDes;
        this.subTota = subTota;
        this.descuento = descuento;
        this.estadoProducto = estadoProducto;
    }

    public double getSubTotalDes() {
        return subTotalDes;
    }

    public void setSubTotalDes(double subTotalDes) {
        this.subTotalDes = subTotalDes;
    }

    

    public double getPrecioFinal() {
        return precioFinal;
    }

    public void setPrecioFinal(double precioFinal) {
        this.precioFinal = precioFinal;
    }

  

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public String getSubTota() {
        return subTota;
    }

    public void setSubTota(String subTota) {
        this.subTota = subTota;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public String getEstadoProducto() {
        return estadoProducto;
    }

    public void setEstadoProducto(String estadoProducto) {
        this.estadoProducto = estadoProducto;
    }

  

   

}
