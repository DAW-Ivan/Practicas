<%-- 
    Document   : contadorSesion2
    Created on : 10-oct-2017, 16:37:23
    Author     : Ivan
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador Sesión 2</title>
        <style type="text/css" media="screen">
            form{width: 40%;margin-left: 30%;border: 1px solid blue;text-align: center;}
        </style>
    </head>
    <body>
      
        <%
            HttpSession sesion=request.getSession();
            int contador=0;
            
            if(sesion==null){
                sesion.setAttribute("contador", new Integer(0));
            }else{
                contador=(Integer)sesion.getAttribute("contador");
            }
            contador++;
        %>
        
        <form action="contadorSesion2.jsp">
            <h1>Contador: <%=contador%></h1>
            <input type="submit" value="Reiniciar" name="reiniciar" onclick="window.location.reload()"/>
            <input type="submit" value="Recargar" name="recargar" onclick="window.location.reload()"/>
            <input type="button" value="Volver" onclick="window.location.href='../index.html'"/>
        </form>
    </body>
</html>
