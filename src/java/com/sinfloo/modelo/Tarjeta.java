
package com.sinfloo.modelo;

public class Tarjeta {
    int id;
    String nombre;
    String numero;
    String fecha;
    String codigo;
    Double saldo;

    public Tarjeta() {
    }

    public Tarjeta(int id, String nombre, String numero, String fecha, String codigo, Double saldo) {
        this.id = id;
        this.nombre = nombre;
        this.numero = numero;
        this.fecha = fecha;
        this.codigo = codigo;
        this.saldo = saldo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }
    
}
