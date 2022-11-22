/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author paula
 */
public class Empresa {
    private String nombre="";
    private String nombre_app="";
    private String URL="";

    public String getNombre() {
        return nombre;
    }

    public String getNombre_app() {
        return nombre_app;
    }

    public String getURL() {
        return URL;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setNombre_app(String nombre_app) {
        this.nombre_app = nombre_app;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }
    
}
