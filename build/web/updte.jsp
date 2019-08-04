<%-- 
    Document   : updte
    Created on : 7 Apr, 2019, 2:44:35 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,javax.sql.*" %>
<%
    String victimid = request.getParameter("victimid");
    int x = 0;
    String url = "jdbc:derby://localhost:1527/loginDB ";
    String username = "loginuser";
    String password = "password";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String query = "SELECT * FROM LOGINUSER.VICTIM WHERE VICTIMID=?";
    try {
        Class.forName(driver);
        java.sql.Connection con = DriverManager.getConnection(url, username, password);

        PreparedStatement ps = con.prepareStatement(query);

        ps.setString(1, victimid);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <style>
        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
    <body>
        <div>
            <h1>Update</h1>
            <form method="post" action="updatefinal.jsp">
                <input type="hidden" name="victimid" value="<%=rs.getString("victimid")%>">
                <br>
                Victim ID:
                <label  class="static-value"><%=rs.getString("victimid")%></label>
               
                <br><br>
                Victim Name:<input type="text" name="victimname" value="<%=rs.getString("victimname")%>">
                <br><br>
                Type Of Crime:<input type="text" name="typeofcrime" value="<%=rs.getString("typeofcrime")%>">
                <br><br>
                Flat No:<input type="text" name="flatno" value="<%=rs.getString("flatno")%>">
                <br><br>
                Street:<input type="text" name="street" value="<%=rs.getString("street")%>">
                <br><br>
                State:<input type="text" name="state" value="<%=rs.getString("state")%>">
                <br><br>
                Registration Date:<input type="text" name="regdate" value="<%=rs.getString("registrationdate")%>">
                <br><br>
                Pin:<input type="text" name="pin" value="<%=rs.getString("pin")%>">
                <br><br>
                Phone No:<input type="text" name="phoneno" value="<%=rs.getString("phoneno")%>">
                <br><br>
                Email ID:<input type="text" name="email" value="<%=rs.getString("emailid")%>">
                <br><br>
                Date of Birth:<input type="text" name="dob" value="<%=rs.getString("dateofbirth")%>">
                <br><br>
                Victim FIR ID:<input type="text" name="victimfirid" value="<%=rs.getString("victimfirid")%>">
                <br><br>
                Crime Date:<input type="text" name="crimedate" value="<%=rs.getString("crimedate")%>">
                <br><br>
                level Of Crime:<input type="text" name="leveofcrime" value="<%=rs.getString("levelofcrime")%>">
                <br><br>
                Status:<input type="text" name="status" value="<%=rs.getString("status")%>">
                <br><br>
                Father's Name:<input type="text" name="fathername" value="<%=rs.getString("fathersname")%>">
                <br><br>
                Mother's Name:<input type="text" name="mothername" value="<%=rs.getString("mothersname")%>">
                <br><br>
                Type Of Prison:<input type="text" name="typeofprison" value="<%=rs.getString("typeofprison")%>">
                <br><br>
                Name Of Prison:<input type="text" name="nameofprison" value="<%=rs.getString("nameofprison")%>">
                <br><br>
                Address of Prison:<input type="text" name="addressofprison" value="<%=rs.getString("addressofprison")%>">
                <br><br>
                Phone No Of Prison:<input type="text" name="phonenoofprison" value="<%=rs.getString("prisonphoneno")%>">
                <br><br>
                Aaddhar Card No:<input type="text" name="aadharcardno" value="<%=rs.getString("aadharcardno")%>">
                <br><br>
                <input type="submit" value="Submit">
            </form>
        </div>               <%

                }
            } catch (Exception e) {

            }


        %>
    </body>
</html>
