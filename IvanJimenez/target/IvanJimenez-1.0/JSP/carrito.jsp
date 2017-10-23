<%-- 
    Document   : carrito
    Created on : 14-oct-2017, 19:07:44
    Author     : Ivan
--%>
<%@page import="es.albarregas.models.Libro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
        <style type="text/css" media="screen">
            div{width: 70%;margin: 3% auto;border: 1px solid blue;text-align: center;padding: 1%;overflow: hidden;}
            header{overflow: hidden;}
            h1{display: inline-block;}
            img{width: 10%;margin-right: 20%;float: right;}
            select{overflow-y: hidden;}
        </style>
    </head>
    <body>
        <div>
            <header>
                <h1>Libros On-Line</h1>
                <img src="../html/img/carro.jpg"/>
            </header>
        <%
            
            Enumeration<String> parametros=request.getParameterNames();
            while(parametros.hasMoreElements()){
                if(parametros.nextElement().startsWith("Aña")){
                    añadir(request.getParameter("libro"),Integer.parseInt(request.getParameter("cantidad")));
                }else if(parametros.nextElement().startsWith("Fin")){
                    fin();
                }else{
                    menu();
                }
            }
        %>
        <%!
            HttpSession sesion=null;
            private void añadir(String tit,int cant){
                ArrayList<Libro> libros=null;
                Libro libro=null;
                for(Libro e:libros){
                    if(e.getTitulo().equals(tit)){
                        libro=e;
                        libro.setCantidad(libro.getCantidad()+cant);
                        libros.remove(e);
                        libros.add(libro);
                    
                    }else{
                        libro=new Libro();
                        libro.setCantidad(cant);
                        libro.setTitulo(tit);
                        libros.add(libro);
                    }
                }
                sesion.setAttribute("libros", libros);
        %><p>Añadido</p>
            <%!}
            private void menu(){
                %><form action="carrito.jsp" method="post">
                    <p>Seleccione un libro</p>
                    <select name="libro" size="6" >
                        <option value="LA MUERTE LLEGA A PEMBERLEY">LA MUERTE LLEGA A PEMBERLEY</option>
                        <option value="LA CONJURA DE CORTES">LA CONJURA DE CORTES</option>
                        <option value="BUENOS DÍAS, PRINCESA">BUENOS DÍAS, PRINCESA</option>
                        <option value="EMOCIONES TÓXICAS">EMOCIONES TÓXICAS</option>
                        <option value="JUEGO DE TRONOS">JUEGO DE TRONOS</option>
                        <option value="LA ORDEN DEL TEMPLE">LA ORDEN DEL TEMPLE</option>
                    </select>
                    <p>
                        <label>Cantidad: </label>
                        <input type="number" name="cantidad" min="0"/>
                    </p>
                    <p>
                        <input type="submit" name="enviar" value="Añadir a la cesta"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="Limpiar"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="submit" name="finalizar" value="Finalizar la compra"/>
                    </p>
                </form><%!
            }
            private void fin(){
                %>
                    <p>Este es el detalle de su pedido:</p>
                    <table>
                        <thead>
                            <tr>
                                <td>Cantidad</td><td>Título</td>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Libro> lista=(ArrayList)session.getAttribute("libros");
                                for(Libro e:lista){
                                    %>
                                    <tr>
                                        <td><%=e.getCantidad()%></td>
                                        <td><%=e.getTitulo()%></td>
                                    </tr>
                                    <%
                                }
                            %>
                        </tbody>
                    </table>
                        <p><a href="../html/inicioTienda.html">Gracias por confiar en nosotros</a></p>
                <%!
            }
        %>
             
                        
        </div>        
        
    </body>
</html>
