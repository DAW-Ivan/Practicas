<%-- 
    Document   : fecha
    Created on : 16-nov-2017, 21:00:55
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fecha JSTL</title>
    </head>
    <body>
        <h1>Formateo de Fechas</h1>
        <c:set var="fecha" scope="page" value="${fecha}"/>
        <p>1. <fmt:formatDate type="time" value="${fecha}"/></p>
        <p>2. <fmt:formatDate type="date" value="${fecha}"/></p>
        <p>3. <fmt:formatDate type="both" value="${fecha}"/></p>
        <p>4. <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${fecha}"/></p>
        <p>5. <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${fecha}"/></p>
        <p>6. <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${fecha}"/></p>
        <p>7. <fmt:formatDate pattern="yyyy-MM-dd" value="${fecha}"/></p>
        <p><a href="index.html">Índice</a></p>
    </body>
</html>
