package com.sinfloo.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    Connection con;
   String url = "jdbc:sqlserver://DESKTOP-OM8C2CV\\SQLEXPRESS:1433;databaseName=Proyec";
          String user = "BD24K";
             String password = "123";

    public Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, user, password);
        }catch(Exception ex){
            return null;
        }
        return con;

    }
   public static void main(String[] args) {
       System.out.println("esta "+new Conexion().getConnection());
    }
}
