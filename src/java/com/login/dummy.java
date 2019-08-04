package com.login;


import com.login.loginDao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ASHUTOSH
 */
public class dummy {
    
    public void print(String user, String pass) {
        loginDao dao =new loginDao();
        Boolean d=dao.check(user, pass);
        System.out.println(d);
    }
}
