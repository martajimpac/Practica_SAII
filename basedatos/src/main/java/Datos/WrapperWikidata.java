/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author paula
 */
public class WrapperWikidata {
     public static void WWikidataUpt(){
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query="call mediador.wrapperwikidata();";
        try {
            ps = connection.prepareStatement(query);
            ps.executeUpdate(query);
            ps.close();
            pool.freeConnection(connection);
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
}
