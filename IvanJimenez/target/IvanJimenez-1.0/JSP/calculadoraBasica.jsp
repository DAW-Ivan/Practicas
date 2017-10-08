<%-- 
    Document   : calculadoraBasica
    Created on : 08-oct-2017, 19:43:47
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora Básica JSP</title>
        <style type="text/css" media="screen">
            body{text-align: center;}
            form{width:50%;margin: auto;border:1px solid blue;}
            #res{color:red;height: 50px}
	</style>
    </head>
    <body>
        <h1>Calculadora Básica JSP</h1>
        <form action="calculadoraBasica.jsp" method="post">
            <p><div id="res"></div></p>
            <p><label>Primer operando</label><input type="number" name="op1">
                &nbsp;&nbsp;
                <label>Segundo operando</label><input type="number" name="op2">
            </p>
            <p>
                <input type="radio" name="op" value="suma" id="suma"><label for="suma">Suma</label>
                &nbsp;&nbsp;
                <input type="radio" name="op" value="resta" id="resta"><label for="resta">Resta</label>
                &nbsp;&nbsp;
                <input type="radio" name="op" value="multi" id="multi"><label for="multi">Multiplicación</label>
                &nbsp;&nbsp;
                <input type="radio" name="op" value="div" id="div"><label for="div">División</label>
            </p>
            <p>
                <input type="submit" name="enviar" value="Enviar" onclick="operar();return false">&nbsp;&nbsp;
                <input type="reset" value="Limpiar" onclick="limpiar()">
            </p>
            <p><a href="../index.html">Volver</a></p>
        </form>
     
    </body>
    
    <script>
        
        var text="";
            <%
          boolean operar=true;
          if(request.getParameter("op")==null){
              operar=false;
              %>text+="<p>Selecciona operación</p>";<%
          }
          if(request.getParameter("op1")=="" || request.getParameter("op2")==""){
              operar=false;
              %>text+="<p>Introduce operandos</p>";<%
          }
          if(operar==false){
          %>
            document.getElementById("res").innerHTML=text;  
          <%
          }else{
            switch (request.getParameter("op")){
                case "suma":%>
                    document.getElementById("res").innerHTML=
                    <%=
                    Integer.parseInt(request.getParameter("op1"))+Integer.parseInt(request.getParameter("op2"))
                    %>;<%;
                break;
                case "resta":%>
                    document.getElementById("res").innerHTML=
                    <%=
                    Integer.parseInt(request.getParameter("op1"))-Integer.parseInt(request.getParameter("op2"))
                    %>;<%;
                break;
                case "multi":%>
                    document.getElementById("res").innerHTML=
                    <%=
                    Integer.parseInt(request.getParameter("op1"))*Integer.parseInt(request.getParameter("op2"))
                    %>;<%;
                break;
                case "div":%>
                    document.getElementById("res").innerHTML=
                    <%=
                    Integer.parseInt(request.getParameter("op1"))/Integer.parseInt(request.getParameter("op2"))
                    %>;<%;
                break;
            }
          }
        %>
              
        
        function limpiar(){
            document.getElementById("res").innerHTML="";
        }
    </script>
    
</html>
