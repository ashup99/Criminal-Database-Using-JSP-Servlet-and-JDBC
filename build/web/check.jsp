<%-- 
    Document   : check
    Created on : 7 Apr, 2019, 9:05:13 AM
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
            String url = "jdbc:derby://localhost:1527/loginDB ";
            String username = "loginuser";
            String password = "password";
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String userid = request.getParameter("adminuser");
            String passid = request.getParameter("adminpass");
            String query = "SELECT * FROM LOGINUSER.LOGIN WHERE UNAME=" + userid + "and PASSWORD=" + passid;
            try {
                Class.forName(driver);
                java.sql.Connection con = DriverManager.getConnection(url, username, password);
                PreparedStatement ps = con.prepareStatement("SELECT * FROM LOGINUSER.LOGIN WHERE UNAME=? and PASSWORD=?");
                ps.setString(1, userid);
                ps.setString(2, passid);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {

                    session.setAttribute("username", userid);
                    response.sendRedirect("welcome.jsp");
                } else {

                    out.print("Sorry UserName or Password Error!");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
