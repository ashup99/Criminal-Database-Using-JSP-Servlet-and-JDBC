<%-- 
    Document   : insert
    Created on : 6 Apr, 2019, 7:11:48 PM
    Author     : ASHUTOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
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
        <h1>Insert A Victim's Record</h1>
        <form action="submit.jsp" method="post">
            <br>
            Victim ID:<input type="text" name="victimid" placeholder="Enter Victim's ID">
            <br><br>
            Victim Name:<input type="text" name="victimname" placeholder="Enter Victim's ID">
            <br><br>
            Type Of Crime:<input type="text" name="typeofcrime" placeholder="Enter Victim's ID">
            <br><br>
            Flat No:<input type="text" name="flatno" placeholder="Enter Victim's ID">
            <br><br>
            Street:<input type="text" name="street" placeholder="Enter Victim's ID">
            <br><br>
            State:<input type="text" name="state" placeholder="Enter Victim's ID">
            <br><br>
            Registration Date:<input type="text" name="regdate" placeholder="Enter Victim's ID">
            <br><br>
            Pin:<input type="text" name="pin" placeholder="Enter Victim's ID">
            <br><br>
            Phone No:<input type="text" name="phoneno" placeholder="Enter Victim's ID">
            <br><br>
            Email ID:<input type="text" name="email" placeholder="Enter Victim's ID">
            <br><br>
            Date of Birth:<input type="text" name="dob" placeholder="Enter Victim's ID">
            <br><br>
            Victim FIR ID:<input type="text" name="victimfirid" placeholder="Enter Victim's ID">
            <br><br>
            Crime Date:<input type="text" name="crimedate" placeholder="Enter Victim's ID">
            <br><br>
            Level Of Crime:<input type="text" name="leveofcrime" placeholder="Enter Victim's ID">
            <br><br>
            Status:<input type="text" name="status" placeholder="Enter Victim's ID">
            <br><br>
            Father's Name:<input type="text" name="fathername" placeholder="Enter Victim's ID">
            <br><br>
            Mother's Name:<input type="text" name="mothername" placeholder="Enter Victim's ID">
            <br><br>
            Type Of Prison:<input type="text" name="typeofprison" placeholder="Enter Victim's ID">
            <br><br>
            Name Of Prison:<input type="text" name="nameofprison" placeholder="Enter Victim's ID">
            <br><br>
            Address of Prison:<input type="text" name="addressofprison" placeholder="Enter Victim's ID">
            <br><br>
            Phone No Of Prison:<input type="text" name="phonenoofprison" placeholder="Enter Victim's ID">
            <br><br>
            Aaddhar Card No:<input type="text" name="aadharcardno" placeholder="Enter Victim's ID">
            <br><br>
            <input type="submit" value="Submit">



        </form>
        </div>
    </body>
</html>
