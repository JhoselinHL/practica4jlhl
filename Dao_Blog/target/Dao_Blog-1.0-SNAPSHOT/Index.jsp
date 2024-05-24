<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <h1>Blog de Tecnología</h1>
        <h3>Autor: Jhoselin Lucia Huaycho Laura</h3>
        <p style="text-align: right;"><a href="Inicio?action=add" class="boton-n">Nueva Entrada</a></p>
        
        <c:forEach var="item" items="${posteos}">
            <div class="post">
                <h2>${item.titulo}</h2>
                <p>Fecha: ${item.fecha}</p>
                <p>${item.contenido}</p>
                <div class="post-actions" style="text-align: right;">
                    <a href="Inicio?action=edit&id=${item.id}">Editar</a>
                    <a href="Inicio?action=delete&id=${item.id}" onclick="return (confirm('¿Estás seguro?'))">Eliminar</a>
                </div>
            </div>
                <hr>
        </c:forEach>
    </body>
</html>
