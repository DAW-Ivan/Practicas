<%-- 
    Document   : menu
    Created on : 10-oct-2017, 18:02:45
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Opciones Admin</title>
        <style type="text/css" media="screen">
        div{width: 50%;margin-left: 25%;border: 1px solid blue;text-align: center;}
    </style>
    </head>
    <body>
        <div>
            <!--Se comprueba que se haya iniciado sesión-->
            <%
                HttpSession sesion=request.getSession();
                if(sesion.getAttribute("usuario")==null){
                    response.sendRedirect("login.jsp?error=2"); //Si no se creó sesión redirigir a login con su error
                }else{  //Todo correcto se muestra el contenido
                    %>  
                    <h1>Opciones admin de <%=sesion.getAttribute("usuario")%></h1>  
                    <p>Otras opciones</p>
                                        <!--Se redirige a loginOut para cerrar sesión-->
                    <p><input type="button" value="Cerrar sesión" onclick="window.location.href='loginOut.jsp'"</p>
                    <%
                }
            %>
            
        </div>
    </body>
</html>
