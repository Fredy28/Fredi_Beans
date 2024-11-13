/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author fredi
 */
public class ListaCiudades {
    private List<CiudadBean> ciudades;

    public ListaCiudades() {
        ciudades = new ArrayList<>();
    }

    public void agregarCiudad(CiudadBean ciudad) {
        ciudades.add(ciudad);
    }

    public List<CiudadBean> getCiudades() {
        return ciudades;
    }
}
