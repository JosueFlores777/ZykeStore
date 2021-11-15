
package com.sinfloo.modelo;

public class Cliente {
    int id;
    String dni;
    String Nombres;
    String direccion;
    String email;
    String pass;
    String foto;
    int idrol;
    String rol;

    public Cliente() {
    }

    public Cliente(int id, String dni, String Nombres, String direccion, String email, String pass, String foto, int idrol, String rol) {
        this.id = id;
        this.dni = dni;
        this.Nombres = Nombres;
        this.direccion = direccion;
        this.email = email;
        this.pass = pass;
        this.foto = foto;
        this.idrol = idrol;
        this.rol = rol;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

   
    
}
