<%-- 
    Document   : repite
    Created on : 27-nov-2017, 20:41:26
    Author     : Ivan
--%>
<%@taglib uri="/tlds/repite" prefix="re"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Etiquetas Personales</title>
    </head>
    <body>
        <p><re:repite caracter="*" veces="">Hola  mundo</re:repite></p>
        <p>Número aleatorio entero: <re:ale inicio="1" fin="10"/></p>
        <p>Número aleatorio decimal: <re:aleDec decimales="3"/></p>
        <p>Etiqueta awesome: <re:awesome>¡Awesomeee!</re:awesome></p>
    </body>
</html>
