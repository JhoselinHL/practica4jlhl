package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
    static public String driver="com.mysql.jdbc.Driver";
    static String url="jdbc:mysql://localhost:3306/bd_blog";
        static String usuario="root";
        static String password="";
    
    protected Connection conn = null;
    
    public ConexionDB(){
        try {
         
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
            
        } catch (ClassNotFoundException ex) {
            System.out.println("error en el driver"+ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("error al realizar la conexion"+ex.getMessage());
        }
    }
    
    public Connection conectar(){
        return conn;
    }
    
    public void desconectar(){
        System.out.println("Cerrando la BD:" + conn);
        try{
            conn.close();
        }catch(SQLException ex){
            System.out.println("Error al cerrar la conexion: " + ex.getMessage());
        }
    }
}
