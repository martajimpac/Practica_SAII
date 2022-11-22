/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author paula
 */
public class App {
    private String name="";
    private String SO="";
    private String area="";
    private DatosDeUsuario datos=null;
    private Privacidad privacidad=null;
    private Empresa empresa=null;

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public DatosDeUsuario getDatos() {
        return datos;
    }

    public Privacidad getPrivacidad() {
        return privacidad;
    }

    public String getName() {
        return name;
    }

    public String getSO() {
        return SO;
    }

    public String getArea() {
        return area;
    }

    public void setDatos(DatosDeUsuario datos) {
        this.datos = datos;
    }

    public void setPrivacidad(Privacidad privacidad) {
        this.privacidad = privacidad;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSO(String SO) {
        this.SO = SO;
    }

    public void setArea(String area) {
        this.area = area;
    }
    
    
}
