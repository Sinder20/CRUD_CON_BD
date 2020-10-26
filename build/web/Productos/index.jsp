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
        
        <style type="text/css">
            body {
                background: darkgrey;
            }
            
            #header {
                margin:auto;
                width: 500px;
      
            }
            
            
            
            
            #header ul, ol {
                list-style: none;
                margin: 0;
                padding: 0;
            }
            
            .nav li a {
                /* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#aebcbf+0,6e7774+50,0a0e0a+51,0a0809+100;Black+Gloss */
                background: #aebcbf; /* Old browsers */
                background: -moz-linear-gradient(top,  #aebcbf 0%, #6e7774 50%, #0a0e0a 51%, #0a0809 100%); /* FF3.6-15 */
                background: -webkit-linear-gradient(top,  #aebcbf 0%,#6e7774 50%,#0a0e0a 51%,#0a0809 100%); /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom,  #aebcbf 0%,#6e7774 50%,#0a0e0a 51%,#0a0809 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#aebcbf', endColorstr='#0a0809',GradientType=0 ); /* IE6-9 */

                color: #fff;
                text-decoration: none;
                font-family: Arial, Helvetica, san-serif;
                display: block;
                padding:12px 26px;
                font-size: 18px;
            }
            
            .nav > li {
                float: left;
            }
            
            .nav li ul {
                display: none;
                position: absolute;
                min-width: 140px;
            }
            
            .nav li:hover > ul{
                display: block;
            }
            
            .barra {
                color: #6e7774;
                padding: 15px 0 0 0;    
            }
            
            #header a:hover{
                color: azure;
                background: rgba(0,0,0,0.2);
                animation: 1s ms 1;
            }
            
            @keyframes ms{
                0%{
                    opacity:0;
                    transform:scale(1.6);
                }
            }
            
            h1{
                font-family: Arial, Helvetica, san-serif;
                text-align: center;
               margin-top: 90px;
               margin-right: 400px;
               display: block;
               float: left;
            }
            
            form{
                margin-top: 150px;
                margin-right: 200px;
                float: left;
            }
            
            a.button {
                padding: 4px 10px;
                background: silver;
                border: 1px solid #1161B0;
                color: #0a0e0a;
                border-radius: 4px;
                text-decoration:none;
            }
            
            a.button:hover {
                color: activeborder;
                background: rgba(0,0,0,0.2);
            }
      
        </style>
        
    </head>
    <body>
        
        <div id="header">
            <ul class="nav">
                <li><a href="http://localhost:8084/Almacen/">Inicio</a></li>
                <li class="barra"> | </li>
                <li><a href="#">Registro</a>
                    <ul>
                        <li><a href="http://localhost:8084/Almacen/ProductosController">Tabla de Productos</a></li>
                        <li><a href="ProductosController?accion=nuevo">Registrar Nuevo Producto</a></li>
                    </ul>
                </li>
                <li class="barra"> | </li>
                <li><a href="#">Servicios</a>
                    <ul>
                        <li><a href="#">Submenu 1</a></li>
                        <li><a href="#">Submenu 2</a></li>
                    </ul>
                </li>
                <li class="barra"> | </li>
                <li><a href="">Contacto</a></li>
            </ul>
        </div>
        
        <h1>Productos</h1>
        
        
        
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
                            <td><a href="ProductosController?accion=modificar&codigo=<c:out value="${producto.codigo}"/>" class="button">Modificar</a></td>
                            <td><a href="ProductosController?accion=eliminar&codigo=<c:out value="${producto.codigo}"/>" class="button">Eliminar</a></td>
                        </tr>
                    </c:forEach>
                
            </tbody>
        </table>
        
    </body>
</html>
