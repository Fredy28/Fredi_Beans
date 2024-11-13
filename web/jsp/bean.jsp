<%-- 
    Document   : bean
    Created on : 11-nov-2024, 23:18:50
    Author     : fredi
--%>

<%-- procesarCiudad.jsp --%>
<%@page import="beans.CiudadBean"%>
<%@page import="beans.ListaCiudades"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    String cp = request.getParameter("cp");
    String nombreCiudad = request.getParameter("nombreCiudad");
    String pais = request.getParameter("pais");
    String continente = request.getParameter("continente");

    CiudadBean ciudad = new CiudadBean(cp, nombreCiudad, pais, continente);

    ListaCiudades listaCiudades = (ListaCiudades) session.getAttribute("listaCiudades");
    if (listaCiudades == null) {
        listaCiudades = new ListaCiudades();
    }

    listaCiudades.agregarCiudad(ciudad);

    session.setAttribute("listaCiudades", listaCiudades);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ciudad Registrada</title>
</head>
<body>
    <h2>La ciudad ha sido registrada con éxito.</h2>
    <a href="./ciudad_form.jsp">Agregar otra ciudad</a>
    <br>
    <a href="./ciudad_beans.jsp">Ver todas las ciudades</a>
</body>
</html>

