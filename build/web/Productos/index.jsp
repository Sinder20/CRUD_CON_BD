<%-- 
    Document   : index
    Created on : 22/10/2020, 08:38:56 PM
    Author     : deleo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen</title>
    </head>
    <body>
        <h1>Productos</h1>
        
        <a href="ProductosController?accion=nuevo" >Nuevo registro</a>
        
        <br><br>
        
        <table border="1" width="80%">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Marca</th>
                    <th>Categoria</th>
                    <th>Precio</th>
                    <th>Existencia</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            
            <tbody>
               
                <c:forEach var="producto" items="${lista}">
                    
                        <tr>
                            <td><c:out value="${producto.nombre}"/></td>
                            <td><c:out value="${producto.marca}"/></td>
                            <td><c:out value="${producto.categoria}"/></td>
                            <td><c:out value="${producto.precio}"/></td>
                            <td><c:out value="${producto.existencia}"/></td>
                            <td><a href="ProductosController?accion=modificar&codigo=<c:out value="${producto.codigo}"/>">Modificar</a></td>
                            <td><a href="ProductosController?accion=eliminar&codigo=<c:out value="${producto.codigo}"/>">Eliminar</a></td>
                        </tr>
                    </c:forEach>
                
            </tbody>
        </table>
        
    </body>
</html>
