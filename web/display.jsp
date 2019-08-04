<%-- 
    Document   : display
    Created on : 7 Apr, 2019, 3:09:01 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@page import="java.sql.*,javax.sql.*" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Victim Display</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>
        <div class = "container">

            <h1> Victim Database</h1>
            <hr/>
            <h1>Retrieved data from database </h1>
            <table cellpadding="60" class = "table table-striped table-bordered">

                <tr class = "thead-dark">
                    <th>Victim ID</th>
                    <th>Victim Name</th>
                    <th>Type Of Crime</th>
                    <th>Flat No</th>
                    <th>Street</th>
                    <th>State</th>
                    <th>Registration Date</th>
                    <th>Pin Code</th>
                    <th>Phone No</th>
                    <th>Email ID</th>
                    <th>Date Of Birth</th>
                    <th>Victim FIR ID</th>
                    <th>Crime Date</th>
                    <th>Level Of Crime</th>
                    <th>Status</th>
                    <th>Father's Name</th>
                    <th>Mother's Name</th>
                    <th>Type Of Prison</th>
                    <th>Name Of Prison</th>
                    <th>Address Of Prison</th>
                    <th>Phone No Of Prison</th>
                    <th>Aadhar-card No</th>
                </tr>
                <%
                    int x = 0;
                    String url = "jdbc:derby://localhost:1527/loginDB ";
                    String username = "loginuser";
                    String password = "password";
                    String driver = "org.apache.derby.jdbc.ClientDriver";
                    try {
                        Class.forName(driver);
                        java.sql.Connection con = DriverManager.getConnection(url, username, password);                                                                                            //   1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2
                        Statement st = con.createStatement();

                        ResultSet rs = st.executeQuery("SELECT * FROM LOGINUSER.VICTIM ");
                        while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("victimid")%></td>
                    <td><%=rs.getString("victimname")%></td>
                    <td><%=rs.getString("typeofcrime")%></td>
                    <td><%=rs.getString("flatno")%></td>
                    <td><%=rs.getString("street")%></td>
                    <td><%=rs.getString("state")%></td>
                    <td><%=rs.getString("registrationdate")%></td>
                    <td><%=rs.getString("pin")%></td>
                    <td><%=rs.getString("phoneno")%></td>
                    <td><%=rs.getString("emailid")%></td>
                    <td><%=rs.getString("dateofbirth")%></td>
                    <td><%=rs.getString("victimfirid")%></td>
                    <td><%=rs.getString("crimedate")%></td>
                    <td><%=rs.getString("levelofcrime")%></td>
                    <td><%=rs.getString("status")%></td>
                    <td><%=rs.getString("fathersname")%></td>
                    <td><%=rs.getString("mothersname")%></td>
                    <td><%=rs.getString("typeofprison")%></td>
                    <td><%=rs.getString("nameofprison")%></td>
                    <td><%=rs.getString("addressofprison")%></td>
                    <td><%=rs.getString("prisonphoneno")%></td>
                    <td><%=rs.getString("aadharcardno")%></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            </table>
    </body>
</html>