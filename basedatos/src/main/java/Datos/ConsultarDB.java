/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

/**
 *
 * @author paula
 */
import Modelo.App;
import Modelo.DatosDeUsuario;
import Modelo.Empresa;
import Modelo.Privacidad;
import java.sql.*;
import java.util.ArrayList;
public class ConsultarDB {
    public static ArrayList <App> ConsultTotalAPP(String name,boolean[]valoresopt) {
        WrapperAppstore.WAppStoreUpt();
        WrapperPlayStore.WPlayStoreUpt();
        WrapperWikidata.WWikidataUpt();
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT  * FROM mediador.apps a , mediador.privacidad p,mediador.datosdeusuario d ,mediador.empresa e \n" +
        " WHERE a.N=? AND p.NA=a.N AND a.SO=p.SO AND p.NA= d.NA AND d.NA=e.NA AND p.VA=d.VA;";
        ArrayList <App> apps = new ArrayList<>();
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            App infapp=null;
            Privacidad infpriv=null;
            DatosDeUsuario infdatos=null;
            Empresa empresa=null;
            while (rs.next()) {
                infapp = new App();
                infpriv = new Privacidad();
                infdatos = new DatosDeUsuario();
                empresa=new Empresa();
                infpriv.setNameApp(rs.getString("p.NA"));
                if(valoresopt[2])infpriv.setInfTerceros(rs.getString("p.IT"));
                if(valoresopt[3])infpriv.setPubli(rs.getString("p.P"));
                infpriv.setVersion(rs.getString("p.VA"));
                if(valoresopt[11])infdatos.setAgenda(rs.getString("d.A"));
                if(valoresopt[4])infdatos.setContacto(rs.getString("d.CON"));
                if(valoresopt[5])infdatos.setCredenciales(rs.getString("d.CRE"));
                if(valoresopt[6])infdatos.setDemografia(rs.getString("d.D"));
                if(valoresopt[15])infdatos.setFitness(rs.getString("d.SF"));
                if(valoresopt[8])infdatos.setHistorial_de_Busquedas(rs.getString("d.HB"));
                if(valoresopt[13])infdatos.setIdioma(rs.getString("d.I"));
                if(valoresopt[12])infdatos.setInformacion_De_Uso(rs.getString("d.IDU"));
                if(valoresopt[14])infdatos.setInformacion_sobre_el_Dispositivo(rs.getString("d.ISD"));
                if(valoresopt[9])infdatos.setInformes_de_Errores(rs.getString("d.IE"));
                if(valoresopt[10])infdatos.setMultimedia(rs.getString("d.M"));
                if(valoresopt[7])infdatos.setPagos(rs.getString("d.PA"));
                infdatos.setVersion_App(rs.getString("d.VA"));
                infdatos.setNombre_App(rs.getString("d.NA"));
                if(valoresopt[16])empresa.setNombre(rs.getString("e.N"));
                if(valoresopt[17])empresa.setNombre_app(rs.getString("e.NA"));
                if(valoresopt[18])empresa.setURL(rs.getString("e.UE"));
                infapp.setName(rs.getString("a.N"));
                infapp.setSO(rs.getString("a.SO"));
                infapp.setArea(rs.getString("a.A"));
                infapp.setDatos(infdatos);
                infapp.setPrivacidad(infpriv);
                infapp.setEmpresa(empresa);
                apps.add(infapp);
             }
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return apps;
        } catch (SQLException e) {
            return null;
        }
    }
    public static ArrayList <App> ConsultarNombre(String atributos,boolean []valoresopt) {
        WrapperAppstore.WAppStoreUpt();
        WrapperPlayStore.WPlayStoreUpt();
        WrapperWikidata.WWikidataUpt();
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;     
        String query;
        query = "SELECT  * FROM mediador.apps a , mediador.privacidad p,mediador.datosdeusuario d ,mediador.empresa e"
                + " WHERE a.N=p.NA AND p.NA=a.N AND a.SO=p.SO AND p.NA= d.NA AND d.NA=e.NA AND p.VA=d.VA "+atributos;
        App infapp = null;
        Privacidad infpriv=null;
        Empresa infem=null;
        ArrayList <App> apps = new ArrayList<>();
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                    infapp=new App();
                    infpriv=new Privacidad();
                    infem= new Empresa();
                    infapp.setName(rs.getString("a.N"));
                    infapp.setSO(rs.getString("a.SO"));
                    infapp.setArea(rs.getString("a.A"));
                    infpriv.setVersion(rs.getString("p.VA"));
                    infapp.setPrivacidad(infpriv);

                    if(valoresopt[16]) infem.setNombre(rs.getString("e.N"));
                    if(valoresopt[17]) infem.setNombre_app(rs.getString("e.NA"));
                    if(valoresopt[18]) infem.setURL(rs.getString("e.UE"));
                    if(valoresopt[16]||valoresopt[17]||valoresopt[18])infapp.setEmpresa(infem);
                    apps.add(infapp);
                }
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return apps;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
        
    }
}
