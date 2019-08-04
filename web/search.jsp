<%-- 
    Document   : search
    Created on : 6 Apr, 2019, 7:28:07 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
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
        <h1>Search</h1>
        <form action="searchprocess.jsp" method="post">
            <br>
            Victim ID:<input type="text" name="victimid" placeholder="Enter Victim's ID">
            <br><br>
            <input type="submit" value="Submit">



        </form>
        </div>
    </body>
</html>
