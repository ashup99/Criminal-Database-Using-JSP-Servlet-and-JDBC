<%-- 
    Document   : updatefinal
    Created on : 7 Apr, 2019, 2:53:34 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*" %>
<%
String victimid = request.getParameter("victimid");
if(victimid != null)
{
    int i;
     String url = "jdbc:derby://localhost:1527/loginDB ";
            String username = "loginuser";
            String password = "password";
            String driver = "org.apache.derby.jdbc.ClientDriver";
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
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driver);
con = DriverManager.getConnection(url,username,password);

String sql="UPDATE LOGINUSER.VICTIM SET victimid=?,victimname=?,typeofcrime=?,flatno=?,street=?,state=?,registrationdate=?,pin=?,phoneno=?,emailid=?,dateofbirth=?,victimfirid=?,crimedate=?,levelofcrime=?,status=?,fathersname=?,mothersname=?,typeofprison=?,nameofprison=?,addressofprison=?,prisonphoneno=?,aadharcardno=? where victimid=?";
ps = con.prepareStatement(sql);
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
                ps.setString(23, victimid);
 i = ps.executeUpdate();
if(i > 0)
{
out.print("<h1>Record Updated Successfully<h1>");
RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
                    rd.include(request, response);
}
else
{
out.print("<h2>There is a problem in updating Record.<h2>");
RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
                    rd.include(request, response);
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>

    </form>
</body>
</html>
