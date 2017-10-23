<%-- 
    Document   : loginOut
    Created on : 10-oct-2017, 18:14:59
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>logOut!</h1>
    </body>
</html>
<%  //Se elimina la sesión y se redirige a login
    HttpSession sesion=request.getSession();
    sesion.invalidate();
    response.sendRedirect("login.jsp");
%>