<%-- 
    Document   : saludo
    Created on : 06-oct-2017, 17:00:55
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saludo con JSP</title>
        <style type="text/css" media="screen">
		body{padding-top: 10%;text-align: center;}
	</style>
    </head>
    <body>
        <%
            String sexo=request.getParameter("sexo").equals("hombre")?"señor":"señora";
            String nombre=request.getParameter("nombre");
        %>
        
        <%
          if(Calendar.getInstance().getTime().getHours()>0  && Calendar.getInstance().getTime().getHours()<12){%>
              <h1>Buenos días 
          <%}else if(Calendar.getInstance().getTime().getHours()>=12 && Calendar.getInstance().getTime().getHours()<21){%>
            <h1>Buenas tardes 
          <%}else{%>  
            <h1>Buenas noches 
          <%}%>
          <%=sexo%> <%=nombre%></h1>
           
           <p><a href="../index.html">Volver</a></p>
    </body>
</html>
