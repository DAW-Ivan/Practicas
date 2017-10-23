<%-- 
    Document   : resultado
    Created on : 17-oct-2017, 17:13:47
    Author     : Ivan
--%>

<%@page import="es.albarregas.beans.Calculadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/style.css" media="screen"/>
    </head>
    <body>
        
        <%
            Calculadora c=(Calculadora)request.getAttribute("operacion");
            %><p><%=c.getOp1()%> <%=c.getSigno()%> <%=c.getOp2()%> = <%=c.getResultado()%></p><%
        %>
        
    </body>
</html>
