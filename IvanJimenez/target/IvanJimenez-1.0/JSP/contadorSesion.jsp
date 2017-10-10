<%-- 
    Document   : contadorSesion
    Created on : 10-oct-2017, 14:00:55
    Author     : Ivan
--%>

<%@page import="es.albarregas.models.Contador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador con Sesión</title>
        <style type="text/css" media="screen">
		form{width: 40%;margin-left: 30%;margin-top: 10%;border:1px solid blue;text-align: center;}
	</style>
    </head>
    <body>
        <%
            Contador contador=new Contador();
            
            Object sesion=session.getAttribute("contador");
            
            if(sesion==null){
                contador.setContador(0);
                session.setAttribute("contador", contador.getContador());
            }else{
                if(request.getParameter("reiniciar")==null){
                    contador.setContador((Integer)session.getAttribute("contador")+1);
                    session.setAttribute("contador", contador.getContador());
                }else{
                    contador.setContador(1);
                    session.setAttribute("contador", contador.getContador());
                }
                
            }
          %>
        
        <form action="contadorSesion.jsp">
            <%if(contador.getContador()==1){
                %><h1>Has visitado la página <%=contador.getContador()%> vez</h1>
            <%}else{
                %><h1>Has visitado la página <%=contador.getContador()%> veces</h1>
            <%}%>
            
            <p>
                <input type="submit" value="Recargar" onclick="window.location.reload()"/>
                <input type="submit" value="Reiniciar" name="reiniciar" onclick="window.location.reload()"/>
                <input type="button" value="Volver" onclick="window.location.href='../index.html'"/>
            </p>
        </form>
    </body>
</html>
