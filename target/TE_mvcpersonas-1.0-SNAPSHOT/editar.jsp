

<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona item = (Persona) request.getAttribute("miPersona");
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo registro":"Editar Registro" %></h1>
        <form action="MainController" method="POST">
            <input type="hidden" name="id" value="<%= item.getId() %>">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombres" value="<%= item.getNombres() %>" placeholder="Nombres"></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%= item.getApellidos() %>" placeholder="Apellidos"></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="number" name="edad" value="<%= item.getEdad() %>" placeholder="Edad"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
