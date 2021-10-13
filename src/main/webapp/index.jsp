<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    ArrayList<Persona> lista= (ArrayList<Persona>)session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
       <body>
        <h1>Registro de los participantes de la olimpiada</h1>
        <a href="MainController?op=nuevo">Nuevo registro</a>
        <table border="1">
            
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Categoria</th>
                    <th>Confirmado</th>
                    <th>Fecha inscripcion</th>
                    <th></th>
                    <th></th>
                </tr>            
            <%
                if (lista !=null){
                   for(Persona item : lista){ 
                
            %>
                <tr>
                    <td><%=item.getId() %></td>
                    <td><%=item.getNombres() %></td>
                    <td><%=item.getApellidos() %></td>
                    <td><%=item.getCategoria() %></td>
                    <td><input type="checkbox" name="confirmado" checked="true"/></td>
                    <td><%=item.getFecha() %></td>
                    <td><%=item.isConfirmado() %></td>
                    
                                        
                    <td><a href="MainController?op=editar&id=<%=item.getId() %>">Editar</a></td>
                    <td><a href="MainController?op=Eliminar=<%=item.getId() %>"
                           onclick="return confirm('Esta seguro de eliminar el registro ?');">Eliminar</a></td>
                </tr>
                <%
                    }
                }
                %>
          
        </table>
    </body>
</html>
