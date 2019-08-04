/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASHUTOSH
 */
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        String url = "jdbc:derby://localhost:1527/loginDB ";
        String username = "loginuser";
        String password = "password";
        String query = "SELECT * FROM LOGINUSER.LOGIN WHERE UNAME=? and PASSWORD=?";
        String adminuser= request.getParameter("adminuser");
        String adminpass = request.getParameter("adminpass");
        int flag=1;

      /*  try {
            Connection con = DriverManager.getConnection(url, username, password);
            System.out.println("Success1");
            Statement st = con.createStatement();

            // PreparedStatement ps =con.prepareStatement(query);
            ResultSet rs = st.executeQuery("select * from USERTABLE");
            System.out.println("Success2");
            //st.setString(1, user);
           // st.setString(2, pass);
            //ResultSet rs = ps.executeQuery();
            System.out.println("Success3");
            /*rs.next();
            if(rs.)
            {
                HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("welcome.jsp");
            }
            else
            {
             response.sendRedirect("login.jsp");   
            }
            while (rs.next()) {
                if (rs.getString(2).equals(user) && rs.getString(3).equals(pass)) {
                    System.out.println("Found!!");
                    flag = 0;
                    System.out.println("break");
                    break;
                }
            }*/
      loginDao dao = new loginDao();
           // if (adminuser.equals("user") && adminpass.equals("user"))
          if(dao.check(adminuser, adminpass))
            {
                HttpSession session = request.getSession();
                session.setAttribute("username", adminuser);
                response.sendRedirect("welcome.jsp");
                
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
       /* } catch (Exception e) {
            e.printStackTrace();
        }
        loginDao dao = new loginDao();
       
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        System.out.println(user);
        System.out.println(pass);
        dummy d=new dummy();
        d.print(user,pass);
        if (dao.check(user,pass)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }*/
    }

}
