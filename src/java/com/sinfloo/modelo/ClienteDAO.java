package com.sinfloo.modelo;
import java.sql.Types;
import java.sql.CallableStatement;
import com.sinfloo.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
       CallableStatement st;
    ResultSet rs;
    

    public List listar() throws SQLException {
        List<Cliente> lista = new ArrayList<>();
        try {
           con = cn.getConnection();
           st = con.prepareCall ("{call SP_ListarCliente()} "); 
           rs = st.executeQuery();
         // String sql = "select * from cliente";
      
          //  con = cn.getConnection();
           // ps = con.prepareStatement(sql);
         //   rs = ps.executeQuery();
             while (rs.next()){
                Cliente c = new Cliente();
                c.setId(rs.getInt(1));
                c.setDni(rs.getString(2));
                c.setNombres(rs.getString(3));
                c.setDireccion(rs.getString(4));
                c.setEmail(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setFoto(rs.getString(7));
                lista.add(c);
             }
        } catch (SQLException e) {
            System.err.println("Error:"+e);
        }
        return lista;
    }
    public List listarRol() {
        List<Rol> lista = new ArrayList<>();
        String sql = "select * from rol";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Rol r = new Rol();
                r.setId(rs.getInt(1));
                r.setRol(rs.getString(2));
                lista.add(r);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public Cliente listarId(int id) {
        Cliente c = new Cliente();
//        String sql = "select * from cliente where idCliente=" + id;
        String sql = "SELECT * FROM  cliente c INNER JOIN rol r\n"
                + "on c.idRol=r.idRol\n"
                + " where c.idCliente=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setId(rs.getInt(1));
                c.setDni(rs.getString(2));
                c.setNombres(rs.getString(3));
                c.setDireccion(rs.getString(4));
                c.setEmail(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setFoto(rs.getString(7));
                c.setIdrol(rs.getInt(8));
                c.setRol(rs.getString(10));
            }
        } catch (Exception e) {
        }
        return c;
    }
    public Cliente Validar(String email, String pass) {
        String sql = "SELECT * FROM  cliente c INNER JOIN rol r\n"
                + "on c.idRol=r.idRol\n"
                + "where c.Email=? and c.Password=?";

        Cliente c = new Cliente();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setId(rs.getInt(1));
                c.setDni(rs.getString(2));
                c.setNombres(rs.getString(3));
                c.setDireccion(rs.getString(4));
                c.setEmail(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setFoto(rs.getString(7));
                c.setIdrol(rs.getInt(8));
                c.setRol(rs.getString(10));
            }
        } catch (Exception e) {
        }
        return c;
    }

    public int AgregarCliente(Cliente c) throws SQLException {
         con = cn.getConnection();
          st =con.prepareCall("{call SP_AgregarCliente(?,?,?,?,?)}");
        try {
            
            ps.setString(1, c.getDni());
            ps.setString(2, c.getNombres());
            ps.setString(3, c.getDireccion());
            ps.setString(4, c.getEmail());
            ps.setString(5, c.getPass());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;
    }

    public int AgregarUsuario(Cliente c) throws SQLException {
        con = cn.getConnection();
        st =con.prepareCall("{call SP_AgregarUsuario(?,?,?,?,?,?,?)}");
        try {
            st.setString(1, c.getDni());
            st.setString(2, c.getNombres());
            st.setString(3, c.getDireccion());
            st.setString(4, c.getEmail());
            st.setString(5, c.getPass());
            st.setString(6, c.getFoto());
            st.setInt(7, c.getIdrol());
            st.execute();
           
        } catch (Exception e) {
        }
        return 1;
    }

    public int ActualizarUsuario(Cliente c) {
        int r = 0;
        String sql = "update cliente set Dni=?, Nombres=?, Direccion=?, Email=?, Password=?,Foto=?,idRol=? where idCliente=?";
        con = cn.getConnection();
        try {
            if (c.getFoto() != null) {
                ps = con.prepareStatement(sql);
                ps.setString(1, c.getDni());
                ps.setString(2, c.getNombres());
                ps.setString(3, c.getDireccion());
                ps.setString(4, c.getEmail());
                ps.setString(5, c.getPass());
                ps.setString(6, c.getFoto());
                ps.setInt(7, c.getIdrol());
                ps.setInt(8, c.getId());                
                r = ps.executeUpdate();
            } else {
                sql = "update cliente set Dni=?, Nombres=?, Direccion=?, Email=?, Password=?,idRol=? where idCliente=?";
                ps = con.prepareStatement(sql);
                ps.setString(1, c.getDni());
                ps.setString(2, c.getNombres());
                ps.setString(3, c.getDireccion());
                ps.setString(4, c.getEmail());
                ps.setString(5, c.getPass());
                ps.setInt(6, c.getIdrol());
                ps.setInt(7, c.getId());
                
                r = ps.executeUpdate();
            }
        } catch (Exception e) {
            System.err.println("Error al actualizar" + e);
        }
        return r;
    }

    public void DeleteUsuario(int id) {
        String sql = "delete from cliente where idCliente=" + id;
        con = cn.getConnection();
        try {
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error al Eliminar de BD" + e);
        }

    }
}
