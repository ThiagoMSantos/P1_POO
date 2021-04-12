<%-- 
    Document   : disciplina
    Created on : 11/04/2021, 23:36:59
    Author     : Thiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("session.logNotas") != null ){
        
        String nota1D1 = request.getParameter("session.nota1D1");
        session.setAttribute("session.nota1D1", nota1D1);
        
        String nota2D1 = request.getParameter("session.nota2D1");
        session.setAttribute("session.nota2D1", nota2D1);
        
        String nota1D2 = request.getParameter("session.nota1D2");
        session.setAttribute("session.nota1D2", nota1D2);
        
        String nota2D2 = request.getParameter("session.nota2D2");
        session.setAttribute("session.nota2D2", nota2D2);
        
        String nota1D3 = request.getParameter("session.nota1D3");
        session.setAttribute("session.nota1D3", nota1D3);
        
        String nota2D3 = request.getParameter("session.nota2D3");
        session.setAttribute("session.nota2D3", nota2D3);
        
        String nota1D4 = request.getParameter("session.nota1D4");
        session.setAttribute("session.nota1D4", nota1D4);
        
        String nota2D4 = request.getParameter("session.nota2D4");
        session.setAttribute("session.nota2D4", nota2D4);
        
        String nota1D5 = request.getParameter("session.nota1D5");
        session.setAttribute("session.nota1D5", nota1D5);
        
        String nota2D5 = request.getParameter("session.nota2D5");
        session.setAttribute("session.nota2D5", nota2D5);
        
        String nota1D6 = request.getParameter("session.nota1D6");
        session.setAttribute("session.nota1D6", nota1D6);
        
        String nota2D6 = request.getParameter("session.nota2D6");
        session.setAttribute("session.nota2D6", nota2D6);
        
    }
%>
<html>
    <head>
        <meta charset="UTF-8" http-equiv="Content Type" content="text/html">
        <title> Disciplina (Notas) </title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <%
            if(session.getAttribute("session.username") == null ){%>
                <h3> Você não tem as devidas permissões para visualizar essa página!</h3>
            <%} else{%>
            <form>
                <table>
                    <tr>
                        <th>Disciplina</th>
                        <th>Nota P1</th>
                        <th>Nota P2</th>
                    </tr>
                    <tr>
                        <td>Matemática</td>
                        
                        <td>
                            <% if(session.getAttribute("session.nota1D1") == null){%>
                                <input type="number" name="session.nota1D1">
                            <%} else{%>
                                <%= session.getAttribute("session.nota1D1") %>
                            <%}%>
                        </td>
                        <td>
                            <% if(session.getAttribute("session.nota2D1") == null){%>
                                <input type="number" name="session.nota2D1">
                            <%} else{%>
                                <%= session.getAttribute("session.nota2D1") %>
                            <%}%>
                        </td>
                    </tr>
                    <tr>
                        <td>Português</td>
                        
                        <td>
                            <% if(session.getAttribute("session.nota1D2") == null){%>
                                <input type="number" name="session.nota1D2">
                            <%} else{%>
                                <%= session.getAttribute("session.nota1D2") %>
                            <%}%>
                        </td>
                        <td>
                            <% if(session.getAttribute("session.nota2D2") == null){%>
                                <input type="number" name="session.nota2D2">
                            <%} else{%>
                                <%= session.getAttribute("session.nota2D2") %>
                            <%}%>
                        </td>
                    </tr>
                    <tr>
                        <td>História</td>
                        
                        <td>
                            <% if(session.getAttribute("session.nota1D3") == null){%>
                                <input type="number" name="session.nota1D3">
                            <%} else{%>
                                <%= session.getAttribute("session.nota1D3") %>
                            <%}%>
                        </td>
                        <td>
                            <% if(session.getAttribute("session.nota2D3") == null){%>
                                <input type="number" name="session.nota2D3">
                            <%} else{%>
                                <%= session.getAttribute("session.nota2D3") %>
                            <%}%>
                        </td>
                    </tr>
                    <tr>
                        <td>Geografia</td>
                        
                        <td>
                            <% if(session.getAttribute("session.nota1D4") == null){%>
                                <input type="number" name="session.nota1D4">
                            <%} else{%>
                                <%= session.getAttribute("session.nota1D4") %>
                            <%}%>
                        </td>
                        <td>
                            <% if(session.getAttribute("session.nota2D4") == null){%>
                                <input type="number" name="session.nota2D4">
                            <%} else{%>
                                <%= session.getAttribute("session.nota2D4") %>
                            <%}%>
                        </td>
                    </tr>
                    <tr>
                        <td>Física</td>
                        
                        <td>
                            <% if(session.getAttribute("session.nota1D5") == null){%>
                                <input type="number" name="session.nota1D5">
                            <%} else{%>
                                <%= session.getAttribute("session.nota1D5") %>
                            <%}%>
                        </td>
                        <td>
                            <% if(session.getAttribute("session.nota2D5") == null){%>
                                <input type="number" name="session.nota2D5">
                            <%} else{%>
                                <%= session.getAttribute("session.nota2D5") %>
                            <%}%>
                        </td>
                    </tr>
                    <tr>
                        <td>Biologia</td>
                        
                        <td>
                            <% if(session.getAttribute("session.nota1D6") == null){%>
                                <input type="number" name="session.nota1D6">
                            <%} else{%>
                                <%= session.getAttribute("session.nota1D6") %>
                            <%}%>
                        </td>
                        <td>
                            <% if(session.getAttribute("session.nota2D6") == null){%>
                                <input type="number" name="session.nota2D6">
                            <%} else{%>
                                <%= session.getAttribute("session.nota2D6") %>
                            <%}%>
                        </td>
                    </tr>
                </table>
                
                <input type="submit" name="session.logNotas" value="Atualizar Notas">
            </form>
        <%}%>
    </body>
</html>
