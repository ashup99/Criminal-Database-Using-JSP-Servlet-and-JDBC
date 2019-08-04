<%-- 
    Document   : submit
    Created on : 7 Apr, 2019, 12:42:23 PM
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
            int x=0;
            String url = "jdbc:derby://localhost:1527/loginDB ";
            String username = "loginuser";
            String password = "password";
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String victimid = request.getParameter("victimid");
            String victimname = request.getParameter("victimname");
            String typeofcrime = request.getParameter("typeofcrime");
            String flatno = request.getParameter("flatno");
            String street = request.getParameter("street");
            String state = request.getParameter("state");
            String regdate = request.getParameter("regdate");
            String pin = request.getParameter("pin");
            String phoneno = request.getParameter("phoneno");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String victimfirid = request.getParameter("victimfirid");
            String crimedate = request.getParameter("crimedate");
            String leveofcrime = request.getParameter("leveofcrime");
            String status = request.getParameter("status");
            String fathername = request.getParameter("fathername");
            String mothername = request.getParameter("mothername");
            String typeofprison = request.getParameter("typeofprison");
            String nameofprison = request.getParameter("nameofprison");
            String addressofprison = request.getParameter("addressofprison");
            String phonenoofprison = request.getParameter("phonenoofprison");
            String aadharcardno = request.getParameter("aadharcardno");
            try {
                Class.forName(driver);
                java.sql.Connection con = DriverManager.getConnection(url, username, password);                                                                                            //   1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2
                PreparedStatement ps = con.prepareStatement("INSERT INTO LOGINUSER.VICTIM VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, victimid);
                ps.setString(2, victimname);
                ps.setString(3, typeofcrime);
                ps.setString(4, flatno);
                ps.setString(5, street);
                ps.setString(6, state);
                ps.setString(7, regdate);
                ps.setString(8, pin);
                ps.setString(9, phoneno);
                ps.setString(10, email);
                ps.setString(11, dob);
                ps.setString(12, victimfirid);
                ps.setString(13, crimedate);
                ps.setString(14, leveofcrime);
                ps.setString(15, status);
                ps.setString(16, fathername);
                ps.setString(17, mothername);
                ps.setString(18, typeofprison);
                ps.setString(19, nameofprison);
                ps.setString(20, addressofprison);
                ps.setString(21, phonenoofprison);
                ps.setString(22, aadharcardno);
                x = ps.executeUpdate();
                if (x>0) {
                    x=0;
                    out.print("Inserted Succesfully");
                    RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
                    rd.include(request, response);
                    
                } else {
                    out.print(" Error Occurred!");
                    RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
                    rd.include(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
