<%-- 
    Document   : logout
    Created on : 6 Apr, 2019, 9:47:08 PM
    Author     : ASHUTOSH
--%>

<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("username");
            session.invalidate();
            response.sendRedirect("login.jsp");  
        %>
    </body>
</html>
