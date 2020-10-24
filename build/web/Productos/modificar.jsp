<%-- 
    Document   : modificar
    Created on : 22/10/2020, 08:39:57 PM
    Author     : deleo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Modificar Registro</h2>
        
        <form action="ProductosController?accion=actualizar" method="POST" autocomplete="off">
            
            <input id="codigo" name="codigo" type="hidden" value="<c:out value="${producto.codigo}"/>" />
            
            <p>
                Nombre:
                <input id="nombre" name="nombre" type="text" value="<c:out value="${producto.nombre}"/>" />
            </p>
            
            <p>
                Marca:
                <input id="marca" name="marca" type="text" value="<c:out value="${producto.marca}"/>"/>
            </p>
            
            <p>
                Categoria:
                <input id="categoria" name="categoria" type="text" value="<c:out value="${producto.categoria}"/>" />
            </p>
            
            <p>
                Precio:
                <input id="precio" name="precio" type="text" value="<c:out value="${producto.precio}"/>" />
            </p>
            
            <p>
                Existencia:
                <input id="existencia" name="existencia" type="text" value="<c:out value="${producto.existencia}"/>" />
            </p>
            
            <button id="guardar" name="guardar" type="submit">Guardar</button>
            
        </form>
    </body>
</html>
