<%-- 
    Document   : contadorCookie
    Created on : 09-oct-2017, 20:44:25
    Author     : Ivan
--%>
<%
                Cookie cookie=null;
                Cookie[] cookies=request.getCookies();
                
                if(cookies!=null){
                    for(int i=0;i<cookies.length;i++){
                        if(cookies[i].getName().equals("contador")){
                            cookie=cookies[i];
                        }
                    }
                }
              
                    if(cookie==null){
                        cookie=new Cookie("contador","0");
                    }else if(request.getParameter("eliminar")!=null){
                            cookie.setValue("0");
                       }
                    int contador=Integer.parseInt(cookie.getValue());
                    cookie.setValue(Integer.toString(contador+1));
                    cookie.setMaxAge(24*60*60);
                    response.addCookie(cookie);
                        
                    
                
            %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador Cookie</title>
        <style type="text/css" media="screen">
		form{width: 40%;margin-left: 30%;margin-top: 10%;border:1px solid blue;text-align: center;}
	</style>
    </head>
    <body>
                
            
            
        <form action="contadorCookie.jsp" method="post">
                
                
                <%if(cookie.getValue().equals("1")){
                    %>
                    <h1>Has visitado la página <%=cookie.getValue()%> vez</h1>
                    <p>Información de la cookie</p>
                    <p>Nombre: <%=cookie.getName()%></p>
                    <p>Host: <%=cookie.getDomain()%></p>
                    <p>Path: <%=cookie.getPath()%></p>
                    <p>Seguridad: <%=cookie.getSecure()%></p>
                    <p>Caducidad: <%=cookie.getMaxAge()%></p>
                    <%
                }else{
                    %><h1>Has visitado la página <%=cookie.getValue()%> veces</h1><%
}
                %>
                <p>
                    <input type="submit" value="Actualizar" name="actualizar" onclick="window.location.reload()">
                    <input type="submit" value="Eliminar" name="eliminar" onclick="window.location.reload()">
                    <input type="button" value="Volver" onclick="location.href='../index.html'">
                </p>
            </form>
        
    </body>
   
</html>
