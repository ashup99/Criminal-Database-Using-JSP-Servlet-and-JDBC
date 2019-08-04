<%-- 
    Document   : welcome
    Created on : 6 Apr, 2019, 6:44:54 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript" type="text/javascript">

            function insert()
            {
            window.open("insert.jsp","_self");
            }
             function update()
            {
            window.open("update.jsp","_self");
            }
            function search()
            {
            window.open("search.jsp","_self");
            }
            function del()
            {
            window.open("delete.jsp","_self");
            }
            function logout()
            {
                window.open("logout.jsp","_self");
                
            }
            function display()
            {
                window.open("display.jsp","_self");
                
            }
        </script>
</head>
<body>
            <%
                if (session.getAttribute("username") == null) {
                    response.sendRedirect("login.jsp");
                }
            %>
            Welcome ${username}
            
        <br>
        <input type="button" value="INSERT" name="insert" onclick="insert();">
        <input type="button" value="UPDATE" name="update" onclick="update();">
        <input type="button" value="DELETE" name="delete" onclick="del();">
        <input type="button" value="SEARCH" name="search" onclick="search();">
        <input type="button" value="DISPLAY" name="display" onclick="display();">
        <input type="button" value="LOG OUT" name="logout" onclick="logout();">          
        </body>
        </html>
