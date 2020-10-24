<%-- 
    Document   : nuevo
    Created on : 22/10/2020, 08:39:32 PM
    Author     : deleo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen</title>
    </head>
    <body>
        <h2>Nuevo Registro</h2>
        
        <form action="ProductosController?accion=insertar" method="POST" autocomplete="off">
            
            <p>
                Nombre:
                <input id="nombre" name="nombre" type="text" />
            </p>
            
            <p>
                Marca:
                <input id="marca" name="marca" type="text" />
            </p>
            
            <p>
                Categoria:
                <input id="categoria" name="categoria" type="text" />
            </p>
            
            <p>
                Precio:
                <input id="precio" name="precio" type="text" />
            </p>
            
            <p>
                Existencia:
                <input id="existencia" name="existencia" type="text" />
            </p>
            
            <button id="guardar" name="guardar" type="submit">Guardar</button>
            
        </form>
        
    </body>
</html>
