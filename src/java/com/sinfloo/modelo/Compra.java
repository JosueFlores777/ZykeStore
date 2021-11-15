
package com.sinfloo.modelo;

public class Compra {
    int id;
    int idCliente;
    String fecha;
    double monto;
    double descuento;
    double igv;
    double montofinal;
    int idPago;
    String estado;

    public Compra() {
    }

    public Compra(int id, int idCliente, String fecha, double monto, double descuento, double igv, double montofinal, int idPago, String estado) {
        this.id = id;
        this.idCliente = idCliente;
        this.fecha = fecha;
        this.monto = monto;
        this.descuento = descuento;
        this.igv = igv;
        this.montofinal = montofinal;
        this.idPago = idPago;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        this.igv = igv;
    }

    public double getMontofinal() {
        return montofinal;
    }

    public void setMontofinal(double montofinal) {
        this.montofinal = montofinal;
    }

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

   
}
