/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author fredi
 */
public class CiudadBean {
    private String cp;
    private String nombreCiudad;
    private String pais;
    private String continente;

    public CiudadBean() {}

    public CiudadBean(String cp, String nombreCiudad, String pais, String continente) {
        this.cp = cp;
        this.nombreCiudad = nombreCiudad;
        this.pais = pais;
        this.continente = continente;
    }

    public String getCp() {
        return cp;
    }

    public void setCp(String cp) {
        this.cp = cp;
    }

    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getContinente() {
        return continente;
    }

    public void setContinente(String continente) {
        this.continente = continente;
    }
    
}
