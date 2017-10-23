<%-- 
    Document   : index
    Created on : 17-oct-2017, 16:09:25
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <link rel="stylesheet" href="css/style.css" media="screen"/>
    </head>
    <body>
        <%@include file="inc/cabecera.inc" %>
        <form action="controlador" method="post">
            <p>
                <label for="op1">Operando 1</label>&nbsp;
                <input type="text" name="op1" id="op1" min="1"/>
                &nbsp;&nbsp;
                <label for="op2">Operando 2</label>&nbsp;
                <input type="text" name="op2" id="op2" min="1"/>
            </p>
            <br>
            <p>
                <input type="radio" name="operacion" value="suma" id="suma" checked/>
                <label for="suma">Sumar</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" name="operacion" value="resta" id="resta"/>
                <label for="resta">Restar</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" name="operacion" value="multi" id="multi"/>
                <label for="multi">Multiplicación</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" name="operacion" value="div" id="div"/>
                <label for="div">División</label>
            </p>
            <br>
            <p>
                <input type="submit" name="enviar" value="Operar"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="limpiar" value="Limpiar"/>
            </p>
        </form>
    </body>
</html>
