<%-- 
    Document   : login
    Created on : 6 Apr, 2019, 6:31:47 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            .centre
            {
                text-align: center;

            }
            .center1
            {
                width: 500px;
                height: 500px;
                text-align: center;

            }
        </style>
    </head>
    <body>
        <div class="centre"><h1>Criminal Database</h1></div>
        <div class="center1"><h2>Administrator  Login</h2> <br>
            <h4> Login To Have Access to Database!!</h4>
            <form action="check.jsp" method="post">
                <br> 
                Username:<input type="text" name="adminuser" placeholder="Enter Username"/>
                <br><br>
                Password:<input type="password" name="adminpass" placeholder="Enter Password"/> 
                <br><input type="submit" value="Login"/>
            </form>
        </div>
    </body>
</html>
