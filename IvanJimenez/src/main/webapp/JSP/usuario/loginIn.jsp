<%-- 
    Document   : loginIn
    Created on : 10-oct-2017, 17:48:44
    Author     : Ivan
--%>
<%
    String usuario="ivan";
    String pass="1234";
    String u=request.getParameter("usuario");
    String p=request.getParameter("pass");
    HttpSession sesion=request.getSession();
    //Comprobar si usuario y contraseña son correctos
    if(usuario.equals(u) && pass.equals(p)){    //Si lo son se crea la sesión
        sesion.setAttribute("usuario", u);
        sesion.setAttribute("pass", p);
        if(request.getParameter("recordar")!=null){ //Si se ha marcado recordar nombre, crear la cookie
            Cookie cookie=new Cookie("nombre",u);
            response.addCookie(cookie);
        }
        response.sendRedirect("menu.jsp");  //Todo correcto redirigir al menú
    }else{
        response.sendRedirect("login.jsp?error=1"); //Si los datos no son correctos redirigir al login con su error
    }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
