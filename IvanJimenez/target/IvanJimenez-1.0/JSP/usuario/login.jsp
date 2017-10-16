<%-- 
    Document   : login
    Created on : 10-oct-2017, 17:21:05
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <style type="text/css" media="screen">
        form{width: 50%;margin-left: 25%;border: 1px solid blue;text-align: center;}
        .error{color: red;}
    </style>
    <body>
        <form action="loginIn.jsp" method="post">
            <h1>Proceso de identificación</h1>
            
                <!--Comprobar si hay algun error y mostrarlo-->
            <%
                String error=String.valueOf(request.getParameter("error"));
                if(error.equals("1")){
                    %><p class="error">Datos incorrectos</p><%
                }else if(error.equals("2")){
                    %><p class="error">Se necesita login</p><%
                }
            %>
            <p><label>Usuario: </label>
                
                <!--Comprobar si existe la cookie que guarda el nombre y usarlo-->
            <%
                Cookie[] cookies=request.getCookies();
                Cookie cookie=null;
                for(Cookie c:cookies){
                    if(c.getName().equals("nombre")){
                        cookie=c;
                    }
                }
                if(cookie!=null){
            %><input type="text" name="usuario" value="<%=cookie.getValue()%>"/><%
                }else{
                    %><input type="text" name="usuario"/><%
                }
            %>
            </p>
            <p>
                <label>Contraseña: </label>
                <input type="password" name="pass"/>
            </p>
            <p>
                <input type="checkbox" name="recordar"/>
                <label>Recordar usuario</label>
            </p>
            <p>
                <input type="submit" name="enviar" value="Enviar"/>
                <input type="button" value="Menú inicial" onclick="window.location.href='../../index.html'"/>
            </p>
        </form>
            
    </body>
</html>
