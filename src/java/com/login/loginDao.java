
package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ASHUTOSH
 */
public class loginDao {
    String url="jdbc:derby://localhost:1527/loginDB ";
    String username="loginuser";
    String password="password";
    String query= "SELECT * FROM LOGINUSER.LOGIN WHERE UNAME=? and PASSWORD=?";
    public boolean check(String user, String pass)
    {
        try {
            Connection con=DriverManager.getConnection(url,username,password);
            System.out.println("Success1");
            PreparedStatement ps =con.prepareStatement(query);
            System.out.println("Success2");
            ps.setString(1,user);
            ps.setString(2,pass);
            ResultSet rs =ps.executeQuery();
            System.out.println("Success3");
            while(rs.next())
            {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
       
        return false;
}
}
