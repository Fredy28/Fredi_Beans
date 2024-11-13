<%-- 
    Document   : ciudad_beans
    Created on : 11-nov-2024, 23:21:14
    Author     : fredi
--%>

<%-- verCiudades.jsp --%>
<%@page import="beans.CiudadBean"%>
<%@page import="beans.ListaCiudades"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Obtener la lista de ciudades de la sesión
    ListaCiudades listaCiudades = (ListaCiudades) session.getAttribute("listaCiudades");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Ciudades</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Ciudades Registradas</h2>
    <%
        if (listaCiudades != null && !listaCiudades.getCiudades().isEmpty()) {
    %>
            <table>
                <tr>
                    <th>CP</th>
                    <th>Ciudad</th>
                    <th>País</th>
                    <th>Continente</th>
                </tr>
                <%
                    for (CiudadBean ciudad : listaCiudades.getCiudades()) {
                %>
                        <tr>
                            <td><%= ciudad.getCp() %></td>
                            <td><%= ciudad.getNombreCiudad() %></td>
                            <td><%= ciudad.getPais() %></td>
                            <td><%= ciudad.getContinente() %></td>
                        </tr>
                <%
                    }
                %>
            </table>
    <%
        } else {
    %>
            <p style="text-align: center;">No hay ciudades registradas.</p>
    <%
        }
    %>
    <div>
        <a href="./ciudad_form.jsp">Agregar otra ciudad</a>
    </div>
</body>
</html>

