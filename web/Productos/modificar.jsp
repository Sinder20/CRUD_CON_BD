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
        <title>Modificar Producto</title>
        
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
            
            h2{
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
        
        <h2>Modificar Registro</h2>
        
        <form action="ProductosController?accion=actualizar" method="POST" autocomplete="off">
            
            <input id="codigo" name="codigo" type="hidden" value="<c:out value="${producto.codigo}"/>" />
            
            <p>
                Nombre:<br>
                <input id="nombre" name="nombre" type="text" style="width : 300px; heigth : 30px" value="<c:out value="${producto.nombre}"/>" />
            </p>
            
            <p>
                Marca:<br>
                <input id="marca" name="marca" type="text" style="width : 300px; heigth : 30px" value="<c:out value="${producto.marca}"/>"/>
            </p>
            
            <p>
                Categoria:<br>
                <input id="categoria" name="categoria" type="text" style="width : 300px; heigth : 30px" value="<c:out value="${producto.categoria}"/>" />
            </p>
            
            <p>
                Precio:<br>
                <input id="precio" name="precio" type="text" style="width : 300px; heigth : 30px" value="<c:out value="${producto.precio}"/>" />
            </p>
            
            <p>
                Existencia:<br>
                <input id="existencia" name="existencia" type="text" style="width : 300px; heigth : 30px" value="<c:out value="${producto.existencia}"/>" />
            </p>
            
            <button id="guardar" name="guardar" type="submit">Guardar</button>
            
        </form>
    </body>
</html>
