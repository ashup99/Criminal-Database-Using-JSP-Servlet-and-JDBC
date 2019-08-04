<%-- 
    Document   : delte
    Created on : 7 Apr, 2019, 5:38:07 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,javax.sql.*" %>
        <% 
            String victimid = request.getParameter("victimid");
          int x=0;
            String url = "jdbc:derby://localhost:1527/loginDB ";
            String username = "loginuser";
            String password = "password";
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String query ="DELETE FROM LOGINUSER.VICTIM WHERE VICTIMID=?";
            try {
                Class.forName(driver);
                java.sql.Connection con = DriverManager.getConnection(url, username, password);    
              
                PreparedStatement ps = con.prepareStatement(query);
                
                ps.setString(1, victimid);
                
                x= ps.executeUpdate();
                if(x>0)
                {
                   response.sendRedirect("delete.jsp");
                }
                else
                {
                    response.sendRedirect("Error.jsp");
                }
                
            } catch (Exception e)
            {
                
            }%>
    </body>
</html>
