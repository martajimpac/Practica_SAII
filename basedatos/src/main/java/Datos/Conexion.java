/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

/**
 *
 * @author paula
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.InitialContext;

public class Conexion {
    private static Conexion pool = null;
    private static DataSource dataSource = null;
    
    private Conexion() {
        try {
            InitialContext ic = new InitialContext();
            dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/mediador");
            
        }catch(Exception e) {
            e.printStackTrace();
            }
    }
    public static Conexion getInstance() {
        if (pool == null) {
            pool = new Conexion();
        }
            return pool;
    }
    public Connection getConnection() {
        try {
            return dataSource.getConnection();
        }catch (SQLException sqle) {
            sqle.printStackTrace();
            return null;
        }
    }
    public void freeConnection(Connection c) {
        try {
            c.close();
        }catch (SQLException sqle) {
            sqle.printStackTrace();
        }
    }
}
