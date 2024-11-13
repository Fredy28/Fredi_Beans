<%-- 
    Document   : ciudad_form
    Created on : 11-nov-2024, 23:14:09
    Author     : fredi
--%>

<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Ciudad</title>
</head>
<body>
    <h2>Registrar Ciudad</h2>
    <form action="${pageContext.request.contextPath}/jsp/bean.jsp" method="post">
        Código Postal (CP): <input type="text" name="cp" required><br>
        Nombre de la ciudad: <input type="text" name="nombreCiudad" required><br>
        País: <input type="text" name="pais" required><br>
        Continente: <input type="text" name="continente" required><br>
        <input type="submit" value="Guardar">
    </form>
</body>
</html>

