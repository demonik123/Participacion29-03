<%-- 
    Document   : index
    Created on : 29 mar. 2022, 18:55:47
    Author     : Boris Leonel
--%>

<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Persona> lista = (ArrayList<Persona>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de personas</h1>
        <a href="MainController?op=nuevo">Nuevo Registro</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Edad</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <%
                if (lista != null) {
                    for(Persona item : lista){
                    
            %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getApellidos() %></td>
                    <td><%= item.getNombres() %></td>
                    <td><%= item.getEdad() %></td>
                    <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de eliminar el registro?')">Eliminar</a></td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>

    </body>
</html>
